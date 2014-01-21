<?php

namespace application\models;

use Framework\Shared\Model;

/**
 * 
 * @author sbo
 *
 * Faire un nouveau model pour les lien de buy text 255
 */

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
	 * @length 255
	 * @type text
	 */
	protected $_artistsKeywords;
	
	/**
	 * @column
	 * @readwrite
	 * @type date
	 * 
	 * @validate required
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
	
	
}
