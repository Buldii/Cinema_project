<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="../header_footer/header_footer.css">
    <link rel="stylesheet" href="style.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;500;700&display=swap" rel="stylesheet">
</head>
<body>
    <?php include '../header_footer/header.php' ?>
    <div class="container">
        <?php
        isset($_GET['film_id']) ? $x='e' : $_GET['film_id'] = '1';
        $film_id = $_GET['film_id'];

        $username = "root";
        $password = "";
        $host = "localhost";
        $db_name = "kino_kodzik";
        $db = new mysqli($host, $username, $password, $db_name);
        $sql = "SELECT * FROM filmy JOIN rezyser on rezyser.id = filmy.rezyser WHERE filmy.id =". $film_id;
        $result = $db->query($sql);
        $film_info = $result->fetch_assoc();
        $photos = '';
        $sql = "SELECT link FROM zdjecia WHERE id_film=" . $film_id;
        $result = $db->query($sql);
        while ($row = $result->fetch_assoc()) {
            $photos .= '<a href="'. $row['link'] .'"><img src="'. $row['link'] .'"></a>';
        }
        // var_dump($film_info);
        echo '
            <div class="film__titles">
                <h3>'.$film_info['nazwa'].'</h3>
                <p>'.$film_info['oryginalna_nazwa'].'</p>
            </div>
            <div class="film__info">
                <a target="_blank" class="film__poster" href="'. $film_info['trailer_link'] .'">
                <img src="'.$film_info['plakat'].'" alt="Film poster">
                    <div class="play_button">
                        <div>
                            <img src="./img/play.svg">                    
                            <div></div>                
                        </div>
                    </div>
                </a>
                <div class="film__details">
                    <div><span class="gray">Reżyseria: </span>'.$film_info['imie'] . ' ' .$film_info['nazwisko'].'</div>
                    <div><span class="gray">Kraj produkcji: </span>'.$film_info['kraj_produkcji'].'</div>
                    <div><span class="gray">Rok produkcji: </span>'.$film_info['rok_produkcji'].'</div>
                    <div><span class="gray">Gatunek: </span>'.$film_info['gatunek'].'</div>
                    <div><span class="gray">Czas trwania: </span>'.$film_info['czas_trwania'].'</div>
                    <div><span class="gray">Minimalny wiek:</span>'.$film_info['minimalny_wiek'].'</div>
                    <div><span class="gray">Opis:</span>'.$film_info['opis'].'</div>
                </div>
            </div>
            <div class="photos">
                <h6>Zdjęcia</h6>
                '.$photos.'
            </div>
        
        ';
        ?>
    </div>
    <?php include '../header_footer/footer.php' ?>
</body>
</html>