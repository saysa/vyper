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
