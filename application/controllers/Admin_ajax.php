<?php

namespace application\controllers;

use application\models\Article;
use application\models\RelArtistItem;
use application\models\Theme;
use Framework\RequestMethods;


use Framework\Registry;
use application\models\RelArtistEvent;
use Framework\Controller;
use application\models\Artist;



class Admin_ajax extends Controller {

	public function eventArtistLinkDelete()
	{
		$this->_willRenderLayoutView = false;
		
		$relation = RelArtistItem::first(array("type=?" => "event",  "idArtist=?" => $_POST['artist_id'], "idItem=?" => $_POST['item_id']));
		$relation->delete();
	}

    public function articleArtistLinkDelete()
    {
        $this->_willRenderLayoutView = false;

        $relation = RelArtistItem::first(array("type=?" => "article",  "idArtist=?" => $_POST['artist_id'], "idItem=?" => $_POST['item_id']));
        $relation->delete();
    }

    public function albumArtistLinkDelete()
    {
        $this->_willRenderLayoutView = false;

        $relation = RelArtistItem::first(array("type=?" => "album",  "idArtist=?" => $_POST['artist_id'], "idItem=?" => $_POST['item_id']));
        $relation->delete();
    }

    public function discoArtistLinkDelete()
    {
        $this->_willRenderLayoutView = false;

        $relation = RelArtistItem::first(array("type=?" => "disco",  "idArtist=?" => $_POST['artist_id'], "idItem=?" => $_POST['item_id']));
        $relation->delete();
    }
	
	public function eventArtistLink()
	{
		$this->_willRenderLayoutView = false;
		$this->_defaultContentType = "application/json";
        $this->itemArtistLink("event");
	}

    public function articleArtistLink()
    {
        $this->_willRenderLayoutView = false;
        $this->_defaultContentType = "application/json";
        $this->itemArtistLink("article");

    }

    public function albumArtistLink()
    {
        $this->_willRenderLayoutView = false;
        $this->_defaultContentType = "application/json";
        $this->itemArtistLink("album");

    }

    public function discoArtistLink()
    {
        $this->_willRenderLayoutView = false;
        $this->_defaultContentType = "application/json";
        $this->itemArtistLink("disco");
    }

    public function itemArtistLink($type)
    {
        if (isset($_POST['artist_id']) && $_POST['artist_id'] != '-1') {

            $relation = RelArtistItem::first(array("type=?" => $type, "idArtist=?" => $_POST['artist_id'], "idItem=?" => $_POST['item_id']));

            if (!$relation)
            {
                $relArtistEvent = new RelArtistItem(array(
                    "idArtist" => RequestMethods::post("artist_id"),
                    "idItem" => RequestMethods::post("item_id"),
                    "type" => $type
                ));

                if ($relArtistEvent->validate())
                {
                    $relArtistEvent->save();
                    $artist = Artist::first(array("id=?" => $_POST['artist_id']));
                    $array = array("artist" => array("id" => $artist->id, "name" => $artist->name));
                    echo json_encode($array);
                }
            }
        }
    }



    public function switchArticleHighlight()
    {
        $this->_willRenderLayoutView = false;
        $this->_defaultContentType = "application/json";

        //var_dump($_POST['article_id'], $_POST['checkboxValue']);

        $article = Article::first(array("id=?" => $_POST['article_id']));

        if ($_POST['checkboxValue'] == "true")
        {
            $article->highlight = 1;
        }
        else{
            $article->highlight = 0;
        }

        $article->save();

    }

    public function switchThemeShowInMenu()
    {
        $this->_willRenderLayoutView = false;
        $this->_defaultContentType = "application/json";

        $theme = Theme::first(array("id=?" => $_POST['theme_id']));

        if ($_POST['checkboxValue'] == "true")
        {
            $theme->showInMenu = 1;
        }
        else{
            $theme->showInMenu = 0;
        }

        $theme->save();
    }
}
