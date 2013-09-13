<?php

namespace application\models;

use Framework\Shared\Model;

class Profilebio extends Model {
	
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
	protected $_artist;
	
	/**
	 * @column
	 * @readwrite
	 * @type text
	 */
	protected $_profile;
	
	/**
	 * @column
	 * @readwrite
	 * @type text
	 */
	protected $_biography;
	
	/**
	 * @column
	 * @readwrite
	 * @type text
	 * @length 255
	 */
	protected $_author; 
	
	/**
	 * @column
	 * @readwrite
	 * @type text
	 * @length 255
	 */
	protected $_translator;
}
