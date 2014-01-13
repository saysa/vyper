<?php

namespace application\models;

class Tour extends \Framework\Shared\Model {
	
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
	 * @label description
	 */
	protected $_description;
	
	/**
	 * @column
	 * @readwrite
	 * @type text
	 *
	 * @label description local
	 */
	protected $_descriptionLocal;
	
	
	/**
	 * @column
	 * @readwrite
	 * @type integer
	 *
	 * @validate required
	 * @related TourType
	 */
	protected $_type;
	
	/**
	 * @column
	 * @readwrite
	 * @type integer
	 *
	 * @validate required
	 * @related Continent
	 */
	protected $_continent;
	
	/**
	 * @column
	 * @readwrite
	 * @type datetime
	 *
	 * @validate required
	 * @label start
	 */
	protected $_start; // datetime
	
	/**
	 * @column
	 * @readwrite
	 * @type datetime
	 *
	 * @validate required
	 * @label end
	 */
	protected $_end; // datetime
	
	//protected $_relatedArtists; // id
	
	/**
	 * @column
	 * @readwrite
	 * @length 255
	 * @type text
	 */
	protected $_artistsKeywords; // a voir

}
