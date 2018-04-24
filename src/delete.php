<?php

$id = $_POST['izbrisi'];

$dbc = mysqli_connect('localhost', 'root', '', 'PWA') or die('Error connecting to MySQL/MariaDB server.');
$query = "DELETE  FROM Clanci WHERE id='$id'";
$result = mysqli_query($dbc, $query);

mysqli_close($dbc);

echo '<meta http-equiv="refresh" content="0; url=http://localhost/src/administrator.php" />';