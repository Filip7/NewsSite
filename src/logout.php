<?php
/**
 * Created by PhpStorm.
 * User: filip
 * Date: 29.05.18.
 * Time: 20:03
 */

session_start();

define('__APP__', TRUE);

session_unset();
session_destroy();

$_SESSION['user']['valid'] = "false";

echo '<meta http-equiv="refresh" content="0; url=http://localhost/src/index.php" />';