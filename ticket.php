<?php
session_start();
require "config.php";

if (!isset($_SESSION['utilisateur_name'])) {
    header('Location: login.php');
    exit();
}


$reservationId = filter_var($_GET['id'], FILTER_SANITIZE_NUMBER_INT);

$sql = "SELECT r.idReservation, e.eventId, e.eventTitle, ed.dateEvent, ed.timeEvent, ed.NumSalle,
               b.billetId, b.typeBillet, b.placeNum
        FROM reservation r
        JOIN edition ed ON r.editionId = ed.editionId
        JOIN evenement e ON ed.eventId = e.eventId
        JOIN billet b ON r.idReservation = b.idReservation
        WHERE r.idReservation = :id AND r.idUser = :userId
        ORDER BY b.placeNum";

try {
    $stmt = $pdo->prepare($sql);
    $stmt->execute([':id' => $reservationId, ':userId' =>$_SESSION['utilisateur_id']]);
    $tickets = $stmt->fetchAll(PDO::FETCH_ASSOC);
    if (!$tickets) {
        die("Tickets not found.");
    }
} catch (PDOException $e) {
    die("Database error: " . $e->getMessage());
}

$eventId = $tickets[0]['eventId'] ?? null;
$tariffs = null;
if ($eventId) {
    try {
        $stmt = $pdo->prepare("SELECT TariffNormal, TariffReduit FROM evenement WHERE eventId = :eventId");
        $stmt->execute([':eventId' => $eventId]);
        $tariffs = $stmt->fetch(PDO::FETCH_ASSOC);
        if (!$tariffs) {
            die("Tariffs not found for event ID: " . htmlspecialchars($eventId));
        }
    } catch (PDOException $e) {
        die("Error fetching tariffs: " . $e->getMessage());
    }
} else {
    die("Event ID not found for reservation ID: " . htmlspecialchars($reservationId));
}

function generateTicketNumber($billetId)
{
    $numericPart = preg_replace('/[^0-9]/', '', $billetId);
    $numericBase = $numericPart ? (int)$numericPart : 0;
    $randomPart = mt_rand(1000, 9999);
    $ticketNumber = ($numericBase * 10000) + $randomPart;
    return sprintf("%010d", $ticketNumber);
}

$seatNumber = 1;
?>

<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Billets - FarhaEvents</title>
    <link rel="icon" href="./assets/images/f-logo.avif" type="image/x-icon" />
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=League+Spartan:wght@100..900&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="css/ticket.css?v=<?php echo time(); ?>">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/html2pdf.js/0.9.2/html2pdf.bundle.js"></script>
</head>

<body>
    <div class="tickets-container">
        <?php if (empty($tickets)): ?>
            <p>Aucun billet trouvé pour cette réservation.</p>
        <?php else: ?>
            <?php foreach ($tickets as $ticket): ?>
                <?php
                $dateTime = new DateTime($ticket['dateEvent'] . ' ' . $ticket['timeEvent']);
                $formattedDateTime = $dateTime->format('l, d F Y') . ' at ' . $dateTime->format('H:i');
                $tariff = $ticket['typeBillet'] === 'Normal' ? $tariffs['TariffNormal'] : $tariffs['TariffReduit'];
                $ticketNumber = generateTicketNumber($ticket['billetId']);
                $currentSeatNumber = $seatNumber++;
                $salleNumber = isset($ticket['NumSalle']) ? sprintf("%02d", $ticket['NumSalle']) : 'N/A';
                ?>
                <div class="ticket" id="ticket-<?php echo $ticket['billetId']; ?>">
                    <div class="ticket-left">
                        <div class="ticket-number">#<?php echo htmlspecialchars($ticketNumber); ?></div>
                        <div class="ticket-num-title">Numéro de ticket</div>
                    </div>
                    <div class="ticket-right">
                        <div class="event-title"><?php echo htmlspecialchars($ticket['eventTitle']); ?></div>
                        <div class="event-date"><?php echo htmlspecialchars($formattedDateTime); ?></div>
                        <div class="organization">
                            <div class="dot"></div>
                            ASSOCIATION FARHA
                        </div>
                        <div class="ticket-details">
                            <p style="margin-bottom: 5px;"><strong>Tarif :</strong></p>
                            <p style="margin-bottom: 15px;"><?php echo number_format($tariff, 2); ?> MAD</p>
                            <p style="margin-bottom: 5px;"><strong>Type :</strong></p>
                            <p style="margin-bottom: 15px;">Tarif <?php echo htmlspecialchars($ticket['typeBillet'] === 'Normal' ? 'normal' : 'réduit'); ?></p>
                            <p style="margin-bottom: 10px;"><strong>Adresse :</strong></p>
                            <p>Centre Culturel Farha, Tanger</p>
                        </div>
                        <div class="divider"></div>
                        <div class="circle-top"></div>
                        <div class="circle-bottom"></div>
                        <div class="ticket-barcode">
                            <div class="barcode"></div>
                            <div class="seat-place">
                                <div>PLACE</div>
                                <div class="place-number"><?php echo htmlspecialchars($currentSeatNumber); ?></div>
                            </div>
                            <div class="seat-place">
                                <div>SALLE</div>
                                <div class="seat-number"><?php echo htmlspecialchars($salleNumber); ?></div>
                            </div>
                        </div>
                        <div class="dots">
                            <div class="dot-pattern"></div>
                        </div>
                    </div>
                </div>
            <?php endforeach; ?>
        <?php endif; ?>
    </div>

    <div class="button-container">
    <button onclick="downloadAllTickets()">Download All Tickets</button>
</div>



    <script>
    function downloadAllTickets() {
    const { jsPDF } = window.jspdf;
    const doc = new jsPDF('l', 'mm', 'a4'); // Landscape mode

    const tickets = document.querySelectorAll('.ticket'); // Select all tickets

    if (tickets.length === 0) {
        alert("Erreur: Aucun billet trouvé !");
        return;
    }

    let currentPage = 1;
    tickets.forEach((ticket, index) => {
        // Convert the ticket element to an image
        html2canvas(ticket, { scale: 2 }).then(canvas => {
            const imgData = canvas.toDataURL('image/png');

            const pageWidth = 297;
            const pageHeight = 210;

            const imgWidth = 180;
            const imgHeight = (canvas.height * imgWidth) / canvas.width;

            const x = (pageWidth - imgWidth) / 2;
            const y = (pageHeight - imgHeight) / 2;

            // Add the image to the PDF
            if (index > 0) {
                doc.addPage(); // Add a new page for each ticket
            }
            doc.addImage(imgData, 'PNG', x, y, imgWidth, imgHeight);

            // If it's the last ticket, save the PDF
            if (index === tickets.length - 1) {
                doc.save(`all_tickets_${Date.now()}.pdf`);
            }
        }).catch(error => {
            console.error("Erreur lors de la génération du ticket:", error);
            alert("Une erreur s'est produite lors de la génération du ticket.");
        });
    });
}


</script>
</body>

</html>
