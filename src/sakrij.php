<?php

$id = $_POST['sakrij'];
$sakrivena = $_POST['sakriveno'];
$sakrivena = $sakrivena == 1 ? 0 : 1;

$dbc = mysqli_connect('localhost', 'root', '', 'PWA') or die('Error connecting to MySQL/MariaDB server.');
$query = "UPDATE Clanci SET Sakrivena='$sakrivena' WHERE id='$id';";
$result = mysqli_query($dbc, $query);

mysqli_close($dbc);

echo '<meta http-equiv="refresh" content="0; url=http://localhost/src/administrator.php" />';