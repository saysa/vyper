<?php

namespace application\controllers;

use Framework\RequestMethods;

use application\models\Artist;

use Framework\Registry;

class Admin_artist extends Admin_common {
	
	
	
	/**
	 * @before _secure, _admin
	 */
	public function showArtists()
	{
		$view = $this->getActionView();

		$artists = Artist::all(array("deleted=?"=>false));
		
		
		// view
		$view
		->set("artists", $artists)
		//->set("link_admin_update_theme",   Registry::get("router")->getPath("admin_update_theme"))
		//->set("link_admin_delete_theme",   Registry::get("router")->getPath("admin_delete_theme"))
		;
		
		
		$view
		->set("link_admin_add_artist", Registry::get("router")->getPath("admin_add_artist"))
		->set("link_admin_update_artist", Registry::get("router")->getPath("admin_update_artist"))
		;
		
		// layout
		$layout = $this-> getLayoutView();
		$layout->set("active_artist", true);
	}
	
	/**
	 * @before _secure, _admin
	 */
	public function addArtist()
	{
		// code
		$view = $this-> getActionView();


	
		if (RequestMethods::post("add"))
		{
			$artist = new Artist(array(
					"name"           => RequestMethods::post("name"),
                    "profile"        => RequestMethods::post("profile"),
                    "biography"      => RequestMethods::post("biography"),
                    "author"         => RequestMethods::post("author"),
                    "translator"     => RequestMethods::post("translator"),
					"keywords"       => RequestMethods::post("keywords"),
                    "relatedPicture" => RequestMethods::post("related_picture")
			));
		
			if ($artist->validate())
			{
				$artist->save();
			}
		
			$view
			->set("error_name",     \Framework\Shared\Markup::errors($artist->getErrors(), "name"))
			->set("error_keywords", \Framework\Shared\Markup::errors($artist->getErrors(), "keywords"))
				
			->set("post_name",     RequestMethods::post("name"))
			->set("post_profile", RequestMethods::post("profile"))
            ->set("post_biography",     RequestMethods::post("biography"))
            ->set("post_author", RequestMethods::post("author"))
            ->set("post_translator",     RequestMethods::post("translator"))
            ->set("post_keywords", RequestMethods::post("keywords"))
            ->set("post_related_picture", RequestMethods::post("related_picture"))
			;
		}
		
		
		// layout
		$layout = $this-> getLayoutView();
		$layout->set("active_artist", true);
	}
	
	/**
	 * @before _secure, _admin
	 */
	public function updateArtist($id)
	{
		$view = $this-> getActionView();
	
	
		$artist = Artist::first(array("id=?" => $id));
	
		if (!$artist)
		{
			self::redirect("admin_show_events");
		}
	
	
		if (RequestMethods::post("update"))
		{
	
			$artist->name = RequestMethods::post("name");
			$artist->keywords = RequestMethods::post("keywords");
			
			if ($artist->validate())
			{
				$artist->save();
			}
	
			$view
			->set("error_name",       		\Framework\Shared\Markup::errors($artist->getErrors(), "name"))
			->set("error_keywords",  		\Framework\Shared\Markup::errors($artist->getErrors(), "keywords"))
			;
	
		}
	
		
	
		$view
		->set("artist", $artist)
		;
	
		// layout
		$layout = $this-> getLayoutView();
		$layout->set("active_artist", true);
	}
	
}
