<?php
namespace application\controllers;

use application\models\Event as Model_event;
use application\models\Location;
use application\models\Picture;
use Framework\StringMethods;
class Event extends \Framework\Shared\Controller {
	
	public function showEvent($id)
	{

		$view = $this->getActionView();
		$event = Model_event::first(array("id=?" => $id));
	
		if (!$event)
		{
			self::redirect("home");
		}

        $location = Location::first(array("id=?" => $event->location));

        $event->date =  StringMethods::sqlDateToCustom($event->date);
		
		$view
		->set("event", $event)
		->set("server_request_uri", $_SERVER['REQUEST_URI'])
        ->set("googlemap", $location->googlemap)
		;
		
		if (Picture::first(array("id=?"=>$event->relatedPicture))) {
			$image = Picture::first(array("id=?"=>$event->relatedPicture))->filename;
			$event->relatedPicture = $image;
			$event->stringURL = StringMethods::filterURL($event->title);
			$view->set("event_reladtedPicture", "true");
		}
		
	
		
	
	
	}
}