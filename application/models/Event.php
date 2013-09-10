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
	
	protected $_title;
	
	protected $_realTitle;
	
	protected $_description;
	
	protected $_descriptionReal;
	
	protected $_location; // id location
	
	protected $_type; // concert, event
	
	protected $_relatedTour;
	
	protected $_relatedArtists;
	
	protected $_artistsKeywords;
	
	protected $_date;
	
	protected $_time;
	
	protected $_price; // text
	
	protected $_buy1;
	protected $_buy2;
	protected $_buy3;
	
	protected $_buy;
}
