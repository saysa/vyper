<?php
namespace application\controllers;

use application\models\Event as Model_event;
class Event extends \Framework\Shared\Controller {
	
	public function showEvent($id)
	{
		$layout = $this->getLayoutView();
		$view = $this->getActionView();
		$event = Model_event::first(array("id=?" => $id));
	
		if (!$event)
		{
			self::redirect("home");
		}
	

	
		$view
		->set("event", $event)
		->set("server_request_uri", $_SERVER['REQUEST_URI'])
		;
	
	
	}
}