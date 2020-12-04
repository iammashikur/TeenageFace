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

        
            

            <?php if ($D->article_views > 0 && $D->me->iduser == $D->iduser) { ?>

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

                function earn_bdt($views){

                    return $views*0.05." BDT";

                }
                
                
                ?>
                
            <div class="item-with-icon">
                <div class="part1"><img src="<?php echo getImageTheme('ico-dollar.png')?>"></div>
                <div class="part2">Total Blog Views <span class="resalt"><?php echo standard_count($D->article_views)?></span></div>
                <div class="clear"></div>
            </div>

            <div class="item-with-icon">
                <div class="part1"><img src="<?php echo getImageTheme('ico-dollar.png')?>"></div>
                <div class="part2">Total Earnings <span class="resalt"><?php echo earn_bdt($D->article_views)?></span></div>
                <div class="clear"></div>
            </div>
            <?php } ?>


            
        
        </div>

    </div>

    <div class="clear"></div>
        
    <?php $this->load_template('_pseudo-foot.php'); ?>