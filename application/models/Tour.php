<?php

namespace application\models;

class Tour extends \Framework\Shared\Model {
	
	/**
	 * @column
	 * @readwrite
	 * @primary
	 * @type autonumber
	 */
	protected $_id;
	
	protected $_title;
	
	protected $_realTitle;
	
	protected $_description;
	
	protected $_descriptionLocal;
	
	/**
	 * tour / festival
	 * @var unknown_type
	 */
	protected $_type;
	
	/**
	 * world / africa / america / East-Asia & Oceania / Europe / Middle East
	 * @var unknown_type
	 */
	protected $_continent;
	
	protected $_start; // datetime
	
	protected $_end; // datetime
	
	protected $_relatedArtists; // id
	
	protected $_artistsKeywords; // a voir

}
