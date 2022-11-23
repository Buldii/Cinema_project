<?php
@session_start();
if (isset($_SESSION['user_id'])) {
    $login_option = "
    <p class='name'>Witaj, ". $_SESSION['user_first_name']. " ". $_SESSION['user_last_name'] ."</p>
    <a href='../Kino_kodzik/wyloguj.php'>Wyloguj</a>";
} else {
    $login_option = "
    <a href='../Kino_kodzik/login_page.php'>Zaloguj</a>
    <a href='../Kino_kodzik/register_page.php'>Rejestruj</a>";
}

echo "
    <nav id='myHeader'>
        <a href='../main_page/main_page.php'>
        <img src='../img/logo_3.png' alt='logo' class='nav__logo' />
        </a>
        <a href='../repertuar/repertuar.php'>Repertuar</a>
        <a href='../Kino_kodzik/cennik.php'>Cennik</a>
        <a href='../Kino_kodzik/promocje.php'>Promocje</a>
        <a href='../Kino_kodzik/o_nas.php'>O nas</a>
        ". $login_option ."
    </nav>
    "
?>
<!-- <script src="scroll.js"></script> -->