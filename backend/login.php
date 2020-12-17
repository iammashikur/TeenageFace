<?php require_once('config.php') ?>
<?php // require_once('system/auth.php')?>

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
                    <div class="card-body">


                        <h4 class="card-title">Login</h4>


                        <form action="<?= LOAD::PAGE('system/auth')?>" method="POST">
                            <div class="form-group">
                                <input type="email" class="form-control" placeholder="Email" required>
                            </div>
                            <div class="form-group">
                                <input type="password" class="form-control" placeholder="Password" required>
                            </div>


                            <button name="submit" class="btn btn-sm btn-primary">Login</button>
                        </form>




                    </div>
                </div>

            </div>
        </div>

    </div>

    <?php LOAD::VIEW('script') ?>

</body>

</html>