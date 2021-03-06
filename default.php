<!DOCTYPE html >
<html>
<head>
	<title><?php if(x($page,'title')) echo $page['title'] ?></title>
	<meta name="viewport" content="initial-scale=1.0">
	<script>var baseurl="<?php echo $a->get_baseurl() ?>";</script>
	<?php if(x($page,'htmlhead')) echo $page['htmlhead'] ?>
	<link rel="stylesheet" href="<?=$friendiboot?>/frameworks/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="<?=$friendiboot?>/frameworks/bootstrap/css/bootstrap-theme.min.css">
	<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="<?=$friendiboot?>/frameworks/jasny/css/jasny-bootstrap.min.css">
	<link rel="stylesheet" href="<?=$friendiboot?>/frameworks/BootstrapSelect/css/bootstrap-select.min.css">
</head>
<?php
if(($_SERVER['REQUEST_URI'] != "/register") && ($_SERVER['REQUEST_URI'] != "/lostpass") && ($_SERVER['REQUEST_URI'] != "/login"))
{
	echo"<body id=\"top\" style=\"background:#f0f0ed;\">";
}
else
{
	echo"<body id=\"top\">";
}
?>
<?php if($_SERVER['REQUEST_URI'] == "/"){header('Location: /login');} ?>
<a href="#content" class="sr-only sr-only-focusable">Skip to main content</a>
<?php 
	if(x($page,'nav')){
	echo	str_replace("~config.sitename~",get_config('config','sitename'),
			str_replace("~system.banner~",get_config('system','banner'),
			$page['nav']
	));};
?>
<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
<?php
if(($_SERVER['REQUEST_URI'] != "/register") && ($_SERVER['REQUEST_URI'] != "/lostpass") && ($_SERVER['REQUEST_URI'] != "/login"))
{
	echo"
	<aside class=\"col-lg-3 col-md-3 hidden-sm hidden-xs\">
		"; include('includes/profile_side.php'); echo"
		"; if(x($page,'aside')) echo $page['aside']; echo"
		"; if(x($page,'right_aside')) echo $page['right_aside']; echo"
		"; include('includes/photo_side.php'); echo"
	</aside>
	
	<div id=\"NavAside\" class=\"navmenu navmenu-default navmenu-fixed-left offcanvas hidden-lg hidden-md\">
		<div class=\"nav-container\">
			<div class=\"list-group\">
				"; include('includes/profile_side.php'); echo"
				"; if(x($page,'aside')) echo $page['aside']; echo"
				"; if(x($page,'right_aside')) echo $page['right_aside']; echo"
				"; include('includes/photo_side.php'); echo"
			</div>
		</div>
	</div><!--/.sidebar-offcanvas-->

	<div class=\"col-lg-9 col-md-9 col-sm-12 col-xs-12\" id=\"content\">
		<section class=\"sectiontop\">"; if(x($page,'content')) echo $page['content']; echo"
	</div>
		";
}
else
{
	echo"
	<div class=\"col-lg-12 col-md-12 col-sm-12 col-xs-12\" id=\"content\" style=\"margin-top:50px;\">
		"; if(x($page,'content')) echo $page['content']; echo"
	</div>
	";
}
?>
</div>

<p id="scroll">
</p>
<footer>
<span id="notifsound"></span>
<script>
	$("#menu-toggle").click(function(e) {
		e.preventDefault();
		$("#wrapper").toggleClass("toggled");
	});
</script>
<script type="text/javascript">
	$.fn.enterKey = function (fnc, mod) {
		return this.each(function () {
			$(this).keypress(function (ev) {
				var keycode = (ev.keyCode ? ev.keyCode : ev.which);
				if ((keycode == '13' || keycode == '10') && (!mod || ev[mod + 'Key'])) {
					fnc.call(this, ev);
				}
			})
		})
	}
	
	$('textarea').enterKey(function() {$(this).closest('form').submit(); }, 'ctrl')
	$('input').enterKey(function() {$(this).closest('form').submit(); }, 'ctrl')
</script>
<script>
$(document).ready(function(){
	//fade in/out based on scrollTop value
	$(window).scroll(function () {
		if ($(this).scrollTop() > 1000) {
			$('#scroll').fadeIn();
		} else {
			$('#scroll').fadeOut();
		}
	});
 
	// scroll body to 0px on click
	$('#scroll').click(function () {
		$('body,html').animate({
			scrollTop: 0
		}, 400);
		return false;
	});
});
</script>
<script>
var pagetitle = null;
$("nav").bind('nav-update', function(e,data)
{
	if (pagetitle==null) pagetitle = document.title;
	var count = $(data).find('notif').attr('count');
	if (count>0)
	{
		document.title = "("+count+") "+pagetitle;
		/* document.getElementById('notifsound').innerHTML='<object type="audio/mpeg" width="0" height="0" data="<?=$friendiboot?>/audios/901.mp3"><param name="notif" value="<?=$friendiboot?>/audios/901.mp3" /><param name="autostart" value="true" /><param name="loop" value="false" /></object>'; */
	}
	else
	{
		document.title = pagetitle;
	}
});
</script>
<script src="<?=$friendiboot?>/frameworks/bootstrap/js/bootstrap.min.js"></script>
<script src="<?=$friendiboot?>/frameworks/jasny/js/jasny-bootstrap.min.js"></script>
<script src="<?=$friendiboot?>/frameworks/BootstrapSelect/js/bootstrap-select.min.js"></script>
</footer>
</body>