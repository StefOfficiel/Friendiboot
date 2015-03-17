	
	<div class='field yesno'>
		<label for='id_{{$field.0}}'>{{$field.1}}</label>
		<div class='onoff' id="id_{{$field.0}}_onoff">
			<input  type="hidden" name='{{$field.0}}' id='id_{{$field.0}}' value="{{$field.2}}">
			<a href="#" class='btn btn-success on'>
				<i class="fa fa-check fa-fw"></i> {{if $field.4}}{{$field.4.1}}{{else}}ON{{/if}}
			</a>
			<a href="#" class='btn btn-danger off'>
				<i class="fa fa-times fa-fw"></i> {{if $field.4}}{{$field.4.0}}{{else}}OFF{{/if}}
			</a>
		</div>
		<p class="help-block">{{$field.3}}</p>
	</div>