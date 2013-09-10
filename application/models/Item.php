<?php

namespace application\models;

use Framework\Shared\Model;

/**
 * Album 
 * @author sbo
 *
 */
class Item extends Model {
	
	protected $_id;
	
	protected $_status; // online, validation needed, created, incomplete, offline
	
	protected $_title;
	
	protected $_titleReal;
	
	protected $_catalogNumber;
	
	protected $_medium; // id
	
	protected $_type; // id
	
	protected $_date;
	
	protected $_label;
	
	protected $_details;
	
	protected $_country;
	
	protected $_continent;
	
	protected $_file; // id
}

