<?php

namespace application\controllers;

use application\models\Album as model_Album;
use application\models\ArticleVisite;
use application\models\Picture;
use Framework\StringMethods;
use Pagination\Pagination;

class Album extends \Framework\Shared\Controller {
	

	public function showAlbum($id)
	{

		$layout = $this->getLayoutView();
		$view = $this->getActionView();
		$album = model_Album::first(array("id=?" => $id));
		
		if (!$album)
		{
			self::redirect("home");
		}

        /* Incremented visit counter */
        $time = time();
        $ip = $_SERVER['REMOTE_ADDR'];
        $waiting_time = $time - 3600; // 1 hour

        /*
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
        */

        $pictures = Picture::all(array("album=?" => $album->id));
        foreach($pictures as $picture)
        {
            $image_path = Picture::get_path($picture->id);
            $picture->filename = $image_path . $picture->filename;
        }


        $layout
		->set("album", $album)

		;
		
		$view
		->set("album", $album)
        ->set("pictures", $pictures)
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
        $total_posts = model_Album::count(array("deleted=?" => false));
        $pagination = new Pagination($page_name, $current_page, $total_posts, array('posts_per_page' => $posts_per_page));
        $pagination = $pagination->display();

        /*
         * Select data rows
         */
        $from = (string) ($current_page-1)*$posts_per_page;
        if ($current_page == null || $from == "0") {$from = "0";}
        $albums = model_Album::all(array("deleted=?" => false), array("*"), "created", "desc", $from, $posts_per_page);

        if (sizeof($albums) == 0)
        {
            self::redirect("home");
        }

        foreach ($albums as $album)
        {
            /* Set front Release Date */
            /*
             * $image_path = Picture::get_path($artist->relatedPicture);
            $image = $image_path . Picture::first(array("id=?"=>$artist->relatedPicture))->filename;
            $artist->relatedPicture = $image;
            */
            $album->stringURL = StringMethods::filterURL($album->title);
        }

        $view
        ->set("albums", $albums)
        ->set("int_i", 1)
        ->set("pagination", $pagination)
        ;
	}
}

