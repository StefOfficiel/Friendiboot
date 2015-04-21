<div align="center">
	<div class="Xcontainer">
		<div class="Xprofile-box">
			<div class="Xprofile-cover-image">
				<img src="{{$profile.photo}}?rev={{$profile.picdate}}" alt="{{$profile.name}}" title="{{$profile.name}}" />
			</div>
			<div class="Xprofile-picture visible-lg">
				<img src="{{$profile.photo}}?rev={{$profile.picdate}}" alt="{{$profile.name}}" title="{{$profile.name}}" />
			</div>
			<div class="Xprofile-picture2 visible-md">
				<img src="{{$profile.photo}}?rev={{$profile.picdate}}" alt="{{$profile.name}}" title="{{$profile.name}}" />
			</div>
			<div class="Xprofile-content">
				<h2 class="visible-lg">{{$profile.name}}</h2>
				<h4 class="visible-md">{{$profile.name}}</h4>
				<p>
					{{if $location}}
						{{if $profile.address}}
							<i class="fa fa-map-marker"></i> {{$profile.address}}<br />
						{{/if}}
						{{if $profile.country_name}}
							<i class="fa fa-map-marker"></i> {{$profile.country_name}}<br />
						{{/if}}
					{{/if}}
					<!-- TODO -->
					{{if $gender}}
						<dl class="mf">
							<dt class="gender-label"><i class="fa fa-venus-mars"></i> {{$gender}}</dt>
							<dd class="x-gender">{{$profile.gender}}</dd>
						</dl>
					{{/if}}
					{{if $marital}}
						<dl class="marital">
							<dt class="marital-label"><i class="fa fa-heart"></i> {{$marital}}</dt>
							<dd class="marital-text">{{$profile.marital}}</dd>
						</dl>
					{{/if}}
					{{if $homepage}}
						<dl class="homepage">
							<dt class="homepage-label"><i class="fa fa-external-link-square"></i> {{$homepage}}</dt>
							<dd class="homepage-url">
								<a href="{{$profile.homepage}}" target="external-link">{{$profile.homepage}}</a>
							</dd>
						</dl>
					{{/if}}
					
					{{if $profile.pubkey}}
						<div class="key" style="display:none;">{{$profile.pubkey}}</div>
					{{/if}}
					<!-- ./TODO -->
					{{include file="diaspora_vcard.tpl"}}
				</p>
				<hr />
			</div>
			<div id="profile-extra-links" class="Xprofile-content">
				<ul>
					{{if $connect}}
						<li><a id="dfrn-request-link" class="btn btn-labeled btn-primary col-lg-12 col-md-12 col-sm-12 col-xs-12" href="dfrn_request/{{$profile.nickname}}"><span class="btn-label pull-left"><i class="fa fa-check"></i></span><span class="btn">{{$connect}}</span></a></li>
					{{/if}}
					{{if $wallmessage}}
						<li><a id="wallmessage-link" class="btn btn-labeled btn-info col-lg-12 col-md-12 col-sm-12 col-xs-12" href="wallmessage/{{$profile.nickname}}"><span class="btn-label pull-left"><i class="fa fa-envelope"></i></span><span class="btn">{{$wallmessage}}</span></a></li>
					{{/if}}
				</ul>
			</div>
			
			<!-- TODO -->
			{{if $profile.edit}}
			<div class="list-group">
			{{foreach $profile.menu.entries as $e}}
				<a href="profiles/{{$e.id}}" class="list-group-item"><img src='{{$e.photo}}'>{{$e.profile_name}}</a>
			{{/foreach}}
				<a href="profile_photo}" class="list-group-item">{{$profile.menu.chg_photo}}</a>
				<a href="profiles/new" class="list-group-item" id="profile-listing-new-link">{{$profile.menu.cr_new}}</a>
			</div>
			{{/if}}
			<!-- ./TODO -->
		</div>
	</div>
</div>
<hr />
{{$contact_block}}