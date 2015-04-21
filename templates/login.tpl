<div class="col-lg-offset-2 col-lg-8 col-md-offset-2 col-md-8 col-sm-offset-1 col-sm-10 col-xs-12">
	<div class="panel panel-default">
		<div class="panel-heading">
			<h3 class="panel-title"><i class="fa fa-sign-in"></i> {{$login}}</h3>
		</div>
		<div class="panel-body">
			<form action="{{$dest_url}}" method="post" >
			<input type="hidden" name="auth-params" value="login" />
				<div id="login_standard" class="form-group">
					{{include file="field_input.tpl" field=$lname}}
					{{include file="field_password.tpl" field=$lpassword}}
				</div>
				<div id="register-openid-end" ></div>
				
				<div id="login_openid" class="form-group">
					{{if $openid}}
						{{include file="field_openid.tpl" field=$lopenid}}
					{{/if}}
				
					{{include file="field_checkbox.tpl" field=$lremember}}
				</div>
				<button type="submit" name="submit" id="login-submit-button" class="btn btn-success"><i class="fa fa-power-off fa-fw"></i> {{$login}}</button>
				{{foreach $hiddens as $k=>$v}}
					<input type="hidden" name="{{$k}}" value="{{$v}}" />
				{{/foreach}}
			</form>
		</div>
		<div class="panel-footer">
			{{if $register}}<a href="register" title="{{$register.title}}" id="register-link" class="btn btn-default"><i class="fa fa-sign-in fa-fw"></i> {{$register.desc}}</a>{{/if}}
			<a href="lostpass" title="{{$lostpass}}" id="lost-password-link" class="btn btn-default" ><i class="fa fa-key fa-fw"></i> {{$lostlink}}</a>
		</div>
	</div>
</div>
<script type="text/javascript"> $(document).ready(function() { $("#id_{{$lname.0}}").focus();} );</script>
<script>
	function changeBackground() {
		window.document.body.background = "./images/BG/BG-register (" + parseInt(Math.random()*11) + ").jpg";
 
		window.setTimeout(changeBackground, 20000);
	}
	window.onload = changeBackground;
</script>