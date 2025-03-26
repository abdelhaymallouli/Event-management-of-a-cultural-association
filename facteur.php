<?php
session_start();
require 'config.php';

if (!isset($_SESSION['utilisateur_name'])) {
    header('Location: login.php');
    exit();
}

if (!isset($_GET['id'])) {
    echo 'Invalid request. Reservation ID is required.';
    exit();
}

$reservationId = (int) $_GET['id'];

$query = 'SELECT r.idReservation, r.qteBilletsNormal, r.qteBilletsReduit, e.eventTitle, u.nomUser, u.prenomUser, e.TariffNormal, e.TariffReduit
          FROM reservation r
          JOIN edition ed ON r.editionId = ed.editionId
          JOIN evenement e ON ed.eventId = e.eventId
          JOIN utilisateur u ON r.idUser = u.idUser
          WHERE r.idReservation = :reservationId';

$stmt = $pdo->prepare($query);
$stmt->bindParam(':reservationId', $reservationId);
$stmt->execute();
$reservation = $stmt->fetch(PDO::FETCH_ASSOC);

if (!$reservation) {
    echo 'Reservation not found.';
    exit();
}

$queryBillets = 'SELECT b.billetId, b.typeBillet, b.placeNum
                 FROM billet b
                 WHERE b.idReservation = :reservationId';

$stmtBillets = $pdo->prepare($queryBillets);
$stmtBillets->bindParam(':reservationId', $reservationId);
$stmtBillets->execute();
$billets = $stmtBillets->fetchAll(PDO::FETCH_ASSOC);

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Invoice - Reservation</title>
    <link rel="stylesheet" href="css/facteur.css?v=<?php echo time(); ?>">
</head>
<body>
    <div class="container">
        <h1>FACTURE #<?php echo htmlspecialchars($reservation['idReservation']); ?></h1>
        
        <div class="invoice-header">
            <div class="company-info">
                <p>ASSOCIATION FARHA</p>
                <p>Centre Culturel Farha, Tanger</p>
            </div>
            <div class="client-info">
                <p><strong>Client:</strong> <?php echo htmlspecialchars($reservation['nomUser'] . ' ' . $reservation['prenomUser']); ?></p>
                <p><?php echo htmlspecialchars($_SESSION['utilisateur_email'] ?? 'N/A'); ?></p>
            </div>
        </div>

        <div class="invoice-details">
            <p><strong>Événement:</strong> <?php echo htmlspecialchars($reservation['eventTitle']); ?></p>
            <p><strong>Date:</strong> <?php echo date('d/m/Y à H\H\0\0'); ?></p>        
        </div>

        <table>
            <thead>
                <tr>
                    <th>Tarif</th>
                    <th>Prix</th>
                    <th>Qté</th>
                    <th>Total</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>Normal</td>
                    <td><?php echo number_format($reservation['TariffNormal'], 2); ?> MAD</td>
                    <td><?php echo $reservation['qteBilletsNormal']; ?></td>
                    <td><?php echo number_format($reservation['qteBilletsNormal'] * $reservation['TariffNormal'], 2); ?> MAD</td>
                </tr>
                <tr>
                    <td>Réduit</td>
                    <td><?php echo number_format($reservation['TariffReduit'], 2); ?> MAD</td>
                    <td><?php echo $reservation['qteBilletsReduit']; ?></td>
                    <td><?php echo number_format($reservation['qteBilletsReduit'] * $reservation['TariffReduit'], 2); ?> MAD</td>
                </tr>
            </tbody>
        </table>

        <div class="summary">
            <p class="total">Total à payer: <?php 
                $totalPrice = ($reservation['qteBilletsNormal'] * $reservation['TariffNormal']) + 
                              ($reservation['qteBilletsReduit'] * $reservation['TariffReduit']);
                echo number_format($totalPrice, 2); ?> MAD</p>
        </div>

        <p class="text-center">MERCI !</p>

        <a href="index.php" class="btn-back">Retour à l'accueil</a>
    </div>
</body>
</html>