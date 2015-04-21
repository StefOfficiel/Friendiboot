<?php
$SERVER_ReqURI = substr($_SERVER['REQUEST_URI'], 1);
$delslash = "/";
$SERVER_ReqURI = str_replace($delslash, "", $SERVER_ReqURI);
$SERVER_ReqURI = substr($SERVER_ReqURI, 0, strpos($SERVER_ReqURI, "?"));

if($SERVER_ReqURI == "network")
{
	$myUID = $_SESSION['uid'];
	$mypp = q('SELECT * FROM `profile` WHERE uid="'.$myUID.'"');
	
	if($mypp[0]['country-name'] == "France")
	{
		$mybirthday = $mypp[0]['dob'];
	
		$myByear = substr($mybirthday, 0, 4);
		$myBmonth = substr($mybirthday, 5, 2);
		$myBday = substr($mybirthday, 8, 2);
		$mymonth = array('42', 'Janvier', 'Février', 'Mars', 'Avril', 'Mai', 'Juin', 'Juillet', 'Août', 'Septembre', 'Octobre', 'Novembre', 'Décembre');
		if($myBmonth < 10)
		{
			$myBmonth = str_replace("0", "", $myBmonth);
		}
		$myBmonth = $mymonth[$myBmonth];
	
		if($mypp[0]['dob'] != ""){$mydob = "<i class=\"fa fa-birthday-cake\"></i> ".$myBday." ".$myBmonth." ".$myByear."<br />";}
	}
	else
	{
		if($mypp[0]['dob'] != ""){$mydob = "<i class=\"fa fa-birthday-cake\"></i> ".$mypp[0]['dob']."<br />";}
	}
	
	if($mypp[0]['adress'] != ""){$myadress = "<i class=\"fa fa-map-marker\"></i> ".$mypp[0]['adress']."<br />";}
	if($mypp[0]['hometown'] != ""){$myhometown = "<i class=\"fa fa-map-marker\"></i> ".$mypp[0]['hometown']."<br />";}
	if($mypp[0]['region'] != ""){$myregion = "<i class=\"fa fa-map-marker\"></i> ".$mypp[0]['region']."<br />";}
	if($mypp[0]['gender'] != ""){$mygender = "<i class=\"fa fa-venus-mars\"></i> ".$mypp[0]['gender']."<br />";}
	if($mypp[0]['marital'] != ""){$mymarital = "<i class=\"fa fa-circle-thin\"></i> ".$mypp[0]['marital']."<br />";}
	if($mypp[0]['pub_keywords'] != ""){$mykeywords = $mypp[0]['pub_keywords'];}
	if($mypp[0]['religion'] != ""){$myreligion = "<i class=\"fa fa-dot-circle-o\"></i> ".$mypp[0]['religion']."<br />";}
	if($mypp[0]['politic'] != ""){$mypolitic = "<i class=\"fa fa-gavel\"></i> ".$mypp[0]['politic']."<br />";}
	
	echo '
	<div align="center">
		<div class="Xcontainer">
			<div class="Xprofile-box">
				<div class="Xprofile-cover-image">
					<img src="'.$mypp[0]['photo'].'" />
				</div>
				<div class="Xprofile-picture visible-lg">
					<img src="'.$mypp[0]['photo'].'" />
				</div>
				<div class="Xprofile-picture2 visible-md">
					<img src="'.$mypp[0]['photo'].'" />
				</div>
				<div class="Xprofile-content">
					<h2 class="visible-lg">'.$mypp[0]['name'].'</h2>
					<h4 class="visible-md">'.$mypp[0]['name'].'</h4>
					<p>
						'.$mydob.'
						'.$myadress.'
						'.$myhometown.'
						'.$myregion.'
						'.$mygender.'
						'.$mymarital.'
						'.$myreligion.'
						'.$mypolitic.'
					</p>
					<hr />
					<code>'.$mykeywords.'</code>
				</div>
			</div>
		</div>
	</div>
	<hr />
	';
	echo get_birthdays();
}
?>