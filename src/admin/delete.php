<?php

$id = $_POST['izbrisi'];

define('__APP__', TRUE);

include("../dbconn.php");
$query = "DELETE  FROM Clanci WHERE id='$id'";
$result = mysqli_query($dbc, $query);

mysqli_close($dbc);

echo '<meta http-equiv="refresh" content="0; url=http://localhost/src/admin/administrator.php" />';