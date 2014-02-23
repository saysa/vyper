<?php

namespace application\models;

use Framework\Shared\Model;

class Picture extends Model {
	
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
	 * @index
	 */
	protected $_category; // artist, concert, interview, event, other, contest
	
	/**
	 * @column
	 * @readwrite
	 * @type text
	 * @length 255
	 *
	 * 
	 * @label name
	 */
	protected $_filename;
	
	/**
	 * @column
	 * @readwrite
	 * @type text
	 * @length 255
	 * @index
	 *
	 * @validate required, min(3)
	 * @label name
	 */
	protected $_name;
	
	/**
	 * @column
	 * @readwrite
	 * @type text
	 * @length 32
	 */
	protected $_mime;
	
	/**
	 * @column
	 * @readwrite
	 * @type integer
	 */
	protected $_size;
	
	/**
	 * @column
	 * @readwrite
	 * @type integer
	 */
	protected $_width;
	
	/**
	 * @column
	 * @readwrite
	 * @type integer
	 */
	protected $_height;
}
