<?php

namespace application\controllers;

use application\models\Album;
use application\models\Article;
use application\models\Artist;
use application\models\Event;
use application\models\Theme;
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

    public function updateSitemap()
    {
        //-- Contenu xml sitemap
        $xml = "<?xml version=\"1.0\" encoding=\"UTF-8\" ?>\n";
        $xml .= "<urlset xmlns=\"http://www.sitemaps.org/schemas/sitemap/0.9\">\n";
        $xml .= "<url>\n";
        $xml .= "<loc>http://www.vyper-jmusic.com</loc>\n";
        $xml .= "<changefreq>daily</changefreq>\n";
        $xml .= "<priority>1.0</priority>\n";
        $xml .= "</url>\n";

        $xml .= "<url>\n";
        $xml .= "<loc>http://vyper-jmusic.com/news</loc>\n";
        $xml .= "<changefreq>daily</changefreq>\n";
        $xml .= "</url>\n";

        $xml .= "<url>\n";
        $xml .= "<loc>http://vyper-jmusic.com/interviews</loc>\n";
        $xml .= "<changefreq>daily</changefreq>\n";
        $xml .= "</url>\n";

        $xml .= "<url>\n";
        $xml .= "<loc>http://vyper-jmusic.com/live-reports</loc>\n";
        $xml .= "<changefreq>daily</changefreq>\n";
        $xml .= "</url>\n";

        $xml .= "<url>\n";
        $xml .= "<loc>http://vyper-jmusic.com/chroniques</loc>\n";
        $xml .= "<changefreq>daily</changefreq>\n";
        $xml .= "</url>\n";

        $xml .= "<url>\n";
        $xml .= "<loc>http://vyper-jmusic.com/galerie</loc>\n";
        $xml .= "<changefreq>monthly</changefreq>\n";
        $xml .= "</url>\n";

        $xml .= "<url>\n";
        $xml .= "<loc>http://vyper-jmusic.com/artists</loc>\n";
        $xml .= "<changefreq>monthly</changefreq>\n";
        $xml .= "</url>\n";

        $xml .= "<url>\n";
        $xml .= "<loc>http://vyper-jmusic.com/recrutement</loc>\n";
        $xml .= "<changefreq>monthly</changefreq>\n";
        $xml .= "</url>\n";

        $xml .= "<url>\n";
        $xml .= "<loc>http://vyper-jmusic.com/partenariat</loc>\n";
        $xml .= "<changefreq>monthly</changefreq>\n";
        $xml .= "</url>\n";



        $articles = Article::all(array("deleted=?"=>false));
        foreach($articles as $article)
        {
            $loc = BASE_URL . "articles/" . $article->id . "/" . $article->getStringUrl($article->id) . ".html";
            $lastmod = substr($article->modified, 0, 10);
            $xml .= "<url>\n";
            $xml .= "<loc>".$loc."</loc>\n";
            $xml .= "<lastmod>".$lastmod."</lastmod>\n";
            $xml .= "<changefreq>never</changefreq>\n";
            $xml .= "<priority>0.8</priority>\n";
            $xml .= "</url>\n";
        }

        $events = Event::all(array("deleted=?"=>false));
        foreach($events as $event)
        {
            $loc = BASE_URL . "event/" . $event->id . "/" . $event->getStringUrl($event->id) . ".html";
            $xml .= "<url>\n";
            $xml .= "<loc>".$loc."</loc>\n";
            $xml .= "<changefreq>monthly</changefreq>\n";
            $xml .= "<priority>0.8</priority>\n";
            $xml .= "</url>\n";
        }

        $artists = Artist::all(array("deleted=?"=>false));
        foreach($artists as $artist)
        {
            $loc = BASE_URL . "artist/" . $artist->id . "/" . $artist->getStringUrl($artist->id) . ".html";
            $xml .= "<url>\n";
            $xml .= "<loc>".$loc."</loc>\n";
            $xml .= "<changefreq>weekly</changefreq>\n";
            $xml .= "<priority>0.8</priority>\n";
            $xml .= "</url>\n";
        }

        $themes = Theme::all(array("deleted=?" => false, "showInMenu=?" => true));
        foreach($themes as $theme)
        {
            $loc = BASE_URL . "theme/" . $theme->id . "/1/" . $theme->getTitleUrlFormat($theme->id);
            $xml .= "<url>\n";
            $xml .= "<loc>".$loc."</loc>\n";
            $xml .= "<changefreq>monthly</changefreq>\n";
            $xml .= "<priority>0.5</priority>\n";
            $xml .= "</url>\n";
        }

        $albums = Album::all(array("deleted=?"=>false));
        foreach($albums as $album)
        {
            $loc = BASE_URL . "album/" . $album->id . "/" . $album->getTitleUrlFormat($album->id);
            $xml .= "<url>\n";
            $xml .= "<loc>".$loc."</loc>\n";
            $xml .= "<changefreq>monthly</changefreq>\n";
            $xml .= "<priority>0.7</priority>\n";
            $xml .= "</url>\n";
        }

        $xml .= "</urlset>\n";

        $fp = fopen("sitemap.xml", 'w+');
        fputs($fp, $xml);
        fclose($fp);
    }
}
