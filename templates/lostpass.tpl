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