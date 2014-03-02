<?php

namespace application\controllers;

use application\models\Country;

use application\models\Text;

use application\models\News;

use application\components\Contact\Contact;

use \Twig_Loader_String;
use \Twig_Environment;

use application\components\Bloc\Bloc;

use application\components\Graph;

use application\components\header\Header;

use application\models\User;

use Framework\Registry;
use application\models\Article;


class Index extends \Framework\Shared\Controller {
	
	/**
	 * @once
	 * @protected
	 */
	public function init()
	{
		echo "<p>init</p>";
	}
	
	/**
	 * @protected
	 */
	public function authenticate()
	{
		echo "<p>authenticate</p>";
	}
	

	public function index()
	{	
		$view = $this->getLayoutView();
		
		$articles_carousel = Article::all(array("deleted=?"=>false));
		
		foreach ($articles_carousel as $article)
		{
			//$type = ArticleType::first(array("id=?"=>$article->type))->name;
			
			$excerpt = $article->title;
			$article->title = mb_substr($excerpt,0, 50);
			if (strlen($excerpt) > 49){
				$article->title .= '...';
			}
			
		}
		
		$view->set("articles", $articles_carousel);
			
		
	}
	
	/**
	 * @protected
	 */
	public function notify()
	{
		echo "<p>notify</p>";
	}
}

