</section>
{{if $item.thread_level==1}}
<div style="height:30px;">&nbsp;</div>
{{/if}}
{{if $mode == display}}
{{else}}
{{if $item.comment_firstcollapsed}}
	<br /><br />
	<div align="center" style="margin-top:-34px;">
		<div class="hide-comments-outer btn btn-default" onclick="showHideComments({{$item.id}});">
			<span id="hide-comments-total-{{$item.id}}" class="hide-comments-total">{{$item.num_comments}}</span>
			<span id="hide-comments-{{$item.id}}" class="hide-comments fakelink">{{$item.hide_text}}</span>
		</div>
	</div>
	<div id="collapsed-comments-{{$item.id}}" class="collapsed-comments" style="display: none;">
{{/if}}
{{/if}}

<!-- TODO => Unknow block -->
<div class="wall-item-decor" style="display:none;">
	<span class="icon s22 star {{$item.isstarred}}" id="starred-{{$item.id}}" title="{{$item.star.starred}}">{{$item.star.starred}}</span>
	{{if $item.lock}}<span class="navicon lock fakelink" onclick="lockview(event,{{$item.id}});" title="{{$item.lock}}"></span><span class="glyphicon glyphicon-lock"></span>{{/if}}	
	<img id="like-rotator-{{$item.id}}" class="like-rotator" src="images/rotator.gif" alt="{{$item.wait}}" title="{{$item.wait}}" style="display: none;" />
</div>
<!-- ./TODO => Unknow block -->

