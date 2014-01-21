<?php

namespace application\controllers;

use Framework\RequestMethods;


use Framework\Registry;
use application\models\Event;
use application\models\RelArtistEvent;
use application\models\Artist;

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
					"date" => RequestMethods::post("date"),
					"time" => RequestMethods::post("time")
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
			->set("error_date", 	   \Framework\Shared\Markup::errors($event->getErrors(), "date"))
			->set("error_time", 	   \Framework\Shared\Markup::errors($event->getErrors(), "time"))
				
			->set("post_title",    	  RequestMethods::post("title"))
			->set("post_real_title",  RequestMethods::post("real_title"))
			->set("post_description", RequestMethods::post("description"))
			->set("post_date", 		  RequestMethods::post("date"))
			->set("post_time", 		  RequestMethods::post("time"))
			;
		}
		
		
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
		
		
		$article = Event::first(array("id=?" => $id));
	
		if (!$article)
		{
			self::redirect("admin_show_articles");
		}
	
	
		if (RequestMethods::post("update"))
		{
				
			$article->title = RequestMethods::post("title");
			$article->continent = RequestMethods::post("continent");
			$article->title = RequestMethods::post("title");
			$article->description = RequestMethods::post("description");
			$article->text = RequestMethods::post("text");
			$article->releaseDate = RequestMethods::post("release_date");
			$article->releaseTime = RequestMethods::post("release_time");
			$article->author = RequestMethods::post("author");
			$article->translator = RequestMethods::post("translator");
			$article->source = RequestMethods::post("source");
			$article->sourceURL = RequestMethods::post("source_url");
			$article->type = RequestMethods::post("type");
			$article->relatedTheme = RequestMethods::post("theme");
			$article->metaKeywords = RequestMethods::post("meta_keywords");
			$article->relatedPicture = RequestMethods::post("related_picture");
				
			if ($article->validate())
			{
	
				$article->save();
			}
	
			$view
			->set("error_title", \Framework\Shared\Markup::errors($article->getErrors(), "title"))
			->set("error_description", \Framework\Shared\Markup::errors($article->getErrors(), "description"))
			->set("error_text", \Framework\Shared\Markup::errors($article->getErrors(), "text"))
			->set("error_rel_date", \Framework\Shared\Markup::errors($article->getErrors(), "releaseDate"))
			->set("error_rel_time", \Framework\Shared\Markup::errors($article->getErrors(), "releaseTime"))
			->set("error_author", \Framework\Shared\Markup::errors($article->getErrors(), "author"))
			->set("error_meta_keywords", \Framework\Shared\Markup::errors($article->getErrors(), "metaKeywords"))
			->set("error_related_picture", \Framework\Shared\Markup::errors($article->getErrors(), "relatedPicture"))
			;
				
		}
	
		$artists = Artist::all(array("deleted=?"=>false));
	
		$view->set("artists", $artists)
		->set("event", $article)
		;
	
		// layout
		$layout = $this-> getLayoutView();
		$layout->set("active_event", true);
	}
}
