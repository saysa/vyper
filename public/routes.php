<?php

// define routes

$routes = array(
		
		
		
		array(
				"name" 		 => "admin_showPictures",
				"pattern"    => "_admin_/pictures",
				"controller" => "admin",
				"action" 	 => "showPictures"
		),
		array(
				"name" 		 => "admin_login",
				"pattern"    => "_admin_/login",
				"controller" => "auth",
				"action" 	 => "login"
		),
		array(
				"name" 		 => "admin_register",
				"pattern"    => "_admin_/register",
				"controller" => "auth",
				"action" 	 => "register"
		),
		array(
				"name" 		 => "news",
				"pattern"    => "news",
				"controller" => "news",
				"action" 	 => "index"
		),
		array(
				"pattern" => "news/delete/:id",
				"controller" => "news",
				"action" => "delete"
		),
		array(
				"pattern" => "users/view",
				"controller" => "users",
				"action" => "view"
		),
		array(
				"pattern" => "files/undelete/:id",
				"controller" => "files",
				"action" => "undelete"
		),
		array(
				"pattern" => "files/delete/:id",
				"controller" => "files",
				"action" => "delete"
		),
		array(
				"pattern" => "users/undelete/:id",
				"controller" => "users",
				"action" => "undelete"
		),
		array(
				"pattern" => "users/delete/:id",
				"controller" => "users",
				"action" => "delete"
		),
		array(
				"pattern" => "users/edit/:id",
				"controller" => "users",
				"action" => "edit"
		),
		array(
				"pattern" => "thumbnails/:id",
				"controller" => "files",
				"action" => "thumbnails"
		),
		array(
			"pattern" => "register",
			"controller" => "users",
			"action" => "register"
		),
		array(
				"pattern" => "login",
				"controller" => "users",
				"action" => "login"
		),
		array(
				"name"       => "logout",
				"pattern"    => "logout",
				"controller" => "users",
				"action" 	 => "logout"
		),
		array(
				"name" => "n_profile",
				"pattern" => "profile",
				"controller" => "users",
				"action" => "profile"
		),
		array(
				"pattern" => "search",
				"controller" => "users",
				"action" => "search"
		),
		array(
				"pattern" => "settings",
				"controller" => "users",
				"action" => "settings"
		),
		array(
				"pattern" => "friend/?",
				"controller" => "users",
				"action" => "friend",
				"parameters" => array("id")
		),
		array(
				"pattern" => "unfriend/?",
				"controller" => "users",
				"action" => "unfriend",
				"parameters" => array("id")
		),
		array(
				"pattern" => ":name/profile",
				"controller" => "home",
				"action" => "index"
		),
		array(
			"name" 		 => "home",
			"pattern" 	 => "home",
			"controller" => "index",
			"action" 	 => "index"
		)
);


// add defined routes

foreach ($routes as $route)
{
	$router->addRoute(new Framework\Router\Route\Simple($route));
}

// unset globals

unset($routes);