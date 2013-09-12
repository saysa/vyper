<?php

namespace application\controllers;

use application\models\PictureCategory;

use application\models\Picture;

use Framework\RequestMethods;

use Framework\Registry;

class Admin extends \Framework\Shared\Controller {
	
	public function __construct($options = array())
	{
		parent::__construct(array(
				"defaultLayout" => "layouts/admin/admin"
		));
	}
	
	/**
	 * @before _secure, _admin
	 */
	public function showPictures()
	{
		$this->actionView->set("link_admin_add_picture", Registry::get("router")->getPath("admin_add_picture"));
	}
	
	/**
	 * @before _secure, _admin
	 */
	public function addPicture()
	{
		
		$view = $this-> getActionView();
	
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
						
					$time = time();
					$rd = rand(0, 9999);
					$extension = pathinfo($file["name"], PATHINFO_EXTENSION);
					$filename = "{$rd}-{$time}.{$extension}";
						
					if (move_uploaded_file($file["tmp_name"], $path.$filename))
					{
						$meta = getimagesize($path.$filename);
				
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
		
		
	}
}
