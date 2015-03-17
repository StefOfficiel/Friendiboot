<nav class="navbar navbar-inverse navbar-fixed-top">
	<div class="container">
		<div class="navbar-header">
			<a class="navbar-brand" href="#">
				<span><img alt="Brand" src="./images/friendica-32.png" width="25" height="25"> Friendica</span>
			</a>
		</div>
		<div class="hidden-sm hidden-xs">
			<ul class="nav navbar-nav navbar-right">
				{{if $register}}<li><a href="register" title="{{$register.title}}"><i class="fa fa-sign-in fa-fw"></i> {{$register.desc}}</a></li>{{/if}}
				<li><a href="login"><i class="fa fa-power-off fa-fw"></i> Login</a></li>
			</ul>
		</div>
	</div>
</nav>
<div class="col-lg-offset-2 col-lg-8 col-md-offset-2 col-md-8 col-sm-offset-1 col-sm-10 col-xs-12">
	<div class="panel panel-default">
		<div class="panel-heading">
			<h3 class="panel-title"><i class="fa fa-sign-in"></i> {{$regtitle}}</h3>
		</div>
		<div class="panel-body">
			<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
				<blockquote>
					<p class="text-muted">
						{{$fillwith}}
					</p>
				</blockquote>
				<blockquote>
					<p class="text-muted">
						{{$fillext}}
					</p>
				</blockquote>
				<hr />
			</div>
			<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
				<form action="register" method="post" id="register-form">
					{{if $oidlabel}}
					<div class="form-group">
						<label for="register-openid" id="label-register-openid">{{$oidlabel}}</label>
						<input type="text" maxlength="60" size="32" name="openid_url" class="openid form-control" id="register-openid" value="{{$openid}}" placeholder="{{$oidlabel}}">
					</div>
					<div id="register-openid-end" ></div>
					{{/if}}
					
					{{if $invitations}}
					<div class="form-group">
						<label for="register-invite" id="label-register-invite">{{$invite_label}}</label>
						<input type="text" maxlength="60" size="32" name="invite_id" id="register-invite" value="{{$invite_id}}" class="form-control" placeholder="{{$invite_label}}">
					</div>
					{{/if}}
					
					<div class="form-group">
						<label for="register-name" id="label-register-name">{{$namelabel}}</label>
						<input type="text" maxlength="60" size="32" name="username" id="register-name" value="{{$username}}" class="form-control" placeholder="{{$namelabel}}">
					</div>
					<div class="form-group">
						<label for="register-email" id="label-register-email">{{$addrlabel}}</label>
						<input type="email" maxlength="60" size="32" name="email" id="register-email" value="{{$email}}" class="form-control" placeholder="{{$addrlabel}}">
					</div>
					
					<div class="form-group">
						<label for="register-nickname" id="label-register-nickname" >{{$nicklabel}}</label>
						<div class="input-group">
							<input type="text" maxlength="60" size="32" name="nickname" id="register-nickname" value="{{$nickname}}" class="form-control" placeholder="{{$nicklabel}}">
							<div class="input-group-addon">@{{$sitename}}</div>
						</div>
					</div>
					{{$publish}}
					<button type="submit" name="submit" id="register-submit-button" class="btn btn-success"><i class="fa fa-sign-in fa-fw"></i> {{$regbutt}}</button>
				</form>
			</div>
		</div>
		<div class="panel-footer">
			<a href="login" class="btn btn-default"><i class="fa fa-power-off fa-fw"></i> Login</a>
			<a href="uimport" class="btn btn-default"><i class="fa fa-upload fa-fw"></i> {{$importt}}</a>
			<p class="text-primary">{{$license}}</p>
		</div>
	</div>
</div>
<script>
	function changeBackground() {
		window.document.body.background =   "./images/BG/BG-register (" + parseInt(Math.random()*11) + ").jpg";
 
		window.setTimeout(changeBackground, 20000);
	}
	window.onload = changeBackground;
</script>