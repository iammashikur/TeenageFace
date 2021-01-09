<?php if(isset($D->js_script_min)) echo $D->js_script_min;?>
<?php if (!$D->show_profile) { ?>
<?php $this->load_template('_restricted-profile.php'); ?>
<?php } else { ?>
<?php

function standard_count($num) {

   if($num>1000) {
 
         $x = round($num);
         $x_number_format = number_format($x);
         $x_array = explode(',', $x_number_format);
         $x_parts = array('K', 'M', 'B', 'T');
         $x_count_parts = count($x_array) - 1;
         $x_display = $x;
         $x_display = $x_array[0] . ((int) $x_array[1][0] !== 0 ? '.' . $x_array[1][0] : '');
         $x_display .= $x_parts[$x_count_parts - 1];
 
         return $x_display;
 
   }
 
   return $num;
}

$pay_settings = $this->db2->query("SELECT * FROM pay_settings WHERE id = 1");
foreach($pay_settings as $pay)
{
    $D->views_credit = $pay['views_credit'];
    $D->refer_credit = $pay['refer_credit'];
    $D->min_payout = $pay['min_payout'];
}

$withdraws = $this->db2->query("SELECT * FROM withdraws WHERE status= 1 AND user_id =".$D->me->iduser);
$payouts = 0;
foreach($withdraws as $wd){
  $wds = $wd['amount'];
  $payouts+=$wds;
}

$artic = $this->db2->query("SELECT * FROM articles WHERE idwriter =".$D->me->iduser);
        
        $sum = 0;
        foreach($artic as $post)
        {
            $sum = $sum + $post['numviews'];
        }
        
        $D->article_views = $sum;

function earn_bdt($views, $D){

   return $D->views_credit/100*$views;

}

$inv = $this->db2->query("SELECT * FROM referrals WHERE user_id =".$D->me->iduser);

$ref = 0;
$ref_inc = 0;
foreach($inv as $in)
{
   $refer_inc = $in['credit'];
   $ref_inc+= $refer_inc;
   $ref++;
}


if(isset($_GET['payout'])){

   $current = earn_bdt($D->article_views, $D)+$ref_inc-$payouts;

   if($current >= $D->min_payout){


      $pay_getway = $_GET['getway'];
      $pay_account = $_GET['account'];
      $user = $D->me->iduser;
      $this->db2->query("INSERT INTO withdraws (user_id, amount, status, paid , date, getway, account)
      VALUES ('$user', '$current', '1' , '0', 'time()', '$pay_getway', '$pay_account')");


      echo '<div style="margin-bottom:20px;padding:8px; background:black; color:green">Payout '.$current.' BDT is Processing</div>';
   }
   else{
      echo '<div style="margin-bottom:20px;padding:8px; background:black; color:#fff">Minimum Payout '.$D->min_payout.' BDT </div>';
   }

   
}


?>


<div id="profile-content-area">



    <button class="withdraw" id="click">Get Paid</button>






    <script>
    $("#click").click(function() {
        $("#payment").toggle();
    });



    function myFunction() {
        var copyText = document.getElementById("myInput");
        copyText.select();
        copyText.setSelectionRange(0, 99999)
        document.execCommand("copy");
        alert("Refer Link Copied Share This For Earn More.");
    }
    </script>

    <input style="
   margin-left:5px;
   padding: 8px;
    border: inherit;
    background: cornflowerblue;
    border-radius: 15px;
    width: 200px;" type="text" value="<?= $K->SITE_URL.'signup?refer='.$D->me->iduser?>" id="myInput">
    <button onclick="myFunction()" class="withdraw">COPY</button>


    <div id="payment" style="display: none; margin-left:5px; margin-top:30px;margin-bottom:50px; ">


        <form action="<?= $K->SITE_URL.$D->username.'/earnings'?>">


            <input type="hidden" name="">


            <select name="getway" style="padding: 8px;" required>
                <option value="bkash">bkash</option>
                <option value="rocket">rocket</option>
            </select>

            <input style="padding: 8px;" type="text" name="account" placeholder="Account Number" required>

            <button name="payout" type="submit" style="text-decoration: none;" class="withdraw">Payout</button>


        </form>
    </div>

    <div class="row">
        <div class="col-6">
            <div class="box" style="background: linear-gradient(132deg, #5672ff 46%, #3e5cf1 60%);">
                <h1 class="w-title">Total Blog View</h1>
                <center>
                    <p style="font-size:30px; margin-top:60px; margin-bottom:60px;">
                        <?php echo standard_count($D->article_views)?></p>
                </center>
            </div>
        </div>
        <div class="col-6">
            <div class="box" style="background: linear-gradient(132deg, #ff6056 46%, #f13e3e 60%);">
                <h1 class="w-title">Total Invited</h1>

                <center>
                    <p style="font-size:30px; margin-top:60px; margin-bottom:60px;"><?= $ref ?> People</p>
                </center>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-6">
            <div class="box" style="background: linear-gradient(132deg, #4ac176 46%, #34a75f 60%);">
                <h1 class="w-title">Total Earnings</h1>
                <center>
                    <p style="font-size:30px; margin-top:60px; margin-bottom:60px;">
                        <?= earn_bdt($D->article_views, $D)+$ref_inc ?> Taka</p>
                </center>
            </div>
        </div>
        <div class="col-6">
            <div class="box" style="background: linear-gradient(132deg, #5672ff 46%, #3e5cf1 60%);">
                <h1 class="w-title">Current Balance</h1>
                <center>
                    <p style="font-size:30px; margin-top:60px; margin-bottom:60px;">
                        <?= earn_bdt($D->article_views, $D)+$ref_inc-$payouts ?> Taka</p>
                </center>
            </div>
        </div>
    </div>


    <?php $wd = $this->db2->query("SELECT * FROM withdraws WHERE status= 1 AND user_id =".$D->me->iduser." ORDER BY id desc"); ?>

    <style>
#history {
  font-family: Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
  padding: 5px;
  margin-top: 20px;
}

#history td, #history th {
  border: 1px solid #ddd;
  padding: 8px;
}

