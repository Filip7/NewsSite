<?php
/**
 * Created by PhpStorm.
 * User: filip
 * Date: 28.04.18.
 * Time: 22:26
 */

$id = $_GET['id'];

define('UPLPATH', '../res/');
define('__APP__', TRUE);

include("dbconn.php");
$query = "SELECT * FROM Clanci WHERE id='$id'";
$result = mysqli_query($dbc, $query);

echo '
<!DOCTYPE html>
<html lang="hr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
    <link type="text/css" rel="stylesheet" href="style.css" />
    <link rel="icon" href="../res/circle_logo_fav.png" type="image/gif" sizes="16x16">
    <title>Vijesti 747</title>
</head>
<body>
    <nav>
        <figure class="float_left">
            <a href="index.php">
                <img src="../res/circle_logo.png" alt="Ovo je nevidljivi opis jedne slike">
            </a>
        </figure>
        <ul>
            <li><a href="index.php">Home</a></li>
            <li><a href="onama.html">O nama</a></li>
            <li><a href="#">Kontakt</a></li>
        </ul>
    </nav>
    <div id="main_content">
    <main>
';

while ($row = mysqli_fetch_array($result)) {
    echo '
    <article class="float_left">
            <header>
                <h1>' . urldecode($row['Naslov']) . '</h1>
                <span  class="article_lead">' . urldecode($row['KratkiSadrzaj']) . '</span>
            </header>';
    if ($row['Slika'] != null) {
        echo '<img id="slikaMain" src="' . UPLPATH . urldecode($row['Slika']) . '" height="85%" width="85%" class="img-spec center"/>';
        echo '
            <div id="myModal" class="modal">
              <span class="close">&times;</span>
              <img class="modal-content" id="img01">
              <div id="caption"></div>
            </div>
            ';
    }

    echo '
            <p>' . urldecode($row['Tekst']) . '</p>
            <br>
            <div id="oClanku">Objavljeno: '.$row['Datum'].' u '.$row['VrijemeIzrade'].'</div>
     </article>
    ';
}

echo '
 </main>
    </div>
    <footer class="clear_floating">
        <p>Kreirao: Filip M.</p>
        <p>Kontakt: <a href="mailto:fmilkovic@tvz.hr?Subject=Kontakt%20sa%20weba" target="_top">fmilkovic@tvz.hr</a></p>
        <p id="last"><a href="admin/administrator.php">Administracija</a></p>
    </footer>
     <script src="modalSlika.js"></script>
</body>
</html>
';

mysqli_close($dbc);