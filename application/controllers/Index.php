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
use Framework\StringMethods;


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
		
		$articles_carousel = Article::all(array("deleted=?"=>false, "highlight=?" => 1), array("*"), "releaseDate", "desc", "0,7");
		
		foreach ($articles_carousel as $article)
		{
			
			$image_path = Picture::get_path($article->relatedPicture);
			$image = $image_path . Picture::first(array("id=?"=>$article->relatedPicture))->filename;
			
			$article->stringURL = StringMethods::filterURL($article->title);
			
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
			
			
		}
		
		$layout
		->set("is_carousel", "true")
		->set("front_page_index", "true")
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

