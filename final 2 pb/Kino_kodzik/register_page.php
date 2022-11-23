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
      <a href="cennik.php">Cennik</a>
      <a href="promocje.php">Promocje</a>
      <a href="o_nas.php">O nas</a>
      <a href="login_page.php">Zaloguj</a>
      <a href="register_page.php">Rejestruj</a>
    </nav>

    <h1>Rejestracja</h1>

    <!-- <form action="" method="post">
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
    </form> -->

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
    // @$conn = mysqli_connect('localhost', 'root', '', 'kino_kodzik');

    // if (!$conn) {
    //     die("Connection failed: " . mysqli_connect_error());
    // }

    // if (isset($_POST['name']) && isset($_POST['surname']) && isset($_POST['login']) && isset($_POST['password']) && isset($_POST['rejestruj']) && isset($_POST['email']) && isset($_POST['nr_telefonu'])) {

    //     $name = @$_POST['name'];
    //     $nazwisko = @$_POST['surname'];
    //     $login = @$_POST['login'];
    //     $hasło = @$_POST['password'];
    //     $phone = $_POST['nr_telefonu'];
    //     $mail = $_POST['email'];
    //     $sql = "INSERT INTO konta (imie, nazwisko, login, haslo, nr_telefonu, email)
    //     VALUES ('$name', '$nazwisko', '$login','$hasło','$phone','$mail')";
    //     if (mysqli_query($conn, $sql)) {
    //         echo "New record created successfully";
    //     } else {
    //         echo "Error: " . $sql . "<br>" . mysqli_error($conn);
    //     }
    //     header('Location: ./podziekowanie.html');
    // }

    // mysqli_close($conn);


    ?>

<p><span class="error">* required field</span></p>
<form method="post" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>">  
  Name: <input type="text" name="name">
  <span class="error">* <?php echo $nameErr;?></span>
  
  Surname <input type="text" name="surname">
  <span class="error"><?php echo $surnameErr;?></span>
  
  E-mail: <input type="email" name="email">
  <span class="error">* <?php echo $emailErr;?></span>
  
  Login <input type="text" name="login">
  <span class="error"><?php echo $loginErr;?></span>
  
  Password <input type="password" name="password">
  <span class="error"><?php echo $passwordErr;?></span>

  Phone number <input type="text" name="phone">
  <span class="error"><?php echo $phoneErr;?></span>

  <input type="submit" name="submit" value="Rejestruj">  
</form>

<?php
$conn = mysqli_connect('localhost', 'root', '', 'kino_kodzik');
if (!$conn) {
      die("Connection failed: " . mysqli_connect_error());
  }
$nameErr = $emailErr = $surnameErr = $phoneErr = $loginErr = $passwordErr;
$name = $email = $surname = $phone = $login = $password;

if ($_SERVER["REQUEST_METHOD"] == "POST") {
  if (empty($_POST["name"])) {
    $nameErr = "Name is required";
  } else {
    $name = test_input($_POST["name"]);
  }
  
  if (empty($_POST["email"])) {
    $emailErr = "Email is required";
  } else {
    $email = test_input($_POST["email"]);
  }
    
  if (empty($_POST["surname"])) {
    $surname = "";
  } else {
    $surname = test_input($_POST["surname"]);
  }

  if (empty($_POST["phone"])) {
    $phoneErr = "";
  } else {
    $phone = test_input($_POST["phone"]);
  }

  if (empty($_POST["login"])) {
    $loginErr = "login is required";
  } else {
    $login = test_input($_POST["login"]);
  }
  if (empty($_POST["password"])) {
    $passwordErr = "password is required";
  } else {
    $password = test_input($_POST["password"]);
  }
}

function test_input($data) {
  $data = trim($data);
  $data = stripslashes($data);
  $data = htmlspecialchars($data);
  return $data;
}

 $sql = "INSERT INTO konta (imie, nazwisko, login, haslo, nr_telefonu, email)
       VALUES ('$name', '$surname', '$login','$password','$phone','$email')";
        if (mysqli_query($conn, $sql)) {
            echo "New record created successfully";
        } else {
            echo "Error: " . $sql . "<br>" . mysqli_error($conn);
        }
        header('Location: ./podziekowanie.html');
    

    mysqli_close($conn);
?>




</body>

</html>