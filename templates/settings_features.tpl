
<h1><i class="fa fa-compass"></i> {{$title}}</h1>


<form action="settings/features" method="post" autocomplete="off">
	<input type='hidden' name='form_security_token' value='{{$form_security_token}}'>
	
	<div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
		<div class="panel panel-default">
		{{foreach $features as $f}}
		<!-- Tab -->
			<div class="panel-heading" role="tab" id="heading{{md5($f.0)}}">
				<h4 class="panel-title">
					<a data-toggle="collapse" data-parent="#accordion" href="#collapse{{md5($f.0)}}" aria-expanded="true" aria-controls="collapse{{md5($f.0)}}">
						{{$f.0}} <i class="fa fa-chevron-down"></i>
					</a>
				</h4>
			</div>
			<div id="collapse{{md5($f.0)}}" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading{{md5($f.0)}}">
				<div class="panel-body">
					{{foreach $f.1 as $fcat}}
						{{include file="field_yesno.tpl" field=$fcat}}
					{{/foreach}}

					<div class="settings-submit-wrapper" >
						<br />
						<button type="submit" name="submit" class="btn btn-warning"><i class="fa fa-floppy-o fa-fw"></i> {{$submit}}</button>
					</div>
				</div>
			</div>
		{{/foreach}}
		<!-- ./Tab -->
		</div>
	</div>
</form>