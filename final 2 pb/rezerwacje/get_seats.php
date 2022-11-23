<?php
include './db_conn.php';
$takenSeats = ["userSeats" => [], "occupiedSeats" => []];

// $userId = $_POST['user'];
$input = file_get_contents("php://input"); // json string
$input = json_decode($input, true);
session_id($input['user']);
session_start();
$userId = $_SESSION['user_id'];
$id_godzina = $input['godzina'];
$database = new Database();
$db = $database->connect();
$sql = "SELECT * FROM `rezerwacje` WHERE id_klienta =" . $userId . " AND id_godzina= " . $id_godzina;
$stmt = $db->prepare($sql);
$stmt->execute();
$stmt->setFetchMode(PDO::FETCH_ASSOC);
while ($row = $stmt->fetch()) {
    array_push($takenSeats["userSeats"], array("column" => $row["rez_column"], "row" => $row["rez_row"]));
}
$sql = "SELECT * FROM `rezerwacje` WHERE id_klienta <>" . $userId . " AND id_godzina= " . $id_godzina;
$stmt = $db->prepare($sql);
$stmt->execute();
$stmt->setFetchMode(PDO::FETCH_ASSOC);
while ($row = $stmt->fetch()) {
    array_push($takenSeats["occupiedSeats"], array("column" => $row["rez_column"], "row" => $row["rez_row"]));
}
echo json_encode($takenSeats);
?>