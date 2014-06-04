<?php

namespace Framework\Shared;

use application\models\ItemVisite;
use application\models\Theme;
use application\models\User;

use Framework\Events;

use Framework\Registry;

use Framework\Router as Router;
use application\models\Event;
use application\models\Picture;
use application\models\Article;
use Framework\StringMethods;


class Controller extends \Framework\Controller {

	/**
	 * @readwrite
	 */
	protected $_user;

	/**
	 * Overrrides the $_user setter method
	 * @param unknown_type $user
	 * @return \Framework\Shared\Controller
	 */
	public function setUser($user)
	{
		$session = Registry::get("session");

		if ($user)
		{
			$session->set("user", $user->id);
		}
		else
		{
			$session->erase("user");
		}

		$this->_user = $user;
		return $this;
	}

    public function incrementeVisite($type, $itemId)
    {
        $time = time();
        $ip = $_SERVER['REMOTE_ADDR'];
        $waiting_time = $time - 3600; // 1 hour

        $nbVisite = ItemVisite::count(array("type" => $type, "itemId=?" => $itemId, "ip=?" => $ip, "timestampVisit>?" => $waiting_time));

        if ($nbVisite=="0")
        {
            $itemVisite = new ItemVisite(array(
                "type"           => $type,
                "itemId"         => $itemId,
                "ip" 	         => $ip,
                "timestampVisit" => $time
            ));

            if ($itemVisite->validate())
            {
                $itemVisite->save();
                return true;
            }
        }

        return false;
    }

