<?php

namespace application\controllers;

use application\models\Picture;
use application\models\RelArtistItem;
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

	
		if (RequestMethods::post("add"))
		{
			
			$event = new Event(array(
					"title" => RequestMethods::post("title"),
					"realTitle" => RequestMethods::post("real_title"),
					"description" => RequestMethods::post("description"),
					"location" => RequestMethods::post("location"),
					"date" => RequestMethods::post("date"),
					"time" => RequestMethods::post("time"),
                    "type" => RequestMethods::post("type"),
                    "relatedTour" => RequestMethods::post("related_tour"),
					"relatedPicture" => RequestMethods::post("related_picture")
			));
		
		
			
			if ($event->validate())
			{
				$event->save();
                self::redirect("admin_show_events");
			}
		
			$view
			->set("error_title",       \Framework\Shared\Markup::errors($event->getErrors(), "title"))
			->set("error_real_title",  \Framework\Shared\Markup::errors($event->getErrors(), "real_title"))
			->set("error_description", \Framework\Shared\Markup::errors($event->getErrors(), "description"))
			->set("error_location",    \Framework\Shared\Markup::errors($event->getErrors(), "location"))
			->set("error_date", 	   \Framework\Shared\Markup::errors($event->getErrors(), "date"))
			->set("error_time", 	   \Framework\Shared\Markup::errors($event->getErrors(), "time"))
            ->set("error_type", 	   \Framework\Shared\Markup::errors($event->getErrors(), "type"))
            ->set("error_related_tour", 	   \Framework\Shared\Markup::errors($event->getErrors(), "related_tour"))
				
			->set("post_title",    	  RequestMethods::post("title"))
			->set("post_real_title",  RequestMethods::post("real_title"))
			->set("post_description", RequestMethods::post("description"))
			->set("post_location", 	  RequestMethods::post("location"))
			->set("post_date", 		  RequestMethods::post("date"))
            ->set("post_time", 		  RequestMethods::post("time"))
            ->set("post_type", 		  RequestMethods::post("type"))
            ->set("post_related_tour",RequestMethods::post("related_tour"))

			;
		}

        $eventTypes = EventType::all(array("deleted=?"=>false));
        $tours = Tour::all(array("deleted=?"=>false));
		$locations = Location::all(array("deleted=?"=>false));
		
		$view
		->set("locations", $locations)
        ->set("tours", $tours)
        ->set("eventTypes", $eventTypes)
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
			$event->relatedPicture = RequestMethods::post("related_picture");
			
				
			if ($event->validate())
			{
	
				$event->save();
			}
	
			$view
			->set("error_title",       		\Framework\Shared\Markup::errors($event->getErrors(), "title"))
			->set("error_real_title",  		\Framework\Shared\Markup::errors($event->getErrors(), "real_title"))
			->set("error_description", 		\Framework\Shared\Markup::errors($event->getErrors(), "description"))
			->set("error_description_real", \Framework\Shared\Markup::errors($event->getErrors(), "description_real"))
			->set("error_location", 	   	\Framework\Shared\Markup::errors($event->getErrors(), "location"))
			->set("error_date", 	   		\Framework\Shared\Markup::errors($event->getErrors(), "date"))
			->set("error_time", 	   		\Framework\Shared\Markup::errors($event->getErrors(), "time"))
			->set("error_type", 	   		\Framework\Shared\Markup::errors($event->getErrors(), "type"))
			->set("error_related_tour", 	\Framework\Shared\Markup::errors($event->getErrors(), "related_tour"))
			->set("error_artists_keywords", \Framework\Shared\Markup::errors($event->getErrors(), "artists_keywords"))
			->set("error_price", 			\Framework\Shared\Markup::errors($event->getErrors(), "price"))
			->set("error_related_picture", 	\Framework\Shared\Markup::errors($event->getErrors(), "related_picture"))
			;
				
		}
	
		$artists = Artist::all(array("deleted=?"=>false));

		$relArtists = RelArtistItem::all(array("type=?" => "event", "idItem=?" => $id));
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

        if ($event->relatedPicture)
        {
            $image_path = Picture::get_path($event->relatedPicture);
            $view->set("current_image", $image_path . Picture::first(array("id=?"=>$event->relatedPicture))->filename);
        }

	
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
