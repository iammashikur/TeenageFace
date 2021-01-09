<?php require_once('config.php') ?>
<?php session_start(); ?>

<!DOCTYPE html>
<html lang="en">

<head>
    <?php LOAD::VIEW('head') ?>
    <title>Title</title>
</head>

<body>

    <div class="container">

        <div class="row justify-content-center">

            <div class="col-md-5 col-12">



                <div class="card border-secondary mb-3" style="margin-top:20rem">

                    <?php if(isset($_SESSION["error"])):?>

                    <div class="alert alert-primary" role="alert">
                        <strong><?= $_SESSION["error"] ?></strong>
                    </div>

                    <?php endif; ?>

                    <div class="card-body">


                        <h4 class="card-title">Login</h4>


                        <form action="<?= LOAD::PAGE('system/logger')?>" method="POST">

                            <div class="form-group">
                                <input name="user" type="text" class="form-control" placeholder="User Name" required>
                            </div>

                            <div class="form-group">
                                <input name="pass" type="password" class="form-control" placeholder="Password" required>
                            </div>


                            <button type="submit" name="submit" class="btn btn-sm btn-primary">Login</button>
                        </form>




                    </div>
                </div>

            </div>
        </div>

    </div>

    <?php LOAD::VIEW('script') ?>

</body>

</html>