
	
	<div class='field select'>
		<label for='id_{{$field.0}}'>{{$field.1}}</label>
		<select class="form-control input-sm selectpicker" name='{{$field.0}}' id='id_{{$field.0}}'>
			{{foreach $field.4 as $opt=>$val}}<option value="{{$opt}}" {{if $opt==$field.2}}selected="selected"{{/if}}>{{$val}}</option>{{/foreach}}
		</select>
		<p class="help-block">{{$field.3}}</p>
	</div>
