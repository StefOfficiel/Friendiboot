
<h1><i class="fa fa-puzzle-piece"></i> {{$title}}</h1>


<form action="settings/addon" method="post" autocomplete="off">
<input type='hidden' name='form_security_token' value='{{$form_security_token}}'>

{{$settings_addons}}

</form>

