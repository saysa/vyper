<?php

namespace application\controllers;

use application\models\Article;
use Framework\RequestMethods;


use Framework\Registry;
use application\models\RelArtistEvent;
use Framework\Controller;
use application\models\Artist;



class Admin_ajax extends Controller {
	
	public function eventArtistLinkDelete()
	{
		$this->_willRenderLayoutView = false;
		
		$relation = RelArtistEvent::first(array("idArtist=?" => $_POST['artist_id'], "idEvent=?" => $_POST['event_id']));
		$relation->delete();
	}
	
	public function eventArtistLink()
	{
		
		$this->_willRenderLayoutView = false;
		//$this->_willRenderActionView = false;
		$this->_defaultContentType = "application/json";
		
		if (isset($_POST['artist_id']) && $_POST['artist_id'] != '-1') {
			
			$relation = RelArtistEvent::first(array("idArtist=?" => $_POST['artist_id'], "idEvent=?" => $_POST['event_id']));
			
			if (!$relation)
			{
				
				$relArtistEvent = new RelArtistEvent(array(
					"idArtist" => RequestMethods::post("artist_id"),
					"idEvent" => RequestMethods::post("event_id")
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
}
