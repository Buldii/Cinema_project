<?php 
include './db_conn.php';
try {
    $input = file_get_contents("php://input"); // json string
    $input = json_decode($input, true);
    $host = 'localhost';
    $db_name = 'kino_kodzik';
    $username = 'root';
    $password = '';
    // $db = $database->connect();
    // $sql = "INSERT INTO `rezerwacje` (`id`, `id_klienta`, `rez_column`, `rez_row`, `id_repertuar`, `id_godzina`) VALUES (NULL, '" . $input['id_klienta'] . "', '". $input['column'] ."', '". $input['row'] ."', '". $input['id_repertuaru'] ."', '". $input['id_godzina'] ."')";
    // $stmt = $db->prepare($sql);
    // $stmt->execute();
    $db = new mysqli($host, $username, $password, $db_name);
    $sql = "INSERT INTO `rezerwacje` (`id`, `id_klienta`, `rez_column`, `rez_row`, `id_repertuar`, `id_godzina`) VALUES (NULL, '" . $input['id_klienta'] . "', '". $input['column'] ."', '". $input['row'] ."', '". $input['id_repertuaru'] ."', '". $input['id_godzina'] ."')";
    $result = $db->query($sql);
    // $stmt->setFetchMode(PDO::FETCH_ASSOC);
    
    
    echo json_encode(array("status" => "ok"));
    
} catch (\Throwable $th) {
    echo json_encode(["line" => $th->getLine(), "mess"=>$th->getMessage()]);
}


?>