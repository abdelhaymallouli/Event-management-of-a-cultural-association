<?php
    require 'config.php';
    $query = 'SELECT e.eventTitle,
                    ed.dateEvent,
                    ed.timeEvent,
                    s.capSalle,
                    SUM(r.qteBilletsNormal) AS normaltickets,
                    SUM(r.qteBilletsReduit) AS reduitsTickets
            FROM evenement e
            JOIN edition ed ON e.eventId = ed.eventId
            JOIN salle s ON ed.NumSalle = s.NumSalle
            JOIN reservation r ON ed.editionId = r.editionId
            GROUP BY e.eventTitle, ed.dateEvent, ed.timeEvent, s.capSalle
            ORDER BY ed.dateEvent ASC';
    
    $stmt = $pdo->prepare($query);
    $stmt->execute();
    $results = $stmt->fetchAll(PDO::FETCH_ASSOC);
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Event Reservations Admin</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
        
        body {
            background-color: #f8f9fa;
            color: #333;
            padding: 20px;
        }
        
        .container {
            max-width: 1200px;
            margin: 0 auto;
        }
        
        header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 30px;
            background-color: #fff;
            padding: 15px 20px;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0,0,0,0.05);
        }
        
        h1 {
            color: #2c3e50;
            font-size: 24px;
        }
        
        .search-container {
            display: flex;
            align-items: center;
        }
        
        .search-container input {
            border: 1px solid #ddd;
            border-radius: 4px;
            padding: 8px 10px;
            margin-right: 10px;
        }
        
        .btn {
            background-color: #3498db;
            color: white;
            border: none;
            padding: 8px 15px;
            border-radius: 4px;
            cursor: pointer;
            font-size: 14px;
        }
        
        .btn:hover {
            background-color: #2980b9;
        }
        
        .card {
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0,0,0,0.05);
            overflow: hidden;
            margin-bottom: 20px;
        }
        
        .card-header {
            background-color: #f8f9fa;
            padding: 15px 20px;
            border-bottom: 1px solid #eee;
            font-size: 18px;
            color: #2c3e50;
        }
        
        table {
            width: 100%;
            border-collapse: collapse;
        }
        
        th {
            background-color: #f8f9fa;
            color: #2c3e50;
            text-align: left;
            padding: 12px 15px;
            border-bottom: 1px solid #eee;
            font-weight: 600;
        }
        
        td {
            padding: 12px 15px;
            border-bottom: 1px solid #eee;
        }
        
        tr:last-child td {
            border-bottom: none;
        }
        
        tr:hover {
            background-color: #f8f9fa;
        }
        
        .status {
            display: inline-block;
            padding: 3px 10px;
            border-radius: 12px;
            font-size: 12px;
            font-weight: 500;
        }
        
        .status-available {
            background-color: #e3f2fd;
            color: #1976d2;
        }
        
        .status-limited {
            background-color: #fff8e1;
            color: #f57f17;
        }
        
        .status-full {
            background-color: #ffebee;
            color: #c62828;
        }
        
        .footer {
            text-align: center;
            margin-top: 20px;
            color: #7f8c8d;
            font-size: 14px;
        }
        
        @media (max-width: 768px) {
            header {
                flex-direction: column;
                align-items: flex-start;
            }
            
            .search-container {
                margin-top: 15px;
                width: 100%;
            }
            
            .search-container input {
                flex: 1;
            }
            
            table {
                display: block;
                overflow-x: auto;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <header>
            <h1><i class="fas fa-calendar-alt"></i> Event Reservations Admin</h1>
            <div class="search-container">
                <input type="text" placeholder="Search events...">
                <button class="btn">Search</button>
            </div>
        </header>
        
        <div class="card">
            <div class="card-header">
                Event Bookings Overview
            </div>
            <table>
                <thead>
                    <tr>
                        <th>Event Title</th>
                        <th>Date</th>
                        <th>Time</th>
                        <th>Room Capacity</th>
                        <th>Normal Tickets</th>
                        <th>Reduced Tickets</th>
                        <th>Status</th>
                    </tr>
                </thead>
                <tbody>
                    <?php
                    foreach ($results as $row) {
                        $totalTickets = $row['normaltickets'] + $row['reduitsTickets'];
                        $capacityPercent = ($totalTickets / $row['capSalle']) * 100;
                        
                        if ($capacityPercent < 70) {
                            $statusClass = "status-available";
                            $statusText = "Available";
                        } elseif ($capacityPercent < 90) {
                            $statusClass = "status-limited";
                            $statusText = "Limited";
                        } else {
                            $statusClass = "status-full";
                            $statusText = "Almost Full";
                        }
                        
                        if ($capacityPercent >= 100) {
                            $statusClass = "status-full";
                            $statusText = "Sold Out";
                        }
                    ?>
                        <tr>
                            <td><?php echo htmlspecialchars($row['eventTitle']); ?></td>
                            <td><?php echo htmlspecialchars($row['dateEvent']); ?></td>
                            <td><?php echo htmlspecialchars($row['timeEvent']); ?></td>
                            <td><?php echo htmlspecialchars($row['capSalle']); ?></td>
                            <td><?php echo htmlspecialchars($row['normaltickets']); ?></td>
                            <td><?php echo htmlspecialchars($row['reduitsTickets']); ?></td>
                            <td><span class="status <?php echo $statusClass; ?>"><?php echo $statusText; ?></span></td>
                        </tr>
                    <?php
                    }
                    ?>
                </tbody>
            </table>
        </div>
        
        <div class="footer">
            &copy; <?php echo date('Y'); ?> Event Management System | Admin Dashboard
        </div>
    </div>
</body>
</html>