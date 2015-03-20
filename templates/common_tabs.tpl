<ul class="nav nav-tabs" style="width:100%;">
	{{foreach $tabs as $tab}}
		<li id="{{$tab.id}}" role="presentation" {{if $tab.sel}} class="{{$tab.sel}}" {{/if}}><a href="{{$tab.url}}" {{if $tab.title}} title="{{$tab.title}}"{{/if}}>{{$tab.label}}</a></li>
	{{/foreach}}
</ul>