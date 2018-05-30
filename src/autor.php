<?php
/**
 * Created by PhpStorm.
 * User: filip
 * Date: 30.05.18.
 * Time: 10:33
 */

session_start();
define('__APP__', TRUE);
define('UPLPATH', '../res/');

include("dbconn.php");

$id = "";
$idAutor = $_GET['autorId'];

$query = "SELECT * FROM Clanci WHERE idUser='$idAutor' ORDER BY Datum DESC, VrijemeIzrade DESC";
$result = mysqli_query($dbc, $query);

$query2 = "SELECT * FROM Users WHERE id='$idAutor'";
$result2 = mysqli_query($dbc, $query2);
$row2 = mysqli_fetch_array($result2);

include("header.php");

echo '
<main>
    <h2>'. $row2['korisnickoIme'] .'</h2>
    <h3>Članci od autora: </h3> ';

    while ($row = mysqli_fetch_array($result)) {
        echo '
    <article class="float_left">
            <header>
                <h1><a href="clanak.php?id=' . urldecode($row['id']) . '" style="text-decoration: underline;">' . urldecode($row['Naslov']) . '</a></h1>
                <span  class="article_lead">' . urldecode($row['KratkiSadrzaj']) . '</span>
            </header>';
    }
    echo '   
    </main>
    ';

echo '
</body>
</html>
';

include("footer.php");