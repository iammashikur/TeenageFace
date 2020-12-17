<?php require_once('config.php') ?>
<?php require_once('system/auth.php') ?>

<!DOCTYPE html>
<html lang="en">

<head>
    <?php LOAD::VIEW('head') ?>
    <title>Title</title>
</head>

<body>

    <?php LOAD::VIEW('navbar') ?>

    <div class="container">
        <div class="row">

            <div class="col-md-3 mt-4">

                <?php LOAD::VIEW('menu') ?>

            </div>

        </div>
    </div>

    <?php LOAD::VIEW('script') ?>

</body>

</html>
