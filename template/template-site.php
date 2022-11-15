<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="../header_footer/header_footer.css">
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <?php include '../header_footer/header.php' ?>
    <div class="container">
        <?php
        $username = "root";
        $password = "";
        $host = "localhost";
        $db_name = "kino_kodzik";
        $db = new mysqli($host, $username, $password, $db_name);
        $sql = "SELECT id, nazwa, plakat FROM filmy LIMIT 10"
        $result = $db->query($sql);
        $films = '';
        while ($row = $result->fetch_assoc()) {
            $films .= 
            "
            <a href="."TODO DOADAĆ LINK".">
                <img src=". $row['link'] ." alt="">
                <h5>". $row['nazwa'] ."</h5>
            </a>
            ";
        }
        ?>
        <div>
            <img src="" alt="">
            <h5></h5>
        </div>
    </div>
    <?php include '../header_footer/footer.php' ?>
</body>
</html>