<div id="peoplefind-sidebar" class="widget">
	<h3><i class="fa fa-child"></i> {{$findpeople}}</h3>
	<p id="peoplefind-desc" class="bg-success" style="padding:10px;"><i class="fa fa-chevron-right"></i>&nbsp;&nbsp;{{$desc}}</p>
	<form class="navbar-form" action="dirfind" method="post" >
		<div class="input-group">
			<input id="side-peoplefind-url" class="form-control" type="text" name="search" size="24" placeholder="{{$hint|escape:'html'}}" title="{{$hint|escape:'html'}}">
			<span class="input-group-btn">
				<button id="side-peoplefind-submit" class="btn btn-default" type="submit" name="submit"><i class="fa fa-search-plus"></i> {{$findthem|escape:'html'}}</button>
			</span>
		</div>
	</form>	
	<div class="side-link" id="side-match-link"><a href="match" class="btn btn-link"><i class="fa fa-star"></i>&nbsp;&nbsp;{{$similar}}</a></div>
	<div class="side-link" id="side-suggest-link"><a href="suggest" class="btn btn-link"><i class="fa fa-magic"></i>&nbsp;&nbsp;{{$suggest}}</a></div>
	<div class="side-link" id="side-random-profile-link" ><a href="randprof" target="extlink" class="btn btn-link"><i class="fa fa-random"></i>&nbsp;&nbsp;{{$random}}</a></div>
	{{if $inv}} 
	<div class="side-link" id="side-invite-link" ><a href="invite" class="btn btn-link"><i class="fa fa-comment fa-flip-horizontal"></i>&nbsp;&nbsp;{{$inv}}</a></div>
	{{/if}}
</div>

