<?php

namespace application\models;

use Framework\Shared\Model;

class RelArtistEvent extends Model {
	
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
	protected $_idArtist;
	
	/**
	 * @column
	 * @readwrite
	 * @type integer
	 */
	protected $_idEvent;
}

