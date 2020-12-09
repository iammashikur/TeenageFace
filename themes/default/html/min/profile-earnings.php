<?php if(isset($D->js_script_min)) echo $D->js_script_min;?>
<?php if (!$D->show_profile) { ?>
<?php $this->load_template('_restricted-profile.php'); ?>
<?php } else { ?>
<div id="profile-content-area">

   <button class="withdraw">Withdraw</button>

   <button class="withdraw" style="width:200px">Earn Inviting Friends</button>


   <div class="row">
      <div class="col-6">
         <div class="box" style="background: linear-gradient(132deg, #5672ff 46%, #3e5cf1 60%);">
            <h1 class="w-title">Total Blog View</h1>
            <center>
                <p style="font-size:30px; margin-top:60px; margin-bottom:60px;">100K People</p>
            </center>
         </div>
      </div>
      <div class="col-6">
         <div class="box" style="background: linear-gradient(132deg, #ff6056 46%, #f13e3e 60%);">
            <h1 class="w-title">Total Invited</h1>

            <center>
                <p style="font-size:30px; margin-top:60px; margin-bottom:60px;">3 People</p>
            </center>
         </div>
      </div>
   </div>
   <div class="row">
      <div class="col-6">
         <div class="box" style="background: linear-gradient(132deg, #4ac176 46%, #34a75f 60%);">
            <h1 class="w-title">Total Earnings</h1>
            <center>
                <p style="font-size:30px; margin-top:60px; margin-bottom:60px;">10000 Taka</p>
            </center>
         </div>
      </div>
      <div class="col-6">
         <div class="box" style="background: linear-gradient(132deg, #5672ff 46%, #3e5cf1 60%);">
            <h1 class="w-title">Current Balance</h1>
            <center>
                <p style="font-size:30px; margin-top:60px; margin-bottom:60px;">500 Taka</p>
            </center>
         </div>
      </div>
   </div>
</div>
<div class="clear"></div>
<?php $this->load_template('_foot-out.php'); ?>
</div>
<?php } ?>
<?php if ($D->_IS_LOGGED) { ?>
<script>
   var _menu_resp_dashboard = stripslashes('<?php echo strJS(cutLineJump($D->mini_card_user))?>') + stripslashes('<?php echo strJS(cutLineJump($D->dashboard_menu_responsive))?>') + '<div class="mrg10B"></div>';
   
   makeMenuResp('dashboard');
   
</script>
<?php } ?>
<?php if (isset($D->titlePhantom) && !empty($D->titlePhantom)) { ?>
<div id="newtitlesite" style="display:none;"><?php echo $D->titlePhantom?></div>
<?php } ?>