<div class="mail-list-outside-wrapper">
	<div class="panel panel-default">
		<div class="panel-body">
			<div class="media">
				<div class="media-left">
					<a href="{{$from_url}}">
						<img class="media-object" src="{{$from_photo}}" alt="{{$from_name}}" style="min-width:80px; min-height:80px; width:80px; height:80px; max-width:80px; max-height:80px;" />
					</a>
				</div>
				<div class="media-body">
					<h4 class="media-heading">{{$from_name}}</h4>
					<a href="message/dropconv/{{$id}}" onclick="return confirmDelete();"  title="{{$delete}}" class="btn btn-danger pull-right" onmouseover="imgbright(this);" onmouseout="imgdull(this);" ><i class="fa fa-trash"></i></a>
					<a href="message/{{$id}}">
						<h3>{{$subject}}</h3>
					</a>
				</div>
			</div>
		</div>
		<div class="panel-footer">
			<p class="text-muted"><i class="fa fa-clock-o fa-fw"></i>&nbsp;&mdash;&nbsp;{{$date}}</p>
		</div>
	</div>
</div>
<div class="mail-list-delete-end"></div>

<div class="mail-list-outside-wrapper-end"></div>