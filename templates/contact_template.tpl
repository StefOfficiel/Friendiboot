<div class="contact-entry-wrapper col-lg-5 col-md-5 col-sm-12 col-xs-12" id="contact-entry-wrapper-{{$contact.id}}" style="border:1px solid #e9eaed; padding:0 10px 0 0; margin-bottom: 13px; margin-right:13px;">
	<div class="contact-entry-photo-wrapper">
		<div class="contact-entry-photo mframe" id="contact-entry-photo-{{$contact.id}}" onmouseover="if (typeof t{{$contact.id}} != 'undefined') clearTimeout(t{{$contact.id}}); openMenu('contact-photo-menu-button-{{$contact.id}}')" onmouseout="t{{$contact.id}}=setTimeout('closeMenu(\'contact-photo-menu-button-{{$contact.id}}\'); closeMenu(\'contact-photo-menu-{{$contact.id}}\');',200)" >
			<table border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td width="30%">
						<a href="{{$contact.url}}" title="{{$contact.img_hover}}" target="new">
							<img src="{{$contact.thumb}}" {{$contact.sparkle}} alt="{{$contact.name}}" style="width:100%; height:auto; max-width:100px;"/>
						</a>
					</td>
					<td width="70%">
						<span class="contact-entry-name" id="contact-entry-name-{{$contact.id}}" style="margin-left:10px;">
							<a href="{{$contact.url}}" title="{{$contact.img_hover}}" target="new">
								<strong>{{$contact.name}}</strong>
							</a>
							<input type="checkbox" class="contact-select" name="contact_batch[]" value="{{$contact.id}}">
						</span>
					</td>
					<td>
						{{if $contact.photo_menu}}
							<div class="dropdown">
								<button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu{{$contact.id}}" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
								Menu <i class="fa fa-caret-down"></i>
								</button>
								<ul class="dropdown-menu pull-right" aria-labelledby="dropdownMenu{{$contact.id}}">
									<li class="dropdown-header"><img src="{{$contact.thumb}}" {{$contact.sparkle}} alt="{{$contact.name}}" style="width:100%; height:auto; max-width:25px;"/> <strong> {{$contact.name}} </strong></li>
									<li role="separator" class="divider"></li>
									{{foreach $contact.photo_menu as $k=>$c}}
									{{if $c.2}}
									<li><a class="{{$k}}" target="redir" href="{{$c.1}}">{{$c.0}}</a></li>
									{{else}}
									<li><a class="{{$k}}" href="{{$c.1}}">{{$c.0}}</a></li>
									{{/if}}
									{{/foreach}}
								</ul>
							</div>
						{{/if}}
					</td>
				</tr>
			</table>
		</div>
	</div>
	<div class="contact-entry-photo-end" ></div>
	<div class="contact-entry-end" ></div>
</div>
