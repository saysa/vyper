<?php

namespace application\models;

use Framework\Shared\Model;
use Framework\StringMethods;

class Theme extends Model {
	
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
	 * @validate required, min(3)
	 * @label title
	 */
	protected $_title;

    /**
     * @column
     * @readwrite
     * @type boolean
     */
    protected $_showInMenu;

    public function getTitleUrlFormat($id)
    {
        $theme = Theme::first(array("id=?" => $id));

        return StringMethods::filterURL($theme->title) . ".html";
    }
}
