<div id="follow-sidebar" class="widget">
	<h3><i class="fa fa-user-plus"></i> {{$connect}}</h3>
	<p id="connect-desc" class="bg-success" style="padding:10px;"><i class="fa fa-chevron-right"></i>&nbsp;&nbsp;{{$desc}}</p>
	<form class="navbar-form" action="follow" method="post" >
		<div class="input-group">
			<input id="side-follow-url" class="form-control" type="text" name="url" value="{{$value|escape:'html'}}" size="24" placeholder="{{$hint|escape:'html'}}" title="{{$hint|escape:'html'}}">
			<span class="input-group-btn">
				<button id="side-follow-submit" class="btn btn-default" type="submit" name="submit"><i class="fa fa-exchange"></i> {{$follow|escape:'html'}}</button>
			</span>
		</div>
	</form>
</div>
<hr/>