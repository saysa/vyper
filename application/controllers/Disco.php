<?php

namespace application\controllers;

use application\models\Artist;
use application\models\Disco as model_Disco;
use application\models\RelArtistItem;
use application\models\Title;

class Disco extends \Framework\Shared\Controller {
	

	public function showDisco($id)
	{
		$view = $this->getActionView();
		$disco = model_Disco::first(array("id=?" => $id));
		
		if (!$disco)
		{
			self::redirect("home");
		}

        /* Incremented visit counter */
        $this->incrementeVisite("disco", $id);

        $titles = Title::all(array("deleted=?"=>false, "discoId=?"=>$id));

        $layout = $this->getLayoutView();
		$layout
		->set("disco", $disco)
        ->set("soe_title", $disco->title)
		;
		
		$view
		->set("disco", $disco)
        ->set("titles", $titles)
		->set("server_request_uri", $_SERVER['REQUEST_URI'])
		;
	}
}

