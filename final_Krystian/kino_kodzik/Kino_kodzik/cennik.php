<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Cennik</title>
    <link rel="icon" type="image/x-icon" href="../img/logoK.png">
    <link rel="stylesheet" href="cennik_style.css" />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;500;700&display=swap"
      rel="stylesheet"
    />
  </head>
  <body>
    <div class="bg"></div>
    <!-- <img src="./img/kino1.jpg" alt="" class="bg__img"> -->
    <?php include_once '../header_footer/header.php' ?>

    <div class="container">
      <h1>Cennik</h1>
      <div class="cointainer__table">
        <table>
          <tr>
            <th>Cena w dniu seansu</th>
          </tr>
          <tr>
            <td>Bilet normalny</td>
            <td>25 zł</td>
          </tr>
          <tr>
            <td>
              Bilet dla dzieci poniżej<br />
              12-stego roku życia
            </td>
            <td>20 zł</td>
          </tr>
          <tr>
            <td>Tania środa!</td>
            <td>15 zł</td>
          </tr>
        </table>

        <span class="between"></span>

        <table>
          <tr>
            <th>1 dzień + do seansu</th>
          </tr>
          <tr>
            <td>Bilet normalny</td>
            <td>23 zł</td>
          </tr>
          <tr>
            <td>
              Bilet dla dzieci poniżej<br />
              12-stego roku życia
            </td>
            <td>17 zł</td>
          </tr>
          <tr>
            <td>Tania środa!</td>
            <td>12 zł</td>
          </tr>
        </table>
      </div>
    </div>

    <?php include '../header_footer/footer.php' ?>
  </body>
</html>
