<div id="language-selector">
	<form class="navbar-form" action="#" method="post" >
		<select class="form-control" name="system_language" onchange="this.form.submit();" >
			{{foreach $langs.0 as $v=>$l}}
				<option value="{{$v}}" {{if $v==$langs.1}}selected="selected"{{/if}}>{{$l}}</option>
			{{/foreach}}
		</select>
	</form>
</div>
