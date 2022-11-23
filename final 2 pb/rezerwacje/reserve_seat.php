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
    $sql = "SELECT COUNT(id) as 'Ilosc' FROM rezerwacje WHERE id_klienta=" . $user_id . " AND id_godzina=" . $input['id_godzina'];
    $result = $db->query($sql);
    $ilosc = $result->fetch_assoc();
    // Ograniczenie ilosci miejsc na użytkownika
    if ((int)$ilosc["Ilosc"] <= 8) {
        $sql = "INSERT INTO `rezerwacje` (`id`, `id_klienta`, `rez_column`, `rez_row`, `id_repertuar`, `id_godzina`) VALUES (NULL, '" . $user_id . "', '". $input['column'] ."', '". $input['row'] ."', '". $input['id_repertuaru'] ."', '". $input['id_godzina'] ."')";
        $result = $db->query($sql);
        echo json_encode(array("status" => "ok", "ilosc" => $ilosc));
    }
    else {
        echo json_encode(array("status" => "zabroniono", "ilosc" => $ilosc));
    }
    
} catch (\Throwable $th) {
    echo json_encode(["line" => $th->getLine(), "mess"=>$th->getMessage()]);
}


?>