<?php

namespace application\controllers;

use application\models\Article as model_Article;
use application\models\Picture;
use Framework\StringMethods;
use application\models\ArticleType;
use Pagination\Pagination;

class Article extends \Framework\Shared\Controller {
	

	public function showArticle($id)
	{
		
		
		$layout = $this->getLayoutView();
		$view = $this->getActionView();
		$article = model_Article::first(array("id=?" => $id));
		
		if (!$article)
		{
			self::redirect("home");
		}
		
		/* Set front Release Date */
		$article->releaseDate =  StringMethods::sqlDateToCustom($article->releaseDate);
		
		$image_path = Picture::get_path($article->relatedPicture);
		$image = $image_path . Picture::first(array("id=?"=>$article->relatedPicture))->filename;
		
		$article->relatedPicture = $image;	
		$article->stringURL = StringMethods::filterURL($article->title);
		
		$dimensionImage = getimagesize(BASE_URL . "uploads/pic/" . $article->relatedPicture);
		
		/* vertical image OR square */
		if($dimensionImage[0]<=$dimensionImage[1])
		{
			
		}
		/* horizontal image */
		elseif($dimensionImage[0]>$dimensionImage[1])
		{
			$view->set("article_horizontal_image", "true");
		}
		
		
		$layout
		->set("front_page_article", "true")
		->set("article", $article)
		;
		
		$view
		->set("article", $article)
		->set("server_request_uri", $_SERVER['REQUEST_URI'])
		;
		
		
	}
	
	public function showAll($type, $url_pattern, $p = null)
	{
		$view = $this->getActionView();
		$articleTypeId = ArticleType::first(array("name=?" => $type))->id;
		
		/*
		 * Pagination
		 */
		$page_name = BASE_URL . $url_pattern . "/page/%s";
		$current_page = (isset($p))?$p:1;
		$total_posts = model_Article::count(array("type=?" => $articleTypeId));
		$pagination = new Pagination($page_name, $current_page, $total_posts);
		$pagination = $pagination->display();
		
		/*
		 * Select data rows
		 */
		$from = (string) ($current_page-1)*4;
		if ($current_page == null || $from == "0") {$from = "0";}
		$articles = model_Article::all(array("type=?" => $articleTypeId), array("*"), "releaseDate", "desc", $from, 4);
		
		if (sizeof($articles) == 0)
		{
			self::redirect("home");
		}
		
		
		foreach ($articles as $article)
		{
			/* Set front Release Date */
			$article->releaseDate =  StringMethods::sqlDateToCustom($article->releaseDate);
			
			$image_path = Picture::get_path($article->relatedPicture);
			$image = $image_path . Picture::first(array("id=?"=>$article->relatedPicture))->filename;
			$article->relatedPicture = $image;
		}
		
		$view
		->set("category", ucfirst($type))
		->set("articles", $articles)
		->set("int_i", 1)
		->set("pagination", $pagination)
		;
	}
}

