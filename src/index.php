<?php
/**
 * Created by PhpStorm.
 * User: filip
 * Date: 23.04.18.
 * Time: 10:31
 */

define('UPLPATH', '../res/');
define('__APP__', TRUE);

include("dbconn.php");
$query = "SELECT * FROM Clanci ORDER BY Datum DESC, VrijemeIzrade DESC";
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
';

include("header.php");

echo '
    <div id="main_content">
    <main>
';

while ($row = mysqli_fetch_array($result)) {
    if (urldecode($row['Sakrivena']) != 1) {
        echo '
    <article class="float_left">
            <header>
                <h1><a href="clanak.php?id=' . urldecode($row['id']) . '">' . urldecode($row['Naslov']) . '</a></h1>
                <span  class="article_lead">' . urldecode($row['KratkiSadrzaj']) . '</span>
            </header>';
        if ($row['Slika'] != null) {
            echo '<img src="' . UPLPATH . urldecode($row['Slika']) . '"  class="img-spec center"/>';
        }

        echo '
            <p>' . urldecode($row['Tekst']) . '</p>
     </article>
    ';
    }
}

echo '
 </main>
    </div>
    <footer class="clear_floating">
        <p>Kreirao: Filip M.</p>
        <p>Kontakt: <a href="mailto:fmilkovic@tvz.hr?Subject=Kontakt%20sa%20weba" target="_top">fmilkovic@tvz.hr</a></p>
        <p id="last"><a href="admin/administrator.php">Administracija</a></p>
    </footer>
    
    <script>
    function myFunction() {
    var x = document.getElementById("myTopnav");
    if (x.className === "topnav") {
        x.className += " responsive";
    } else {
        x.className = "topnav";
    }
} 
    </script>
</body>
</html>
';

mysqli_close($dbc);
