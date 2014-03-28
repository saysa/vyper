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
        $time = time();
        $ip = $_SERVER['REMOTE_ADDR'];
        $waiting_time = $time - 3600; // 1 hour

        $visite = ArticleVisite::count(array("articleId=?" => $id, "ip=?" => $ip, "timestampVisit>?" => $waiting_time));

        if ($visite=="0")
        {
            $articleVisite = new ArticleVisite(array(
                "articleId"      => $id,
                "ip" 	         => $ip,
                "timestampVisit" => $time
            ));

            if ($articleVisite->validate())
            {
                $articleVisite->save();
            }
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

        $article->relatedTheme = \application\models\Theme::first(array("id=?" => $article->relatedTheme));
		
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
			$article->stringURL = StringMethods::filterURL($article->title);

            $article->relatedTheme = Theme::first(array("id=?" => $article->relatedTheme));
		}
		
		$view
		->set("category", ucfirst($type))
		->set("articles", $articles)
		->set("int_i", 1)
		->set("pagination", $pagination)
		;
	}
}

