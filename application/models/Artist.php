<?php

namespace application\models;

use Framework\Shared\Model;
use Framework\StringMethods;

class Artist extends Model {
	
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
	protected $_status; // online, update, offline, incomplete, locked
	
	/**
	 * @column
	 * @readwrite
	 * @type text
	 * @length 255
	 *
	 * @validate required
	 * @label name
	 */
	protected $_name;

    /**
     * @column
     * @readwrite
     * @type text
     */
    protected $_profile;

    /**
     * @column
     * @readwrite
     * @type text
     */
    protected $_biography;

    /**
     * @column
     * @readwrite
     * @type text
     * @length 255
     */
    protected $_author;

    /**
     * @column
     * @readwrite
     * @type text
     * @length 255
     */
    protected $_translator;
	
	/**
	 * @column
	 * @readwrite
	 * @type text
	 * @length 255
	 *
	 * @validate required
	 * @label keywords
	 */
	protected $_keywords;

    /**
     * @column
     * @readwrite
     * @type integer
     * @validate required
     *
     * @related Picture
     */
    protected $_relatedPicture;

    /**
     * @readwrite
     */
    protected $_stringURL;

    public function getStringUrl($id)
    {
        $artist = Artist::first(array("id=?" => $id));
        return StringMethods::filterURL($artist->name);
    }
}
