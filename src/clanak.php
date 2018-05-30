<?php
/**
 * Created by PhpStorm.
 * User: filip
 * Date: 28.04.18.
 * Time: 22:26
 */

session_start();

// Sometimes life gives you lemons, and you say that's so cliche

$id = $_GET['id'];

define('UPLPATH', '../res/');
define('__APP__', TRUE);

include("dbconn.php");
$query = "SELECT * FROM Clanci WHERE id='$id'";
$result = mysqli_query($dbc, $query);

include("header.php");

echo '
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
            <div id="myModal" class="modalSlike">
              <span class="close-image">&times;</span>
              <img class="modal-content-slike" id="img01">
              <div id="caption"></div>
            </div>
            ';
    }

    $idUser = $row['idUser'];
    $query2 = "SELECT * FROM Users WHERE id='$idUser'";
    $result2 = mysqli_query($dbc, $query2);
    $row2 = mysqli_fetch_array($result2);

    echo '
            <p>' . urldecode($row['Tekst']) . '</p>
            <br>
            <div id="oClanku">Objavljeno: ' . $row['Datum'] . ' u ' . $row['VrijemeIzrade'] . ' Autor: <a href="autor.php?autorId='. $idUser .'">'. $row2['korisnickoIme'].'</a></div>
     </article>
    ';
}

echo '
 </main>
    </div>
    ';
include("footer.php");
echo '
    <script src="modalSlika.js"></script>
</body>
</html>
';

mysqli_close($dbc);