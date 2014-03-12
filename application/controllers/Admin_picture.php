<?php

namespace application\controllers;

use Framework\Registry;

use application\models\PictureCategory;

use application\models\Picture;

use Framework\RequestMethods;

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
						
						$meta = getimagesize("{$path}{$year}/{$month}/{$filename}");
	
						if ($meta)
						{
							$width = $meta[0];
							$height = $meta[1];
	
							$picture = new Picture(array(
									"filename" => $filename,
									"category" => RequestMethods::post("category"),
									"name" => RequestMethods::post("name"),
									"mime" => $file["type"],
									"size" => $file["size"],
									"width" => $width,
									"height" => $height
							));
							$picture->save();
						}
					}
				}
			}
	
			$view
			->set("error_name", \Framework\Shared\Markup::errors($picture->getErrors(), "name"));
		}
		
		// tableau de models
		$categories = PictureCategory::all($where = array(), $fields = array("*"), $order = "name");
		$view->set("categories", $categories);
	
	
	
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
			$category = PictureCategory::first(array("id=?"=>$picture->category))->name;
			$picture->category = $category;
		}
		
		// action
		$view->set("pictures", $pictures);
		$view->set("link_admin_add_picture", Registry::get("router")->getPath("admin_add_picture"));
	
		// layout
		$layout = $this-> getLayoutView();
		$layout->set("active_picture", true);
	}
}
