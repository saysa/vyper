<?php

namespace application\models;

use Framework\Shared\Model;

class Album extends Model {

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
     * @validate required
     * @label title
     */
	protected $_title;

    /**
     * @column
     * @readwrite
     * @type integer
     * @index
     */
    protected $_category; // artist, concert, interview, event, other, contest

    /**
     * @readwrite
     */
    protected $_stringURL;

}
