
<h1><i class="fa fa-trash"></i> {{$title}}</h1>

<div id="remove-account-wrapper">

	<div id="remove-account-desc" align="center"><h2 class="bg-danger text-danger"><strong><i class="fa fa-exclamation-triangle"></i> <u>{{$desc}}</u></strong></h2></div>
	
	<form class="form-inline" action="{{$basedir}}/removeme" autocomplete="off" method="post" >
		<input type="hidden" name="verify" value="{{$hash}}" />
		<br />
		<br />
		<div id="remove-account-pass-wrapper">
			<div class="form-group">
				<label id="remove-account-pass-label" for="remove-account-pass">{{$passwd}}</label>
				<input class="form-control" type="password" id="remove-account-pass" name="qxz_password">
			</div>
		</div>
		<br />
		<br />
		<div id="remove-account-pass-end"></div>
			
		<br />
		<button type="submit" name="submit" class="btn btn-danger btn-lg"><i class="fa fa-trash fa-fw"></i> {{$submit}}</button>
	
	</form>
</div>

