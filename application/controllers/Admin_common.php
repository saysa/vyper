<?php

namespace application\controllers;

use Framework\Registry;

class Admin_common extends \Framework\Shared\Controller {
	
	public function __construct($options = array())
	{
		parent::__construct(array(
				"defaultLayout" => "layouts/admin/admin"
		));
	
		$layout = $this-> getLayoutView();
		
		$layout
		->set("link_admin_show_picture",  Registry::get("router")->getPath("admin_show_pictures"))
		->set("link_admin_show_article",  Registry::get("router")->getPath("admin_show_articles"))
		->set("link_admin_show_artist",   Registry::get("router")->getPath("admin_show_artists"))
		->set("link_admin_show_artist",   Registry::get("router")->getPath("admin_show_artists"))
		->set("link_admin_show_tour",     Registry::get("router")->getPath("admin_show_tours"))
		->set("link_admin_show_event",    Registry::get("router")->getPath("admin_show_events"))
		->set("link_admin_show_location", Registry::get("router")->getPath("admin_show_locations"))
		;
	}
}
