<?php
/**
 * Created by PhpStorm.
 * User: filip
 * Date: 05.05.18.
 * Time: 00:08
 */
if($id != "admin") {
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
}

echo '
    <nav>
        <figure class="float_left">
        ';
if ($id != "admin") {
    echo '
   <a href="index.php">
        <img src="../res/circle_logo.png" alt="Ovo je nevidljivi opis jedne slike">
   </a>
    </figure>
    <ul>
            <!--<li><a href="javascript:void(0);" class="icon" onclick="myFunction()">&#9776;</a></li>-->
            ';
}
else{
    echo '
   <a href="../index.php">
        <img src="../../res/circle_logo.png" alt="Ovo je nevidljivi opis jedne slike">
   </a>
    </figure>
    <ul>
            <!--<li><a href="javascript:void(0);" class="icon" onclick="myFunction()">&#9776;</a></li>-->
            ';
}

if($id == "index"){
    echo '
            <li><a href="#" class="active">Home</a></li>
            <li><a href="onama.php">O nama</a></li>
            <li><a href="#">Kontakt</a></li>
    ';
}
else if($id == "onama"){
    echo '
            <li><a href="index.php">Home</a></li>
            <li><a href="#" class="active">O nama</a></li>
            <li><a href="#">Kontakt</a></li>
    ';
}
else if($id == "admin"){
    echo '
            <li><a href="../index.php">Home</a></li>
            <li><a href="administrator.php" class="active">Administracija</a></li>
    ';
}
else{
    echo '
            <li><a href="index.php">Home</a></li>
            <li><a href="onama.php">O nama</a></li>
            <li><a href="#">Kontakt</a></li>
    ';
}

if(!isset($_SESSION['user']['valid']) || $_SESSION['user']['valid'] == "false"){
    echo '<li><a href="login.html">Login</a></li>';
    echo '<li><a href="registracija.html">Registracija</a></li>';
}
else if($_SESSION['user']['valid'] == "true"){
    if($_SESSION['accessLevel'] >= 2 && $id != "admin"){
        echo '<li><a href="admin/administrator.php">Administracija</a></li>';
    }
    echo '<li><a href="logout.php">Logout</a></li>';
}
echo '
        </ul>
    </nav>
';