<?php

namespace application\controllers;

use application\models\Artist as model_Artist;
use application\models\ArticleVisite;
use application\models\Picture;
use Framework\StringMethods;
use application\models\ArticleType;
use Pagination\Pagination;

class Artist extends \Framework\Shared\Controller {
	

	public function showArtist($id)
	{
		
		
		$layout = $this->getLayoutView();
		$view = $this->getActionView();
		$artist = model_Artist::first(array("id=?" => $id));
		
		if (!$artist)
		{
			self::redirect("home");
		}

        /* Incremented visit counter */
        $time = time();
        $ip = $_SERVER['REMOTE_ADDR'];
        $waiting_time = $time - 3600; // 1 hour

        /*$visite = ArticleVisite::count(array("articleId=?" => $id, "ip=?" => $ip, "timestampVisit>?" => $waiting_time));

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
        */
		
		/* Set front Release Date */

		$image_path = Picture::get_path($artist->relatedPicture);
		$image = $image_path . Picture::first(array("id=?"=>$artist->relatedPicture))->filename;

        $artist->relatedPicture = $image;
       //$artist->stringURL = StringMethods::filterURL($artist->title);
		
		$dimensionImage = getimagesize(BASE_URL . "uploads/pic/" . $artist->relatedPicture);
		
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
		->set("artist", $artist)
		;
		
		$view
		->set("artist", $artist)
		->set("server_request_uri", $_SERVER['REQUEST_URI'])
		;
		
		
	}
	
	public function showAll($type, $url_pattern, $p = null)
	{
        $view = $this->getActionView();

        /*
		 * Pagination
		 */
        $posts_per_page = 32;
        $page_name = BASE_URL . $url_pattern . "/page/%s";
        $current_page = (isset($p))?$p:1;
        $total_posts = model_Artist::count(array("deleted=?" => false));
        $pagination = new Pagination($page_name, $current_page, $total_posts, array('posts_per_page' => $posts_per_page));
        $pagination = $pagination->display();

        /*
         * Select data rows
         */
        $from = (string) ($current_page-1)*$posts_per_page;
        if ($current_page == null || $from == "0") {$from = "0";}
        $artists = model_Artist::all(array("deleted=?" => false), array("*"), "created", "desc", $from, $posts_per_page);

        if (sizeof($artists) == 0)
        {
            self::redirect("home");
        }

        foreach ($artists as $artist)
        {
            /* Set front Release Date */
            $image_path = Picture::get_path($artist->relatedPicture);
            $image = $image_path . Picture::first(array("id=?"=>$artist->relatedPicture))->filename;
            $artist->relatedPicture = $image;
            $artist->stringURL = StringMethods::filterURL($artist->name);
        }

        $view
        ->set("artists", $artists)
        ->set("int_i", 1)
        ->set("pagination", $pagination)
        ;
	}
}

