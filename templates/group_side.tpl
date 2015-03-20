<div class="widget" id="group-sidebar">
<h3><i class="fa fa-users"></i> {{$title}}</h3>

<div id="sidebar-group-list">
	<ul id="sidebar-group-ul" class="list-group">
		{{foreach $groups as $group}}
			{{if $group.cid}}
				<input type="checkbox" 
					class="{{if $group.selected}}ticked{{else}}unticked {{/if}} action" 
					onclick="contactgroupChangeMember('{{$group.id}}','{{$group.cid}}');return true;"
					{{if $group.ismember}}checked="checked"{{/if}}
				/>
			{{/if}}			
			{{if $group.edit}}
				<a class="groupsideedit" href="{{$group.edit.href}}" title="{{$edittext}}"><span id="edit-sidebar-group-element-{{$group.id}}" class="group-edit-icon iconspacer small-pencil"></span></a>
			{{/if}}
			<a id="sidebar-group-element-{{$group.id}}" class="list-group-item {{if $group.selected}}active{{/if}}" href="{{$group.href}}"><i class="fa fa-caret-right"></i>&nbsp;&nbsp;{{$group.text}}</a>
		{{/foreach}}
	</ul>
	</div>
  <div id="sidebar-new-group">
  	<a href="group/new" class="btn btn-default"><i class="fa fa-user"></i>&nbsp;&nbsp;{{$createtext}}</a>
  </div>
  {{if $ungrouped}}
  <div id="sidebar-ungrouped">
  	<a href="nogroup" class="btn btn-default"><i class="fa fa-user-times"></i>&nbsp;&nbsp;{{$ungrouped}}</a>
  </div>
  {{/if}}
</div>
<hr/>


