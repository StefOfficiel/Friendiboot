<div class="mail-conv-outside-wrapper">
	<blockquote>
		<div class="media">
			<div class="media-left">
				<a href="{{$mail.from_url}}">
					<img class="media-object" src="{{$mail.from_photo}}" alt="{{$mail.from_name}}" style="min-width:80px; min-height:80px; width:80px; height:80px; max-width:80px; max-height:80px;" />
				</a>
			</div>
			<div class="media-body">
				<a href="message/drop/{{$mail.id}}" class="btn btn-danger pull-right" onclick="return confirmDelete();" title="{{$mail.delete}}" id="mail-conv-delete-icon-{{$mail.id}}" class="mail-conv-delete-icon" onmouseover="imgbright(this);" onmouseout="imgdull(this);" ><i class="fa fa-trash"></i></a>
				<div class="mail-conv-delete-end"></div>
				<h4 class="media-heading"><a href="{{$mail.from_url}}">{{$mail.from_name}}</a></h4>
				{{$mail.body}}
				<p class="text-muted" style="font-size:9px;" title="{{$mail.subject}} : {{$mail.date}}"><i class="fa fa-clock-o fa-fw"></i>&nbsp;&mdash;&nbsp;{{$mail.date}}&nbsp;&mdash;&nbsp;<i>{{$mail.subject}}</i></p>
			</div>
		</div>
	</blockquote>
	<div class="mail-conv-outside-wrapper-end"></div>
</div>
<hr class="mail-conv-break" />
