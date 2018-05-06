<?php

$id = $_POST['izbrisi'];

define('UPLPATH', '../../res/');
define('__APP__', TRUE);

include("../dbconn.php");
$query = "SELECT Slika FROM Clanci WHERE id='$id'";
$result = mysqli_query($dbc, $query);
$nazivSlike = mysqli_fetch_array($result);
if($nazivSlike['Slika'] != null){
    unlink(UPLPATH.$nazivSlike['Slika']);
}

$query = "DELETE  FROM Clanci WHERE id='$id'";
$result = mysqli_query($dbc, $query);

mysqli_close($dbc);

echo '<meta http-equiv="refresh" content="0; url=http://localhost/src/admin/administrator.php" />';
