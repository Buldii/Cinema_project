<? session_start() ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Kino Kodzik</title>
    <link rel="stylesheet" href="../header_footer/header_footer.css">
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="rezerwacje_uzytkownika.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link rel="icon" type="image/x-icon" href="../img/logoK.png">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;500;700&display=swap" rel="stylesheet">
</head>
<body>
    <?php include '../header_footer/header.php' ?>
    <div class="container">
        <div class='rezerwacje'>
            <h3>Twoje rezerwacje</h3>
        <?php 
        $username = "root";
        $password = "";
        $host = "localhost";
        $db_name = "kino_kodzik";
        $db = new mysqli($host, $username, $password, $db_name);
        $sql = "SELECT rezerwacje_uzytkownika.id_repertuar, rezerwacje_uzytkownika.id_godzina, data, napisy, nazwa, godzina FROM (SELECT DISTINCT id_repertuar, id_godzina FROM rezerwacje WHERE id_klienta = ".$_SESSION['user_id'].") as rezerwacje_uzytkownika JOIN repertuar on repertuar.id = rezerwacje_uzytkownika.id_repertuar JOIN filmy on filmy.id = repertuar.film join godziny on godziny.id = rezerwacje_uzytkownika.id_godzina order by data, godzina";
        $result = $db->query($sql);
        $filmy = [];
        while ($row = $result->fetch_assoc()) {
            array_push($filmy, $row);
        }
        foreach ($filmy as $film) {
            $href = '../rezerwacje/rezerwacja.php?id_repertuar='. $film['id_repertuar'] .'&id_godzina='. $film['id_godzina'];
            $miejsca = '';
            $sql = "SELECT rez_column as 'column', rez_row as 'row' FROM rezerwacje WHERE id_klienta = ".$_SESSION['user_id']." AND id_repertuar = ". $film['id_repertuar'] ." AND id_godzina =". $film['id_godzina'] . " ORDER by rez_row, rez_column";
            $result = $db->query($sql);
            while ($row = $result->fetch_assoc()) {
                $miejsca .= "<span>". $row['row'] . "-" . $row['column'] ."</span>";
            }
            echo "
            <div class='rezerwacja'>
                <div class='info'>
                    <a href ='".$href."'>
                        <h6>". $film['nazwa'] . " / " . ((int) $film['napisy'] == 1 ? 'Napisy' : 'Dubbing') ."</h6>
                    </a>
                    <p>". $film['data'] ." ". substr($film["godzina"], 0, 5)."</p>
                </div>
                <div class='miejsca'>
                    ".$miejsca."
                </div>
            </div>
            
            ";
        }
        ?>
        </div>
    </div>
    <?php include '../header_footer/footer.php' ?>
</body>
</html>