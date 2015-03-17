<div class="vcard">
	<div class="border_vcard">
		<div class="top_vcard">
			<div align="center">
				<img class="img-thumbnail" style="min-width:80px; min-height:80px; width:100%; height:100%; max-width:175px; max-height:175px;" src="{{$photo}}" alt="{{$name}}" />
				<h4>{{$name}}</h4>
			</div>
			<div align="center" class="relier_vcard">
				<!-- bouton relier -->
			</div>
		</div>
		<div class="bottom_vcard">
			<!-- Friends -->
			{{if $micropro}}
				<a class="allcontact-link" href="viewcontacts/{{$nickname}}">{{$viewcontacts}}</a>
				<div class='contact-block-content'>
				{{foreach $micropro as $m}}
					{{$m}}
				{{/foreach}}
				</div>
			{{/if}}
		</div>
	</div>
</div>