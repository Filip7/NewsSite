<?php
/**
 * Created by PhpStorm.
 * User: filip
 * Date: 24.03.18.
 * Time: 15:19
 */

session_start();

$naslov = $_POST['naslov'];
$kratkiSadrzaj = $_POST['kratkiSadrzaj'];
$tekst = $_POST['tekst'];
$vrstaVijesti = $_POST['vrstaVijesti'];
$SakrijVijest = (isset($_POST['sakrijVijest']) ? 1 : 0);
$Autor = $_SESSION['id'];

$picture = $_FILES['picture']['name'];
$target = '../../res/'.$picture;
move_uploaded_file($_FILES['picture']['tmp_name'], $target);

date_default_timezone_set('Europe/Zagreb');

$curr_date = date("Y-m-d");
$curr_time = date("H:i:s");

define('__APP__', TRUE);

$naslov = urlencode($naslov);
$kratkiSadrzaj = urlencode($kratkiSadrzaj);
$tekst = urlencode($tekst);
$vrstaVijesti = urlencode($vrstaVijesti);
$SakrijVijest = urlencode($SakrijVijest);
$picture= urlencode($picture);

include("../dbconn.php");
$query = "INSERT INTO Clanci(Datum, VrijemeIzrade, Naslov, KratkiSadrzaj, Tekst, Kategorija, Slika, Sakrivena, idUser) 
          VALUES('$curr_date', '$curr_time', '$naslov', '$kratkiSadrzaj', '$tekst', '$vrstaVijesti', '$picture',
                 '$SakrijVijest', '$Autor')";
$result = mysqli_query($dbc, $query) or die('Error querying database.');

$naslov = urldecode($naslov);
$kratkiSadrzaj = urldecode($kratkiSadrzaj);
$tekst = urldecode($tekst);
$vrstaVijesti = urldecode($vrstaVijesti);
$SakrijVijest = urldecode($SakrijVijest);

echo '
<!DOCTYPE html>
<html lang="hr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
    <link type="text/css" rel="stylesheet" href="../style.css" />
    <link rel="icon" href="../../res/circle_logo_fav.png" type="image/gif" sizes="16x16">
    <title>Vijesti 747</title>
</head>
<body>
<nav>
    <figure class="float_left">
        <a href="../index.php">
            <img src="../../res/circle_logo.png" alt="Ovo je nevidljivi opis jedne slike">
        </a>
    </figure>
    <ul>
        <li><a href="../index.php">Home</a></li>
        <li><a href="../onama.php">O nama</a></li>
        <li><a href="#">Kontakt</a></li>
    </ul>
</nav>
<div id="main_content">
    <main>
        <article class="float_left">
            <header>
                <h1>' . $naslov . '</h1>
                <span  class="article_lead">' . $kratkiSadrzaj . '</span>
            </header>
            ';
if($picture != null){
    echo  '<img id="slikaMain" src="' .$target. '" height="85%" width="85%" class="center"/>';
}
echo '
            <p>
                ' . $tekst . '
            </p>
        </article>
    </main>
</div>
    <footer class="clear_floating">
        <p>Kreirao: Filip M.</p>
        <p></p>
        <p>Kontakt: <a href="mailto:fmilkovic@tvz.hr?Subject=Kontakt%20sa%20weba" target="_top">fmilkovic@tvz.hr</a></p>
        <p id="last"><a href="administrator.php">Administracija</a></p>
    </footer>
</body>
</html>
';

mysqli_close($dbc);
