<?php
/*
********************************************************
* @author Santos Montano B. (Lito Santos M.)
* @author_url 1: http://www.kanorika.com
* @author_url 2: http://codecanyon.net/user/kanorika
* @author_email: info@kanorika.com   
********************************************************
* iSocial - Social Networking Platform
* Copyright (c) 2018 iSocial. All rights reserved.
********************************************************
*/

    ini_set('upload_max_filesize', '10M');
    chdir(dirname(__FILE__));

	require_once('helpers/functions.php');
	require_once('config.php');

	session_start();

	$db1 = new mysql($K->DB_HOST, $K->DB_USER, $K->DB_PASS, $K->DB_NAME);
	$db2 = &$db1;

	$network = new network();
	$network->load();

    if (function_exists('date_default_timezone_set')) date_default_timezone_set($K->TIMEZONE);

	$user = new user();
	$user->load();

	$page = new page();
	$page->load();

?>