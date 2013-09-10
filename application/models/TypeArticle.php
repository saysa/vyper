<?php

namespace application\models;

use Framework\Shared\Model;

class TypeArticle extends Model {
	
	/**
	 * @column
	 * @readwrite
	 * @primary
	 * @type autonumber
	 */
	protected $_id;
	
	protected $_name; // contest, file, glossary, guide, information, interview, live report, news, review
}

