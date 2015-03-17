<nav class="navbar navbar-inverse navbar-fixed-top">
	<div class="container">
		<div class="navbar-header">
			<a class="navbar-brand" href="#">
				<span><img alt="Brand" src="./images/friendica-32.png" width="25" height="25"> Friendica</span>
			</a>
		</div>
		<div class="hidden-sm hidden-xs">
			<ul class="nav navbar-nav navbar-right">
				<li><a href="register" title="{{$register.title}}"><i class="fa fa-sign-in fa-fw"></i> {{$register.desc}}</a></li>
				<li><a href="login" title="{{$login}}"><i class="fa fa-power-off fa-fw"></i> {{$login}}</a></li>
			</ul>
		</div>
	</div>
</nav>
<div class="col-lg-offset-2 col-lg-8 col-md-offset-2 col-md-8 col-sm-offset-1 col-sm-10 col-xs-12">
	<div class="panel panel-default">
		<div class="panel-heading">
			<h3 class="panel-title">{{$title}}</h3>
		</div>
		<div class="panel-body">
			<form action="lostpass" method="post" >
				<div id="login-name-wrapper" class="form-group">
					<label for="login-name" id="label-login-name">{{$name}}</label>
					<input type="text" maxlength="60" name="login-name" id="login-name" value="" />
				</div>
				<div id="login-extra-end"></div>
				<div id="login-submit-wrapper" >
					<button type="submit" name="submit" id="lostpass-submit-button" class="btn btn-success">{{$submit}}</button>
				</div>
				<div id="login-submit-end"></div>
			</form>
		</div>
		<div class="panel-footer">
			<i class="fa fa-info-circle"></i> {{$desc}}
		</div>
	</div>
</div>
<script>
	function changeBackground() {
		window.document.body.background = "./images/BG/BG-register (" + parseInt(Math.random()*11) + ").jpg";
 
		window.setTimeout(changeBackground, 20000);
	}
	window.onload = changeBackground;
</script>