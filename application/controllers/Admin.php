<?php

namespace application\controllers;

use application\models\Theme;

use application\models\ArticleType;

use application\models\Article;

use application\models\Continent;

use application\models\PictureCategory;

use application\models\Picture;

use Framework\RequestMethods;

use Framework\Registry;

class Admin extends \Framework\Shared\Controller {

	public function __construct($options = array())
	{
		parent::__construct(array(
				"defaultLayout" => "layouts/admin/admin"
		));

		$layout = $this-> getLayoutView();

		$layout->set("link_admin_show_picture", Registry::get("router")->getPath("admin_show_pictures"));
		$layout->set("link_admin_show_article", Registry::get("router")->getPath("admin_show_articles"));
	}

	/**
	 * @before _secure, _admin
	 */
	public function showPictures()
	{
		$view = $this-> getActionView();
		$pictures = Picture::all();

		foreach ($pictures as $picture)
		{
			$category = PictureCategory::first(array("id=?"=>$picture->category))->name;
			$picture->category = $category;
		}

		// action
		$view->set("pictures", $pictures);
		$view->set("link_admin_add_picture", Registry::get("router")->getPath("admin_add_picture"));

		// layout
		$layout = $this-> getLayoutView();
		$layout->set("active_picture", true);
	}

	/**
	 * @before _secure, _admin
	 */
	public function addPicture()
	{

		$view   = $this-> getActionView();

		if (RequestMethods::post("add"))
		{
			$name = "picture";

			$picture = new Picture(array(
				"name" => RequestMethods::post("name")
			));

			if ($picture->validate())
			{
				if (isset($_FILES[$name]))
				{
					$file = $_FILES[$name];
					$path = APP_PATH . "/public/uploads/pic/";

					$time = time();
					$rd = rand(0, 9999);
					$extension = pathinfo($file["name"], PATHINFO_EXTENSION);
					$filename = "{$rd}-{$time}.{$extension}";

					if (move_uploaded_file($file["tmp_name"], $path.$filename))
					{
						$meta = getimagesize($path.$filename);

						if ($meta)
						{
							$width = $meta[0];
							$height = $meta[1];

							$picture = new Picture(array(
								"filename" => $filename,
								"category" => RequestMethods::post("category"),
								"name" => RequestMethods::post("name"),
								"mime" => $file["type"],
								"size" => $file["size"],
								"width" => $width,
								"height" => $height
							));
							$picture->save();
						}
					}
				}
			}

			$view
				->set("error_name", \Framework\Shared\Markup::errors($picture->getErrors(), "name"));
		}

		// tableau de models
		$categories = PictureCategory::all($where = array(), $fields = array("*"), $order = "name");
		$view->set("categories", $categories);



		// layout
		$layout = $this-> getLayoutView();
		$layout->set("active_picture", true);
	}

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
				"description" => filter_var(RequestMethods::post("description"), FILTER_SANITIZE_MAGIC_QUOTES),
				"text" => RequestMethods::post("text"),
				"releaseDate" => RequestMethods::post("release_date"),
				"releaseTime" => RequestMethods::post("release_time"),
				"author" => RequestMethods::post("author"),
				"translator" => RequestMethods::post("translator"),
				"source" => RequestMethods::post("source"),
				"sourceURL" => RequestMethods::post("source_url"),
				"type" => RequestMethods::post("type"),
				"metaKeywords" => RequestMethods::post("meta_keywords")
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

			->set("post_title", RequestMethods::post("title"))
			->set("post_description", RequestMethods::post("description"))
			->set("post_text", RequestMethods::post("text"))
			->set("post_rel_date", RequestMethods::post("release_date"))
			->set("post_rel_time", RequestMethods::post("release_time"))
			->set("post_author", RequestMethods::post("author"))
			->set("post_meta_keywords", RequestMethods::post("meta_keywords"))
			;
		}

		$continents = Continent::all();
		$typeArticles = ArticleType::all();


		// view
		$view->set("continents", $continents);
		$view->set("typeArticles", $typeArticles);


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

		$articles = Article::all();
		$themes = Theme::all();

		foreach ($articles as $article)
		{
			$type = ArticleType::first(array("id=?"=>$article->type))->name;
			$article->type = $type;
		}

		// view
		$view->set("articles", $articles)
			->set("themes", $themes)
			->set("link_admin_add_article", Registry::get("router")->getPath("admin_add_article"))
			->set("link_admin_add_theme", Registry::get("router")->getPath("admin_add_theme"))
			->set("link_admin_update_theme", Registry::get("router")->getPath("admin_update_theme"));

		// layout
		$layout = $this-> getLayoutView();
		$layout->set("active_article", true);


	}
	
	/**
	 * @before _secure, _admin
	 */
	public function addTheme()
	{
		// code
		$view = $this-> getActionView();
		
		if (RequestMethods::post("add"))
		{
			$theme = new Theme(array(
					"title" => RequestMethods::post("title")
			));
		
			if ($theme->validate())
			{
				$theme->save();
			}
		
			$view
			->set("error_title", \Framework\Shared\Markup::errors($theme->getErrors(), "title"))
			
			->set("post_title", RequestMethods::post("title"))
			;
		}
		
		
		// layout
		$layout = $this-> getLayoutView();
		$layout->set("active_article", true);
	}
	
	/**
	 * @before _secure, _admin
	 */
	public function updateTheme($id)
	{
		$view = $this-> getActionView();
		$theme = Theme::first(array("id=?" => $id));
		
		if (!$theme)
		{
			self::redirect("admin_show_articles");
		}
		
		if (RequestMethods::post("update"))
		{
			$theme->title = RequestMethods::post("title");
			
			if ($theme->validate())
			{
				$theme->save();
			}
			
			$view
			->set("error_title", \Framework\Shared\Markup::errors($theme->getErrors(), "title"))
				
			->set("post_title", RequestMethods::post("title"))
			;
		}
		
		
		$view->set("theme", $theme);
		
		
		
		// layout
		$layout = $this-> getLayoutView();
		$layout->set("active_article", true);
	}
}
