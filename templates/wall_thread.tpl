{{if $mode == display}}
{{else}}
{{if $item.comment_firstcollapsed}}
	<div align="center" style="margin-top:-34px;">
		<div class="hide-comments-outer btn btn-default" onclick="showHideComments({{$item.id}});">
			<span id="hide-comments-total-{{$item.id}}" class="hide-comments-total">{{$item.num_comments}}</span>
			<span id="hide-comments-{{$item.id}}" class="hide-comments fakelink">{{$item.hide_text}}</span>
		</div>
	</div>
	<div id="collapsed-comments-{{$item.id}}" class="collapsed-comments" style="display: none;">
{{/if}}
{{/if}}

{{if $item.thread_level!=1}}<div class="children">{{/if}}

<div class="wall-item-decor" style="display:none;">
	<span class="icon s22 star {{$item.isstarred}}" id="starred-{{$item.id}}" title="{{$item.star.starred}}">{{$item.star.starred}}</span>
	{{if $item.lock}}<span class="navicon lock fakelink" onclick="lockview(event,{{$item.id}});" title="{{$item.lock}}"></span><span class="glyphicon glyphicon-lock"></span>{{/if}}	
	<img id="like-rotator-{{$item.id}}" class="like-rotator" src="images/rotator.gif" alt="{{$item.wait}}" title="{{$item.wait}}" style="display: none;" />
</div>

