<h1><i class="fa fa-unlock-alt"></i> {{$ptitle}}</h1>

{{$nickname_block}}
<br />
<form action="settings" id="settings-form" method="post" autocomplete="off" >
	<input type='hidden' name='form_security_token' value='{{$form_security_token}}'>

	<div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
		<div class="panel panel-default">
		<!-- Tab -->
			<div class="panel-heading" role="tab" id="headingOne">
				<h4 class="panel-title">
					<a data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
						<i class="fa fa-key"></i> {{$h_pass}} <i class="fa fa-chevron-down"></i>
					</a>
				</h4>
			</div>
			<div id="collapseOne" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingOne">
				<div class="panel-body">
					{{include file="field_password.tpl" field=$password1}}
					{{include file="field_password.tpl" field=$password2}}
					{{include file="field_password.tpl" field=$password3}}

					{{if $oid_enable}}
						{{include file="field_input.tpl" field=$openid}}
					{{/if}}

					<div class="settings-submit-wrapper" >
						<br />
						<button type="submit" name="submit" class="btn btn-warning"><i class="fa fa-floppy-o fa-fw"></i> {{$submit}}</button>
					</div>
				</div>
			</div>
		<!-- ./Tab -->
		<!-- Tab -->
			<div class="panel-heading" role="tab" id="headingTwo">
				<h4 class="panel-title">
					<a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo">
						<i class="fa fa-keyboard-o"></i> {{$h_basic}} <i class="fa fa-chevron-down"></i>
					</a>
				</h4>
			</div>
			<div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
				<div class="panel-body">
					{{include file="field_input.tpl" field=$username}}
					{{include file="field_input.tpl" field=$email}}
					{{include file="field_password.tpl" field=$password4}}
					{{include file="field_custom.tpl" field=$timezone}}
					{{include file="field_input.tpl" field=$defloc}}
					{{include file="field_checkbox.tpl" field=$allowloc}}
					
					
					<div class="settings-submit-wrapper" >
						<br />
						<button type="submit" name="submit" class="btn btn-warning"><i class="fa fa-floppy-o fa-fw"></i> {{$submit}}</button>
					</div>
				</div>
			</div>
		<!-- ./Tab -->
		<!-- Tab -->
			<div class="panel-heading" role="tab" id="headingThree">
				<h4 class="panel-title">
					<a data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="true" aria-controls="collapseThree">
						<i class="fa fa-user-secret"></i> {{$h_prv}} <i class="fa fa-chevron-down"></i>
					</a>
				</h4>
			</div>
			<div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
				<div class="panel-body">
					<input type="hidden" name="visibility" value="{{$visibility}}" />
					
					{{include file="field_input.tpl" field=$maxreq}}
					
					{{$profile_in_dir}}
					
					{{$profile_in_net_dir}}
					
					{{$hide_friends}}
					
					{{$hide_wall}}
					
					{{$blockwall}}
					
					{{$blocktags}}
					
					{{$suggestme}}
					
					{{$unkmail}}
					
					
					{{include file="field_input.tpl" field=$cntunkmail}}
					
					{{include file="field_input.tpl" field=$expire.days}}
					
					
					<div class="field input">
						<span class="field_help"><a href="#advanced-expire-popup" id="advanced-expire" class='popupbox' title="{{$expire.advanced}}">{{$expire.label}}</a></span>
						<div style="display: none;">
							<div id="advanced-expire-popup" style="width:auto;height:auto;overflow:auto;">
								<h3>{{$expire.advanced}}</h3>
								{{include file="field_yesno.tpl" field=$expire.items}}
								{{include file="field_yesno.tpl" field=$expire.notes}}
								{{include file="field_yesno.tpl" field=$expire.starred}}
								{{include file="field_yesno.tpl" field=$expire.network_only}}
							</div>
						</div>
					
					</div>
					
					
					<div id="settings-default-perms" class="settings-default-perms" >
						<a href="#profile-jot-acl-wrapper" id="settings-default-perms-menu" class='popupbox'>{{$permissions}} {{$permdesc}}</a>
						<div id="settings-default-perms-menu-end"></div>
					
						<div id="settings-default-perms-select" style="display: none; margin-bottom: 20px" >
						
						<div style="display: none;">
							<div id="profile-jot-acl-wrapper" style="width:auto;height:auto;overflow:auto;">
								{{$aclselect}}
							</div>
						</div>
					
						</div>
					</div>
					<br/>
					<div id="settings-default-perms-end"></div>
					
					{{$group_select}}
					
					
					<div class="settings-submit-wrapper" >
						<br />
						<button type="submit" name="submit" class="btn btn-warning"><i class="fa fa-floppy-o fa-fw"></i> {{$submit}}</button>
					</div>
				</div>
			</div>
		<!-- ./Tab -->
		<!-- Tab -->
			<div class="panel-heading" role="tab" id="headingFour">
				<h4 class="panel-title">
					<a data-toggle="collapse" data-parent="#accordion" href="#collapseFour" aria-expanded="true" aria-controls="collapseFour">
						<i class="fa fa-globe"></i> {{$h_not}} <i class="fa fa-chevron-down"></i>
					</a>
				</h4>
			</div>
			<div id="collapseFour" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingFour">
				<div class="panel-body">
					<div id="settings-notifications">
					
						<div id="settings-activity-desc">{{$activity_options}}</div>
					
						{{include file="field_checkbox.tpl" field=$post_newfriend}}
						{{include file="field_checkbox.tpl" field=$post_joingroup}}
						{{include file="field_checkbox.tpl" field=$post_profilechange}}
					
						<div id="settings-notify-desc">{{$lbl_not}}</div>
					
						<div class="group">
							{{include file="field_intcheckbox.tpl" field=$notify1}}
							{{include file="field_intcheckbox.tpl" field=$notify2}}
							{{include file="field_intcheckbox.tpl" field=$notify3}}
							{{include file="field_intcheckbox.tpl" field=$notify4}}
							{{include file="field_intcheckbox.tpl" field=$notify5}}
							{{include file="field_intcheckbox.tpl" field=$notify6}}
							{{include file="field_intcheckbox.tpl" field=$notify7}}
							{{include file="field_intcheckbox.tpl" field=$notify8}}
						</div>
					
					</div>
					
					<div class="settings-submit-wrapper" >
						<br />
						<button type="submit" name="submit" class="btn btn-warning"><i class="fa fa-floppy-o fa-fw"></i> {{$submit}}</button>
					</div>
				</div>
			</div>
		<!-- ./Tab -->
		<!-- Tab -->
			<div class="panel-heading" role="tab" id="headingFive">
				<h4 class="panel-title">
					<a data-toggle="collapse" data-parent="#accordion" href="#collapseFive" aria-expanded="true" aria-controls="collapseFive">
						<i class="fa fa-user"></i> {{$h_advn}} <i class="fa fa-chevron-down"></i>
					</a>
				</h4>
			</div>
			<div id="collapseFive" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingFive">
				<div class="panel-body">
					<div id="settings-pagetype-desc">{{$h_descadvn}}</div>
					
					{{$pagetype}}
					
					<div class="settings-submit-wrapper" >
						<br />
						<button type="submit" name="submit" class="btn btn-warning"><i class="fa fa-floppy-o fa-fw"></i> {{$submit}}</button>
					</div>
				</div>
			</div>
		<!-- ./Tab -->
		<!-- Tab -->
			<div class="panel-heading" role="tab" id="headingSix">
				<h4 class="panel-title">
					<a data-toggle="collapse" data-parent="#accordion" href="#collapseSix" aria-expanded="true" aria-controls="collapseSix">
						<i class="fa fa-refresh"></i> {{$relocate}} <i class="fa fa-chevron-down"></i>
					</a>
				</h4>
			</div>
			<div id="collapseSix" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingSix">
				<div class="panel-body">
					<div id="settings-pagetype-desc">{{$relocate_text}}</div>
					
					<div class="settings-submit-wrapper" >
						<br />
						<button type="submit" name="resend_relocate" class="btn btn-warning"><i class="fa fa-refresh fa-fw"></i> {{$relocate_button}}</button>
					</div>
				</div>
			</div>
		<!-- ./Tab -->
		</div>
	</div>



