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

    
if(isset($_GET['pay']))
{

    $update = $DB->Update("Update withdraws set `paid` = :status where id = :id",[
        'id' => $_GET['pay'],
        'status' => '1',
    ]);
}

   

    $offset = 0;
    $limit  = 10;

    if(isset($_GET['page']) && $_GET['page'] > 1)
    {
        $page = $_GET['page']-1;
        $offset = $page*$limit;
        $withdraws = $DB->select("Select * from withdraws ORDER BY id desc LIMIT $limit OFFSET $offset");
       
        
    }
    else{
        $withdraws = $DB->select("Select * from withdraws ORDER BY id desc LIMIT $limit OFFSET $offset");
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
                        <th scope="col">Getway</th>
                        <th scope="col">Account</th>
                        <th scope="col">Date</th>
                        <th scope="col">Action</th>
                        </tr>
                    </thead>


                    <tbody>

                    <?php foreach($withdraws as $withdraw): ?>

                        <tr>

                        <th scope="row">
                            
                        <?php
                            $withdraws = $DB->select("Select * from users WHERE iduser = $withdraw->user_id");
                            foreach($withdraws as $user)
                            {
                               echo $user->firstname.' '.$user->lastname;
                            }
                        ?>

                        </th>

                        <th scope="row"><?= $withdraw->amount ?></th>
                        <td><?= $withdraw->getway ?></td>
                        <td><?= $withdraw->account ?></td>
                        <td><?= $withdraw->date ?></td>
                        <td>
                            
                        <?php if($withdraw->paid == 0): ?>

                        <a href="?pay=<?= $withdraw->id ?>" class="btn btn-primary btn-sm"> Pay Now </a>
                        
                        <?php else: ?>
                        <button class="btn btn-success btn-sm"> Paid </button>
                        <?php endif ?>


                        </td>
                        
                        </tr>

                        <?php endforeach ?>
                    
                    </tbody>
                </table>

                <?php $total = $DB->select("Select * from withdraws"); if(count($total) > $limit): ?>

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