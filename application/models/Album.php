<?php

namespace application\models;

use Framework\Shared\Model;
use Framework\StringMethods;

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
     * @column
     * @readwrite
     * @type text
     *
     * @label description
     */
    protected $_description;

    /**
     * @readwrite
     */
    protected $_stringURL;

    /**
     * @readwrite
     */
    protected $_cover;

    public function getTitleUrlFormat($id)
    {
        $album = Album::first(array("id=?" => $id));

        return StringMethods::filterURL($album->title) . ".html";
    }

}
