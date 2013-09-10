<?php

namespace application\models;

use Framework\Shared\Model;

class Article extends Model {
	
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
	 * @label title
	 */
	protected $_title;
	
	/**
	 * @column
	 * @readwrite
	 * @type text
	 * @length 255
	 *
	 * @validate required
	 * @label description
	 */
	protected $_description;
	
	/**
	 * @column
	 * @readwrite
	 * @type text
	 * 
	 * @validate required
	 * @label text
	 */
	protected $_text;
	
	/**
	 * @column
	 * @readwrite
	 * @type text
	 *
	 * @validate required
	 * @label text
	 */
	protected $_text;
	
	/**
	 * @column
	 * @readwrite
	 * @type integer
	 */
	protected $_user;
	
	
}