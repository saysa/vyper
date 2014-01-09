<?php

namespace application\models;

use Framework\Shared\Model;

class Event extends Model {
	
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
	 * @label real title
	 */
	protected $_realTitle;
	
	/**
	 * @column
	 * @readwrite
	 * @type text
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
	 * @label description real
	 */
	protected $_descriptionReal;
	
	/**
	 * @column
	 * @readwrite
	 * @type integer
	 */
	protected $_location; // id location
	
	/**
	 * @column
	 * @readwrite
	 * @type integer
	 */
	protected $_type; // concert, event
	
	/**
	 * @column
	 * @readwrite
	 * @type integer
	 */
	protected $_relatedTour;
	
	/**
	 * @column
	 * @readwrite
	 * @type integer
	 */
	protected $_relatedArtists;
	
	/**
	 * @column
	 * @readwrite
	 * @length 255
	 * @type text
	 */
	protected $_artistsKeywords;
	
	/**
	 * @column
	 * @readwrite
	 * @type date
	 */
	protected $_date;
	
	/**
	 * @column
	 * @readwrite
	 * @type time
	 */
	protected $_time;
	
	/**
	 * @column
	 * @readwrite
	 * @length 255
	 * @type text
	 */
	protected $_price; // text
	
	/**
	 * @column
	 * @readwrite
	 * @length 255
	 * @type text
	 */
	protected $_buy1;
	
	/**
	 * @column
	 * @readwrite
	 * @length 255
	 * @type text
	 */
	protected $_buy2;
	
	/**
	 * @column
	 * @readwrite
	 * @length 255
	 * @type text
	 */
	protected $_buy3;
	
	/**
	 * @column
	 * @readwrite
	 * @length 255
	 * @type text
	 */
	protected $_buy;
}
