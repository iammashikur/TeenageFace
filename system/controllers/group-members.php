<?php
/*
********************************************************
* @author Santos Montano B. (Lito Santos M.)
* @author_url 1: http://www.kanorika.com
* @author_url 2: http://codecanyon.net/user/kanorika
* @author_email: info@kanorika.com   
********************************************************
* iSocial - Social Networking Platform
* Copyright (c) 2018 iSocial. All rights reserved.
********************************************************
*/
    $D->_IN_PROFILE = TRUE;

    if ($D->_IS_LOGGED) {
        $D->_WITH_NOTIFIER = TRUE;
    }

	$D->isPhantom = FALSE;
	if ($this->param('phantom') && $this->param('phantom')=='yes') $D->isPhantom = TRUE;

	$D->layout_size = 'min';
	if ($this->param('lysize')) $D->layout_size = $this->param('lysize');

	$this->loadLanguage('global.php');
    if ($D->_IS_LOGGED) {
        $this->loadLanguage('dashboard.php');
        $this->loadLanguage('settings.php');
    }

	$this->loadLanguage('profile.php');
    $this->loadLanguage('activity.php');

    $thegroup = $network->getGroupById($this->params->group);
    $D->idgroup = $thegroup->idgroup;
    $D->codegroup = $D->codeprofile = $thegroup->code;
    $D->idcreator = $thegroup->idcreator;
    $D->username = $thegroup->guname;
    $D->the_title = $thegroup->title;
    $D->about = $thegroup->about;

    $D->is_my_group = FALSE;
    $D->im_member = FALSE;

    if ($D->_IS_LOGGED) {
		$D->me = $this->user->info;
		$D->is_my_group = ($D->idcreator == $D->me->iduser);
        $D->membership = $this->user->membership($D->idgroup);
        if ($D->membership == 1) $D->im_member = TRUE;
    }

    $D->privacy = $thegroup->privacy;

    if ($D->privacy == 2) {
        if (!$D->_IS_LOGGED) $this->globalRedirect('login');
        if (!$D->is_my_group || !$D->im_member) $this->globalRedirect($K->SITE_URL);
    }

    $D->text_type_group = '';
    $D->ico_type_group = '';
    switch($D->privacy) {
        case 0:
            $D->text_type_group = $this->lang('global_type_group_public');
            $D->ico_type_group = 'ico-group-public.png';
            break;
        case 1:
            $D->text_type_group = $this->lang('global_type_group_closed');
            $D->ico_type_group = 'ico-group-closed.png';
            break;
        case 2:
            $D->text_type_group = $this->lang('global_type_group_secret');
            $D->ico_type_group = 'ico-group-secret.png';
            break;
    }

    $D->with_cover = FALSE;
    $D->cover_group = '';
    if (!empty($thegroup->cover)) {
        $D->cover_group = $K->STORAGE_URL_COVERS_GROUP.$thegroup->code.'/'.$thegroup->cover;
        $D->with_cover = TRUE;
		$D->cover_media = $thegroup->cover_media;
		$D->cover_user = $thegroup->cover_user;
    }

    $D->position_cover_group = $thegroup->cover_position;
    $D->the_register_date = $thegroup->created;

    $D->posted_in = 2;
    $D->code_wall = $D->codegroup;
    $D->code_writer = isset($user->info->code) ? $user->info->code : '';
    $D->type_writer = 0;
    $D->for_who = 2;

    $D->editor_for = 2; //0: for User  1: for Page   2: for Group

    $D->view_editor = FALSE;

    $D->menu_footer = FALSE;

    $D->id_container = 'site';

    /******************************************************************/

    $D->show_activity = FALSE;
    switch($D->privacy) {
        case 0:
            $D->show_activity = TRUE;
            break;
        case 1: // YES, members in group closed
            $D->show_activity = TRUE;
            break;
        case 2:
            if ($D->is_my_group || $D->im_member) {
                $D->show_activity = TRUE;
            }
            break;
    }

    /******************************************************************/

    if ($D->show_activity) {

        $D->html_members = '';

        $all_friends = $this->db2->fetch_all("SELECT users.* FROM users, groups_members WHERE users.iduser=groups_members.iduser AND groups_members.idgroup=".$D->idgroup." AND status=1 ORDER BY users.firstname ASC");

        if (count($all_friends) > 0) {

            $D->count_f = 0;
            foreach ($all_friends as $onefriend) {

                $D->code_friend = $onefriend->code;
                $D->name_friend = stripslashes($onefriend->firstname).' '.stripslashes($onefriend->lastname);
                $D->username_friend = $onefriend->user_username;

                $base_url = $K->STORAGE_URL_AVATARS.'min2/';
                $D->avatar_friend = $onefriend->avatar;
                if (empty($D->avatar_friend)) $D->avatar_friend = $base_url.$K->DEFAULT_AVATAR_USER;
                else $D->avatar_friend = $base_url.$D->code_friend.'/'.$onefriend->avatar;

                $D->count_f ++;
                $D->html_members .= $this->load_template('ones/one-member-profile.php', FALSE);

            }

        }

    }

    /****************************************************************************/

    $this->load_extract_controller('_pre-profile');

    /****************************************************************************/

	if ($D->isPhantom) {

        $html = '';

        if ($D->_IS_LOGGED) {

            $D->id_container = 'dashboard';
            $this->load_extract_controller('_dashboard-menu-left');            
            if ($D->is_my_group || $D->im_member) $D->view_editor = TRUE;

        }

        if ($D->layout_size == 'min') {
            $for_load = 'min/group-members.php';
        } else {
            $for_load = 'max/group-members.php';
        }

        $D->titlePhantom = $D->the_title.' | '.$K->SITE_TITLE;

        $html .= $this->load_template($for_load, FALSE);
        echo $html;

	} else {

        $D->page_title = $D->the_title.' | '.$K->SITE_TITLE;

        if ($D->_IS_LOGGED) {

            $this->load_extract_controller('_required-dashboard');
            $this->load_extract_controller('_dashboard-bar-top');

            if ($D->is_my_group || $D->im_member) $D->view_editor = TRUE;
            $D->id_container = 'dashboard';
            $this->load_extract_controller('_dashboard-menu-left');
            $D->file_in_template = 'max/group-members.php';            
            $this->load_template('dashboard-template.php');

        } else {

            if (!isset($D->string_js) || !is_array($D->string_js)) $D->string_js = array();
            array_push($D->string_js, 'moment.locale("'.$K->LANGUAGE.'");');

            $this->load_extract_controller('_bar-top');
            $this->load_extract_controller('_required-out');

            $D->file_in_template = 'max/group-members.php';
            $this->load_template('site-template.php');

        }

    }

?>