<?php

namespace application\controllers;

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
		
	}
	
	public function register()
	{
		
	}
}
