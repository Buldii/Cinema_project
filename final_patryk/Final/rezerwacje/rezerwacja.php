<?php session_start() ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Rezerwacja</title>
    <link rel="icon" type="image/x-icon" href="../img/logoK.png">
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="../header_footer/header_footer.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;500;700&display=swap" rel="stylesheet">
</head>
<body>
    <?php 
    // $_SESSION['user_id'] = 1; // TU DAJ ID SESJI !!!!!!!
    // var_dump($_SESSION);
    // echo session_id();
    if (!isset($_SESSION['user_id'])) {
        header("Location: ../Kino_kodzik/login_page.php"); //TODO Replace for login site
    }
    include_once './db_conn.php';
    $database = new Database();
    $db = $database->connect();
    $sql = "SELECT filmy.id, data, godzina, nazwa, napisy FROM repertuar JOIN godziny on godziny.id_repertuar = repertuar.id JOIN filmy on filmy.id = repertuar.film WHERE godziny.id =". $_GET['id_godzina'];
    // echo $sql;
    $stmt = $db->prepare($sql);
    $stmt->execute();
    $stmt->setFetchMode(PDO::FETCH_ASSOC);
    $row = $stmt->fetch();
    // Zapytanie czy właściwy tytuł jeśli nie przekierowanie na repertuar
    $filmTitle = $row['nazwa']; //$_GET["$filmTitle"]
    $filmDate = $row['data'] . "<br>" . substr($row['godzina'], 0, 5);
    ?>
    <?php include_once '../header_footer/header.php' ?>
    <main class="reservation">
        <div class="reservation-info">
            <h3 class="reservation-info__title"><?php echo $filmTitle ?></h3>
            <p><?php echo ((int) $row['napisy'] == 1 ? 'Napisy' : 'Dubbing') ?></p>
            <p class="reservation-info__date"><?php echo $filmDate ?></p>
        </div>
        <div class="reservation-seats-container">
            <div class="screen">
                <div class="screen__dummy-screen">-</div>
                <div class="screen__text">EKRAN</div>
            </div>
            <div id="seats" class="seats">

            </div>
        </div>
        <div class="reservation__legenda">
            <!-- <div><span></span></div>
            <div></div>
            <div></div> -->
        </div>
    </main>
    <?php include_once '../header_footer/footer.php' ?>
    <div style='display: none'>
        <div id="user"><?php echo session_id() ?></div>
        <div id="godzina"><?php echo $_GET['id_godzina'] ?></div>
        <div id="repertuar"><?php echo $_GET['id_repertuar'] ?></div>
    </div>
    <script src="./rezerwacja_skrypt.js"></script>
</body>
</html>