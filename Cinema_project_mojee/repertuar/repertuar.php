<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Repertuar</title>
    <link rel="stylesheet" href="repertuar_style.css">
    <link rel="stylesheet" href="../header_footer/header_footer.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;500;700&display=swap" rel="stylesheet">
</head>
<body>
    <?php include '../header_footer/header.php' ?>
    <div class="repertuar">
        <div class="repertuar-data">
            <?php 
            // KALENDARZ
            if(!(isset($_GET['dzien']) && isset($_GET['miesiac'])&& isset($_GET['rok']))) {
                $data = strtotime("now");
                $href = 'http://localhost/Cinema_project/repertuar/repertuar.php?dzien='. date('d', $data) .'&miesiac='. date('m', $data).'&rok='. date('Y', $data);
                header("Location: ". $href);
            }
            // $czas = "9-11-2022"; // CZAS USTAWIONY NA SZTYWNO
            $czas = date('d-m-Y'); // CZAS USTAWIONY NA SZTYWNO
            $dni_tygodnia = array( 'Nd', 'Pn', 'Wt', 'Śr', 'Cz', 'Pt', 'So' );
            for ($add=0; $add < 8; $add++) { 
                $data = strtotime($czas. "+".$add."day");
                
                $dzien_tygodnia = $dni_tygodnia[date("w", $data)];
                $dzien_miesiaca = date("d", $data);
                $miesiac = date("m", $data);
                if ($dzien_tygodnia=='Niedziela') {
                    $class = 'czas off';
                    $href = '';
                } else {
                    $class = 'czas';
                    $href = 'http://localhost/Cinema_project/repertuar/repertuar.php?dzien='. date('d', $data) .'&miesiac='. date('m', $data).'&rok='. date('Y', $data);
                }
                
                echo "<a href='". $href ."' class='". $class ."'>
                <span>". $dzien_tygodnia ."</span>
                <span>". $dzien_miesiaca . ".". $miesiac ."</span>
                </a>";
            }
            ?>
        </div>
        <?php
        // FILMY

        // Baza danych
        $username = "root";
        $password = "";
        $host = "localhost";
        $db_name = "kino_kodzik";
        $db = new mysqli($host, $username, $password, $db_name);
        $sql = "SELECT repertuar.id, nazwa, minimalny_wiek, czas_trwania, kraj_produkcji, rok_produkcji, plakat, napisy FROM repertuar JOIN filmy on filmy.id = repertuar.film WHERE data='" . $_GET["rok"] .'-'. $_GET["miesiac"] .'-'. $_GET["dzien"]."' ORDER BY nazwa";
        $result = $db->query($sql);
        $films = [];
        while ($row = $result->fetch_assoc()) {
            array_push($films, $row);
        }
        // var_dump($films);
        // Wyświetlanie danych
        foreach ($films as $film) {
            $godziny = [];
            $sql = "SELECT godzina, id FROM godziny WHERE id_repertuar=" . $film['id'];
            $result = $db->query($sql);
            while ($row = $result->fetch_assoc()) {
                array_push($godziny, $row);
            }
            $rezerwacje = "";
            foreach ($godziny as $godzina) {
                $href = "../rezerwacje/rezerwacja.php?id_repertuar=". $film['id']."&id_godzina=" . $godzina["id"];
                $rezerwacje .= "<a class='godzina' href='".$href."'>" . substr($godzina["godzina"], 0, 5) . "</a>";
            }
            echo 
            "<div class='repertuar-film'>
                <img src='". $film['plakat']  ."'>
                <div class='info'>
                <a href='../film_site/film_site.php?film_id=".$film['id']."' >
                <h6>". $film['nazwa'] . " / " . ((int) $film['napisy'] == 1 ? 'Napisy' : 'Dubbing') ."</h6>
                </a>
                <p>Od lat: ". $film['minimalny_wiek'] . ", Czas trwania: ". $film['czas_trwania'] .".</p>
                <p>Produkcja: ". $film["kraj_produkcji"] . " [" . $film['rok_produkcji'] . "]</p>
                <br>
                <p>". $rezerwacje ."</p>
                </div>
            </div>";
        };
        ?>
    </div>
    <?php include '../header_footer/footer.php' ?>
</body>
</html>