<?php

// define routes

$routes = array(
		
		// Admin Event
		array(
				"name" 		 => "admin_add_event",
				"pattern"    => "_admin_/event/add",
				"controller" => "admin_event",
				"action" 	 => "addEvent"
		),
		array(
				"name" 		 => "admin_show_events",
				"pattern"    => "_admin_/events",
				"controller" => "admin_event",
				"action" 	 => "showEvents"
		),
		
		// Admin Artist
		array(
				"name" 		 => "admin_add_artist",
				"pattern"    => "_admin_/artist/add",
				"controller" => "admin_artist",
				"action" 	 => "addArtist"
		),
		array(
				"name" 		 => "admin_show_artists",
				"pattern"    => "_admin_/artists",
				"controller" => "admin_artist",
				"action" 	 => "showArtists"
		),
		
		// Admin Theme
		array(
				"name" 		 => "admin_delete_theme",
				"pattern" 	 => "_admin_/theme/delete/:id",
				"controller" => "admin_theme",
				"action" 	 => "deleteTheme"
		),
		array(
				"name" 		 => "admin_update_theme",
				"pattern" 	 => "_admin_/theme/update/:id",
				"controller" => "admin_theme",
				"action" 	 => "updateTheme"
		),
		array(
				"name" 		 => "admin_add_theme",
				"pattern"    => "_admin_/themes/add",
				"controller" => "admin_theme",
				"action" 	 => "addTheme"
		),
		
		// Admin Article
		array(
				"name" 		 => "admin_delete_article",
				"pattern" 	 => "_admin_/article/delete/:id",
				"controller" => "admin_article",
				"action" 	 => "deleteArticle"
		),
		array(
				"name" 		 => "admin_update_article",
				"pattern" 	 => "_admin_/article/update/:id",
				"controller" => "admin_article",
				"action" 	 => "updateArticle"
		),
		array(
				"name" 		 => "admin_add_article",
				"pattern"    => "_admin_/articles/add",
				"controller" => "admin_article",
				"action" 	 => "addArticle"
		),
		array(
				"name" 		 => "admin_show_articles",
				"pattern"    => "_admin_/articles",
				"controller" => "admin_article",
				"action" 	 => "showArticles"
		),
		
		// Admin picture
		array(
				"name" 		 => "admin_add_picture",
				"pattern"    => "_admin_/pictures/add",
				"controller" => "admin_picture",
				"action" 	 => "addPicture"
		),
		array(
				"name" 		 => "admin_show_pictures",
				"pattern"    => "_admin_/pictures",
				"controller" => "admin_picture",
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