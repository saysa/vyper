<?php

namespace application\controllers;

use application\models\Album;
use application\models\Article;
use application\models\Artist;
use application\models\Disco;
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
        ->set("link_admin_show_disco",    Registry::get("router")->getPath("admin_show_discos"))
		->set("link_admin_show_tour",     Registry::get("router")->getPath("admin_show_tours"))
		->set("link_admin_show_event",    Registry::get("router")->getPath("admin_show_events"))
		->set("link_admin_show_location", Registry::get("router")->getPath("admin_show_locations"))
		;
	}

    public function redimage($img_src,$dst_w,$dst_h)
    {
        // Lit les dimensions de l'image
        $size = GetImageSize($img_src);
        $src_w = $size[0]; $src_h = $size[1];
        // Teste les dimensions tenant dans la zone
        $test_h = round(($dst_w / $src_w) * $src_h);
        $test_w = round(($dst_h / $src_h) * $src_w);
        // Si Height final non pr?cis? (0)
        if(!$dst_h) $dst_h = $test_h;
        // Sinon si Width final non pr?cis? (0)
        elseif(!$dst_w) $dst_w = $test_w;
        // Sinon teste quel redimensionnement tient dans la zone
        elseif($test_h>$dst_h) $dst_w = $test_w;
        else $dst_h = $test_h;

        // Retourne les dimensions optimales
        return array($dst_w, $dst_h);
    }

    public function updateFilInfoRss()
    {
        $copy = "Copyright © 2014. vyper-jmusic.com - Vyper Japanese Music . Tous droits réservés.";

        //-- On affecte le futur contenu du fichier xml
        $xml = "<?xml version=\"1.0\" encoding=\"UTF-8\"?><rss version=\"2.0\" xmlns:atom=\"http://www.w3.org/2005/Atom\">\n";
        $xml .= "<channel>\n";
        $xml .= "<title>Vyper Japanese Music</title>\n";
        $xml .= "<link>http://www.vyper-jmusic.com</link>\n";
        $xml .= "<description>Toutes les news de vyper-jmusic.com</description>\n";
        $xml .= "<language>fr</language>\n";
        $xml .= "<copyright>$copy</copyright>\n";
        $xml .= "<image>\n";
        $xml .= "	<title>vyper-jmusic.com</title>\n";
        $xml .= "	<url>". BASE_URL ."assets/img/logo.png</url>\n";
        $xml .= "	<link>" . BASE_URL . "</link>\n";
        $xml .= "</image>\n";
        $xml .= "<atom:link href=\"" . BASE_URL . "rss_fil_info.xml\" rel=\"self\" type=\"application/rss+xml\" />\n";

        $articles = Article::all(array("deleted=?"=>false), array("*"), "releaseDate", "desc", "0,25");
        foreach($articles as $article)
        {
            $loc = BASE_URL . "articles/" . $article->id . "/" . $article->getStringUrl($article->id) . ".html";
            $timestamp = strtotime($article->modified);
            $date = date("D, j M Y H:i:s +0200", $timestamp);
            $art = $article->description;

            $art .= "&lt;p&gt;";

            $dimensionImage = getimagesize(BASE_URL . "uploads/pic/" . $article->getRawPicture($article->id));
            if ($dimensionImage[0] > 150 || $dimensionImage[1]> 80){

                $taille_optimal = $this->redimage(BASE_URL . "uploads/pic/" . $article->getRawPicture($article->id),150,80);
                $imageRedimmensionne = true;
            }
            else $imageRedimmensionne = false;

            if($imageRedimmensionne) $art .= "&lt;img src=&quot;" . BASE_URL . "uploads/pic/" . $article->getRawPicture($article->id) . "&quot; alt=&quot;&quot;  width=&quot;".$taille_optimal[0]."&quot; height=&quot;".$taille_optimal[1]."&quot; /&gt;";
            else $art .= "&lt;img src=&quot;" . BASE_URL . "uploads/pic/" . $article->getRawPicture($article->id) . "&quot; alt=&quot;&quot; /&gt;";

            $art .= "&lt;/p&gt;";

            $xml .= "<item>\n";
            $xml .= "<title>" . $article->title . "</title>\n";
            $xml .= "<link>" . $loc . "</link>\n";
            $xml .= "<pubDate>" . $date . "</pubDate>\n";
            $xml .= "<description>" . $art . "</description>\n";
            $xml .= "<guid>".$loc."</guid>\n";
            $xml .= "</item>\n";
        }


        $xml .= "</channel>\n";
        $xml .= "</rss>\n";

        $fp = fopen("rss_fil_info.xml", 'w+');
        fputs($fp, $xml);
        fclose($fp);

        return $this;
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
        $xml .= "<loc>http://www.vyper-jmusic.com/rss_fil_info.xml</loc>\n";
        $xml .= "<changefreq>daily</changefreq>\n";
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

        $discos = Disco::all(array("deleted=?"=>false));
        foreach($discos as $disco)
        {
            $loc = BASE_URL . "disco/" . $disco->id . "/" . $disco->getStringUrl($disco->id) . ".html";
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

        return $this;
    }
}
