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
	
	protected $_status; // online, update, offline, incomplete, locked
	
	protected $_name;
	
	protected $_keywords;
}
