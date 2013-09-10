<?php

namespace application\controllers;

use application\models\Country;

use application\models\Text;

use application\models\News;

use application\components\Contact\Contact;

use \Twig_Loader_String;
use \Twig_Environment;

use application\components\Bloc\Bloc;

use application\components\Graph;

use application\components\header\Header;

use application\models\User;

use Framework\Registry;


class Index extends \Framework\Shared\Controller {
	
	/**
	 * @once
	 * @protected
	 */
	public function init()
	{
		echo "<p>init</p>";
	}
	
	/**
	 * @protected
	 */
	public function authenticate()
	{
		echo "<p>authenticate</p>";
	}
	

	public function index()
	{	
		$view = $this->getActionView();
		$db = Registry::get("database");
	
		
		
	}
	
	/**
	 * @protected
	 */
	public function notify()
	{
		echo "<p>notify</p>";
	}
}

