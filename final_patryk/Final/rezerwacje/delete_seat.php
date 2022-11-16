<?php 
include './db_conn.php';
try {
    $input = file_get_contents("php://input"); // json string
    $input = json_decode($input, true);
    session_id($input['user']);
    session_start();
    $user_id = $_SESSION['user_id'];
    $host = 'localhost';
    $db_name = 'kino_kodzik';
    $username = 'root';
    $password = '';
    $db = new mysqli($host, $username, $password, $db_name);
    $sql = "DELETE FROM rezerwacje WHERE id_klienta=" . $user_id . " AND rez_column=" . $input['column'] . " AND rez_row=" . $input['row'] . " AND id_godzina=" . $input['id_godzina'];
    $result = $db->query($sql);
    // $stmt->setFetchMode(PDO::FETCH_ASSOC);
    
    
    echo json_encode(array("status" => "ok"));
    
} catch (\Throwable $th) {
    echo json_encode(["line" => $th->getLine(), "mess"=>$th->getMessage()]);
}


?>