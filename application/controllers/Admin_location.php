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
                self::redirect("admin_show_locations");
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
	public function updateLocation($id)
	{
		$view = $this-> getActionView();
		
		
		$location = Location::first(array("id=?" => $id));
	
		if (!$location)
		{
			self::redirect("admin_show_locations");
		}
		
	
		if (RequestMethods::post("update"))
		{
				
			$location->name = RequestMethods::post("name");
			$location->nameReal = RequestMethods::post("name_real");
			$location->town = RequestMethods::post("town");
			$location->townReal = RequestMethods::post("town_real");
			$location->country = RequestMethods::post("country");
			$location->address = RequestMethods::post("address");
			$location->access = RequestMethods::post("access");
			$location->url = RequestMethods::post("url");
			$location->googlemap = RequestMethods::post("googlemap");
			
				
			if ($location->validate())
			{
	
				$location->save();
			}
	
			$view
			->set("error_name",       		\Framework\Shared\Markup::errors($location->getErrors(), "name"))
			->set("error_name_real",  		\Framework\Shared\Markup::errors($location->getErrors(), "name_real"))
			->set("error_town", 		\Framework\Shared\Markup::errors($location->getErrors(), "town"))
			->set("error_town_real", \Framework\Shared\Markup::errors($location->getErrors(), "town_real"))
			->set("error_country", 	   		\Framework\Shared\Markup::errors($location->getErrors(), "country"))
			->set("error_address", 	   		\Framework\Shared\Markup::errors($location->getErrors(), "address"))
			->set("error_access", 	   		\Framework\Shared\Markup::errors($location->getErrors(), "access"))
			->set("error_url", 	\Framework\Shared\Markup::errors($location->getErrors(), "url"))
			->set("error_googlemap", \Framework\Shared\Markup::errors($location->getErrors(), "googlemap"))
	
			;
				
		}
	
		$countries = Country::all(array("deleted=?"=>false));
		
		
		$view
		->set("location", $location)
		->set("countries", $countries)
		;
	
		// layout
		$layout = $this-> getLayoutView();
		$layout->set("active_location", true);
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
