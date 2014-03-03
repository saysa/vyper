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
use application\models\Picture;


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
	
	public function one_article($id, $p)
	{
		var_dump($id, $p);
		echo "one article ! $id";
	}
	

	public function index()
	{	
		$layout = $this->getLayoutView();
		$view = $this->getLayoutView();
		
		$articles_carousel = Article::all(array("deleted=?"=>false));
		
		foreach ($articles_carousel as $article)
		{
			$image = Picture::first(array("id=?"=>$article->relatedPicture))->filename;
			
			$excerpt = $article->title;
			$article->title = mb_substr($excerpt,0, 50);
			if (strlen($excerpt) > 49){
				$article->title .= '...';
			}
			
			$excerpt = $article->description;
			$article->description = mb_substr($excerpt,0, 120);
			if (strlen($excerpt) > 119){
				$article->description .= '...';
			}
			
			
			$article->relatedPicture = $image;
			$article->stringURL = $this->_filtreURL($article->title);
			
		}
		
		$layout
		->set("is_carousel", "true")
		->set("front_page_index")
		;
		
		$view
		->set("articles", $articles_carousel)
		;
		
			
		
	}
	
	/**
	 * @protected
	 */
	public function notify()
	{
		echo "<p>notify</p>";
	}
}

