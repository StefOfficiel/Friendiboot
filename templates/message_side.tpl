
<div id="message-sidebar" class="widget" align="center">
	<div id="message-new">
		<a href="{{$new.url}}" class="btn btn-primary {{if $new.sel}}newmessage-selected{{/if}}"><i class="fa fa-pencil-square"></i> {{$new.label}}</a>
	</div>
	
	<ul class="message-ul">
		{{foreach $tabs as $t}}
			<li class="tool"><a href="{{$t.url}}" class="message-link{{if $t.sel}}message-selected{{/if}}">{{$t.label}}</a></li>
		{{/foreach}}
	</ul>
	
</div>
