<?php

namespace Framework\Shared;

use application\models\User;

use Framework\Events;

use Framework\Registry;

use Framework\Router as Router;
use application\models\Event;


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
			
			//$article = Article::first(array("id=?" => $id));
			$event = Event::all(array("live=?" => "1", "date>?" => "NOW()"), array("*"), null, null, "0,1");
			if (sizeof($event) > 0) {
				$nextEvent = new \application\components\NextEvent\NextEvent;
				$nextEvent->initialize(
						$event[0]->getId(),
						$event[0]->getTitle(),
						$event[0]->getDate()
				);
					
				foreach ($nextEvent->templateVar() as $template_var => $var)
				{
					$layout->set($template_var, $var);
				}
			}
			
			
			// set genreric path to the view
			$controller->getLayoutView()->set("base_url", BASE_URL);
			$controller->getActionView()->set("base_url", BASE_URL);
			$controller->getLayoutView()->set("path_css", CSS);
			$controller->getLayoutView()->set("path_js" , JS);
			$controller->getLayoutView()->set("path_img" , IMG);

		});

		// schedule: disconnect from database
		Events::add("framework.controller.destruct.after", function($name) {
			$database = Registry::get("database");
			$database->disconnect();
		});






	}

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
	
	/**
	 * @protected
	 */
	public function _filtreURL($string)
	{
		$titre_url=stripslashes($string);

		$titre_url=str_replace  ( "'"  , "-" , $titre_url  );
		$titre_url=str_replace  ( " "  , "-" , $titre_url  );
		$titre_url=str_replace  ( "\?"  , "" , $titre_url  );
		$titre_url=str_replace  ( ">"  , "" , $titre_url  );
		$titre_url=str_replace  ( "<"  , "" , $titre_url  );
		$titre_url=str_replace  ( "&quot;"  , "" , $titre_url  ); //-- "
		$titre_url=str_replace  ( "\""  , "" , $titre_url  ); //-- "
		$titre_url=str_replace  ( "/"  , "-" , $titre_url  );
		
		$titre_url=str_replace  ( "ç"  , "c" , $titre_url  );
		$titre_url=str_replace  ( "&"  , "et" , $titre_url  );
		
		$titre_url=str_replace  ( "à"  , "a" , $titre_url  );
		$titre_url=str_replace  ( "á"  , "a" , $titre_url  );
		$titre_url=str_replace  ( "â"  , "a" , $titre_url  );
		$titre_url=str_replace  ( "ä"  , "a" , $titre_url  );
		$titre_url=str_replace  ( "À"  , "a" , $titre_url  );
		$titre_url=str_replace  ( "Á"  , "a" , $titre_url  );
		$titre_url=str_replace  ( "Â"  , "a" , $titre_url  );
		$titre_url=str_replace  ( "Ä"  , "a" , $titre_url  );
		
		$titre_url=str_replace  ( "è"  , "e" , $titre_url  );
		$titre_url=str_replace  ( "é"  , "e" , $titre_url  );
		$titre_url=str_replace  ( "ê"  , "e" , $titre_url  );
		$titre_url=str_replace  ( "ë"  , "e" , $titre_url  );
		$titre_url=str_replace  ( "È"  , "e" , $titre_url  );
		$titre_url=str_replace  ( "É"  , "e" , $titre_url  );
		$titre_url=str_replace  ( "Ê"  , "e" , $titre_url  );
		$titre_url=str_replace  ( "Ë"  , "e" , $titre_url  );
		
		$titre_url=str_replace  ( "ì"  , "i" , $titre_url  );
		$titre_url=str_replace  ( "î"  , "i" , $titre_url  );
		$titre_url=str_replace  ( "ï"  , "i" , $titre_url  );
		$titre_url=str_replace  ( "Ì"  , "i" , $titre_url  );
		$titre_url=str_replace  ( "Î"  , "i" , $titre_url  );
		$titre_url=str_replace  ( "Ï"  , "i" , $titre_url  );
		
		$titre_url=str_replace  ( "ò"  , "o" , $titre_url  );
		$titre_url=str_replace  ( "ô"  , "o" , $titre_url  );
		$titre_url=str_replace  ( "ö"  , "o" , $titre_url  );
		$titre_url=str_replace  ( "Ò"  , "o" , $titre_url  );
		$titre_url=str_replace  ( "Ô"  , "o" , $titre_url  );
		$titre_url=str_replace  ( "Ö"  , "o" , $titre_url  );
		
		$titre_url=str_replace  ( "ù"  , "u" , $titre_url  );
		$titre_url=str_replace  ( "û"  , "u" , $titre_url  );
		$titre_url=str_replace  ( "ü"  , "u" , $titre_url  );
		$titre_url=str_replace  ( "Ù"  , "u" , $titre_url  );
		$titre_url=str_replace  ( "Û"  , "u" , $titre_url  );
		$titre_url=str_replace  ( "Ü"  , "u" , $titre_url  );
		
		$titre_url = urlencode($titre_url);
		
		return $titre_url;
	}
}