<div class="wall-item-container {{$item.indent}} {{$item.shiny}}" id="item-{{$item.guid}}">
	<div class="wall-item-item">
		<div class="wall-item-info">
			<div class="dropdown">
				<div class="hidden-sm hidden-xs">
					<button class="btn btn-link dropdown-toggle contact-photo" type="button" id="wall-item-photo-menu-{{$item.id}}" data-toggle="dropdown" aria-expanded="true">
						<img src="{{$item.thumb}}" class="img-thumbnail {{$item.sparkle}}" id="wall-item-photo-{{$item.id}}" alt="{{$item.name}}" />
					</button>
					<ul class="dropdown-menu" role="menu" aria-labelledby="wall-item-photo-menu-{{$item.id}}" style="margin-top:80px;">
						{{$item.item_photo_menu}}
					</ul>
				</div>
				<div class="hidden-lg hidden-md">
					<button class="btn btn-link dropdown-toggle contact-photo-xs" type="button" id="wall-item-photo-menu-{{$item.id}}" data-toggle="dropdown" aria-expanded="true">
						<img src="{{$item.thumb}}" class="img-thumbnail {{$item.sparkle}}" id="wall-item-photo-{{$item.id}}" alt="{{$item.name}}" />
					</button>
					<ul class="dropdown-menu" role="menu" aria-labelledby="wall-item-photo-menu-{{$item.id}}" style="margin-top:40px;">
						{{$item.item_photo_menu}}
					</ul>
				</div>
			</div>
			<div class="contact-info hidden-sm hidden-xs"><!-- <= For computer -->
				<h4>{{$item.name}}</h4>
				<p class="text-muted"><i class="fa fa-clock-o"></i>&nbsp;&mdash;&nbsp;{{$item.ago}} <small>(<i>{{$item.network_name}}</i>){{if $item.location}}&nbsp;&mdash;&nbsp;(<i>{{$item.location}}</i>){{/if}}</small></p>
				<br />
				<span>{{if $item.title}}<h2><a href="{{$item.plink.href}}" class="{{$item.sparkle}}">{{$item.title}}</a></h2><br />{{/if}}{{$item.body}}</span>
			</div>
			<div class="contact-info-xs hidden-lg hidden-md"><!-- <= For smartphone (responsive) -->
				<h5><strong>{{$item.name}}</strong></h5>
				<p class="text-muted"><small><i class="fa fa-clock-o"></i>&nbsp;&mdash;&nbsp;{{$item.ago}} <small>(<i>{{$item.network_name}}</i>){{if $item.location}}&nbsp;&mdash;&nbsp;(<i>{{$item.location}}</i>){{/if}}</small></small></p>
				<br />
				{{if $item.title}}
				<span>
					<h2><a href="{{$item.plink.href}}" class="{{$item.sparkle}}">{{$item.title}}</a></h2><br />
				</span>
				{{/if}}
				<span>
					{{$item.body}}
				</span>
			</div>
			<!-- TODO -->
			<div class="wall-item-bottom">
					<div class="wall-item-links">
					</div>
					<div class="wall-item-tags">
						{{foreach $item.hashtags as $tag}}
							<span class='tag'>{{$tag}}</span>
						{{/foreach}}
						{{foreach $item.mentions as $tag}}
							<span class='mention'>{{$tag}}</span>
						{{/foreach}}
						   {{foreach $item.folders as $cat}}
								<span class='folder'>{{$cat.name}}</a>{{if $cat.removeurl}} (<a href="{{$cat.removeurl}}" title="{{$remove}}">x</a>) {{/if}} </span>
						   {{/foreach}}
							{{foreach $item.categories as $cat}}
								<span class='category'>{{$cat.name}}</a>{{if $cat.removeurl}} (<a href="{{$cat.removeurl}}" title="{{$remove}}">x</a>) {{/if}} </span>
							{{/foreach}}
					</div>
							{{if $item.edited}}<div class="itemedited">{{$item.edited['label']}} (<span title="{{$item.edited['date']}}">{{$item.edited['relative']}}</span>)</div>{{/if}}
			</div>
			<!-- ./TODO -->
			<br />
			<div class="contact-info">
				<div class="pull-left">
				{{if $item.star}}
					<a href="#" id="star-{{$item.id}}" onclick="dostar({{$item.id}}); return false;" class="{{$item.star.classdo}}" title="{{$item.star.do}}"><i class="fa fa-star-o fa-lg btn btn-default"></i></a> <a href="#" id="unstar-{{$item.id}}" onclick="dostar({{$item.id}}); return false;" class="{{$item.star.classundo}}" title="{{$item.star.undo}}"><i class="fa fa-star fa-lg btn btn-default"></i></a>
				{{/if}}
				{{if $item.ignore}}
					<a href="#" id="ignore-{{$item.id}}" onclick="doignore({{$item.id}}); return false;" class="{{$item.ignore.classdo}}" title="{{$item.ignore.do}}"><i class="fa fa-eye-slash fa-lg btn btn-default"></i></a>
					<a href="#" id="unignore-{{$item.id}}" onclick="doignore({{$item.id}}); return false;"  class="{{$item.ignore.classundo}}"  title="{{$item.ignore.undo}}"><i class="fa fa-eye fa-lg btn btn-default"></i></a>
				{{/if}}
				{{if $item.vote}}
					<a href="#" id="like-{{$item.id}}" title="{{$item.vote.like.0}}" onclick="dolike({{$item.id}},'like'); return false"><i class="fa fa-thumbs-up fa-lg btn btn-default"></i></a>
					{{if $item.vote.dislike}}
					<a href="#" id="dislike-{{$item.id}}" title="{{$item.vote.dislike.0}}" onclick="dolike({{$item.id}},'dislike'); return false"><i class="fa fa-thumbs-down fa-lg btn btn-default"></i></a>
					{{/if}}
							
								{{if $item.vote.share}}
										<a href="#" id="share-{{$item.id}}" title="{{$item.vote.share.0}}" onclick="jotShare({{$item.id}}); return false"><i class="fa fa-retweet fa-lg btn btn-default"></i></a>
								{{/if}}			
				{{/if}}
				</div>
				<div class="wall-item-actions-tools pull-right">
					{{if $item.drop.pagedrop}}
						<input type="checkbox" title="{{$item.drop.select}}" name="itemselected[]" class="item-select" value="{{$item.id}}" />
					{{/if}}
					{{if $item.drop.dropping}}
						<a href="item/drop/{{$item.id}}" onclick="return confirmDelete();" class="navicon delete" title="{{$item.drop.delete}}"><i class="fa fa-trash fa-lg btn btn-default"></i></a>
					{{/if}}
					{{if $item.edpost}}
						<a class="navicon edit" href="{{$item.edpost.0}}" title="{{$item.edpost.1}}"><i class="fa fa-pencil fa-lg btn btn-default"></i></a>
					{{/if}}
				</div>
				<br /><br />
				<div class="wall-item-links"></div>
				<div class="wall-item-like" id="wall-item-like-{{$item.id}}">{{$item.like}}</div>
				<div class="wall-item-dislike" id="wall-item-dislike-{{$item.id}}">{{$item.dislike}}</div>
				<div class="item-add-comment">
				{{if $item.flatten}}
					<div class="wall-item-comment-wrapper" >{{$item.comment}}</div>
				{{/if}}
					<div class="wall-item-bottom commentbox">
						<div class="wall-item-links"></div>
						{{if $item.threaded}}{{if $item.comment}}{{if $item.indent==comment}}
						<div class="wall-item-comment-wrapper">
							{{$item.comment}}
						</div>
						{{/if}}{{/if}}{{/if}}
						{{* top thread comment box *}}
						{{if $item.threaded}}{{if $item.comment}}{{if $item.thread_level==1}}
						<div class="wall-item-comment-wrapper" >
							{{$item.comment}}
						</div>
						{{/if}}{{/if}}{{/if}}
					</div>
				</div>
				{{if $item.plink}}
				<div class="pull-left">
					<a class="navicon link{{$item.sparkle}}" title="{{$item.plink.title}}" href="{{$item.plink.href}}"><i class="fa fa-external-link-square fa-lg"></i></a>
				</div>
				{{/if}}
			</div>
		</div>
	</div>
</div>

{{foreach $item.children as $child}}
	{{if $child.type == tag}}
		{{include file="wall_item_tag.tpl" item=$child}}
	{{else}}
		{{include file="{{$item.template}}" item=$child}}
	{{/if}}
{{/foreach}}

{{if $item.thread_level!=1}}</div>{{/if}}


{{if $mode == display}}
{{else}}
{{if $item.comment_lastcollapsed}}</div>{{/if}}
{{/if}}