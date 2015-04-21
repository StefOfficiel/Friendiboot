<div class="pager">
	{{if $pager}}
		{{if $pager.first}}
			<span class="pager_first $pager.first.class">
				<a href="{{$pager.first.url}}" class="btn btn-labeled btn-default"><span class="btn-label"><i class="fa fa-angle-double-left"></i></span>{{$pager.first.text}}</a>
			</span>
		{{/if}}
		{{if $pager.prev}}
			<span class="pager_prev {{$pager.prev.class}}">
				<a href="{{$pager.prev.url}}" class="btn btn-labeled btn-default"><span class="btn-label"><i class="fa fa-angle-left"></i></span>{{$pager.prev.text}}</a>
			</span>
		{{/if}}
		{{foreach $pager.pages as $p}}
			<span class="pager_{{$p.class}}">
				<a href="{{$p.url}}" class="btn btn-labeled btn-default">{{$p.text}}</a>
			</span>
		{{/foreach}}
		{{if $pager.next}}
			<span class="pager_next {{$pager.next.class}}">
				<a href="{{$pager.next.url}}" class="btn btn-labeled btn-default">{{$pager.next.text}}<span class="btn-label btn-label-right"><i class="fa fa-angle-right"></i></span></a>
			</span>
		{{/if}}
		{{if $pager.last}}
			<span class="pager_last {{$pager.last.class}}">
				<a href="{{$pager.last.url}}" class="btn btn-labeled btn-default">{{$pager.last.text}}<span class="btn-label btn-label-right"><i class="fa fa-angle-double-right"></i></span></a>
			</span>
		{{/if}}
	{{/if}}
</div>