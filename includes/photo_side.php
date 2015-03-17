<?php
$SERVER_ReqURI = substr($_SERVER['REQUEST_URI'], 1);
$delslash = "/";
$SERVER_ReqURI = str_replace($delslash, "", $SERVER_ReqURI);
$SERVER_ReqURI = substr($SERVER_ReqURI, 0, strpos($SERVER_ReqURI, "?"));

if($SERVER_ReqURI == "network")
{	
	$myUID = $_SESSION['uid'];
	
	$mypics = q('SELECT * FROM `photo` WHERE uid="'.$myUID.'" AND scale="2" ORDER BY `edited` DESC LIMIT 0, 10');
	$myname = q('SELECT * FROM `user` WHERE uid="'.$myUID.'"');
	$myname = $myname[0]['nickname'];
	
	echo '
	<h3>'.ucfirst($a->strings["Recent Photos"]).' : <small class="badge pull-right"><a href="photos/'.$myname.'/" style="color:#FFF;">'.$a->strings["View Photos"].'</a></small></h3>
	<div class="row" align="center">
		';
		if($mypics[0]['datasize'] > 0)
		{
			echo '
		<div class="col-lg-4 col-md-6 col-sm-6 col-xs-6" style="padding-left:5px; padding-right:5px;">
			<a href="#" data-toggle="modal" data-target="#MODAL'.$mypics[0]['resource-id'].'">
				<span class="rollover" ></span>
				<img src="./photo/'.$mypics[0]['resource-id'].'.png" width="100" height="100" class="gallery" />
			</a>
		</div>
		
		<div id="MODAL'.$mypics[0]['resource-id'].'" class="modal fade">
			<div class="modal-dialog modal-lg">
				<div class="modal-content">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
					<a href="photos/'.$myname.'/image/'.$mypics[0]['resource-id'].'">
						<img src="./photo/'.$mypics[0]['resource-id'].'.png" width="100%" />
					</a>
				</div><!-- /.modal-content -->
			</div><!-- /.modal-dialog modal-lg -->
		</div><!-- /.modal -->
				';
		}
		if($mypics[1]['datasize'] > 0)
		{
			echo '
		<div class="col-lg-4 col-md-6 col-sm-6 col-xs-6" style="padding-left:5px; padding-right:5px;">
			<a href="#" data-toggle="modal" data-target="#MODAL'.$mypics[1]['resource-id'].'">
				<span class="rollover" ></span>
				<img src="./photo/'.$mypics[1]['resource-id'].'.png" width="100" height="100" class="gallery" />
			</a>
		</div>
				
		<div id="MODAL'.$mypics[1]['resource-id'].'" class="modal fade">
			<div class="modal-dialog modal-lg">
				<div class="modal-content">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
					<a href="photos/'.$myname.'/image/'.$mypics[1]['resource-id'].'">
						<img src="./photo/'.$mypics[1]['resource-id'].'.png" width="100%" />
					</a>
				</div><!-- /.modal-content -->
			</div><!-- /.modal-dialog modal-lg -->
		</div><!-- /.modal -->
				';
		}
		if($mypics[2]['datasize'] > 0)
		{
			echo '
		<div class="col-lg-4 col-md-6 col-sm-6 col-xs-6" style="padding-left:5px; padding-right:5px;">
			<a href="#" data-toggle="modal" data-target="#MODAL'.$mypics[2]['resource-id'].'">
				<span class="rollover" ></span>
				<img src="./photo/'.$mypics[2]['resource-id'].'.png" width="100" height="100" class="gallery" />
			</a>
		</div>
				
		<div id="MODAL'.$mypics[2]['resource-id'].'" class="modal fade">
			<div class="modal-dialog modal-lg">
				<div class="modal-content">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
					<a href="photos/'.$myname.'/image/'.$mypics[2]['resource-id'].'">
						<img src="./photo/'.$mypics[2]['resource-id'].'.png" width="100%" />
					</a>
				</div><!-- /.modal-content -->
			</div><!-- /.modal-dialog modal-lg -->
		</div><!-- /.modal -->
				';
		}
		if($mypics[3]['datasize'] > 0)
		{
			echo '
		<div class="col-lg-4 col-md-6 col-sm-6 col-xs-6" style="padding-left:5px; padding-right:5px;">
			<a href="#" data-toggle="modal" data-target="#MODAL'.$mypics[3]['resource-id'].'">
				<span class="rollover" ></span>
				<img src="./photo/'.$mypics[3]['resource-id'].'.png" width="100" height="100" class="gallery" />
			</a>
		</div>
				
		<div id="MODAL'.$mypics[3]['resource-id'].'" class="modal fade">
			<div class="modal-dialog modal-lg">
				<div class="modal-content">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
					<a href="photos/'.$myname.'/image/'.$mypics[3]['resource-id'].'">
						<img src="./photo/'.$mypics[3]['resource-id'].'.png" width="100%" />
					</a>
				</div><!-- /.modal-content -->
			</div><!-- /.modal-dialog modal-lg -->
		</div><!-- /.modal -->
				';
		}
		if($mypics[4]['datasize'] > 0)
		{
			echo '
		<div class="col-lg-4 col-md-6 col-sm-6 col-xs-6" style="padding-left:5px; padding-right:5px;">
			<a href="#" data-toggle="modal" data-target="#MODAL'.$mypics[4]['resource-id'].'">
				<span class="rollover" ></span>
				<img src="./photo/'.$mypics[4]['resource-id'].'.png" width="100" height="100" class="gallery" />
			</a>
		</div>
				
		<div id="MODAL'.$mypics[4]['resource-id'].'" class="modal fade">
			<div class="modal-dialog modal-lg">
				<div class="modal-content">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
					<a href="photos/'.$myname.'/image/'.$mypics[4]['resource-id'].'">
						<img src="./photo/'.$mypics[4]['resource-id'].'.png" width="100%" />
					</a>
				</div><!-- /.modal-content -->
			</div><!-- /.modal-dialog modal-lg -->
		</div><!-- /.modal -->
				';
		}
		if($mypics[5]['datasize'] > 0)
		{
			echo '
		<div class="col-lg-4 col-md-6 col-sm-6 col-xs-6" style="padding-left:5px; padding-right:5px;">
			<a href="#" data-toggle="modal" data-target="#MODAL'.$mypics[5]['resource-id'].'">
				<span class="rollover" ></span>
				<img src="./photo/'.$mypics[5]['resource-id'].'.png" width="100" height="100" class="gallery" />
			</a>
		</div>
				
		<div id="MODAL'.$mypics[5]['resource-id'].'" class="modal fade">
			<div class="modal-dialog modal-lg">
				<div class="modal-content">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
					<a href="photos/'.$myname.'/image/'.$mypics[5]['resource-id'].'">
						<img src="./photo/'.$mypics[5]['resource-id'].'.png" width="100%" />
					</a>
				</div><!-- /.modal-content -->
			</div><!-- /.modal-dialog modal-lg -->
		</div><!-- /.modal -->
				';
		}
		if($mypics[6]['datasize'] > 0)
		{
			echo '
		<div class="col-lg-4 col-md-6 col-sm-6 col-xs-6" style="padding-left:5px; padding-right:5px;">
			<a href="#" data-toggle="modal" data-target="#MODAL'.$mypics[6]['resource-id'].'">
				<span class="rollover" ></span>
				<img src="./photo/'.$mypics[6]['resource-id'].'.png" width="100" height="100" class="gallery" />
			</a>
		</div>
				
		<div id="MODAL'.$mypics[6]['resource-id'].'" class="modal fade">
			<div class="modal-dialog modal-lg">
				<div class="modal-content">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
					<a href="photos/'.$myname.'/image/'.$mypics[6]['resource-id'].'">
						<img src="./photo/'.$mypics[6]['resource-id'].'.png" width="100%" />
					</a>
				</div><!-- /.modal-content -->
			</div><!-- /.modal-dialog modal-lg -->
		</div><!-- /.modal -->
				';
		}
		if($mypics[7]['datasize'] > 0)
		{
			echo '
		<div class="col-lg-4 col-md-6 col-sm-6 col-xs-6" style="padding-left:5px; padding-right:5px;">
			<a href="#" data-toggle="modal" data-target="#MODAL'.$mypics[7]['resource-id'].'">
				<span class="rollover" ></span>
				<img src="./photo/'.$mypics[7]['resource-id'].'.png" width="100" height="100" class="gallery" />
			</a>
		</div>
				
		<div id="MODAL'.$mypics[7]['resource-id'].'" class="modal fade">
			<div class="modal-dialog modal-lg">
				<div class="modal-content">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
					<a href="photos/'.$myname.'/image/'.$mypics[7]['resource-id'].'">
						<img src="./photo/'.$mypics[7]['resource-id'].'.png" width="100%" />
					</a>
				</div><!-- /.modal-content -->
			</div><!-- /.modal-dialog modal-lg -->
		</div><!-- /.modal -->
				';
		}
		if($mypics[8]['datasize'] > 0)
		{
			echo '
		<div class="col-lg-4 visible-lg" style="padding-left:5px; padding-right:5px;">
			<a href="#" data-toggle="modal" data-target="#MODAL'.$mypics[8]['resource-id'].'">
				<span class="rollover" ></span>
				<img src="./photo/'.$mypics[8]['resource-id'].'.png" width="100" height="100" class="gallery" />
			</a>
		</div>
				
		<div id="MODAL'.$mypics[8]['resource-id'].'" class="modal fade">
			<div class="modal-dialog modal-lg">
				<div class="modal-content">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
					<a href="photos/'.$myname.'/image/'.$mypics[8]['resource-id'].'">
						<img src="./photo/'.$mypics[8]['resource-id'].'.png" width="100%" />
					</a>
				</div><!-- /.modal-content -->
			</div><!-- /.modal-dialog modal-lg -->
		</div><!-- /.modal -->
				';
		}
	echo '
	</div>
		';
}
?>