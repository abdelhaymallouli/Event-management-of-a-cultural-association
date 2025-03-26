<?php
session_start();
require 'config.php';

if(!isset($_SESSION['utilisateur_name'])){
    header('Location: login.php');
    exit();
}

if($_SERVER['REQUEST_METHOD'] !== 'POST'){
    header('Location: index.php');
    exit();
}

$editionId = isset($_POST['editionId']) ? (int)$_POST['editionId'] : 0;
$qteBilletsNormal = isset($_POST['qteBilletsNormal']) ? (int)$_POST['qteBilletsNormal'] : 0;
$qteBilletsReduit = isset($_POST['qteBilletsReduit']) ? (int)$_POST['qteBilletsReduit'] : 0;

echo 'editionId: ' . $editionId . '<br>';
echo 'qteBilletsNormal: ' . $qteBilletsNormal . '<br>';
echo 'qteBilletsReduit: ' . $qteBilletsReduit . '<br>';


if($editionId === 0 || ($qteBilletsNormal === 0 && $qteBilletsReduit === 0)){
    echo 'Invalid order. PLease go back and select tickets.';
    exit();
}

try {
    $pdo->beginTransaction();

    $query = 'INSERT INTO reservation (idUser, editionId, qteBilletsNormal, qteBilletsReduit)
    VALUES (:idUser, :editionId, :qteBilletsNormal, :qteBilletsReduit)
    ';

    $stmt = $pdo->prepare($query);
    $stmt->execute([
        ':idUser' => $_SESSION['utilisateur_id'],
        ':editionId' => $editionId,
        ':qteBilletsNormal' => $qteBilletsNormal,
        ':qteBilletsReduit' => $qteBilletsReduit
    ]);

    $reservationId = $pdo->lastInsertId();

    for ($i = 0; $i < $qteBilletsNormal; $i++) {
        $billetId = 'B' . strtoupper(uniqid()); // Unique ID for the billet
        $queryBillet = 'INSERT INTO billet (billetId, typeBillet, placeNum, idReservation)
                        VALUES (:billetId, :typeBillet, :placeNum, :idReservation)';
        $stmtBillet = $pdo->prepare($queryBillet);
        $stmtBillet->execute([
            ':billetId' => $billetId,
            ':typeBillet' => 'Normal',
            ':placeNum' => $i + 1, // Incremental number for placeNum
            ':idReservation' => $reservationId
        ]);
    }

    for ($i = 0; $i < $qteBilletsReduit; $i++) {
        $billetId = 'B' . strtoupper(uniqid());
        $queryBillet = 'INSERT INTO billet (billetId, typeBillet, placeNum, idReservation)
                        VALUES (:billetId, :typeBillet, :placeNum, :idReservation)';
        $stmtBillet = $pdo->prepare($queryBillet);
        $stmtBillet->execute([
            ':billetId' => $billetId,
            ':typeBillet' => 'Reduit',
            ':placeNum' => $i + 1,
            ':idReservation' => $reservationId
        ]);
    }

    $pdo->commit();

    header("Location: confirmation.php?id=" . $reservationId);
    exit();
} catch(PDOException $e){
    $pdo->rollBack();
    echo 'An error occurred while placing your order. Please try again later.';
    exit();
}
?>