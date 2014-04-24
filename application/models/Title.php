<?php

namespace application\models;

use Framework\Shared\Model;

/**
 * Quiet, un single
 * @author sbo
 *
 */
class Title extends Model {

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
    protected $_discoId;

    /**
     * @column
     * @readwrite
     * @type text
     * @length 5
     *
     * @validate required
     */
    protected $_number; // text 01, 02, 03

    /**
     * @column
     * @readwrite
     * @type text
     * @length 255
     *
     * @validate required
     */
	protected $_title;

    /**
     * @column
     * @readwrite
     * @type text
     * @length 255
     */
	protected $_titleReal; // nom en jap
}
