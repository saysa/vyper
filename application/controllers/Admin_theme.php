<?php

namespace application\controllers;

use Framework\RequestMethods;

use application\models\Theme;

class Admin_theme extends Admin_common {
	
	/**
	 * @before _secure, _admin
	 */
	public function updateTheme($id)
	{
		$view = $this-> getActionView();
		$theme = Theme::first(array("id=?" => $id));
	
		if (!$theme)
		{
			self::redirect("admin_show_articles");
		}
		if (RequestMethods::post("update"))
		{
			$theme->title = RequestMethods::post("title");
				
			if ($theme->validate())
			{
				$theme->save();
			}
				
			$view
			->set("error_title", \Framework\Shared\Markup::errors($theme->getErrors(), "title"))
	
			->set("post_title", RequestMethods::post("title"))
			;
		}
	
	
		$view->set("theme", $theme);
	
	
	
		// layout
		$layout = $this-> getLayoutView();
		$layout->set("active_article", true);
	}
	
	/**
	 * @before _secure, _admin
	 */
	public function addTheme()
	{
		// code
		$view = $this-> getActionView();
	
		if (RequestMethods::post("add"))
		{
			$theme = new Theme(array(
					"title" => RequestMethods::post("title")
			));
	
			if ($theme->validate())
			{
				$theme->save();
			}
	
			$view
			->set("error_title", \Framework\Shared\Markup::errors($theme->getErrors(), "title"))
				
			->set("post_title", RequestMethods::post("title"))
			;
		}
	
	
		// layout
		$layout = $this-> getLayoutView();
		$layout->set("active_article", true);
	}
	
	/**
	 * @before _secure, _admin
	 */
	public function deleteTheme($id)
	{
		$theme = Theme::first(array("id=?" => $id));
	
		if (!$theme)
		{
			self::redirect("admin_show_articles");
		}
	
		$theme->deleted = true;
		$theme->save();
		self::redirect("admin_show_articles");
	}
}
