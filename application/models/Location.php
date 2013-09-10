<?php

namespace application\models;

use Framework\Shared\Model;

class Location extends Model {
	
	/**
	 * @column
	 * @readwrite
	 * @primary
	 * @type autonumber
	 */
	protected $_id;
	
	protected $_name;
	
	protected $_nameReal;
	
	protected $_town;
	
	protected $_townReal;
	
	protected $_country; // id
	
	protected $_address;
	
	protected $_access;
	
	protected $_url;
	
	protected $_googlemap;
}
