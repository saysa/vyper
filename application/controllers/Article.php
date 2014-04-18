<?php

namespace application\controllers;

use application\models\Article as model_Article;
use application\models\ArticleVisite;
use application\models\Picture;
use application\models\Theme;
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

        /* Incremented visit counter */
        $this->incrementeVisite("article", $id);



		
		$image_path = Picture::get_path($article->relatedPicture);
        $article->relatedPicture = $image_path . Picture::first(array("id=?"=>$article->relatedPicture))->filename;


		
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

        $article->relatedTheme = \application\models\Theme::first(array("id=?" => $article->relatedTheme));



        /**
         * Set Layout
         */
        $layout
		->set("front_page_article", "true")
		->set("article", $article)
        ->set("soe_title", $article->title)
        ->set("google_description", $article->description)
        ->set("meta_keywords", $article->metaKeywords)
		;
        $type = ArticleType::first(array("id=?" => $article->type))->name;
        switch($type)
        {
            case "news":
                $layout->set("current_article", "true");
                $view->set("img_type_news", "true");
                break;
            case "chronique":
                $layout->set("current_chronique", "true");
                break;
            case "interview":
                $layout->set("current_interview", "true");
                break;
            case "live report":
                $layout->set("current_live_report", "true");
                break;

        }

        /**
         * Set view
         */
        $view
		->set("article", $article)
		->set("server_request_uri", $_SERVER['REQUEST_URI'])
		;
		
		
	}
	
	public function showAll($type, $url_pattern, $p = null)
	{
        $layout = $this->getLayoutView();
		$view = $this->getActionView();
		$articleTypeId = ArticleType::first(array("name=?" => $type))->id;

		/*
		 * Pagination
		 */
        $posts_per_page = 8;
		$page_name = BASE_URL . $url_pattern . "/page/%s";
		$current_page = (isset($p))?$p:1;
		$total_posts = model_Article::count(array("type=?" => $articleTypeId));
		$pagination = new Pagination($page_name, $current_page, $total_posts, array('posts_per_page' => $posts_per_page));
		$pagination = $pagination->display();
		
		/*
		 * Select data rows
		 */
        $from = (string) ($current_page-1)*$posts_per_page;
		if ($current_page == null || $from == "0") {$from = "0";}
		$articles = model_Article::all(array("type=?" => $articleTypeId), array("*"), "releaseDate", "desc", $from, $posts_per_page);
		
		if (sizeof($articles) == 0)
		{
			self::redirect("home");
		}
		
		
		foreach ($articles as $article)
		{

			$image_path = Picture::get_path($article->relatedPicture);
			$image = $image_path . Picture::first(array("id=?"=>$article->relatedPicture))->filename;
			$article->relatedPicture = $image;


            $article->relatedTheme = Theme::first(array("id=?" => $article->relatedTheme));
		}

        /**
         * Set layout
         */
        switch($type)
        {
            case "news":
                $layout
                    ->set("current_article", "true")
                    ->set("soe_title", "News")
                ;
                break;
            case "chronique":
                $layout
                    ->set("current_chronique", "true")
                    ->set("soe_title", "Chroniques")
                ;
                break;
            case "interview":
                $layout
                    ->set("current_interview", "true")
                    ->set("soe_title", "Interviews")
                ;
                break;
            case "live report":
                $layout
                    ->set("current_live_report", "true")
                    ->set("soe_title", "Live reports")
                ;
                break;

        }

        /**
         * Set view
         */
        $view
		->set("category", ucfirst($type))
		->set("articles", $articles)
		->set("int_i", 1)
		->set("pagination", $pagination)
		;
	}
}

