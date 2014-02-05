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
use application\models\Country;

class Admin_location extends Admin_common {
	
	
	
	/**
	 * @before _secure, _admin
	 */
	public function showLocations()
	{
		$view = $this->getActionView();
		
		$locations = Location::all(array("deleted=?"=>false));
		
		// view
		$view
		->set("locations", $locations)
		;
		
		
		$view
		->set("link_admin_add_location", Registry::get("router")->getPath("admin_add_location"))
		->set("link_admin_update_location", Registry::get("router")->getPath("admin_update_location"))
		;
		
		// layout
		$layout = $this-> getLayoutView();
		$layout->set("active_location", true);
	}
	
	/**
	 * @before _secure, _admin
	 */
	public function addLocation()
	{
		// code
		$view = $this-> getActionView();
		
		
	
		if (RequestMethods::post("add"))
		{
			
			$location = new Location(array(
					"name" 		=> RequestMethods::post("name"),
					"nameReal" 	=> RequestMethods::post("name_real"),
					"town" 		=> RequestMethods::post("town"),
					"townReal" 	=> RequestMethods::post("townReal"),
					"country" 	=> RequestMethods::post("country"),
					"address" 	=> RequestMethods::post("address"),
					"access" 	=> RequestMethods::post("access"),
					"url" 		=> RequestMethods::post("url"),
					"googlemap" => RequestMethods::post("googlemap")
			));
		
		
			
			if ($location->validate())
			{
				$location->save();
			}
		
			$view
			->set("error_name",       	\Framework\Shared\Markup::errors($location->getErrors(), "name"))
			->set("error_name_real",  	\Framework\Shared\Markup::errors($location->getErrors(), "name_real"))
			->set("error_town", 		\Framework\Shared\Markup::errors($location->getErrors(), "town"))
			->set("error_town_real", 	\Framework\Shared\Markup::errors($location->getErrors(), "town_real"))
			->set("error_country", 	   	\Framework\Shared\Markup::errors($location->getErrors(), "country"))
			->set("error_address", 	   	\Framework\Shared\Markup::errors($location->getErrors(), "address"))
			->set("error_access", 	   	\Framework\Shared\Markup::errors($location->getErrors(), "access"))
			->set("error_url", 	   		\Framework\Shared\Markup::errors($location->getErrors(), "url"))
			->set("error_googlemap",	\Framework\Shared\Markup::errors($location->getErrors(), "googlemap"))
				
			->set("post_name",    	RequestMethods::post("name"))
			->set("post_name_real", RequestMethods::post("name_real"))
			->set("post_town", 		RequestMethods::post("town"))
			->set("post_town_real", RequestMethods::post("town_real"))
			->set("post_country", 	RequestMethods::post("country"))
			->set("post_address", 	RequestMethods::post("address"))
			->set("post_access", 	RequestMethods::post("access"))
			->set("post_url", 		RequestMethods::post("url"))
			->set("post_googlemap",	RequestMethods::post("googlemap"))
			;
		}
		
		$countries = Country::all(array("deleted=?"=>false));
		
		$view->set("countries", $countries)
		;
		
		// layout
		$layout = $this-> getLayoutView();
		$layout->set("active_location", true);
	}
	
	/**
	 * @before _secure, _admin
	 */
	public function updateEvent($id)
	{
		$view = $this-> getActionView();
		
		
		$location = Event::first(array("id=?" => $id));
	
		if (!$location)
		{
			self::redirect("admin_show_events");
		}
		
	
		if (RequestMethods::post("update"))
		{
				
			$location->title = RequestMethods::post("title");
			$location->realTitle = RequestMethods::post("real_title");
			$location->description = RequestMethods::post("description");
			$location->descriptionReal = RequestMethods::post("description_real");
			$location->date = RequestMethods::post("date");
			$location->time = RequestMethods::post("time");
			$location->type = RequestMethods::post("type");
			$location->relatedTour = RequestMethods::post("related_tour");
			$location->artistsKeywords = RequestMethods::post("meta_keywords");
			$location->price = RequestMethods::post("price");
			
				
			if ($location->validate())
			{
	
				$location->save();
			}
	
			$view
			->set("error_title",       		\Framework\Shared\Markup::errors($location->getErrors(), "title"))
			->set("error_real_title",  		\Framework\Shared\Markup::errors($location->getErrors(), "real_title"))
			->set("error_description", 		\Framework\Shared\Markup::errors($location->getErrors(), "description"))
			->set("error_description_real", \Framework\Shared\Markup::errors($location->getErrors(), "description_real"))
			->set("error_date", 	   		\Framework\Shared\Markup::errors($location->getErrors(), "date"))
			->set("error_time", 	   		\Framework\Shared\Markup::errors($location->getErrors(), "time"))
			->set("error_type", 	   		\Framework\Shared\Markup::errors($location->getErrors(), "type"))
			->set("error_related_tour", 	\Framework\Shared\Markup::errors($location->getErrors(), "related_tour"))
			->set("error_artists_keywords", \Framework\Shared\Markup::errors($location->getErrors(), "artists_keywords"))
			->set("error_price", 			\Framework\Shared\Markup::errors($location->getErrors(), "price"))
			;
				
		}
	
		$artists = Artist::all(array("deleted=?"=>false));
		$relArtists = RelArtistEvent::all(array("idEvent=?" => $id));
		$eventTypes = EventType::all(array("deleted=?"=>false));
		$tours = Tour::all(array("deleted=?"=>false));
		
		// Set relation
		foreach ($relArtists as $relArtist)
		{
			$artist = Artist::first(array("id=?"=>$relArtist->idArtist))->name;
			$relArtist->id = $relArtist->idArtist;
			$relArtist->idArtist = $artist;
		}
		
		$view->set("artists", $artists)
		->set("relArtists", $relArtists)
		->set("event", $location)
		->set("eventTypes", $eventTypes)
		->set("tours", $tours)
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
