<?php

namespace application\models;

use Framework\Shared\Model;

class RelArtistItem extends Model {
	
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
	protected $_idItem;

    /**
     * @column
     * @readwrite
     * @type text
     * @length 255
     *
     */
    protected $_type; // item, event, article, ect
}

