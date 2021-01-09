<?php


session_start();

DEFINE('ROOT','backend/');
// Include Required Scripts
include_once('../../system/config.php');
include_once('function.php');

// Set CFG As a Std Class
$CFG = new stdClass;
$CFG->PM_USER = $K->PM_USER;
$CFG->PM_PASS = $K->PM_PASS;



if(isset($_POST['submit'])){

    if($_POST['user'] == $CFG->PM_USER && $_POST['pass'] == $CFG->PM_PASS)
    {

        echo "true";
        $_SESSION["user"] = $_POST['user'];
        $_SESSION["pass"] = $_POST['pass'];
        $_SESSION["loggedin"] = "true";

    
        return header("LOCATION: ../".LOAD::PAGE('index')) ;
    }
    else{

        $_SESSION["error"] = "Invalid Credentials";
        return header("LOCATION: ../".LOAD::PAGE('login')) ;
    }
    

}

?>