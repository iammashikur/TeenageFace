<?php

DEFINE('ROOT','backend/');
// Include Required Scripts
include_once('../system/config.php');
include_once('system/database.php');
include_once('system/function.php');

// Set CFG As a Std Class
$CFG = new stdClass;

$CFG->HOST = $K->DB_HOST;
$CFG->USER = $K->DB_USER;
$CFG->PASS = $K->DB_PASS;
$CFG->DBSE = $K->DB_NAME;
$CFG->PM_USER = $K->PM_USER;
$CFG->PM_PASS = $K->PM_PASS;

// DB Connection
$DB = new Database(
    $CFG->HOST,
    $CFG->DBSE,
    $CFG->USER,
    $CFG->PASS
);

?>