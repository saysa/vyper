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
					"title"       => RequestMethods::post("title"),
                    "category"    => RequestMethods::post("category"),
                    "description" => RequestMethods::post("description")
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
    public function updateAlbum($id)
    {
        $view = $this-> getActionView();


        $album = Album::first(array("id=?" => $id));

        if (!$album)
        {
            self::redirect("admin_show_locations");
        }


        if (RequestMethods::post("update"))
        {

            $album->title       = RequestMethods::post("title");
            $album->category    = RequestMethods::post("category");
            $album->description = RequestMethods::post("description");



            if ($album->validate())
            {

                $album->save();
            }

            $view
                ->set("error_title",       		\Framework\Shared\Markup::errors($album->getErrors(), "title"))
                ->set("error_category",  		\Framework\Shared\Markup::errors($album->getErrors(), "category"))
            ;

        }

        $categories = AlbumCategory::all($where = array(), $fields = array("*"), $order = "name");

        $view
            ->set("album", $album)
            ->set("categories", $categories)
        ;

        // layout
        $layout = $this-> getLayoutView();
        $layout->set("active_picture", true);
    }
}
