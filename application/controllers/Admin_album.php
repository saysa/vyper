<?php

namespace application\controllers;

use application\models\Album;
use application\models\AlbumCategory;
use Framework\Registry;

use application\models\PictureCategory;

use application\models\Picture;

use Framework\RequestMethods;

class Admin_album extends Admin_common {
	
	/**
	 * @before _secure, _admin
	 */
	public function addAlbum()
	{
		$view   = $this-> getActionView();
	
		if (RequestMethods::post("add"))
		{
			$album = new Album(array(
					"title" => RequestMethods::post("title")
			));
	
			if ($album->validate())
			{
                $album->save();
			}
	
			$view
			->set("error_title", \Framework\Shared\Markup::errors($album->getErrors(), "title"));
		}

        $categories = AlbumCategory::all($where = array(), $fields = array("*"), $order = "name");

        $view->set("categories", $categories);

		// layout
		$layout = $this-> getLayoutView();
		$layout->set("active_picture", true);
	}
	
	/**
	 * @before _secure, _admin
	 */
	public function showAlbums()
	{
		/*$view = $this-> getActionView();
		$pictures = Picture::all();
	
		foreach ($pictures as $picture)
		{
			$category = PictureCategory::first(array("id=?"=>$picture->category))->name;
			$picture->category = $category;
		}
		
		// action
		$view->set("pictures", $pictures);
		$view->set("link_admin_add_picture", Registry::get("router")->getPath("admin_add_picture"));
	
		// layout
		$layout = $this-> getLayoutView();
		$layout->set("active_picture", true);
	    */
    }
}
