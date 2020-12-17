<?php
session_start();

if(isset($_POST['submit'])){

    echo 'something posted';

}

if (empty($_SESSION["user_id"])) {
    return header("LOCATION:".LOAD::PAGE('login')) ;
}
