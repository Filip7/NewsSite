<?php
/**
 * Created by PhpStorm.
 * User: filip
 * Date: 29.05.18.
 * Time: 21:26
 */

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
        <li><a href="../index.php">Home</a></li>
        <li><a href="../onama.php">O nama</a></li>
        <li><a href="#">Kontakt</a></li>
    </ul>
</nav>
    <main>
        <p>'.$Poruka.'</p> 
    </main>
    ';
include("../footer.php");
echo '
    </body>
    </html>
';
