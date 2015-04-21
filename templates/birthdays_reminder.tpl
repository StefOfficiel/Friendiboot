
{{if $count}}
<div id="birthblock" class="well">
	<div id="birthday-notice" class="birthday-notice fakelink {{$classtoday}}" onclick="openClose('birthday-wrapper');">
		<i class="fa fa-birthday-cake"></i> {{$event_reminders}} ({{$count}})
	</div>
	<div id="birthday-wrapper" style="display: none;">
		<div id="birthday-title">{{$event_title}}</div>
		<div id="birthday-title-end"></div>
		{{foreach $events as $event}}
			<span id="birthday-{{$event.id}}" class="label label-primary"><i class="fa fa-caret-right"></i> <a style="color:#FFF;" href="{{$event.link}}">{{$event.title}} {{$event.date}}</a></span>
		{{/foreach}}
	</div>
</div>
{{/if}}

