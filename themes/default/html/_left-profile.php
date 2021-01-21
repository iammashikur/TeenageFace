    <div class="space-box">
        <div class="header-space-box"><?php echo $this->lang('profile_txt_intro')?></div>
        <div class="body-space-box">
            <?php if (!empty($D->aboutme)) { ?>
            <div class="intro-space-box"><?php echo $D->aboutme?></div>
            <?php } ?>

            <?php if (!empty($D->currentcity)) { ?>
            <div class="item-with-icon">
                <div class="part1"><img src="<?php echo getImageTheme('prof_home.png')?>"></div>
                <div class="part2"><?php echo $this->lang('profile_txt_livein')?> <span class="resalt"><?php echo $D->currentcity?></span></div>
                <div class="clear"></div>
            </div>
            <?php } ?>

            <?php if (!empty($D->hometown)) { ?>
            <div class="item-with-icon">
                <div class="part1"><img src="<?php echo getImageTheme('prof_placeholder.png')?>"></div>
                <div class="part2"><?php echo $this->lang('profile_txt_from')?> <span class="resalt"><?php echo $D->hometown?></span></div>
                <div class="clear"></div>
            </div>
            <?php } ?>

            <?php if (!empty($D->text_gender)) { ?>
            <div class="item-with-icon">
                <div class="part1"><img src="<?php echo getImageTheme('prof_sex.png')?>"></div>
                <div class="part2"><?php echo $this->lang('profile_txt_iam')?> <span class="resalt"><?php echo $D->text_gender?></span></div>
                <div class="clear"></div>
            </div>
            <?php } ?>

            <?php if (!empty($D->text_birthday)) { ?>
            <div class="item-with-icon">
                <div class="part1"><img src="<?php echo getImageTheme('prof_calendar.png')?>"></div>
                <div class="part2"><?php echo $this->lang('profile_txt_born')?> <span class="resalt"><?php echo $D->text_birthday?></span></div>
                <div class="clear"></div>
            </div>
            <?php } ?>

        </div>

    </div>

    <div class="clear" style="margin-top:10px"></div>

    <?php if ($D->article_views > 0 && $D->me->iduser == $D->iduser) { ?>          
    <div class="space-box" style="background:#3191f5; color:#fff">
        <div class="body-space-box">
           

    

            

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

                function earn_bdt($views, $D){

                    return $D->views_credit/100*$views." BDT";

                }
                
                
                ?>

                <div style="display:flex">
                <!-- <p style="float:left; margin:auto">Blog Views</p>
                <p style="float:right; margin:auto">Earnings</p> -->
                </div>


                <center>
                    <h1 style="font-size:30px; margin-top:50px; margin-bottom:50px">Blog Views <?php echo standard_count($D->article_views)?></h1>
                </center>


                <div style="display:flex">
                <p style="float:left; margin:auto"><?php echo earn_bdt($D->article_views, $D)?></p>
                <a href="<?php echo $K->SITE_URL.$D->username?>/earnings" class="withdraw-btn">Withdraw</a>
                </div>

                
      

           
           


          
            
        
        </div>

    </div>
    <?php } ?>

    <div class="clear"></div>
        
    <?php $this->load_template('_pseudo-foot.php'); ?>