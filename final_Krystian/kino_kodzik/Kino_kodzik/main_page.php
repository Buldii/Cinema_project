<?php header("Location ../main_page/main_page.php") ?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Kino kodzik</title>
    <link rel="stylesheet" href="main_page_style.css" />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;500;700&display=swap"
      rel="stylesheet"
    />
  </head>
  <body>
    <div class="bg"></div>

    <nav>
      <a href="main_page.php">
        <img src="./img/logo 3.png" alt="logo" class="nav__logo" />
      </a>
      <a href="../repertuar/repertuar.php">Repertuar</a>
      <a href="cennik.html">Cennik</a>
      <a href="promocje.html">Promocje</a>
      <a href="o_nas.html">O nas</a>
      <a href="login_page.php">Zaloguj</a>
      <a href="register_page.php">Rejestruj</a>
    </nav>

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
          <a href="cennik.html">
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
          <a href="cennik.html">
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
          <a href="cennik.html">
          <img src="' . $row ['link']. '" style="width:100%">
          </a>
          <div class="text">'.$row ['nazwa'].'</div>
        </div>
        ';
        echo $wynik;

        $sql = "SELECT id, nazwa, plakat FROM filmy LIMIT 10";
        $result = $db->query($sql);
        $films = '';
        while ($row = $result->fetch_assoc()) {
            $films .= 
            '
            <a href="."TODO DOADAĆ LINK".">
                <img src='. $row['plakat'] .' alt="">
                <h5>'. $row['nazwa'] .'</h5>
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

  <section class='grid'>
    <?php 
    
    echo $films;
    
    ?>      
  </section>

    <footer class="footer">
      <a href="" target="_blank" class="footer__link">Repertuar</a>
      <a href="cennik.html" target="_blank" class="footer__link">Cennik</a>
      <a href="regulamin.html" target="_blank" class="footer__link"
        >Regulamin</a
      >
      <a href="polityka_prywatnosci.html" target="_blank" class="footer__link"
        >Polityka prywatności</a
      >
      <a href="zwrot_biletu.html" target="_blank" class="footer__link">Zwrot biletu</a>
      <p class="kontakt footer__link">Kontakt: 44 715 95 60</p>
    </footer>
    <script src="./main_page_script.js"></script>
  </body>
</html>