	public function __construct($options=array())
	{
		parent::__construct($options);

		// connect to database
		$database = \Framework\Registry::get("database");
		$database->connect();

		// schedule: load user from session into the controller
		// retrives a user row based on session data
		// it will occur before any action hooks or actions are executed
		Events::add("framework.router.beforehooks.before", function($parameters) {

			// var_dump("framework.router.beforehooks.before");

			$session = Registry::get("session");
			$controller = Registry::get("controller");
			$user = $session->get("user");
			// var_dump($user);

			//$user = unserialize($session->get("user", null));

			if ($user)
			{
				//echo "load user $user from session";
				//echo " - Set $user dans $ controller->user";
				$controller->user = User::first(array(
					"id = ?" => $user
				));
			}
		});

		// schedule: save user to session
		// stores a user reference to the session
		// it will occur after all the action hooks and actions are executed
		Events::add("framework.router.afterhooks.after", function($parameters) {

			//var_dump("framework.router.afterhooks.after");

			$controller = Registry::get("controller");

			if ($controller->user)
			{
				//echo "save user to session";
				//echo " - SET ! set 'user', " . $controller->user->id;
				$session = Registry::get("session");
				$session->set("user", $controller->user->id);
			}
		});

		Events::add("framework.router.afterhooks.after", function($parameters) {
			$controller = Registry::get("controller");
			$layout = $this->getLayoutView();
			$view = $controller->getActionView();
			if ($controller->getUser())
			{
				
				$account = new \application\components\Account\Account;
				$account->initialize(
					"Mon Compte",
					$controller->getUser()->first,
					$controller->getUser()->last,
					$controller->getUser()->admin
				);

				foreach ($account->templateVar() as $template_var => $var)
				{
					$view->set($template_var, $var);
				}
			}

            /**
             * Side popular
             */
            $database = Registry::get("database");
            $queryPdo = $database->query();
            $stmt = $queryPdo->connector->execute("SELECT article.id, count(*) AS nb FROM article
INNER JOIN itemvisite ON article.id = itemvisite.itemId
WHERE itemvisite.type = 'article'
GROUP BY itemvisite.itemId
ORDER BY nb DESC
LIMIT 0,10");
            $rows = array();
            for ($i=0; $i<$stmt->rowCount();$i++)
            {
                $rows[]=$stmt->fetch(\PDO::FETCH_OBJ);
            }
            $popular_articles = array();
            foreach($rows as $oResult)
            {
                $popular_articles[] = Article::first(array("id=?" => $oResult->id));
            }
            $layout->set("popular_articles", $popular_articles);

            /**
             * Side popular events
             */
            $queryPdo = $database->query();
            $stmt = $queryPdo->connector->execute("SELECT event.id, count(*) AS nb FROM event
INNER JOIN itemvisite ON event.id = itemvisite.itemId
WHERE itemvisite.type = 'event'
GROUP BY itemvisite.itemId
ORDER BY nb DESC
LIMIT 0,5");
            $rows = array();
            for ($i=0; $i<$stmt->rowCount();$i++)
            {
                $rows[]=$stmt->fetch(\PDO::FETCH_OBJ);
            }
            $popular_events = array();
            foreach($rows as $oResult)
            {
                $popular_events[] = Event::first(array("id=?" => $oResult->id));
            }
            $layout->set("popular_events", $popular_events);

            /**
			 * Side Next Event
			 */
			$event = Event::all(array("live=?" => "1", "date>?" => "expression NOW()"), array("*"), "date", null, "0,1");
			if (sizeof($event) > 0) {


				$nextEvent = new \application\components\NextEvent\NextEvent;
				$nextEvent->initialize(
						$event[0]->getId(),
						$event[0]->getTitle(),
						$event[0]->getDate(),
                        $event[0]->getTown($event[0]->id),
                        $event[0]->getCountry($event[0]->id)
				);
					
				foreach ($nextEvent->templateVar() as $template_var => $var)
				{
					$layout->set($template_var, $var);
				}
			}

            /**
             * Side Galerie
             */
            $queryPdo = $database->query();
            $stmt = $queryPdo->connector->execute("SELECT picture.id FROM picture
INNER JOIN album ON album.id = picture.album
WHERE album.category = '1' ORDER BY picture.id DESC
LIMIT 0,9");
            $rows = array();
            for ($i=0; $i<$stmt->rowCount();$i++)
            {
                $rows[]=$stmt->fetch(\PDO::FETCH_OBJ);
            }
            $recent_pictures = array();
            foreach($rows as $oResult)
            {
                $recent_pictures[] = Picture::first(array("id=?" => $oResult->id));
            }
            foreach ($recent_pictures as $picture)
            {
                /* Set front Release Date */
                $image_path = Picture::get_path($picture->id);
                $filename = $picture->filename;
                $picture->name     = $image_path . "75x75-" . $filename;
                $picture->filename = $image_path . $filename;

            }
            $layout->set("recent_pictures", $recent_pictures);

            /**
             * Facebook fans
             */
            $fb = @json_decode(file_get_contents('https://graph.facebook.com/vyperjmusic'));
            if(is_object($fb))
            {
                $fb_fans = number_format($fb->likes);
                $layout->set("fb_fans", $fb_fans);
            }

            /**
             * Twitter followers
             */

            //$tw_followers = $this->getTwitterFollowers('VYPER_JMusic');
            //$layout->set("tw_followers", $tw_followers);

            /**
			 * Side recent articles
			 */
			$recent_articles = Article::all(array("deleted=?"=>false), array("*"), "created", "desc", "0,10");
			foreach ($recent_articles as $article)
			{
				/* Set front Release Date */
                $article->relatedTheme = \application\models\Theme::first(array("id=?" => $article->relatedTheme));
			}
			$layout->set("recent_articles", $recent_articles);

            /**
             * Themes article : show in menu
             */
            $themes = Theme::all(array("deleted=?" => false, "showInMenu=?" => true));
            $layout->set("themes_showInMenu", $themes);

            /**
			 * Ticker articles
			 */
			$ticker_articles = Article::all(array("deleted=?"=>false), array("*"), "releaseDate", "desc", "0,10");
			$layout->set("ticker_articles", $ticker_articles);
			
			// set genreric path to the view
			$layout->set("base_url", BASE_URL);
			$controller->getActionView()->set("base_url", BASE_URL);
			$layout->set("path_css", CSS);
			$layout->set("path_js" , JS);
			$layout->set("path_img" , IMG);
            $controller->getActionView()->set("path_img", IMG);

			$layout->set("vyper_twitter", "https://twitter.com/VYPER_JMusic");
			$layout->set("vyper_facebook", "https://www.facebook.com/vyperjmusic");
			$layout->set("vyper_youtube", "http://www.youtube.com/channel/UCodQ1kpPKxIG3NrE6q2iaaw");
            $layout->set("vyper_google_plus", "https://plus.google.com/117439863059039345672");

		});

		// schedule: disconnect from database
		Events::add("framework.controller.destruct.after", function($name) {
			$database = Registry::get("database");
			$database->disconnect();
		});






	}

    /*private function getTwitterFollowers($screenName)
    {
        // some variables
        $consumerKey = 'YOUR_CONSUMER_KEY';
        $consumerSecret = 'YOUR_CONSUMER_SECRET';
        $token = get_option('cfTwitterToken');

        // get follower count from cache
        $numberOfFollowers = get_transient('cfTwitterFollowers');

        // cache version does not exist or expired
        if (false === $numberOfFollowers) {
            // getting new auth bearer only if we don't have one
            if(!$token) {
                // preparing credentials
                $credentials = $consumerKey . ':' . $consumerSecret;
                $toSend = base64_encode($credentials);

                // http post arguments
                $args = array(
                    'method' => 'POST',
                    'httpversion' => '1.1',
                    'blocking' => true,
                    'headers' => array(
                        'Authorization' => 'Basic ' . $toSend,
                        'Content-Type' => 'application/x-www-form-urlencoded;charset=UTF-8'
                    ),
                    'body' => array( 'grant_type' => 'client_credentials' )
                );

                add_filter('https_ssl_verify', '__return_false');
                $response = wp_remote_post('https://api.twitter.com/oauth2/token', $args);

                $keys = json_decode(wp_remote_retrieve_body($response));

                if($keys) {
                    // saving token to wp_options table
                    update_option('cfTwitterToken', $keys->access_token);
                    $token = $keys->access_token;
                }
            }
            // we have bearer token wether we obtained it from API or from options
            $args = array(
                'httpversion' => '1.1',
                'blocking' => true,
                'headers' => array(
                    'Authorization' => "Bearer $token"
                )
            );

            add_filter('https_ssl_verify', '__return_false');
            $api_url = "https://api.twitter.com/1.1/users/show.json?screen_name=$screenName";
            $response = wp_remote_get($api_url, $args);

            if (!is_wp_error($response)) {
                $followers = json_decode(wp_remote_retrieve_body($response));
                $numberOfFollowers = $followers->followers_count;
            } else {
                // get old value and break
                $numberOfFollowers = get_option('cfNumberOfFollowers');
                // uncomment below to debug
                //die($response->get_error_message());
            }

            // cache for an hour
            set_transient('cfTwitterFollowers', $numberOfFollowers, 1*60*60);
            update_option('cfNumberOfFollowers', $numberOfFollowers);
        }

        return $numberOfFollowers;
    }*/

	public function render()
	{
		/* if the user and view(s) are defined,
		 * assign the user session to the view(s)
		 */

		if ($this->getUser())
		{
			if ($this->getActionView())
			{
				$key = "user";
				if ($this->actionView->get($key, false))
				{
					$key = "__user";
				}
				$this->getActionView()
					->set($key, $this->getUser());
			}

			if ($this->getLayoutView())
			{
				$key = "user";
				if ($this->layoutView->get($key, false))
				{
					$key = "__user";
				}
				$this->getLayoutView()
					->set($key, $this->getUser());
			}
		}

		parent::render();
	}

	/**
	 * @protected
	 */
	public function _secure()
	{
		$user = $this->getUser();
		if (!$user)
		{
			header("Location: /login");
			exit();
		}
	}

	/**
	 * @protected
	 */
	public function _admin()
	{
		if (!$this->user->admin)
		{
			throw new Router\Exception\Controller("Not a valid admin user account");
		}
	}
	
	
}
