<?php

namespace application\controllers;

use Framework\RequestMethods;


use Framework\Registry;
use application\models\Event;
use application\models\RelArtistEvent;
use application\models\Artist;
use application\models\EventType;
use application\models\Tour;
use application\models\Location;

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
		->set("link_admin_update_event", Registry::get("router")->getPath("admin_update_event"))
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
					"description" => RequestMethods::post("description"),
					"location" => RequestMethods::post("location"),
					"date" => RequestMethods::post("date"),
					"time" => RequestMethods::post("time")
			));
		
		
			
			if ($event->validate())
			{
				$event->save();
			}
		
			$view
			->set("error_title",       \Framework\Shared\Markup::errors($event->getErrors(), "title"))
			->set("error_real_title",  \Framework\Shared\Markup::errors($event->getErrors(), "real_title"))
			->set("error_description", \Framework\Shared\Markup::errors($event->getErrors(), "description"))
			->set("error_location",    \Framework\Shared\Markup::errors($event->getErrors(), "location"))
			->set("error_date", 	   \Framework\Shared\Markup::errors($event->getErrors(), "date"))
			->set("error_time", 	   \Framework\Shared\Markup::errors($event->getErrors(), "time"))
				
			->set("post_title",    	  RequestMethods::post("title"))
			->set("post_real_title",  RequestMethods::post("real_title"))
			->set("post_description", RequestMethods::post("description"))
			->set("post_location", 	  RequestMethods::post("location"))
			->set("post_date", 		  RequestMethods::post("date"))
			->set("post_time", 		  RequestMethods::post("time"))
			;
		}
		
		$locations = Location::all(array("deleted=?"=>false));
		
		$view
		->set("locations", $locations)
		;
		
		// layout
		$layout = $this-> getLayoutView();
		$layout->set("active_event", true);
	}
	
	/**
	 * @before _secure, _admin
	 */
	public function updateEvent($id)
	{
		$view = $this-> getActionView();
		
		
		$event = Event::first(array("id=?" => $id));
	
		if (!$event)
		{
			self::redirect("admin_show_events");
		}
		
	
		if (RequestMethods::post("update"))
		{
				
			$event->title = RequestMethods::post("title");
			$event->realTitle = RequestMethods::post("real_title");
			$event->description = RequestMethods::post("description");
			$event->descriptionReal = RequestMethods::post("description_real");
			$event->location = RequestMethods::post("location");
			$event->date = RequestMethods::post("date");
			$event->time = RequestMethods::post("time");
			$event->type = RequestMethods::post("type");
			$event->relatedTour = RequestMethods::post("related_tour");
			$event->artistsKeywords = RequestMethods::post("meta_keywords");
			$event->price = RequestMethods::post("price");
			
				
			if ($event->validate())
			{
	
				$event->save();
			}
	
			$view
			->set("error_title",       		\Framework\Shared\Markup::errors($event->getErrors(), "title"))
			->set("error_real_title",  		\Framework\Shared\Markup::errors($event->getErrors(), "real_title"))
			->set("error_description", 		\Framework\Shared\Markup::errors($event->getErrors(), "description"))
			->set("error_description_real", \Framework\Shared\Markup::errors($event->getErrors(), "description_real"))
			->set("error_location", 	   		\Framework\Shared\Markup::errors($event->getErrors(), "location"))
			->set("error_date", 	   		\Framework\Shared\Markup::errors($event->getErrors(), "date"))
			->set("error_time", 	   		\Framework\Shared\Markup::errors($event->getErrors(), "time"))
			->set("error_type", 	   		\Framework\Shared\Markup::errors($event->getErrors(), "type"))
			->set("error_related_tour", 	\Framework\Shared\Markup::errors($event->getErrors(), "related_tour"))
			->set("error_artists_keywords", \Framework\Shared\Markup::errors($event->getErrors(), "artists_keywords"))
			->set("error_price", 			\Framework\Shared\Markup::errors($event->getErrors(), "price"))
			;
				
		}
	
		$artists = Artist::all(array("deleted=?"=>false));
		$relArtists = RelArtistEvent::all(array("idEvent=?" => $id));
		$eventTypes = EventType::all(array("deleted=?"=>false));
		$tours = Tour::all(array("deleted=?"=>false));
		$locations = Location::all(array("deleted=?"=>false));
		
		// Set relation
		foreach ($relArtists as $relArtist)
		{
			$artist = Artist::first(array("id=?"=>$relArtist->idArtist))->name;
			$relArtist->id = $relArtist->idArtist;
			$relArtist->idArtist = $artist;
		}
		
		$view->set("artists", $artists)
		->set("relArtists", $relArtists)
		->set("event", $event)
		->set("eventTypes", $eventTypes)
		->set("tours", $tours)
		->set("locations", $locations)
		;
	
		// layout
		$layout = $this-> getLayoutView();
		$layout->set("active_event", true);
	}
	
	
	public function artistLink()
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
				}
				
				$string = 'Hello World';
				echo json_encode($string);
				die();
			}
			
			
		}
	}
}
