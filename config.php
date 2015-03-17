<?php
/**
 * Theme settings
 */



function theme_content(&$a){
    if(!local_user())
        return;		

    $bgcolor = get_pconfig( local_user(), 'clean', 'background-color');
    $bgimg = get_pconfig( local_user(), 'clean', 'background-image');
    $colorset = get_pconfig( local_user(), 'clean', 'colorset');
    $fontsize = get_pconfig( local_user(), 'clean', 'fontsize');
    $user = true;

    return clean_form($a,$bgcolor, $bgimg, $colorset, $fontsize, $user);
}

function theme_post(&$a){
    if(! local_user())
        return;
    
    if (isset($_POST['clean-settings-submit'])){
        set_pconfig(local_user(), 'clean', 'background-color', $_POST['clean_bgcolor']);
        set_pconfig(local_user(), 'clean', 'background-image', $_POST['clean_bgimg']);
        set_pconfig(local_user(), 'clean', 'fontsize', $_POST['clean_fontsize']);
        set_pconfig(local_user(), 'clean', 'colorset', $_POST['clean_colorset']);
    }
}


function theme_admin(&$a){
    $bgcolor = get_config( 'clean', 'background-color');
    $bgimg = get_config( 'clean', 'background-image');
    $colorset = get_config( 'clean', 'colorset');
    $fontsize = get_config( 'clean', 'fontsize');
    $user = false;

    return clean_form($a,$bgcolor, $bgimg, $colorset, $fontsize, $user);
}

function theme_admin_post(&$a){
    if (isset($_POST['clean-settings-submit'])){
        set_config('clean', 'background-color', $_POST['clean_bgcolor']);
        set_config('clean', 'background-image', $_POST['clean_bgimg']);
        set_config('clean', 'fontsize', $_POST['clean_fontsize']);
        set_config('clean', 'colorset', $_POST['clean_colorset']);
    }
}


function clean_form(&$a, &$bgcolor, &$bgimg, &$colorset, &$fontsize, $user){
    $colorset = array(
	'default'=>t('default'), 
        'dark'=>t('Midnight'),
        'black'=>t('Bootstrap'),
        'pink'=>t('Shades of Pink'),
        'lime'=>t('Lime and Orange'),
        'geo'=>t('GeoCities Retro'),
    );
    
    $fs = array (
        "10"=>"10pt",
        "11"=>"11pt",
        "12"=>"12pt",
        "14"=>"14pt",
        "16"=>"16pt",
        "18"=>"18pt",
    );
    //$bgimg = get_pconfig(local_user(),'clean','background-image');
    //$bgcolor = get_pconfig(local_user(),'clean', 'background-color');
    if ($user) {
        $color = get_pconfig(local_user(), 'clean', 'colorset');
    } else {
        $color = get_config( 'clean', 'colorset');
    }
    //$fs = get_pconfig( local_user(), 'clean', 'fontsize');
    $t = get_markup_template("theme_settings.tpl" );
    $o .= replace_macros($t, array(
        '$submit' => t('Submit'),
        '$baseurl' => $a->get_baseurl(),
        '$title' => t("Theme settings"),
        '$bgimg' => array('clean_bgimg', t('Background Image'), $bgimg, t('The URL to a picture (e.g. from your photo album) that should be used as background image.'),''),
        '$bgcolor' => array('clean_bgcolor', t('Background Color'), $bgcolor, t('HEX value for the background color. Don\'t include the #'),''),
        '$colorset' => array('clean_colorset', t('Color scheme'), $color, '', $colorset),
        '$fontsize' => array('clean_fontsize', t('font size'), $fontsize, t('base font size for your interface'), $fs),
    ));
    return $o;
}
