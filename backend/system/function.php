<?php

class LOAD
{
    public static function VIEW($FILE_NAME)
    {
        return require_once($_SERVER['DOCUMENT_ROOT'].'/'.ROOT.'templates/'.$FILE_NAME.'.view.php');
    }

    public static function PAGE($FILE_NAME)
    {
        return $FILE_NAME.'.php';
    }
}
