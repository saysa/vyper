<?php

namespace application\models;

use Framework\Shared\Model;

/**
 * 
 * @author sbo
 *
 * Model de relation c'est tout
 */

class Tracklist extends Model {
	
	protected $_id;
	
	protected $_number; // text 01, 02, 03 
	
	protected $_idItem;
	
	protected $_idTitle;
}

