<?php
/**
 * Created by PhpStorm.
 * User: filip
 * Date: 21.05.18.
 * Time: 11:45
 */

define('__APP__', TRUE);
include('../dbconn.php');

$ime = urlencode($_POST['ime']);
$korisnickoIme = urlencode($_POST['username']);
$email = urlencode($_POST['email']);
$lozinka1 = $_POST['psw'];
$lozinka2 = $_POST['psw-repeat'];

$query = "SELECT * FROM Users WHERE korisnickoIme ='$korisnickoIme'";
$result = mysqli_query($dbc, $query);

if(mysqli_num_rows($result) > 0){
    $Poruka = 'Korisnik ' . $korisnickoIme . ' već postoji. Povratak na registraciju za 5 sekundi 
                <meta http-equiv="refresh" content="5; url=../registracija.html"/> <a href="../registracija.html" class="button">Registracija</a>';
    $id = "";
    include("template.php");
    exit();
}

if($lozinka1 != $lozinka2){
    $Poruka = 'Lozinke nisu iste. Povratak na registraciju za 5 sekundi 
                <meta http-equiv="refresh" content="5; url=../registracija.html"/> <a href="../registracija.html" class="button">Registracija</a>';
    $id = "";
    include("template.php");
    exit();
} else{
    $lozinka = md5($lozinka1);
}

$sql = 'INSERT INTO Users (korisnickoIme, lozinka, ime, email) VALUES(?, ?, ?, ?)';
mysqli_select_db($dbc, 'Users');
$stmt = mysqli_stmt_init($dbc);
if(mysqli_stmt_prepare($stmt, $sql)){
    mysqli_stmt_bind_param($stmt, 'ssss',$korisnickoIme, $lozinka, $ime, $email);
    mysqli_stmt_execute($stmt);
}

echo '<meta http-equiv="refresh" content="0; url=../index.php" />';