<?php

namespace application\controllers;

use application\models\Article;
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

        $xml .= "</urlset>\n";

        $fp = fopen("sitemap.xml", 'w+');
        fputs($fp, $xml);
        fclose($fp);
    }
}
