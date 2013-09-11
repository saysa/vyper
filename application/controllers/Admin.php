<?php

namespace application\controllers;

class Admin extends \Framework\Shared\Controller {
	
	public function __construct($options = array())
	{
		parent::__construct(array(
				"defaultLayout" => "layouts/admin/admin"
		));
	}
	
	/**
	 * @before _secure, _admin
	 */
	public function showPictures()
	{
		
	}
}