<div class="panel {{if $item.thread_level==1}}panel-default{{/if}}" style="{{if $item.thread_level>2}}margin-left: -15px; margin-right:-16px; margin-bottom:-16px;{{/if}}"><!-- panel -->
	<div class="panel-body" style="{{if $item.thread_level!=1}}border-top:#CDCDCD 1px solid; border-right:#999 1px solid; border-left:#CDCDCD 1px solid; border-bottom:#999 1px solid;{{/if}}"><!-- panel-body -->
		{{if $item.thread_level!=1}}<i class="fa fa-share fa-flip-vertical pull-left"></i>{{/if}}
		{{if $item.thread_level>=3}}<i class="fa fa-share fa-flip-vertical pull-left fa-lg"></i>{{/if}}

		<div class="dropdown"><!-- Dropdown -->
			{{if $item.thread_level==1}}
			<div class="hidden-sm hidden-xs">
				<button class="btn btn-link dropdown-toggle contact-photo" type="button" id="wall-item-photo-menu-{{$item.id}}" data-toggle="dropdown" aria-expanded="true">
					<div class="stack twisted">
						<img src="{{$item.thumb}}" class="img-thumbnail {{$item.sparkle}}" id="wall-item-photo-{{$item.id}}" alt="{{$item.name}}" />
					</div>
				</button>
				<ul class="dropdown-menu" role="menu" aria-labelledby="wall-item-photo-menu-{{$item.id}}" style="margin-top:86px;">
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
			{{/if}}
			{{if $item.thread_level!=1}}
			<button class="btn btn-link dropdown-toggle contact-photo-xs" type="button" id="wall-item-photo-menu-{{$item.id}}" data-toggle="dropdown" aria-expanded="true">
				<img src="{{$item.thumb}}" class="img-thumbnail {{$item.sparkle}}" id="wall-item-photo-{{$item.id}}" alt="{{$item.name}}" />
			</button>
			<ul class="dropdown-menu" role="menu" aria-labelledby="wall-item-photo-menu-{{$item.id}}" style="margin-top:40px;">
				{{$item.item_photo_menu}}
			</ul>
			{{/if}}
		</div><!-- ./Dropdown -->
		{{if $item.drop.dropping != "" || $item.edpost !=""}}
		<div class="pull-right">
			<div class="dropdown">
				<button class="btn btn-link dropdown-toggle" type="button" id="dropdownMenuTools" data-toggle="dropdown" aria-expanded="true">
					<i class="fa fa-cog"></i>
				</button>
				<ul class="dropdown-menu pull-right" role="menu" aria-labelledby="dropdownMenuTools">
					{{if $item.drop.dropping}}
					<li role="presentation">
						<a role="menuitem" tabindex="-1" href="item/drop/{{$item.id}}" class="navicon delete" onclick="return confirmDelete();" title="{{$item.drop.delete}}"><i class="fa fa-trash"></i> {{$item.drop.delete}}</a>
					</li>
					{{/if}}
					{{if $item.edpost}}
					<li role="presentation">
						<a role="menuitem" tabindex="-1" href="{{$item.edpost.0}}" title="{{$item.edpost.1}}" class="navicon delete"><i class="fa fa-pencil"></i> {{$item.edpost.1}}</a>
					</li>
					{{/if}}
					{{if $item.ignore}}
						<li role="presentation">
							<a role="menuitem" tabindex="-1" href="#" id="ignore-{{$item.id}}" onclick="doignore({{$item.id}}); return false;" class="{{$item.ignore.classdo}}" title="{{$item.ignore.do}}"><i class="fa fa-eye-slash"></i> {{$item.ignore.do}}</a>
						</li>
						<li role="presentation">
							<a role="menuitem" tabindex="-1" href="#" id="unignore-{{$item.id}}" onclick="doignore({{$item.id}}); return false;"  class="{{$item.ignore.classundo}}"  title="{{$item.ignore.undo}}"><i class="fa fa-eye"></i> {{$item.ignore.undo}}</a>
						</li>
					{{/if}}
				</ul>
			</div>
		</div>
		{{/if}}
		{{if $item.thread_level==1}}
		<div class="contact-info hidden-sm hidden-xs"><!-- <= For computer -->
			<h4>{{$item.name}}
			{{if $item.plink}}
			<a title="{{$item.plink.title}}" href="{{$item.plink.href}}"><p class="text-muted"><small><i class="fa fa-clock-o"></i>&nbsp;&mdash;&nbsp;{{$item.ago}} <small>(<i>{{$item.network_name}}</i>){{if $item.location}}&nbsp;&mdash;&nbsp;(<i>{{$item.location}}</i>){{/if}}</small></small></p></a>
			{{/if}}</h4>
		</div>
		<div class="contact-info-xs hidden-lg hidden-md"><!-- <= For smartphone (responsive) -->
			<h5><strong>{{$item.name}}</strong>
			{{if $item.plink}}
			<a title="{{$item.plink.title}}" href="{{$item.plink.href}}"><p class="text-muted"><small><i class="fa fa-clock-o"></i>&nbsp;&mdash;&nbsp;{{$item.ago}} <small>(<i>{{$item.network_name}}</i>){{if $item.location}}&nbsp;&mdash;&nbsp;(<i>{{$item.location}}</i>){{/if}}</small></small></p></a>
			{{/if}}</h5>
		</div>
		{{/if}}
		{{if $item.thread_level!=1}}
		<div class="contact-info-xs"><!-- <= For comments -->
			<h5><strong>{{$item.name}}</strong>
			{{if $item.plink}}
			<a title="{{$item.plink.title}}" href="{{$item.plink.href}}"><p class="text-muted"><small><i class="fa fa-clock-o"></i>&nbsp;&mdash;&nbsp;{{$item.ago}} <small>(<i>{{$item.network_name}}</i>){{if $item.location}}&nbsp;&mdash;&nbsp;(<i>{{$item.location}}</i>){{/if}}</small></small></p></a>
			{{/if}}</h5>
		</div>
		{{/if}}
		<hr />
		<div class="panel" style="margin-left: 13px; text-align:justify;">
			{{if $item.thread_level==1}}
			<div style="height:10px;">&nbsp;</div>
			{{/if}}
			{{if $item.title}}
			<span>
				<h2><a href="{{$item.plink.href}}" class="{{$item.sparkle}}">{{$item.title}}</a></h2><br />
			</span>
			{{/if}}
			
			{{$item.body}}
			<!-- TODO -->
			<div class="wall-item-bottom">
				<div class="wall-item-links">
				</div>
				<div class="wall-item-tags">
					{{foreach $item.hashtags as $tag}}
						<span class='tag label btn-info sm'>{{$tag}} <i class="fa fa-bolt"></i></span>
					{{/foreach}}
					{{foreach $item.mentions as $tag}}
						<span class='mention label btn-warning sm'>{{$tag}} <i class="fa fa-user"></i></span>
					{{/foreach}}
					   {{foreach $item.folders as $cat}}
							<span class='folder label btn-danger sm'>{{$cat.name}}</a>{{if $cat.removeurl}} (<a href="{{$cat.removeurl}}" title="{{$remove}}">x</a>) {{/if}} </span>
					   {{/foreach}}
						{{foreach $item.categories as $cat}}
							<span class='category label btn-success sm'>{{$cat.name}}</a>{{if $cat.removeurl}} (<a href="{{$cat.removeurl}}" title="{{$remove}}">x</a>) {{/if}} </span>
						{{/foreach}}
				</div>
						{{if $item.edited}}<div class="itemedited">{{$item.edited['label']}} (<span title="{{$item.edited['date']}}">{{$item.edited['relative']}}</span>)</div>{{/if}}
			</div>
			<!-- ./TODO -->
			<br />
		</div>
		<hr />
		<div class="pull-left">
			{{if $item.vote}}
				<a href="#" class="btn-link" id="like-{{$item.id}}" title="{{$item.vote.like.0}}" onclick="dolike({{$item.id}},'like'); return false"><i class="fa fa-thumbs-up"></i>&nbsp;{{$item.vote.like.0}}</a>&nbsp;•&nbsp;
				{{if $item.vote.dislike}}
					<a href="#" class="btn-link" id="dislike-{{$item.id}}" title="{{$item.vote.dislike.0}}" onclick="dolike({{$item.id}},'dislike'); return false"><i class="fa fa-thumbs-down"></i>&nbsp;{{$item.vote.dislike.0}}</a>&nbsp;•&nbsp;
				{{/if}}
				{{if $item.vote.share}}
					<a href="#" class="btn-link" id="share-{{$item.id}}" title="{{$item.vote.share.0}}" onclick="jotShare({{$item.id}}); return false"><i class="fa fa-retweet"></i>&nbsp;{{$item.vote.share.0}}</a>
					{{if $item.star}}&nbsp;•&nbsp;{{/if}}
				{{/if}}
			{{/if}}
			{{if $item.star}}
				<a href="#" id="star-{{$item.id}}" onclick="dostar({{$item.id}}); return false;" class="{{$item.star.classdo}} btn-link" title="{{$item.star.do}}"><i class="fa fa-star-o"></i>&nbsp;{{$item.star.do}}</a>
				<a href="#" id="unstar-{{$item.id}}" onclick="dostar({{$item.id}}); return false;" class="{{$item.star.classundo}} btn-link" title="{{$item.star.undo}}"><i class="fa fa-star"></i>&nbsp;{{$item.star.undo}}</a>
			{{/if}}
			{{if $item.drop.pagedrop}}
				<input type="checkbox" title="{{$item.drop.select}}" name="itemselected[]" class="item-select" value="{{$item.id}}" />
			{{/if}}
		</div>
		<br /><br />
		<div class="wall-item-links"></div>
		<div class="wall-item-like" id="wall-item-like-{{$item.id}}">{{if $item.like != ""}}<i class="fa fa-heart" style="color:#F00;"></i> &minus; {{$item.like}}{{/if}}</div>
		<div class="wall-item-dislike" id="wall-item-dislike-{{$item.id}}">{{$item.dislike}}</div>
		<div class="item-add-comment">
			<div class="wall-item-bottom commentbox well-sm">
				<div class="wall-item-links"></div>
				{{if $item.threaded}}{{if $item.comment}}{{if $item.indent==comment}}
				<div class="wall-item-comment-wrapper">
					{{$item.comment}}
				</div>
				{{/if}}{{/if}}{{/if}}
				{{* top thread comment box *}}
				{{if $item.threaded}}{{if $item.comment}}{{if $item.thread_level==1}}
				<div class="wall-item-comment-wrapper">
					{{$item.comment}}
				</div>
				{{/if}}{{/if}}{{/if}}
			</div>
		</div>

{{foreach $item.children as $child}}
	{{if $child.type == tag}}
		{{include file="wall_item_tag.tpl" item=$child}}
	{{else}}
		{{include file="{{$item.template}}" item=$child}}
	{{/if}}
{{/foreach}}

		{{if $item.flatten}}
		<div class="item-add-comment">
			<div class="wall-item-comment-wrapper">{{$item.comment}}</div>
		</div>
		{{/if}}
	</div><!-- ./panel-body -->
</div><!-- ./panel -->


{{if $mode == display}}
{{else}}
{{if $item.comment_lastcollapsed}}</div>{{/if}}
{{/if}}