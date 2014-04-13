<?php

namespace application\controllers;

use application\models\Country;

use application\models\Event;
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

        /**
         * Mini Carousel
         */
        $mini_carousel = Article::all(array("deleted=?" => false, "type ?" => 'expressionIN (10)'));
        foreach ($mini_carousel as $article)
        {

            $image_path = Picture::get_path($article->relatedPicture);
            $image = $image_path . Picture::first(array("id=?"=>$article->relatedPicture))->filename;



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


        /**
         * Big carousel for highlights articles
         */
        $articles_carousel = Article::all(array("deleted=?"=>false, "highlight=?" => 1), array("*"), "releaseDate", "desc", "0,7");
		
		foreach ($articles_carousel as $article)
		{

			$image_path = Picture::get_path($article->relatedPicture);
			$image = $image_path . Picture::first(array("id=?"=>$article->relatedPicture))->filename;

			
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


        /**
         * Latest event
         */
        $latests_events = Event::all(array("live=?" => "1", "date>?" => "expression NOW()"), array("*"), "date", null, "0,5");
        $layout->set("latest_events", $latests_events);

        /**
         * Latest interviews
         */
        $latests_interviews = Article::all(array("deleted=?"=>false, "type=?" => "6"), array("*"), "releaseDate", "desc", "0,5");
        foreach ($latests_interviews as $article)
        {
            /* Set front Release Date */
            $article->releaseDate =  StringMethods::sqlDateToCustom($article->releaseDate);
            $article->relatedTheme = \application\models\Theme::first(array("id=?" => $article->relatedTheme));

        }
        $layout->set("latest_interviews", $latests_interviews);

        /**
         * Latest live reports
         */
        $latests_live_reports = Article::all(array("deleted=?"=>false, "type=?" => "7"), array("*"), "releaseDate", "desc", "0,5");
        foreach ($latests_live_reports as $article)
        {
            /* Set front Release Date */
            $article->releaseDate =  StringMethods::sqlDateToCustom($article->releaseDate);
            $article->relatedTheme = \application\models\Theme::first(array("id=?" => $article->relatedTheme));

        }
        $layout->set("latest_live_reports", $latests_live_reports);

        /**
         * Latest news
         */
        $latests_news = Article::all(array("deleted=?"=>false, "type=?" => "8"), array("*"), "releaseDate", "desc", "0,5");
        foreach ($latests_news as $article)
        {
            /* Set front Release Date */
            $article->releaseDate =  StringMethods::sqlDateToCustom($article->releaseDate);
            $article->relatedTheme = \application\models\Theme::first(array("id=?" => $article->relatedTheme));

        }
        $layout->set("latest_news", $latests_news);

		
		$layout
		->set("is_carousel", "true")
		->set("front_page_index", "true")
        ->set("mini_carousel", $mini_carousel)
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

