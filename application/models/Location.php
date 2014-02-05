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
	
	/**
	 * @column
	 * @readwrite
	 * @type text
	 * @length 255
	 *
	 * @validate required, min(3)
	 * @label name
	 */
	protected $_name;
	
	/**
	 * @column
	 * @readwrite
	 * @type text
	 * @length 255
	 *
	 */
	protected $_nameReal;
	
	/**
	 * @column
	 * @readwrite
	 * @type text
	 * @length 255
	 *
	 * @validate required
	 * @label town
	 */
	protected $_town;
	
	/**
	 * @column
	 * @readwrite
	 * @type text
	 * @length 255
	 *
	 */
	protected $_townReal;
	
	/**
	 * @column
	 * @readwrite
	 * @type integer
	 *
	 * @related Country
	 */
	protected $_country; // id
	
	/**
	 * @column
	 * @readwrite
	 * @type text
	 *
	 */
	protected $_address;
	
	/**
	 * @column
	 * @readwrite
	 * @type text
	 *
	 */
	protected $_access;
	
	/**
	 * @column
	 * @readwrite
	 * @type text
	 * @length 255
	 *
	 */
	protected $_url;
	
	/**
	 * @column
	 * @readwrite
	 * @type text
	 *
	 */
	protected $_googlemap;
}
