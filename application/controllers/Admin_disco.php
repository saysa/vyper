<?php

namespace application\controllers;

use application\models\Country;
use application\models\Disco;
use application\models\DiscoType;
use application\models\Medium;
use application\models\Picture;
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
			$disco = new Disco(array(
					"title"     => RequestMethods::post("title"),
					"titleReal" => RequestMethods::post("title_real"),
					"cdJapan"   => RequestMethods::post("cd_japan"),
					"medium"    => RequestMethods::post("medium"),
					"type"      => RequestMethods::post("type"),
                    "date"      => RequestMethods::post("date"),
                    "label"     => RequestMethods::post("label"),
                    "details"   => RequestMethods::post("details"),
                    "country"   => RequestMethods::post("country"),
					"continent" => RequestMethods::post("continent"),
                    "file"      => RequestMethods::post("file")
			));
		
			if ($disco->validate())
			{
                $disco->save();
                self::redirect("admin_show_discos");
			}
		
			$view
			->set("error_title",     \Framework\Shared\Markup::errors($disco->getErrors(), "title"))
			->set("error_title_real",     \Framework\Shared\Markup::errors($disco->getErrors(), "title_real"))
			->set("error_cd_japan", \Framework\Shared\Markup::errors($disco->getErrors(), "cd_japan"))
			->set("error_medium", \Framework\Shared\Markup::errors($disco->getErrors(), "medium"))
			->set("error_type", \Framework\Shared\Markup::errors($disco->getErrors(), "type"))
			->set("error_date", \Framework\Shared\Markup::errors($disco->getErrors(), "date"))
			->set("error_label", \Framework\Shared\Markup::errors($disco->getErrors(), "label"))
			->set("error_details", \Framework\Shared\Markup::errors($disco->getErrors(), "details"))
            ->set("error_country", \Framework\Shared\Markup::errors($disco->getErrors(), "country"))
            ->set("error_continent", \Framework\Shared\Markup::errors($disco->getErrors(), "continent"))
            ->set("error_file", \Framework\Shared\Markup::errors($disco->getErrors(), "file"))
				
			->set("post_title",     RequestMethods::post("title"))
			->set("post_title_real", RequestMethods::post("title_real"))
			->set("post_cd_japan", RequestMethods::post("cd_japan"))
			->set("post_medium", RequestMethods::post("medium"))
			->set("post_type", RequestMethods::post("type"))
			->set("post_date", RequestMethods::post("date"))
			->set("post_label", RequestMethods::post("label"))
			->set("post_details", RequestMethods::post("details"))
            ->set("post_country", RequestMethods::post("country"))
            ->set("post_continent", RequestMethods::post("continent"))
            ->set("post_file", RequestMethods::post("file"))
			;
		}

        $countries = Country::all();
		$continents = Continent::all();
        $mediums = Medium::all();
        $discotypes = DiscoType::all();

		// view
		$view
        ->set("countries", $countries)
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
	
	
		$disco = Disco::first(array("id=?" => $id));
	
		if (!$disco)
		{
			self::redirect("admin_show_discos");
		}
	
	
		if (RequestMethods::post("update"))
		{
            $disco->title = RequestMethods::post("title");
            $disco->titleReal = RequestMethods::post("title_real");
            $disco->cdJapan = RequestMethods::post("cd_japan");
            $disco->medium = RequestMethods::post("medium");
            $disco->type = RequestMethods::post("type");
            $disco->date = RequestMethods::post("date");
            $disco->label = RequestMethods::post("label");
            $disco->details = RequestMethods::post("details");
            $disco->country = RequestMethods::post("country");
            $disco->continent = RequestMethods::post("continent");
            $disco->file = RequestMethods::post("file");

			if ($disco->validate())
			{
                $disco->save();
			}
	
			$view
			->set("error_title",       		\Framework\Shared\Markup::errors($disco->getErrors(), "title"))
			->set("error_title_real",  		\Framework\Shared\Markup::errors($disco->getErrors(), "title_real"))
			->set("error_cd_japan", 		\Framework\Shared\Markup::errors($disco->getErrors(), "cd_japan"))
			->set("error_medium", \Framework\Shared\Markup::errors($disco->getErrors(), "medium"))
			->set("error_type", 	   		\Framework\Shared\Markup::errors($disco->getErrors(), "type"))
			->set("error_date", 	   		\Framework\Shared\Markup::errors($disco->getErrors(), "date"))
			->set("error_label", 	   		\Framework\Shared\Markup::errors($disco->getErrors(), "label"))
			->set("error_details", 	\Framework\Shared\Markup::errors($disco->getErrors(), "details"))
            ->set("error_country", 	\Framework\Shared\Markup::errors($disco->getErrors(), "country"))
            ->set("error_continent", 	\Framework\Shared\Markup::errors($disco->getErrors(), "continent"))
            ->set("error_file", 	\Framework\Shared\Markup::errors($disco->getErrors(), "file"))
	
			;
	
		}

		$continents = Continent::all();
        $countries = Country::all();
        $mediums = Medium::all();
        $discotypes = DiscoType::all();
		
		// view
		$view
		->set("continents", $continents)
        ->set("countries", $countries)
        ->set("mediums", $mediums)
		->set("disco", $disco)
        ->set("discotypes", $discotypes)
		;

        if ($disco->file)
        {
            $image_path = Picture::get_path($disco->file);
            $view->set("current_image", $image_path . Picture::first(array("id=?"=>$disco->file))->filename);
        }
	
		// layout
		$layout = $this-> getLayoutView();
		$layout->set("active_disco", true);
	}
}
