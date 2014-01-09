<?php

namespace application\controllers;

use Framework\RequestMethods;

use application\models\Artist;

use Framework\Registry;
use application\models\Event;

class Admin_event extends Admin_common {
	
	
	
	/**
	 * @before _secure, _admin
	 */
	public function showEvents()
	{
		$view = $this->getActionView();
		
		$events = Event::all(array("deleted=?"=>false));
		
		// view
		$view
		->set("events", $events)
		;
		
		
		$view
		->set("link_admin_add_event", Registry::get("router")->getPath("admin_add_event"))
		;
		
		// layout
		$layout = $this-> getLayoutView();
		$layout->set("active_event", true);
	}
	
	/**
	 * @before _secure, _admin
	 */
	public function addEvent()
	{
		// code
		$view = $this-> getActionView();
		
		$event = new Event();
	
		if (RequestMethods::post("add"))
		{
			
			$event = new Event(array(
					"title" => RequestMethods::post("title"),
					"realTitle" => RequestMethods::post("real_title"),
					"description" => RequestMethods::post("description")
			));
		
		
			
			if ($event->validate())
			{
				echo "boucle save";
				$event->save();
			}
			else echo "validate no";
		
			$view
			->set("error_title",       \Framework\Shared\Markup::errors($event->getErrors(), "title"))
			->set("error_real_title",  \Framework\Shared\Markup::errors($event->getErrors(), "real_title"))
			->set("error_description", \Framework\Shared\Markup::errors($event->getErrors(), "description"))
				
			->set("post_title",    	  RequestMethods::post("title"))
			->set("post_real_title",  RequestMethods::post("real_title"))
			->set("post_description", RequestMethods::post("description"))
			;
		}
		
		
		// layout
		$layout = $this-> getLayoutView();
		$layout->set("active_event", true);
	}
}
