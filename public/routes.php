<?php

// define routes

$routes = array(
		
		// albums
        array(
            "pattern" => "galerie",
            "controller" => "album",
            "action" => "showAll",
            "parameters" => array("galerie", "galerie")
        ),
        array(
            "pattern" => "galerie/page/:p",
            "controller" => "album",
            "action" => "showAll",
            "parameters" => array("galerie", "galerie")
        ),
        array(
            "pattern" => "album/:id/:p.html",
            "controller" => "album",
            "action" => "showAlbum"
        ),

		// Ajax
		array(
            "name" 		 => "admin_event_artist_link",
            "pattern"    => "_admin_/ajax/event_artist_link",
            "controller" => "admin_ajax",
            "action" 	 => "eventArtistLink"
		),
        array(
            "name" 		 => "admin_article_artist_link",
            "pattern"    => "_admin_/ajax/article_artist_link",
            "controller" => "admin_ajax",
            "action" 	 => "articleArtistLink"
        ),
        array(
            "name" 		 => "admin_album_artist_link",
            "pattern"    => "_admin_/ajax/album_artist_link",
            "controller" => "admin_ajax",
            "action" 	 => "albumArtistLink"
        ),
    array(
        "name" 		 => "admin_disco_artist_link",
        "pattern"    => "_admin_/ajax/disco_artist_link",
        "controller" => "admin_ajax",
        "action" 	 => "discoArtistLink"
    ),


		array(
            "name" 		 => "admin_event_artist_link_delete",
            "pattern"    => "_admin_/ajax/event_artist_link_delete",
            "controller" => "admin_ajax",
            "action" 	 => "eventArtistLinkDelete"
		),
        array(
            "name" 		 => "admin_article_artist_link_delete",
            "pattern"    => "_admin_/ajax/article_artist_link_delete",
            "controller" => "admin_ajax",
            "action" 	 => "articleArtistLinkDelete"
        ),
        array(
            "name" 		 => "admin_album_artist_link_delete",
            "pattern"    => "_admin_/ajax/album_artist_link_delete",
            "controller" => "admin_ajax",
            "action" 	 => "albumArtistLinkDelete"
        ),
    array(
        "name" 		 => "admin_disco_artist_link_delete",
        "pattern"    => "_admin_/ajax/disco_artist_link_delete",
        "controller" => "admin_ajax",
        "action" 	 => "discoArtistLinkDelete"
    ),

        array(

            "pattern"    => "_admin_/ajax/switch_article_highlight",
            "controller" => "admin_ajax",
            "action" 	 => "switchArticleHighlight"
        ),

    array(

        "pattern"    => "_admin_/ajax/switch_theme_show_in_menu",
        "controller" => "admin_ajax",
        "action" 	 => "switchThemeShowInMenu"
    ),
        array(

            "pattern"    => "_admin_/ajax/add_title_to_disco",
            "controller" => "admin_ajax",
            "action" 	 => "addTitleDisco"
        ),
    array(

        "pattern"    => "_admin_/ajax/delete_title_from_disco",
        "controller" => "admin_ajax",
        "action" 	 => "deleteTitleDisco"
    ),



		
		
		// Admin Location
		array(
				"name" 		 => "admin_add_location",
				"pattern"    => "_admin_/location/add",
				"controller" => "admin_location",
				"action" 	 => "addLocation"
		),
		array(
				"name" 		 => "admin_show_locations",
				"pattern"    => "_admin_/locations",
				"controller" => "admin_location",
				"action" 	 => "showLocations"
		),
		array(
				"name" 		 => "admin_update_location",
				"pattern" 	 => "_admin_/location/update/:id",
				"controller" => "admin_location",
				"action" 	 => "updateLocation"
		),
		
		// Admin Tour
		array(
				"name" 		 => "admin_add_tour",
				"pattern"    => "_admin_/tour/add",
				"controller" => "admin_tour",
				"action" 	 => "addTour"
		),
		array(
				"name" 		 => "admin_update_tour",
				"pattern" 	 => "_admin_/tour/update/:id",
				"controller" => "admin_tour",
				"action" 	 => "updateTour"
		),
		array(
				"name" 		 => "admin_show_tours",
				"pattern"    => "_admin_/tours",
				"controller" => "admin_tour",
				"action" 	 => "showTours"
		),
		// Admin Event
		array(
				"name" 		 => "admin_add_event",
				"pattern"    => "_admin_/event/add",
				"controller" => "admin_event",
				"action" 	 => "addEvent"
		),
		array(
				"name" 		 => "admin_update_event",
				"pattern" 	 => "_admin_/event/update/:id",
				"controller" => "admin_event",
				"action" 	 => "updateEvent"
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
				"name" 		 => "admin_update_artist",
				"pattern" 	 => "_admin_/artist/update/:id",
				"controller" => "admin_artist",
				"action" 	 => "updateArtist"
		),
		array(
				"name" 		 => "admin_show_artists",
				"pattern"    => "_admin_/artists",
				"controller" => "admin_artist",
				"action" 	 => "showArtists"
		),

    // Admin Disco
    array(
        "name" 		 => "admin_add_disco",
        "pattern"    => "_admin_/disco/add",
        "controller" => "admin_disco",
        "action" 	 => "addDisco"
    ),
    array(
        "name" 		 => "admin_update_disco",
        "pattern" 	 => "_admin_/disco/update/:id",
        "controller" => "admin_disco",
        "action" 	 => "updateDisco"
    ),
    array(
        "name" 		 => "admin_show_discos",
        "pattern"    => "_admin_/discos",
        "controller" => "admin_disco",
        "action" 	 => "showDiscos"
    ),

        // Admin album
        array(
            "name" 		 => "admin_update_album",
            "pattern"    => "_admin_/album/update/:id",
            "controller" => "admin_album",
            "action" 	 => "updateAlbum"
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

        // Admin album
        array(
            "name" 		 => "admin_add_album",
            "pattern"    => "_admin_/albums/add",
            "controller" => "admin_album",
            "action" 	 => "addAlbum"
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
		/*array(
				"name" 		 => "news",
				"pattern"    => "news",
				"controller" => "news",
				"action" 	 => "index"
		),*/
		
		// news all
		array(
				"pattern" => "news",
				"controller" => "article",
				"action" => "showAll",
				"parameters" => array("news", "news")
		),
		array(
				"pattern" => "news/page/:p",
				"controller" => "article",
				"action" => "showAll",
				"parameters" => array("news", "news")
		),
		array(
				"pattern" => "interviews",
				"controller" => "article",
				"action" => "showAll",
				"parameters" => array("interview", "interviews")
		),
		array(
				"pattern" => "interviews/page/:p",
				"controller" => "article",
				"action" => "showAll",
				"parameters" => array("interview", "interviews")
		),
		array(
				"pattern" => "live-reports",
				"controller" => "article",
				"action" => "showAll",
				"parameters" => array("live report", "live-reports")
		),
		array(
				"pattern" => "live-reports/page/:p",
				"controller" => "article",
				"action" => "showAll",
				"parameters" => array("live report", "live-reports")
		),
		array(
				"pattern" => "chroniques",
				"controller" => "article",
				"action" => "showAll",
				"parameters" => array("chronique", "chroniques")
		),
		array(
				"pattern" => "chroniques/page/:p",
				"controller" => "article",
				"action" => "showAll",
				"parameters" => array("chronique", "chroniques")
		),
		
		// article pattern
		array(
				"pattern" => "articles/:id/:p.html",
				"controller" => "article",
				"action" => "showArticle"
		),

        // theme pattern
        array(
            "pattern" => "theme/:id/:page/:p.html",
            "controller" => "theme",
            "action" => "showTheme",

        ),
		
		// event pattern
		/*
		 * Duplicate pattern for search engines optimization
		 */
		array(
				"pattern" => "concert/:id/:p.html",
				"controller" => "event",
				"action" => "showEvent"
		),
		array(
				"pattern" => "event/:id/:p.html",
				"controller" => "event",
				"action" => "showEvent"
		),

    // disco pattern
    array(
        "pattern" => "disco/:id/:p.html",
        "controller" => "disco",
        "action" => "showDisco"
    ),

        // artist pattern
        array(
            "pattern" => "artist/:id/:p.html",
            "controller" => "artist",
            "action" => "showArtist"
        ),
    array(
        "pattern" => "artist-discography/:id/:p.html",
        "controller" => "artist",
        "action" => "showDisco"
    ),

        // artist all
        array(
            "pattern" => "artists",
            "controller" => "artist",
            "action" => "showAll",
            "parameters" => array("artists", "artists")
        ),
        array(
            "pattern" => "artists/page/:p",
            "controller" => "artist",
            "action" => "showAll",
            "parameters" => array("artists", "artists")
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

    // Static page
    array(
        "name" 		 => "a_propos",
        "pattern" 	 => "a_propos",
        "controller" => "statique",
        "action" 	 => "aPropos"
    ),
    array(
        "name" 		 => "contact",
        "pattern" 	 => "contact",
        "controller" => "statique",
        "action" 	 => "contact"
    ),
    array(
        "name" 		 => "cgu",
        "pattern" 	 => "conditions_utilisation",
        "controller" => "statique",
        "action" 	 => "cgu"
    ),
    array(
        "name" 		 => "recrutement",
        "pattern" 	 => "recrutement",
        "controller" => "statique",
        "action" 	 => "recrutement"
    ),
    array(
        "name" 		 => "partenariat",
        "pattern" 	 => "partenariat",
        "controller" => "statique",
        "action" 	 => "partenariat"
    ),
    array(
        "name" 		 => "resultats",
        "pattern" 	 => "resultats",
        "controller" => "statique",
        "action" 	 => "googleResults"
    ),
    array(
        "name" 		 => "preco00",
        "pattern" 	 => "vyper-magazine-vol-000",
        "controller" => "statique",
        "action" 	 => "preco00"
    ),
    array(
        "name" 		 => "preco01",
        "pattern" 	 => "vyper-magazine-vol-001",
        "controller" => "statique",
        "action" 	 => "preco01"
    ),
    array(
        "name" 		 => "preco02",
        "pattern" 	 => "vyper-magazine-vol-002",
        "controller" => "statique",
        "action" 	 => "preco02"
    ),
    array(
        "name" 		 => "page404",
        "pattern" 	 => "page404",
        "controller" => "statique",
        "action" 	 => "page404"
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