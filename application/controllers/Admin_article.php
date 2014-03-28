<?php

namespace application\controllers;

use application\models\Artist;

use application\models\Theme;

use application\models\ArticleType;

use application\models\Article;

use application\models\Continent;

use application\models\PictureCategory;

use application\models\Picture;

use Framework\RequestMethods;

use Framework\Registry;

class Admin_article extends Admin_common {


	

	

	/**
	 * @before _secure, _admin
	 */
	public function addArticle()
	{
		// code
		$view = $this-> getActionView();



		if (RequestMethods::post("add"))
		{
			$article = new Article(array(
				"user" => $this->user->id,
				"continent" => RequestMethods::post("continent"),
				"title" => RequestMethods::post("title"),
				"description" => RequestMethods::post("description"),
				"text" => RequestMethods::post("text"),
                "youtube" => RequestMethods::post("youtube"),
				"releaseDate" => RequestMethods::post("release_date"),
				"releaseTime" => RequestMethods::post("release_time"),
				"author" => RequestMethods::post("author"),
				"translator" => RequestMethods::post("translator"),
				"source" => RequestMethods::post("source"),
				"sourceURL" => RequestMethods::post("source_url"),
				"type" => RequestMethods::post("type"),
				"relatedTheme" => RequestMethods::post("theme"),
				"metaKeywords" => RequestMethods::post("meta_keywords"),
				"relatedPicture" => RequestMethods::post("related_picture")
			));

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
			
			->set("post_continent", RequestMethods::post("continent"))
			->set("post_title", RequestMethods::post("title"))
			->set("post_description", RequestMethods::post("description"))
			->set("post_text", RequestMethods::post("text"))
            ->set("post_youtube", RequestMethods::post("youtube"))
			->set("post_rel_date", RequestMethods::post("release_date"))
			->set("post_rel_time", RequestMethods::post("release_time"))
			->set("post_author", RequestMethods::post("author"))
			->set("post_type", RequestMethods::post("type"))
			->set("post_meta_keywords", RequestMethods::post("meta_keywords"))
			->set("post_related_picture", RequestMethods::post("related_picture"))
			;
		}

		$continents = Continent::all();
		$typeArticles = ArticleType::all();
		$themes = Theme::all(array("deleted=?"=>false));

		// view
		$view
		->set("continents", $continents)
		->set("themes", $themes)
		->set("typeArticles", $typeArticles);


		// layout
		$layout = $this-> getLayoutView();
		$layout->set("active_article", true);
	}

	/**
	 * @before _secure, _admin
	 */
	public function showArticles()
	{
		$view = $this-> getActionView();

		$articles = Article::all(array("deleted=?"=>false));
		$themes = Theme::all(array("deleted=?"=>false));

		foreach ($articles as $article)
		{
			$type = ArticleType::first(array("id=?"=>$article->type))->name;
			$article->type = $type;
		}

		// view
		$view->set("articles", $articles)
			->set("themes", $themes)
			->set("link_admin_add_article",    Registry::get("router")->getPath("admin_add_article"))
			->set("link_admin_add_theme", 	   Registry::get("router")->getPath("admin_add_theme"))
			->set("link_admin_update_article", Registry::get("router")->getPath("admin_update_article"))
			->set("link_admin_update_theme",   Registry::get("router")->getPath("admin_update_theme"))
			->set("link_admin_delete_theme",   Registry::get("router")->getPath("admin_delete_theme"))
			->set("link_admin_delete_article", Registry::get("router")->getPath("admin_delete_article"))
		;

		// layout
		$layout = $this-> getLayoutView();
		$layout->set("active_article", true);


	}
	
	
	
	
	
	/**
	 * @before _secure, _admin
	 */
	public function updateArticle($id)
	{
		$view = $this-> getActionView();
		$article = Article::first(array("id=?" => $id));
	
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
            $article->youtube = RequestMethods::post("youtube");
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
		
		$image_path = Picture::get_path($article->relatedPicture);
		
		
		
		$continents = Continent::all();
		$typeArticles = ArticleType::all();
		$themes = Theme::all(array("deleted=?"=>false));
		
		$view->set("article", $article)
		->set("current_image", $image_path . Picture::first(array("id=?"=>$article->relatedPicture))->filename)
			->set("continents", $continents)
			->set("themes", $themes)
			->set("typeArticles", $typeArticles);
	
		// layout
		$layout = $this-> getLayoutView();
		$layout->set("active_article", true);
	}
	
	
	
	/**
	 * @before _secure, _admin
	 */
	public function deleteArticle($id)
	{
		$article = Article::first(array("id=?" => $id));
	
		if (!$article)
		{
			self::redirect("admin_show_articles");
		}
	
		$article->deleted = true;
		if ($article->relatedTheme == null) 
		{
			$article->relatedTheme = "-1";
		}
		
		$article->save();
		self::redirect("admin_show_articles");
	}
	
	
}
