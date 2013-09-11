<?php

namespace application\controllers;

use application\components\Auth\Auth;

use Framework\RequestMethods;

use Framework\Registry;

use application\models\User;

use Framework\View;

class Admin extends \Framework\Shared\Controller {
	
	public function __construct($options = array())
	{
		parent::__construct(array(
			"defaultLayout" => "layouts/admin/login"
		));
	}
	
	/**
	 * @before _secure, _admin
	 */
	public function index()
	{
		
	}
	
	public function login()
	{
		$view = $this-> getActionView();
		$auth = new Auth();
		
		if (RequestMethods::post("login"))
		{
			$login = RequestMethods::post("user_login");
			$password = RequestMethods::post("password");
			
			if (!$auth->validate($login, $password)) 
			{
				if ($auth->getError_login())
				{
					$view->set("login_error", "Login not provided");
				}
				
				if ($auth->getError_password())
				{
					$view->set("password_error", "Password not provided");
				}
			}
			else 
			{
				if (!$auth->match($login, $password))
				{
					$view->set("password_error", "Login and/or password are incorrect");
				}
				else
				{
					$session = Registry::get("session");
					$session->set("user", $auth->match($login, $password));
					
					$this->redirect("home");
					exit();
				}
			}
		}
	}
	
	public function register()
	{
		$view =  $this-> getActionView();
		
		if (RequestMethods::post("register"))
		{
			$user = new User(array(
				"first" => RequestMethods::post("first"),
				"last" => RequestMethods::post("last"),
				"nickname" => RequestMethods::post("nickname"),
				"login" => RequestMethods::post("login"),
				"password" => RequestMethods::post("password")
			));
			
			if ($user->validate())
			{
				$user->save();
			}
			
			$view
				->set("error_first", \Framework\Shared\Markup::errors($user->getErrors(), "first"))
				->set("error_last", \Framework\Shared\Markup::errors($user->getErrors(), "last"))
				->set("error_nickname", \Framework\Shared\Markup::errors($user->getErrors(), "nickname"))
				->set("error_login", \Framework\Shared\Markup::errors($user->getErrors(), "login"))
				->set("error_password", \Framework\Shared\Markup::errors($user->getErrors(), "password"))
				->set("errors", $user->getErrors());
		}
	}
}
