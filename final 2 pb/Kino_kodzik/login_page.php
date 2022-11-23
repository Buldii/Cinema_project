<?php session_start() ?>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Logowanie</title>
  <link rel="icon" type="image/x-icon" href="../img/logoK.png">
  <link rel="stylesheet" href="login_page_style.css">
  <link rel="preconnect" href="https://fonts.googleapis.com" />
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
  <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;500;700&display=swap" rel="stylesheet" />
</head>

<body>
  <div class="bg"></div>
  <nav>
      <a href="../main_page/main_page.php">
        <img src="./img/logo 3.png" alt="logo" class="nav__logo" />
      </a>
      <a href="../repertuar/repertuar.php">Repertuar</a>
      <a href="cennik.html">Cennik</a>
      <a href="promocje.html">Promocje</a>
      <a href="o_nas.html">O nas</a>
      <a href="login_page.php">Zaloguj</a>
      <a href="register_page.php">Rejestruj</a>
    </nav>

  <h1>Logowanie</h1>

  <form action="" method="post">

    <input type="text" name="login" class="login__input" placeholder="Login">
    <input type="password" name="password" class="password__input" placeholder="Hasło"> <br>
    <input type="submit" value="Zaloguj" name='loguj' class='button'>
    <div class="logowanie">
      <span>nie masz jeszcze konta? <a href="register_page.php">rejestracja</a></span>
    </div>
  </form>

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
  <?php
  @$conn = mysqli_connect('localhost', 'root', '', 'kino_kodzik');

  if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
  }

  if (isset($_POST['login']) && isset($_POST['password']) && isset($_POST['loguj'])) {

    $login = @$_POST['login'];
    $haslo = @$_POST['password'];
    $sql = "SELECT * FROM konta where login='$login' and haslo='$haslo';";
    $result = mysqli_query($conn, $sql);
    if ($row = mysqli_fetch_array($result)) {
      $_SESSION['user_id'] = $row["id"];
      $_SESSION['user_first_name'] = $row["imie"];
      $_SESSION['user_last_name'] = $row["nazwisko"];
      // var_dump($_SESSION);
      header('Location: ../main_page/main_page.php');
    }
  }
  // var_dump($_SESSION);

  mysqli_close($conn);
  ?>


</body>

</html>