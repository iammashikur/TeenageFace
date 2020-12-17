<?php require_once('config.php') ?>
<?php require_once('system/auth.php') ?>

<!DOCTYPE html>
<html lang="en">
<head>
    <?php LOAD::VIEW('head') ?>
    <title>Payments</title>
</head>
<body>

    <?php LOAD::VIEW('navbar') ?>

    <?php

    $offset = 0;
    $limit  = 10;

    if(isset($_GET['page']) && $_GET['page'] > 1)
    {
        $page = $_GET['page']-1;
        $offset = $page*$limit;
        $users = $DB->select("Select * from users LIMIT $limit OFFSET $offset");
       
        
    }
    else{
        $users = $DB->select("Select * from users LIMIT $limit OFFSET $offset");
    }
    
    
    
    ?>

    <div class="container">
        <div class="row">

            <div class="col-md-3 mt-4">

                <?php LOAD::VIEW('menu') ?>

            </div>

            <div class="col-md-9 mt-4">
                <ol class="breadcrumb mb-4">
                    <li class="breadcrumb-item"><a href="<?= LOAD::PAGE('index') ?>">Dashboard</a></li>
                    <li class="breadcrumb-item active">Payments</li>
                </ol>


                <table class="table mb-4">
                    <thead>
                        <tr>
                        <th scope="col">Name</th>
                        <th scope="col">Withdraw Credit</th>
                        <th scope="col">Account</th>
                        <th scope="col">Date</th>
                        <th scope="col">Action</th>
                        </tr>
                    </thead>


                    <tbody>

                    <?php foreach($users as $user): ?>

                        <tr>
                        <th scope="row"><?= $user->iduser ?></th>
                        <td><?= $user->firstname ?></td>
                        <td>Credit</td>
                        <td>Getway</td>
                        <td>Date</td>
                        </tr>

                        <?php endforeach ?>
                    
                    </tbody>
                </table>

                <?php $total = $DB->select("Select * from users"); if(count($total) > $limit): ?>

                <?php $page_count = count($total)/$limit; if(is_float($page_count)){ $page_count =  round($page_count)+1; } ?>

                <div>
                <ul class="pagination pagination-sm">


                  <li class="page-item <?php if(($_GET['page'] <= 1)){echo 'disabled';} ?>">
                    <a class="page-link" href="?page=<?= $_GET['page']-1 ?>">«</a>
                  </li>


                  <?php for ($x = 1; $x <= $page_count; $x++): ?>
                  <li class="page-item  <?php if(($_GET['page'] == $x)){echo 'active';} ?>">
                    <a class="page-link" href="?page=<?= $x ?>"><?= $x ?></a>
                  </li>
                 <?php endfor ?>

                 <li class="page-item <?php if(($_GET['page'] >= $page_count)){echo 'disabled';} ?>">
                    <a class="page-link" href="?page=<?= $_GET['page']+1 ?>">»</a>
                  </li>


                </ul>
              </div>

              <?php endif ?>


            </div>
        
        </div>
    </div>

    <?php LOAD::VIEW('script') ?>

</body>
</html>