{{if $userinfo}}
<nav class="navbar navbar-inverse navbar-fixed-top">
	<div class="container">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed pull-right" data-toggle="offcanvas" data-target="#myNavmenu"  data-canvas="body">
				<span class="sr-only">Toggle navigation</span>
				<i class="fa fa-ellipsis-v"></i>
			</button>
			<button type="button" class="navbar-toggle collapsed pull-right" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
				<span class="sr-only">Toggle Search</span>
				<i class="fa fa-search" style="color:#FFF;"></i>
			</button>
			<button type="button" class="navbar-toggle collapsed pull-left visible-sm visible-xs" data-toggle="offcanvas" data-target="#NavAside"  data-canvas="body">
				<span class="sr-only">Toggle navigation</span>
				<i class="fa fa-ellipsis-v"></i>
			</button>
			<a class="navbar-brand" href="#"><span class="hidden-xs"><img src="./images/friendica-32.png" width="25" height="25" /> Friendica</span><span class="visible-xs"><img src="./images/friendica-32.png" width="25" height="25" /></span></a>
			
			{{if $nav.notifications}}
			<div class="navbar-brand dropdown">
				<a href="{{$nav.notifications.0}}" rel="#nav-notifications-menu" title="{{$nav.notifications.1}}" class="btn-link" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-expanded="true">
					<i class="fa fa-globe fa-lg"></i><span id="notify-update" class="nav-notify-badge"></span>
				</a>
				<ul id="nav-notifications-menu" class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1" style="display: none;">
					<li role="presentation">
						<div class="panel panel-default">
							<div class="panel-body">
								<div id="nav-notifications-mark-all" style="height:30px; background:#FFF;">
									<a href="#" onclick="notifyMarkAll(); return false;" title="{{$nav.notifications.mark.1}}" class="btn-link" style="color:#000; position:fixed; background:#FFF; padding:0 43px 2px 15px; z-index:9999; border-bottom:1px solid #000; margin-top:-5px;"><i class="fa fa-eye"></i> {{$nav.notifications.mark.1}}</a>
								</div>
							</div>
						</div>
					</li>
					<li role="presentation">
						<a href="{{$nav.notifications.all.0}}" title="{{$nav.notifications.all.1}}" class="btn-link" style="color:#000;">{{$nav.notifications.all.1}}</a>
					</li>
					<li role="presentation">
						<p class="text-muted"><i>{{$emptynotifications}}</i></p>
					</li>
				</ul>
			</div>
			{{/if}}
			
			{{if $nav.messages}}
				<a href="{{$nav.messages.0}}" title="{{$nav.messages.1}}" class="navbar-brand"><i class="fa fa-envelope fa-lg"></i><span id="mail-update" class="nav-mail-badge"></span></a>
			{{/if}}
			{{if $nav.contacts}}
				<a id="nav-contacts-link" class="nav-link {{$nav.contacts.2}} navbar-brand" href="{{$nav.contacts.0}}" title="{{$nav.contacts.1}}" ><i class="fa fa-users fa-lg"></i></a>
			{{/if}}
		
			{{if $nav.apps}}
				<a id="nav-apps-link" class="nav-link {{$nav.apps.2}} navbar-brand" href="{{$nav.apps.0}}" title="{{$nav.apps.3}}" ><i class="fa fa-puzzle-piece fa-lg"></i></a>
			{{/if}}
		</div>
		
		<div id="navbar" class="collapse navbar-collapse">
			<ul class="nav navbar-nav navbar-right pull-right hidden-xs">
				<li class="dropdown">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-user fa-lg"></i></a>
					<ul class="dropdown-menu" role="menu">
						<li role="presentation" class="dropdown-header"><img src="{{$userinfo.icon}}" alt="{{$userinfo.name}}" style="max-width:15px; max-height:15px; min-width:15px; min-height:15px; width:15px; height:15px;"> {{$userinfo.name}}</li>
						<li class="divider"></li>
					{{foreach $nav.usermenu as $usermenu}}
						<li><a class="{{$usermenu.2}}" href="{{$usermenu.0}}" title="{{$usermenu.3}}">{{$usermenu.1}}</a></li>
					{{/foreach}}
						<li class="divider"></li>
						<li><a href="https://github.com/StefOfficiel/Friendiboot" target="new" title="Friendiboot on GitHub"><i class="fa fa-github"></i> Friendiboot on GitHub</a></li>
						<li class="divider"></li>
						{{if $nav.notifications}}
						<li><a href="{{$nav.notifications.0}}" title="{{$nav.notifications.1}}"><i class="fa fa-globe fa-fw"></i> {{$nav.notifications.1}}</a></li>
						{{/if}}
						{{if $nav.messages}}
						<li><a class="nav-commlink {{$nav.messages.2}} {{$sel.messages}}" href="{{$nav.messages.0}}" title="{{$nav.messages.3}}" ><i class="fa fa-envelope fa-fw"></i> {{$nav.messages.1}}</a></li>
						{{/if}}
						<li class="divider"></li>
						{{if $nav.contacts}}
						<li><a id="nav-contacts-link" class="nav-link {{$nav.contacts.2}}" href="{{$nav.contacts.0}}" title="{{$nav.contacts.3}}"><i class="fa fa-users fa-fw"></i> {{$nav.contacts.1}}</a></li>
						{{/if}}
						{{if $nav.manage}}
						<li><a id="nav-manage-link" class="nav-commlink {{$nav.manage.2}} {{$sel.manage}}" href="{{$nav.manage.0}}" title="{{$nav.manage.3}}"><i class="fa fa-flag fa-fw"></i> {{$nav.manage.1}}</a></li>
						{{/if}}
						<li class="divider"></li>
						{{if $nav.help}}
						<li><a id="nav-help-link" class="nav-link {{$nav.help.2}}" target="friendica-help" href="{{$nav.help.0}}" title="{{$nav.help.3}}" ><i class="fa fa-question-circle fa-fw"></i> {{$nav.help.3}}</a></li>
						{{/if}}
						{{if $nav.settings}}
						<li><a id="nav-settings-link" class="nav-link {{$nav.settings.2}}" href="{{$nav.settings.0}}" title="{{$nav.settings.3}}"><i class="fa fa-cog fa-fw"></i> {{$nav.settings.1}}</a></li>
						{{/if}}
						{{if $nav.admin}}
						<li><a id="nav-admin-link" class="nav-link {{$nav.admin.2}}" href="{{$nav.admin.0}}" title="{{$nav.admin.3}}" ><i class="fa fa-user-secret fa-fw"></i> {{$nav.admin.1}}</a></li>
						{{/if}}
						<li class="divider"></li>
						{{if $nav.logout}}
						<li><a id="nav-logout-link" class="nav-link {{$nav.logout.2}}" href="{{$nav.logout.0}}" title="{{$nav.logout.3}}" ><i class="fa fa-power-off fa-fw"></i> {{$nav.logout.1}}</a></li>
						{{/if}}
						{{if $nav.login}}
						<li><a id="nav-login-link" class="nav-login-link {{$nav.login.2}}" href="{{$nav.login.0}}" title="{{$nav.login.3}}" ><i class="fa fa-power-off fa-fw"></i> {{$nav.login.1}}</a></li>
						{{/if}}
					</ul>
				</li>
			<!-- Language selector, I do not find it relevant, activate if necessary.
				<li>{{$langselector}}</li>
			-->
			</ul>
			{{if $nav.search}}
                <li id="search-box" class="navbar-right">
					<form class="navbar-form" role="search" method="get" action="{{$nav.search.0}}">
						<img class="hidden-xs" src="{{$userinfo.icon}}" alt="{{$userinfo.name}}" style="max-width:33px; max-height:33px; min-width:33px; min-height:33px; width:33px; height:33px;">
						<div class="input-group">
							<input class="form-control" type="text" name="search" placeholder="Search">
							<span class="input-group-btn">
								<button class="btn btn-primary" type="submit"><i class="fa fa-search fa-lg"></i></button>
							</span>
						</div>
					</form>
                </li>
			{{/if}}
		</div>
		
		<div id="myNavmenu" class="navmenu navmenu-default navmenu-fixed-right offcanvas">
			<div class="nav-container">
				<div class="list-group">
					<li class="list-group-item"><img src="{{$userinfo.icon}}" alt="{{$userinfo.name}}" style="max-width:15px; max-height:15px; min-width:15px; min-height:15px; width:15px; height:15px;"> {{$userinfo.name}}</li>
					{{foreach $nav.usermenu as $usermenu}}
					<a class="{{$usermenu.2}} list-group-item" href="{{$usermenu.0}}" title="{{$usermenu.3}}">{{$usermenu.1}}</a>
					{{/foreach}}
					{{if $nav.notifications}}
					<a href="{{$nav.notifications.0}}" title="{{$nav.notifications.1}}" class="list-group-item"><i class="fa fa-globe fa-fw"></i> {{$nav.notifications.1}}</a>
					{{/if}}
					{{if $nav.contacts}}
					<a class="nav-link {{$nav.contacts.2}} list-group-item" href="{{$nav.contacts.0}}" title="{{$nav.contacts.3}}"><i class="fa fa-users fa-fw"></i> {{$nav.contacts.1}}</a>
					{{/if}}
					{{if $nav.manage}}
					<a class="nav-commlink {{$nav.manage.2}} {{$sel.manage}} list-group-item" href="{{$nav.manage.0}}" title="{{$nav.manage.3}}"><i class="fa fa-flag fa-fw"></i> {{$nav.manage.1}}</a>
					{{/if}}
					{{if $nav.settings}}
					<a class="nav-link {{$nav.settings.2}} list-group-item" href="{{$nav.settings.0}}" title="{{$nav.settings.3}}"><i class="fa fa-cog fa-fw"></i> {{$nav.settings.1}}</a>
					{{/if}}
					{{if $nav.admin}}
					<a class="nav-link {{$nav.admin.2}} list-group-item" href="{{$nav.admin.0}}" title="{{$nav.admin.3}}" ><i class="fa fa-user-secret fa-fw"></i> {{$nav.admin.1}}</a>
					{{/if}}
					{{if $nav.logout}}
					<a class="nav-link {{$nav.logout.2}} list-group-item" href="{{$nav.logout.0}}" title="{{$nav.logout.3}}" ><i class="fa fa-power-off fa-fw"></i> {{$nav.logout.1}}</a>
					{{/if}}
					{{if $nav.login}}
					<a class="nav-login-link {{$nav.login.2}} list-group-item" href="{{$nav.login.0}}" title="{{$nav.login.3}}" ><i class="fa fa-power-off fa-fw"></i> {{$nav.login.1}}</a>
					{{/if}}
				</div>
			</div>
		</div><!--/.sidebar-offcanvas-->
	</div><!-- /.container -->
