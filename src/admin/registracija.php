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

if($lozinka1 != $lozinka2){
    echo 'Lozinke nisu iste!';
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