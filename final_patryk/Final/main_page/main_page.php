<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Kino Kodzik</title>
    <link rel="stylesheet" href="../header_footer/header_footer.css">
    <link rel="stylesheet" href="style.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link rel="icon" type="image/x-icon" href="../img/logoK.png">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;500;700&display=swap" rel="stylesheet">
</head>
<body>
    <?php include '../header_footer/header.php';
    // var_dump($_SESSION) ?>
    <div class="container">
        <div class="slider">
            <div class="slideshow-container">
                
                <?php
                $username = "root";
                $password = "";
                $host = "localhost";
                $db_name = "kino_kodzik";
                $db = new mysqli($host, $username, $password, $db_name);

                $sql = 'SELECT nazwa, link, filmy.id FROM filmy join zdjecia on zdjecia.id_film = filmy.id WHERE filmy.id = 1 LIMIT 1 ';
                
                $result = $db->query($sql);
                $row = $result->fetch_assoc();

                $wynik = '';
                $wynik.= '
                <div class="mySlides fade">
                <div class="numbertext">1 / 3</div>
                <a href="../film_site/film_site.php?film_id='.$row['id'].'">
                <img src="' . $row ['link']. '" style="width:100%">
                </a>
                <div class="text">'.$row ['nazwa'].'</div>
                </div>
                ';

                $sql = 'SELECT nazwa, link, filmy.id FROM filmy join zdjecia on zdjecia.id_film = filmy.id WHERE filmy.id = 2 LIMIT 1 ';
                
                $result = $db->query($sql);
                $row = $result->fetch_assoc();

                $wynik.= '
                <div class="mySlides fade">
                <div class="numbertext">1 / 3</div>
                <a href="../film_site/film_site.php?film_id='.$row['id'].'">
                <img src="' . $row ['link']. '" style="width:100%">
                </a>
                <div class="text">'.$row ['nazwa'].'</div>
                </div>
                ';

                $sql = 'SELECT nazwa, link, filmy.id FROM filmy join zdjecia on zdjecia.id_film = filmy.id WHERE filmy.id = 3 LIMIT 1 ';
                
                $result = $db->query($sql);
                $row = $result->fetch_assoc();

                $wynik.= '
                <div class="mySlides fade">
                <div class="numbertext">1 / 3</div>
                <a href="../film_site/film_site.php?film_id='.$row['id'].'">
                <img src="' . $row ['link']. '" style="width:100%">
                </a>
                <div class="text">'.$row ['nazwa'].'</div>
                </div>
                ';
                echo $wynik;

                $sql = "SELECT id, nazwa, plakat FROM filmy LIMIT 8";
                $result = $db->query($sql);
                $films = '';
                while ($row = $result->fetch_assoc()) {
                    $films .= 
                    '
                    <a class="zdjecia" href="../film_site/film_site.php?film_id='.$row['id'].'">
                        <img src='. $row['plakat'] .' alt="">
                        <h5>'. $row['nazwa'] .'</h5>
                        <p>Więcej</p>
                    </a>
                    ';
                }
                ?>
            
                <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
                <a class="next" onclick="plusSlides(1)">&#10095;</a>
            </div>
            <br>

            
            <div class="dot_parent">
                <div  class="dots" style="text-align:center">
                    <span class="dot" onclick="currentSlide(1)"></span>
                    <span class="dot" onclick="currentSlide(2)"></span>
                    <span class="dot" onclick="currentSlide(3)"></span>
                </div>
            </div>
        </div>
        <section class='grid'>
            <?php echo $films; ?>      
        </section>
    </div>
    <?php include '../header_footer/footer.php' ?>
    <script src="./main_page_script.js"></script>
</body>
</html>