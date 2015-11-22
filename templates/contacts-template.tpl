<div class="panel">
	<div class="panel-body">
		{{if $finding}}<hr><div align="center"><h2><i class="fa fa-search fa-flip-horizontal"></i> {{$finding}} {{if $total}} ({{$total}}) {{/if}}</h2></div><hr>{{/if}}
		<h1>{{$header}} {{if $total}} ({{$total}}) {{/if}}</h1>
		
		<div id="contacts-search-wrapper">
			<form id="contacts-search-form" action="{{$cmd}}" method="get" class="form-inline">
				<span class="contacts-search-desc">{{$desc}} : </span>
				<div class="input-group">
					<input type="text" name="search" id="contacts-search" class="search-input form-control" onfocus="this.select();" value="{{$search|escape:'html'}}" />
					<span class="input-group-btn">
						<button type="submit" name="submit" id="contacts-search-submit" class="btn btn-default" value="{{$submit|escape:'html'}}"><i class="fa fa-search fa-lg"></i></button>
					</span>
				</div>
			</form>
		</div>
		
		<div id="contacts-search-end"></div>
	</div>
</div>
<br />

<div class="well" style="background:#FFF; padding:0;">
	{{$tabs}}
	<div class="panel-body">
		<form action="{{$baseurl}}/contacts/batch/" method="POST">
		{{foreach $contacts as $contact}}
			{{include file="contact_template.tpl"}}
		{{/foreach}}
		<div id="contact-edit-end"></div>
		<div id="contacts-actions" align="right">
		{{foreach $batch_actions as $n=>$l}}
		 <input class="batch-action btn btn-default" name="{{$n}}" value="{{$l|escape:'html'}}" type="submit" style="width:166px;">
		 {{/foreach}}
		 </div>
		</form>
	</div>
</div>
<script>
 $(document).ready(function() {
  // javascript dialog to batch actions
  $(".batch-action").click(function(e){
    if (confirm($(this).attr('value')+" ?")) {
     return true;
    } else {
     e.preventDefault();
     return false;
    }
  });
 
  // add javascript confirm dialog to "drop" links. Plain html url have "?confirm=1" to show confirmation form, we need to remove it
  $(".drop").each(function() {
   $(this).attr('href', $(this).attr('href').replace("confirm=1","") );
   $(this).click(function(e){
    if (confirm("{{$contact_drop_confirm}}")) {
     return true;
    } else {
     e.preventDefault();
     return false;
    }
   });
   
  });
 });
 </script>

{{$paginate}}
