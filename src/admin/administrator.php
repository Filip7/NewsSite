<?php
/**
 * Created by PhpStorm.
 * User: filip
 * Date: 23.04.18.
 * Time: 10:31
 */

define('__APP__', TRUE);

include("../dbconn.php");
$query = "SELECT * FROM Clanci ORDER BY Datum DESC";
$result = mysqli_query($dbc, $query);

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
        <li><a href="../index.php">Povratak na stranicu</a></li>
        <li><a href="administrator.php " class="active">Administracija</a></li>
    </ul>
</nav>
<div id="main_content">
    <main>
        <h1>Administracija news portala</h1>
        <br>
        <p><a href="unos.html">Unos vijesti</a></p>
        <br>
        ';
echo '<table id="administratorTable">';
echo '
<tr>
    <th>Naslov</th>
    <th>Datum</th>
    <th>Akcija</th>
</tr>
';
while ($row = mysqli_fetch_array($result)) {
    $color = 'value="Prikazi"';
    if ($row["Sakrivena"] == 0) {
        $color = 'value="Sakrij" style="background-color: gray; width: 79px;"';
    }
    echo '<tr>';
    echo '<td>' . $row['Naslov'] . '</td>';
    echo '<td>' . $row['Datum'] . ' </td>';
    echo '<td>';
    echo '<div class="float_left" style="padding: 5px;"><form  name="sakrij" action="sakrij.php" method="post">
						<input type="hidden" name="sakrij" value="' . $row['id'] . '" />
						<input type="hidden" name="sakriveno" value="' . $row['Sakrivena'] . '" />
						<input type="submit"  ' . $color . '>
				 </form></div>
			';
    echo '<div class="float_left" style="padding: 5px;"><form  name="izbrisi" action="delete.php" method="post">
						<input type="hidden" name="izbrisi" value="' . $row['id'] . '" />
						<input type="submit" value="Izbriši" style="background-color: red;">
				 </form></div>
			';

    echo '</td></tr>';
}
echo '</table>';
echo '
    </main>
</div>
<footer class="clear_floating">
    <p>Kreirao: Filip M.</p>
    <p>Kontakt: <a href="mailto:fmilkovic@tvz.hr?Subject=Kontakt%20sa%20weba" target="_top">fmilkovic@tvz.hr</a></p>
    <p id="last"><a href="administrator.php">Administracija</a></p>
</footer>
</body>
</html>

';

mysqli_close($dbc);
