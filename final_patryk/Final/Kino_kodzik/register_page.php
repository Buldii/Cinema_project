<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Rejestracja</title>
    <link rel="icon" type="image/x-icon" href="../img/logoK.png">
    <link rel="stylesheet" href="register_page_style.css">
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

    <h1>Rejestracja</h1>

    <form action="" method="post">
        <input type="text" name="name" placeholder="Imie" class="name__input">
        <input type="text" name="surname"placeholder="Nazwisko" class="surname__input">
        <input type="email" name="email"placeholder="E-mail" class="email__input">
        <input type="text" name="login"placeholder="Login" class="login__input">
        <input type="password" name="password"placeholder="Hasło" class="password__input">
        <input type="text" name="nr_telefonu"placeholder="Numer telefonu" class="phone__input">
        <input type="submit" value="Rejestruj" name='rejestruj' class='button'>
        <div class="logowanie">
          <span>masz juz konto? <a href="login_page.php">logowanie</a></span>
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

    if (isset($_POST['name']) && isset($_POST['surname']) && isset($_POST['login']) && isset($_POST['password']) && isset($_POST['rejestruj']) && isset($_POST['email']) && isset($_POST['nr_telefonu'])) {

        $name = @$_POST['name'];
        $nazwisko = @$_POST['surname'];
        $login = @$_POST['login'];
        $hasło = @$_POST['password'];
        $phone = $_POST['nr_telefonu'];
        $mail = $_POST['email'];
        $sql = "INSERT INTO konta (imie, nazwisko, login, haslo, nr_telefonu, email)
        VALUES ('$name', '$nazwisko', '$login','$hasło','$phone','$mail')";
        if (mysqli_query($conn, $sql)) {
            echo "New record created successfully";
        } else {
            echo "Error: " . $sql . "<br>" . mysqli_error($conn);
        }
        header('Location: ./podziekowanie.html');
    }

    mysqli_close($conn);


    ?>

</body>

</html>