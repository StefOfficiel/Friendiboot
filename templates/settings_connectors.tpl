
<h1><i class="fa fa-share-alt"></i> {{$title}}</h1>

<div style="padding-left:15px;">
	<div class="connector_statusmsg"><i class="fa fa-info-circle fa-fw"></i> <i>{{$diasp_enabled}}</i></div>
	<div class="connector_statusmsg"><i class="fa fa-info-circle fa-fw"></i> <i>{{$ostat_enabled}}</i></div>
</div>

<form action="settings/connectors" method="post" autocomplete="off">
<input type='hidden' name='form_security_token' value='{{$form_security_token}}'>

{{$settings_connectors}}

{{if $mail_disabled}}

{{else}}
	<span id="settings_mail_inflated" class="settings-block fakelink" style="display: block;" onclick="openClose('settings_mail_expanded'); openClose('settings_mail_inflated');">
		<img class="connector" src="images/mail.png" /><h3 class="settings-heading connector">{{$h_imap}}</h3>
	</span>
	<div id="settings_mail_expanded" class="settings-block" style="display: none;">
	<span class="fakelink" onclick="openClose('settings_mail_expanded'); openClose('settings_mail_inflated');">
		<img class="connector" src="images/mail.png" /><h3 class="settings-heading connector">{{$h_imap}}</h3>
	</span>
	<p>{{$imap_desc}}</p>
	{{include file="field_custom.tpl" field=$imap_lastcheck}}
	{{include file="field_input.tpl" field=$mail_server}}
	{{include file="field_input.tpl" field=$mail_port}}
	{{include file="field_select.tpl" field=$mail_ssl}}
	{{include file="field_input.tpl" field=$mail_user}}
	{{include file="field_password.tpl" field=$mail_pass}}
	{{include file="field_input.tpl" field=$mail_replyto}}
	{{include file="field_checkbox.tpl" field=$mail_pubmail}}
	{{include file="field_select.tpl" field=$mail_action}}
	{{include file="field_input.tpl" field=$mail_movetofolder}}

	<div class="settings-submit-wrapper" >
		<br />
		<button type="submit" id="imap-submit" name="imap-submit" class="btn btn-warning"><i class="fa fa-floppy-o fa-fw"></i> {{$submit}}</button>
	</div>
	</div>
{{/if}}

</form>

