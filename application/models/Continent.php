<?php

namespace application\models;

use Framework\Shared\Model;

class Continent extends Model {
	
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
	 * @index
	 *
	 * @validate required
	 * @label name
	 */
	protected $_name;
}
