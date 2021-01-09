<?php require_once('config.php') ?>
<?php require_once('system/auth.php') ?>
<?php


if(isset($_POST['submit']))
{

    $DB->Update("Update pay_settings set `views_credit` = :views_credit , `refer_credit` = :refer_credit , `min_payout` = :min_payout where id = :id",[
        'id' => 1,
        'views_credit' => $_POST['views_credit'],
        'refer_credit' => $_POST['refer_credit'],
        'min_payout' => $_POST['min_payout']
    ]);

}


?>

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

            <div class="col-md-9 mt-4">
                <ol class="breadcrumb mb-4">
                    <li class="breadcrumb-item"><a href="<?= LOAD::PAGE('index') ?>">Dashboard</a></li>
                    <li class="breadcrumb-item active">Settings</li>
                </ol>


                <form method="post" action="">
                    <fieldset>


                        <?php foreach($DB->Select("Select * from pay_settings") as $settings): ?>


                        <div class="form-group row">
                            <label for="staticEmail" class="col-sm-2 col-form-label">VIEWS CREDIT</label>
                            <div class="col-sm-10">
                                <input name="views_credit" type="number" class="form-control-plaintext" id="staticEmail"
                                    value="<?= $settings->views_credit ?>">
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="staticEmail" class="col-sm-2 col-form-label">REFER CREDIT</label>
                            <div class="col-sm-10">
                                <input name="refer_credit" type="number" class="form-control-plaintext" id="staticEmail"
                                value="<?= $settings->refer_credit ?>">
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="staticEmail" class="col-sm-2 col-form-label">MIN PAYOUT</label>
                            <div class="col-sm-10">
                                <input name="min_payout" type="number" class="form-control-plaintext" id="staticEmail"
                                 value="<?= $settings->min_payout ?>">
                            </div>
                        </div>

                        <?php endforeach ?>

                        <button name="submit" type="submit" class="btn btn-primary float-right">save</button>
                    </fieldset>
                </form>

            </div>




        </div>
    </div>

    <?php LOAD::VIEW('script') ?>

</body>

</html>