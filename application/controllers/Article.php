<?php

namespace application\controllers;

use application\models\Article as model_Article;

class Article extends \Framework\Shared\Controller {
	

	public function showArticle($id)
	{
		$layout = $this->getLayoutView();
		$view = $this-> getActionView();
		$article = model_Article::first(array("id=?" => $id));
		
		if (!$article)
		{
			self::redirect("home");
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

