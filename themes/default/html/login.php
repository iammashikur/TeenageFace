
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta name="Description" content="Enter your description here" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootswatch/4.5.2/materia/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.0/css/all.min.css">
    <link rel="stylesheet" href="assets/css/style.css">


    <title>
        <?php echo (isset($D->page_title)?$D->page_title:$K->SITE_TITLE); ?>
    </title>


    <meta http-equiv="cleartype" content="on">
    <meta name="HandheldFriendly" content="True">
    <meta name="MobileOptimized" content="320">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0">
    <meta property="og:type" content="website" />
    <meta property="og:site_name" content="<?php echo stripslashes($K->SITE_TITLE); ?>">
    <meta property="og:title" content="<?php echo (isset($D->page_title) ? stripslashes($D->page_title) : stripslashes($K->SITE_TITLE)); ?>">
    <meta property="og:description" content="<?php // echo stripslashes($K->DESCRIPTION); ?>">
    <meta property="og:url" content="<?php echo $K->SITE_URL; ?>">
    <meta property="og:image" content="<?php echo($K->SITE_URL.'themes/'.$K->THEME.'/imgs/logo-welcome.png')?>" />
    <base href="<?php echo $K->SITE_URL ?>" />
    <?php echo $D->header_data ?>
    <?php if (isset($D->is_home) && $D->is_home) { ?>
    <link href='http://fonts.googleapis.com/css?family=Raleway:100' rel='stylesheet' type='text/css'>
    <?php } ?>
    <?php if (!empty($K->KEY_API_GOOGLE)) { ?>
    <script src="https://maps.googleapis.com/maps/api/js?key=<?php echo $K->KEY_API_GOOGLE;?>&v=3.exp&libraries=places"></script>
    <?php } ?>
    <?php require_once('_analytics.php');?>


    <style>


        .row
        {
            margin-right: -30px;
            margin-left: -30px;
        }

        .bg
        {
            background: #f1f1f1;
            height: 100vh;
        }
        .bg img{
            width:70%;
            position:absolute;
            bottom: 0px;
        }

        .left{

         margin-top:100px;
         width:250px;
        }

        .container-fluid
        {
            overflow: hidden;
        }


    </style>
</head>

<body>


    <div class="container-fluid">
        <div class="row">
            <div class="col-md-8 d-md-block d-none">

                <div class="bg">

                <img src="data/logo/left.png">


                </div>

            </div>
            <div class="col-md-4">
             



                <div id="area-login">
                    <div id="titleform">
                        <?php echo $this->lang('login_title', array('#SITE_TITLE#'=>$K->SITE_TITLE))?>
                    </div>

                    <div id="area-form">
                        <form id="formlogin" name="formlogin" method="post">
                            <div class="nameitem">
                                <?php echo $this->lang('login_username_or_email')?>
                            </div>
                            <div><input type="text" class="boxinput" name="username" id="username" placeholder="<?php echo $this->lang('login_username_or_email')?>"></div>
                            <div id="alert-username" class="alert alert-red hide"></div>
                            <div class="nameitem">
                                <?php echo $this->lang('login_password')?>
                            </div>
                            <div><input type="password" class="boxinput" name="password" id="password" placeholder="<?php echo $this->lang('login_password')?>"></div>
                            <div id="alert-password" class="alert alert-red hide"></div>

                            <div id="alert-error-form" class="alert alert-red hide"></div>
                            <div id="areabutton"><button class="btn" name="go_login" id="go_login" type="submit"><?php echo $this->lang('login_bsubmit')?></button></div>

                            <?php if ($K->LOGIN_WITH_REMEMBER) { ?>
                            <div id="arearemember"><input type="checkbox" name="rememberme" id="rememberme"><span style="padding:5px; padding-left:5px;"><?php echo $this->lang('login_txt_rememberme')?></span></div>
                            <?php } ?>
                        </form>

                        <div id="link-forgot" class="link link-blue"><a href="<?php echo $K->SITE_URL?>login/resetpass"><?php echo $this->lang('login_forgot_password')?></a></div>

                    </div>


                    <a href="/signup">
                    <img class="left" src="data/logo/right.png">
                    </a>




                </div>
                    


            </div>
        </div>
    </div>


    <!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.1/umd/popper.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/js/bootstrap.min.js"></script> -->

    <script>


        var error_username = stripslashes('<?php echo strJS($this->lang('
            login_error_username '))?>');
        var error_password = stripslashes('<?php echo strJS($this->lang('
            login_error_password '))?>');
        var with_rememberme = <?php echo $K->LOGIN_WITH_REMEMBER?'1':'0'; ?>;

        $('#go_login').click(function() {
            login('#alert-error-form', '#go_login');
            return false;

        })


    </script>
    
</body>

</html>

