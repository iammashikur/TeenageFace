<?php
session_start();


if (!empty($_SESSION["user"])) {

    if($_SESSION["user"] !== $CFG->PM_USER && $_SESSION["pass"] !== $CFG->PM_PASS){
        return header("LOCATION:".LOAD::PAGE('login')) ;
    }

}
else{
    return header("LOCATION:".LOAD::PAGE('login')) ;
}
