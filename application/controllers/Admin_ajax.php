<?php

namespace application\controllers;

use Framework\RequestMethods;


use Framework\Registry;
use application\models\RelArtistEvent;


class Admin_ajax {
	
	public function eventArtistLink()
	{
		
		if (isset($_POST['artist_id']) && $_POST['artist_id'] != '-1') {
			
			$relation = RelArtistEvent::first(array("idArtist=?" => $_POST['artist_id'], "idEvent=?" => $_POST['event_id']));
			
			if (!$relation)
			{
				
				$relArtistEvent = new RelArtistEvent(array(
					"idArtist" => RequestMethods::post("artist_id"),
					"idEvent" => RequestMethods::post("event_id")
				));
				
					
				if ($relArtistEvent->validate())
				{
					$relArtistEvent->save();
					echo "link_done";
				}
				
				/*
				$string = 'Hello World';
				echo json_encode($string);
				*/
			}
			
			
		}
	}
}