</nav><!-- /.navbar -->
{{/if}}
{{if $userinfo == ''}}
<nav class="navbar navbar-inverse navbar-fixed-top">
	<div class="container">
		<div class="navbar-header">
			<a class="navbar-brand" href="#">
				<span><img alt="Brand" src="./images/friendica-32.png" width="25" height="25"> Friendica</span>
			</a>
		</div>
		<div class="hidden-sm hidden-xs">
			<ul class="nav navbar-nav navbar-right">
				<li><a href="register" title="{{$register.title}}"><i class="fa fa-sign-in fa-fw"></i> {{$register.desc}}</a></li>
				<li><a href="login" title="{{$login}}"><i class="fa fa-power-off fa-fw"></i> {{$login}}</a></li>
			</ul>
		</div>
	</div>
</nav>
{{/if}}

{{if $nav.notifications}}
<div id="nav-notifications-template" style="display:none;" rel="template">
	<a href="{0}" style="color:#000;">
		<div class="media media-notif {4}">
			<div class="media-left">
				<img class="media-object" data-src="{1}" style="min-width:48px; min-height:48px; width:48px; height:48px; max-width:48px; max-height:48px;">
			</div>
			<div class="media-body">
				<h5 class="media-heading">{2}</h5>
				<p class="text-muted" style="font-size:10px;"><i class="fa fa-clock-o fa-fw"></i>&nbsp;&mdash;&nbsp;{3}</p>
			</div>
		</div>
	</a>
</div>
{{/if}}