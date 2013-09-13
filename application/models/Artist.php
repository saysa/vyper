<?php

namespace application\models;

use Framework\Shared\Model;

class Artist extends Model {
	
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
	 * @type integer
	 */
	protected $_status; // online, update, offline, incomplete, locked
	
	/**
	 * @column
	 * @readwrite
	 * @type text
	 * @length 255
	 *
	 * @validate required
	 * @label name
	 */
	protected $_name;
	
	/**
	 * @column
	 * @readwrite
	 * @type text
	 * @length 255
	 *
	 * @validate required
	 * @label keywords
	 */
	protected $_keywords;
}
