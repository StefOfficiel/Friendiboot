
<h3><i class="fa fa-sitemap"></i> {{$header}}</h3>

<div id="delegate-desc" class="delegate-desc bg-danger text-danger" style="padding:10px 10px 10px 15px;"><i class="fa fa-info-circle"></i> {{$desc}}</div>

{{if $managers}}
<h3><i class="fa fa-briefcase"></i> {{$head_managers}}</h3>

{{foreach $managers as $x}}

<div class="contact-block-div">
	<img class="contact-block-img" src="{{$base}}/photo/thumb/{{$x.uid}}" title="{{$x.username}} ({{$x.nickname}})" />
</div>

{{/foreach}}
<div class="clear"></div>
<hr />
{{/if}}


<h3><i class="fa fa-plug"></i> {{$head_delegates}}</h3>

{{if $delegates}}
{{foreach $delegates as $x}}

<div class="contact-block-div">
	<a class="contact-block-link" href="{{$base}}/delegate/remove/{{$x.uid}}" >
		<img class="contact-block-img" src="{{$base}}/photo/thumb/{{$x.uid}}" title="{{$x.username}} ({{$x.nickname}})" />
		<button type="button"><i class="fa fa-minus-square"></i></button>
	</a>
</div>

{{/foreach}}
<div class="clear"></div>
{{else}}
{{$none}}
{{/if}}
<hr />


<h3><i class="fa fa-share-square"></i> {{$head_potentials}}</h3>
{{if $potentials}}
{{foreach $potentials as $x}}

<div class="contact-block-div">
	<a class="contact-block-link" href="{{$base}}/delegate/add/{{$x.uid}}" >
		<img class="contact-block-img" src="{{$base}}/photo/thumb/{{$x.uid}}" title="{{$x.username}} ({{$x.nickname}})" />
		<button type="button"><i class="fa fa-plus-square"></i></button>
	</a>
</div>

{{/foreach}}
<div class="clear"></div>
{{else}}
{{$none}}
{{/if}}
<hr />