#history tr:nth-child(even){background-color: #f2f2f2;}

#history tr:hover {background-color: #ddd;}

#history th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #4CAF50;
  color: white;
}
</style>

    <table id="history">
        <tr>
         <th>Amount</th>
         <th>Getwat</th>
         <th>Account</th>
         <th>Date</th>
         <th>Status</th>
        </tr>

        <?php foreach($wd as $dw): ?>

        <tr>
            <td><?= $dw['amount'] ?> BDT</td>
            <td><?= $dw['getway'] ?></td>
            <td><?= $dw['account'] ?></td>
            <td><?= $dw['date'] ?></td>
            <td>
            <?php
            
            if($dw['paid'] == 0)
            {
               echo 'Prosessing';
            }
            if($dw['paid'] == 1)
            {
               echo 'Paid';
            }


            ?>
            </td>
        </tr>

        <?php endforeach; ?>


    </table>



    <div class="clear"></div>
    <?php $this->load_template('_foot-out.php'); ?>
</div>
<?php } ?>
<?php if ($D->_IS_LOGGED) { ?>
<script>
var _menu_resp_dashboard = stripslashes('<?php echo strJS(cutLineJump($D->mini_card_user))?>') + stripslashes(
    '<?php echo strJS(cutLineJump($D->dashboard_menu_responsive))?>') + '<div class="mrg10B"></div>';

makeMenuResp('dashboard');
</script>
<?php } ?>
<?php if (isset($D->titlePhantom) && !empty($D->titlePhantom)) { ?>
<div id="newtitlesite" style="display:none;"><?php echo $D->titlePhantom?></div>
<?php } ?>