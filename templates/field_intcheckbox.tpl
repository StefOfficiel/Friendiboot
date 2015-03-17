
	
	<div class='field checkbox' style="padding-left:15px;">
		<div class="checkbox">
			<label for="id_{{$field.0}}">
				<input type="checkbox" name='{{$field.0}}' id='id_{{$field.0}}' value="{{$field.3}}" {{if $field.2}}checked="true"{{/if}}>
				{{$field.1}}
				<p class="help-block">{{$field.4}}</p>
			</label>
		</div>
	</div>