<?php

namespace application\models;

use Framework\Shared\Model;

class Medium extends Model {
	
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
	 * @length 255
	 *
	 * @label name
	 */
	protected $_name; 
}

