<?php

namespace application\models;

use Framework\Shared\Model;

class Country extends Model {
	
	/**
	 * @column
	 * @readwrite
	 * @primary
	 * @type autonumber
	 */
	protected $_id;
	
	protected $_name; 
}

