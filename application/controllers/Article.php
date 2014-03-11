<?php

namespace application\controllers;

use application\models\Article as model_Article;
use application\models\Picture;
use Framework\StringMethods;

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
		
		
		$image = Picture::first(array("id=?"=>$article->relatedPicture))->filename;	
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
}

