<?php
/**
 * Created by PhpStorm.
 * User: filip
 * Date: 28.04.18.
 * Time: 18:03
 */

if (!defined('__APP__')) {
    die("Hacking attempt");
}

$dbc = mysqli_connect('localhost', 'root', '', 'PWA') or die('Error connecting to MySQL/MariaDB server.');