<?php

namespace application\controllers;

use application\models\Album;
use application\models\AlbumCategory;
use Framework\Registry;

use application\models\PictureCategory;

use application\models\Picture;

use Framework\RequestMethods;
use Imagine\Image\Point;

class Admin_picture extends Admin_common {
	
	/**
	 * @before _secure, _admin
	 */
	public function addPicture()
	{
		$view   = $this-> getActionView();
	
		if (RequestMethods::post("add"))
		{
			$name = "picture";
	
			$picture = new Picture(array(
					"name" => RequestMethods::post("name")
			));
	
			if ($picture->validate())
			{
				if (isset($_FILES[$name]))
				{
					$file = $_FILES[$name];
					$path = APP_PATH . "/public/uploads/pic/";
					$year = date("Y", time());
					$month = date("m", time());
	
					$time = time();
					$rd = rand(0, 9999);
					$extension = pathinfo($file["name"], PATHINFO_EXTENSION);
					$filename = "{$rd}-{$time}.{$extension}";
					
					if (!is_dir("{$path}{$year}")) {
						mkdir("{$path}{$year}");
					}
					
					if (!is_dir("{$path}{$year}/{$month}")) {
						mkdir("{$path}{$year}/{$month}");
					}
	
					if (move_uploaded_file($file["tmp_name"], "{$path}{$year}/{$month}/{$filename}"))
					{
						/* Create 75x75 format */
						$imagine = new \Imagine\Gd\Imagine();
						$size = new \Imagine\Image\Box(75, 75);
						$mode = \Imagine\Image\ImageInterface::THUMBNAIL_OUTBOUND;
						$imagine
						->open("{$path}{$year}/{$month}/{$filename}")
						->thumbnail($size, $mode)
						->save("{$path}{$year}/{$month}/75x75-{$rd}-{$time}.{$extension}");
						/* End Create 75x75 format */

                        /* Create 780x400 format */
                        $imagine = new \Imagine\Gd\Imagine();
                        $size = new \Imagine\Image\Box(780, 400);
                        $imagine
                            ->open("{$path}{$year}/{$month}/{$filename}")
                            ->thumbnail($size)
                            ->save("{$path}{$year}/{$month}/780x400-{$rd}-{$time}.{$extension}");
                        /* End Create 780x400 format */
						
						$meta = getimagesize("{$path}{$year}/{$month}/{$filename}");
	
						if ($meta)
						{
							$width = $meta[0];
							$height = $meta[1];
	
							$picture = new Picture(array(
									"filename" => $filename,
									"album" => RequestMethods::post("album"),
									"name" => RequestMethods::post("name"),
									"mime" => $file["type"],
									"size" => $file["size"],
									"width" => $width,
									"height" => $height
							));
							$picture->save();
                            self::redirect("admin_show_pictures");
						}
					}
				}
			}
	
			$view
			->set("error_name", \Framework\Shared\Markup::errors($picture->getErrors(), "name"));
		}
		
		// tableau de models

        $albums = Album::all($where = array(), $fields = array("*"), $order = "title");


        $view->set("albums", $albums);
	
	
	
		// layout
		$layout = $this-> getLayoutView();
		$layout->set("active_picture", true);
	}
	
	/**
	 * @before _secure, _admin
	 */
	public function showPictures()
	{
		$view = $this-> getActionView();
		$pictures = Picture::all();


		foreach ($pictures as $picture)
		{
            if (Album::first(array("id=?"=>$picture->album)))
            {
                $album = Album::first(array("id=?"=>$picture->album))->title;
                $picture->album = $album;

                $image_path = Picture::get_path($picture->id);
                $picture->filename = $image_path . $picture->filename;
               
            }

		}

        $albums = Album::all();

		// action
		$view->set("pictures", $pictures)
        ->set("albums"  , $albums)
		->set("link_admin_add_picture", Registry::get("router")->getPath("admin_add_picture"))
        ->set("link_admin_add_album",   Registry::get("router")->getPath("admin_add_album"))
        ->set("link_admin_update_album", Registry::get("router")->getPath("admin_update_album"))
        ;

		// layout
		$layout = $this-> getLayoutView();
		$layout->set("active_picture", true);
	}
}
