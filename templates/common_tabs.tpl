<ul class="nav nav-pills nav-justified">
	{{foreach $tabs as $tab}}
		<li id="{{$tab.id}}" role="presentation" {{if $tab.sel}} class="{{$tab.sel}}" {{/if}}><a href="{{$tab.url}}" {{if $tab.title}} title="{{$tab.title}}"{{/if}}>{{$tab.label}}</a></li>
	{{/foreach}}
</ul>