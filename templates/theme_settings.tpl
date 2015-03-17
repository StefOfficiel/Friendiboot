<script src="{{$baseurl}}/view/theme/quattro/jquery.tools.min.js"></script>

{{include file="field_input.tpl" field=$bgimg}}
{{include file="field_input.tpl" field=$bgcolor}}
{{include file="field_select.tpl" field=$colorset}} 
{{include file="field_select.tpl" field=$fontsize}} 

<div class="settings-submit-wrapper">
	<input type="submit" value="{{$submit}}" class="settings-submit" name="clean-settings-submit" />
</div>

<script>
    
    $(".inputRange").rangeinput();
</script>
