<?php

namespace application\models;

use Framework\Shared\Model;

class ItemVisite extends Model {
	
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
     */
    protected $_type;

    /**
     * @column
     * @readwrite
     * @type integer
     */
    protected $_itemId;


    /**
	 * @column
	 * @readwrite
	 * @type text
	 * @length 255
	 *
	 */
	protected $_ip;

    /**
     * @column
     * @readwrite
     * @type integer
     */
    protected $_timestampVisit;
}

