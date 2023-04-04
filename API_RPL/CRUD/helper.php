<?php


    define('HOST', 'localhost');
    define('USER', 'root');
    define('PASS', '');
    define('DB', 'rpl');

    $db_connect = mysqli_connect( HOST, USER, PASS, DB) or die ('TIDAK konek');

    header('Content-Type: application/json');
?>

