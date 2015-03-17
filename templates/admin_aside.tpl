<script>
	// update pending count //
	$(function(){

		$("nav").bind('nav-update',  function(e,data){
			var elm = $('#pending-update');
			var register = $(data).find('register').text();
			if (register=="0") { register=""; elm.hide();} else { elm.show(); }
			elm.html(register);
		});
	});
</script>
<h4><i class="fa fa-user-secret"></i> {{$admtxt}}</h4>
<div class="list-group">
	<a href="{{$admurl}}" class="list-group-item"><i class="fa fa-user-secret"></i> Index {{$admtxt}}</a>
	<a href="{{$admin.site.0}}" class="list-group-item"><i class="fa fa-desktop"></i> {{$admin.site.1}}</a>
	<a href="{{$admin.users.0}}" class="list-group-item"><i class="fa fa-user"></i> {{$admin.users.1}} <span id="pending-update" title="{{$h_pending}}" class="badge"></span></a>
	<a href="{{$admin.plugins.0}}" class="list-group-item"><i class="fa fa-puzzle-piece"></i> {{$admin.plugins.1}}</a>
	<a href="{{$admin.themes.0}}" class="list-group-item"><i class="fa fa-file-code-o"></i> {{$admin.themes.1}}</a>
	<a href="{{$admin.dbsync.0}}" class="list-group-item"><i class="fa fa-cloud-download"></i> {{$admin.dbsync.1}}</a>
{{if $admin.update}}
	<a href="{{$admin.update.0}}" class="list-group-item"><i class="fa fa-exclamation-circle"></i> {{$admin.update.1}}</a>
	<a href="https://kakste.com/profile/inthegit" class="list-group-item"><i class="fa fa-exclamation-circle"></i> Important Changes</a>
{{/if}}
</div>

{{if $admin.plugins_admin}}<h4><i class="fa fa-puzzle-piece"></i> {{$plugadmtxt}}</h4>{{/if}}
<div class="list-group">
	{{foreach $admin.plugins_admin as $l}}
	<a href="{{$l.0}}" class="list-group-item">{{$l.1}}</a>
	{{/foreach}}
</div>

<h4><i class="fa fa-newspaper-o"></i> {{$logtxt}}</h4>
<div class="list-group">
	<a href="{{$admin.logs.0}}" class="list-group-item"><i class="fa fa-file-text-o"></i> {{$admin.logs.1}}</a>
</div>