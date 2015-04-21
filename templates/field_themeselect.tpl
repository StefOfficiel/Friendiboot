
{{if $field.5}}
	<script>$(function(){ previewTheme($("#id_{{$field.0}}")[0]); });</script>
{{/if}}
	<div class="field select">
		<div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
			<label for="id_{{$field.0}}">{{$field.1}}</label>
			<select class="form-control input-sm selectpicker" name="{{$field.0}}" id="id_{{$field.0}}" {{if $field.5}}onchange="previewTheme(this);"{{/if}} >
			{{foreach $field.4 as $opt=>$val}}
				<option value="{{$opt}}" {{if $opt==$field.2}}selected="selected"{{/if}}>{{$val}}</option>
			{{/foreach}}
			</select>
			<span class="field_help">{{$field.3}}</span>
		</div>
		<br /><br /><br />
	{{if $field.5}}
		<div id="theme-preview"></div>
	{{/if}}
		<br />
	</div>
