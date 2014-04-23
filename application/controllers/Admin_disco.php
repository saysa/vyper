<?php

namespace application\controllers;

use application\models\Disco;
use application\models\DiscoType;
use application\models\Medium;
use Framework\RequestMethods;

use application\models\Tour;

use Framework\Registry;
use application\models\TourType;
use application\models\Continent;

class Admin_disco extends Admin_common {
	
	
	
	/**
	 * @before _secure, _admin
	 */
	public function showDiscos()
	{
		$view = $this->getActionView();

		$discos = Disco::all(array("deleted=?"=>false));

		// view
		$view
		->set("discos", $discos)
		;
		
		
		$view
		->set("link_admin_add_disco",    Registry::get("router")->getPath("admin_add_disco"))
		->set("link_admin_update_disco", Registry::get("router")->getPath("admin_update_disco"))
		;
		
		// layout
		$layout = $this-> getLayoutView();
		$layout->set("active_disco", true);
	}
	
	/**
	 * @before _secure, _admin
	 */
	public function addDisco()
	{
		// code
		$view = $this-> getActionView();

		if (RequestMethods::post("add"))
		{
			$tour = new Tour(array(
					"title" => RequestMethods::post("title"),
					"realTitle" => RequestMethods::post("real_title"),
					"description" => RequestMethods::post("description"),
					"descriptionLocal" => RequestMethods::post("description_local"),
					"type" => RequestMethods::post("type"),
					"continent" => RequestMethods::post("continent"),
					"start" => RequestMethods::post("start"),
					"end" => RequestMethods::post("end")
			));
		
			if ($tour->validate())
			{
				$tour->save();
                self::redirect("admin_show_tours");
			}
		
			$view
			->set("error_title",     \Framework\Shared\Markup::errors($tour->getErrors(), "title"))
			->set("error_real_title",     \Framework\Shared\Markup::errors($tour->getErrors(), "real_title"))
			->set("error_description", \Framework\Shared\Markup::errors($tour->getErrors(), "description"))
			->set("error_description_local", \Framework\Shared\Markup::errors($tour->getErrors(), "description_local"))
			->set("error_type", \Framework\Shared\Markup::errors($tour->getErrors(), "type"))
			->set("error_continent", \Framework\Shared\Markup::errors($tour->getErrors(), "continent"))
			->set("error_start", \Framework\Shared\Markup::errors($tour->getErrors(), "start"))
			->set("error_end", \Framework\Shared\Markup::errors($tour->getErrors(), "end"))
				
			->set("post_title",     RequestMethods::post("title"))
			->set("post_real_title", RequestMethods::post("real_title"))
			->set("post_description", RequestMethods::post("description"))
			->set("post_description_local", RequestMethods::post("description_local"))
			->set("post_type", RequestMethods::post("type"))
			->set("post_continent", RequestMethods::post("continent"))
			->set("post_start", RequestMethods::post("start"))
			->set("post_end", RequestMethods::post("end"))
			;
		}

		$continents = Continent::all();
        $mediums = Medium::all();
        $discotypes = DiscoType::all();

		// view
		$view
		->set("continents", $continents)
        ->set("mediums", $mediums)
        ->set("discotypes", $discotypes)
        ;
		
		// layout
		$layout = $this-> getLayoutView();
		$layout->set("active_disco", true);
	}
	
	/**
	 * @before _secure, _admin
	 */
	public function updateDisco($id)
	{
		$view = $this-> getActionView();
	
	
		$tour = Tour::first(array("id=?" => $id));
	
		if (!$tour)
		{
			self::redirect("admin_show_tours");
		}
	
	
		if (RequestMethods::post("update"))
		{
	
			$tour->title = RequestMethods::post("title");
			$tour->realTitle = RequestMethods::post("real_title");
			$tour->description = RequestMethods::post("description");
			$tour->descriptionLocal = RequestMethods::post("description_local");
			$tour->type = RequestMethods::post("type");
			$tour->continent = RequestMethods::post("continent");
			$tour->start = RequestMethods::post("start");
			$tour->end = RequestMethods::post("end");
				
			if ($tour->validate())
			{
				$tour->save();
			}
	
			$view
			->set("error_title",       		\Framework\Shared\Markup::errors($tour->getErrors(), "title"))
			->set("error_real_title",  		\Framework\Shared\Markup::errors($tour->getErrors(), "real_title"))
			->set("error_description", 		\Framework\Shared\Markup::errors($tour->getErrors(), "description"))
			->set("error_description_local", \Framework\Shared\Markup::errors($tour->getErrors(), "description_local"))
			->set("error_type", 	   		\Framework\Shared\Markup::errors($tour->getErrors(), "type"))
			->set("error_continent", 	   		\Framework\Shared\Markup::errors($tour->getErrors(), "continent"))
			->set("error_start", 	   		\Framework\Shared\Markup::errors($tour->getErrors(), "start"))
			->set("error_end", 	\Framework\Shared\Markup::errors($tour->getErrors(), "end"))
	
			;
	
		}
		
		$typeTours  = TourType::all();
		$continents = Continent::all();
		
		
		// view
		$view
		->set("typeTours", $typeTours)
		->set("continents", $continents)
		->set("tour", $tour)
		;
	
		// layout
		$layout = $this-> getLayoutView();
		$layout->set("active_tour", true);
	}
}
