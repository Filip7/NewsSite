<?php
/**
 * Created by PhpStorm.
 * User: filip
 * Date: 23.04.18.
 * Time: 10:31
 */

define('UPLPATH', '../res/');
define('__APP__', TRUE);

session_start();

include("dbconn.php");
$query = "SELECT * FROM Clanci ORDER BY Datum DESC, VrijemeIzrade DESC";
$result = mysqli_query($dbc, $query);

$id="index";
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
';

include("footer.php");

echo'
    
    <script>
    function myFunction() {
    let x = document.getElementById("myTopnav");
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
