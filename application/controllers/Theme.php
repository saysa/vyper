<?php

namespace application\controllers;

use application\models\Article;
use application\models\Picture;
use Framework\StringMethods;
use Pagination\Pagination;

class Theme extends \Framework\Shared\Controller {
	

	public function showTheme($id, $current_page, $themeUrlFormat = null)
	{
        $url_pattern = "theme";
		$view = $this->getActionView();

        $theme = \application\models\Theme::first(array("id=?" => $id));

        /*
		 * Pagination
		 */
        $posts_per_page = 4;
        $page_name = BASE_URL . $url_pattern . "/$id/%s/" . $themeUrlFormat . ".html";
        $total_posts = Article::count(array("deleted=?" => false, "relatedTheme=?" => $id));
        $pagination = new Pagination($page_name, $current_page, $total_posts, array('posts_per_page' => $posts_per_page));
        $pagination = $pagination->display();

        /*
         * Select data rows
         */
        $from = (string) ($current_page-1)*$posts_per_page;
        if ($current_page == null || $from == "0") {$from = "0";}
        $articles = Article::all(array("deleted=?" => false, "relatedTheme=?" => $id), array("*"), "created", "desc", $from, $posts_per_page);

		if (!$articles)
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


            $article->relatedTheme = $theme;
        }

        $layout = $this->getLayoutView();
        $layout
            ->set("soe_title", $theme->title)
        ;
	
		$view
		->set("articles", $articles)
        ->set("theme", $theme)
        ->set("pagination", $pagination)
		->set("server_request_uri", $_SERVER['REQUEST_URI'])
		;
		
	}

}

