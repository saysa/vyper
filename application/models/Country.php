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
	
	/**
	 * @column
	 * @readwrite
	 * @type text
	 * @length 100
	 */
	protected $_name; 
}

