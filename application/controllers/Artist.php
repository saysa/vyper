<?php

namespace application\controllers;

use application\models\Album;
use application\models\Article;
use application\models\Artist as model_Artist;
use application\models\ArticleVisite;
use application\models\Event;
use application\models\Picture;
use application\models\RelArtistItem;
use Framework\StringMethods;
use application\models\ArticleType;
use Pagination\Pagination;

class Artist extends \Framework\Shared\Controller {
	

	public function showArtist($id)
	{
		$view = $this->getActionView();
		$artist = model_Artist::first(array("id=?" => $id));
		
		if (!$artist)
		{
			self::redirect("home");
		}

        $albums = null;
        $articles = null;
        $events = null;

        /* Incremented visit counter */
        $this->incrementeVisite("artist", $id);
		
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

        /**
         * Linked album ?
         */
        $relAlbums = RelArtistItem::all(array("idArtist=?" => $id, "type=?" => "album"), array("*"), "created", "desc", "0,3");
        if ($relAlbums)
        {
            foreach ($relAlbums as $rel)
            {
                $albums[] = Album::first(array("id=?" => $rel->idItem));
            }

            foreach ($albums as $album)
            {

                $album->stringURL = StringMethods::filterURL($album->title);

                $picture = Picture::first(array("album=?" => $album->id));
                $image_path = Picture::get_path($picture->id);
                $album->cover = $image_path . $picture->filename;


            }
        }


        /**
         * Linked article ?
         */
        $relArticles = RelArtistItem::all(array("idArtist=?" => $id, "type=?" => "article"), array("*"), "created", "desc", "0,3");
        if ($relArticles)
        {
            foreach ($relArticles as $rel)
            {
                $articles[] = Article::first(array("id=?" => $rel->idItem));
            }

            foreach($articles as $article)
            {
                $article->stringURL = StringMethods::filterURL($article->title);
                $article->releaseDate =  StringMethods::sqlDateToCustom($article->releaseDate);
            }
        }

        /**
         * Linked event ?
         */
        $relEvents = RelArtistItem::all(array("idArtist=?" => $id, "type=?" => "event"), array("*"), "created", "desc", "0,3");
        if ($relEvents)
        {
            foreach ($relEvents as $rel)
            {
                $events[] = Event::first(array("id=?" => $rel->idItem));
            }

            foreach($events as $event)
            {
                $event->date =  StringMethods::sqlDateToCustom($event->date);
                $event->stringURL = StringMethods::filterURL($event->title);
            }
        }

        $layout = $this->getLayoutView();
		$layout
		->set("artist", $artist)
        ->set("current_artist", "true")
        ->set("soe_title", $artist->name)
		;
		
		$view
		->set("artist", $artist)
        ->set("albums", $albums)
        ->set("articles", $articles)
        ->set("events", $events)
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

        $layout = $this->getLayoutView();
        $layout
        ->set("current_artist", "true")
        ->set("soe_title", "Artistes")
        ;


        $view
        ->set("artists", $artists)
        ->set("int_i", 1)
        ->set("pagination", $pagination)
        ;
	}
}

