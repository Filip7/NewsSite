<?php
/**
 * Created by PhpStorm.
 * User: filip
 * Date: 24.03.18.
 * Time: 15:19
 */
    $naslov = $_POST['naslov'];
    $kratkiSadrzaj = $_POST['kratkiSadrzaj'];
    $tekst = $_POST['tekst'];
    $vrstaVijesti = $_POST['vrstaVijesti'];
    $SakrijVijest = (isset($_POST['sakrijVijest']) ? $_POST['sakrijVijest'] : 0);

    $picture = $_FILES['picture']['name'];
    $target = '../res/'.$picture;
    move_uploaded_file($_FILES['picture']['tmp_name'], '$target');

    $curr_time = date("Y-m-d");

    $dbc = mysqli_connect('localhost', 'root', '', 'PWA') or die('Error connecting to MySQL/MariaDB server.');
    $query = "INSERT INTO Clanci(Datum, Naslov, KratkiSadrzaj, Tekst, Slika, Sakrivena) VALUES('$curr_time', '$naslov', '$kratkiSadrzaj', '$tekst', '$picture', '$SakrijVijest')";
    $result = mysqli_query($dbc, $query) or die('Error querying database.');

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
        <a href="index.html">
            <img src="../res/circle_logo.png" alt="Ovo je nevidljivi opis jedne slike">
        </a>
    </figure>
    <ul>
        <li><a href="index.html">Home</a></li>
        <li><a href="onama.html">O nama</a></li>
        <li><a href="#">Kontakt</a></li>
    </ul>
</nav>
<div id="main_content">
    <main>
        <article class="float_left">
            <header>
                <h1>'.$naslov.'</h1>
                <span  class="article_lead">'.$kratkiSadrzaj.'</span>
            </header>
            <p>
                '.$tekst.'
            </p>
        </article>
    </main>
</div>
    <footer class="clear_floating">
        <p>Kreirao: Filip M.</p>
        <p></p>
        <p>Kontakt: <a href="mailto:fmilkovic@tvz.hr?Subject=Kontakt%20sa%20weba" target="_top">fmilkovic@tvz.hr</a></p>
        <p id="last"><a href="unos.html">Unos vijesti</a></p>
    </footer>
</body>
</html>
';

    mysqli_close($dbc);
?>