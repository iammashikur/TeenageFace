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

            <div class="col-md-9 mt-4">
                <ol class="breadcrumb mb-4">
                    <li class="breadcrumb-item"><a href="<?= LOAD::PAGE('index') ?>">Dashboard</a></li>
                    <li class="breadcrumb-item active">Settings</li>
                </ol>


                <form>
                <fieldset>
                    <div class="form-group row">
                    <label for="staticEmail" class="col-sm-2 col-form-label">VIEWS CREDIT</label>
                    <div class="col-sm-10">
                        <input type="number"  class="form-control-plaintext" id="staticEmail" placeholder="Credit Per 100 Views (in BDT)">
                    </div>
                    </div>

                    <div class="form-group row">
                    <label for="staticEmail" class="col-sm-2 col-form-label">REFER CREDIT</label>
                    <div class="col-sm-10">
                        <input type="number"  class="form-control-plaintext" id="staticEmail" placeholder="Credit Per Referrals (in BDT)">
                    </div>
                    </div>

                    <button type="submit" class="btn btn-primary float-right">save</button>
                </fieldset>
                </form>
            
            </div>



        
        </div>
    </div>

    <?php LOAD::VIEW('script') ?>

</body>
</html>