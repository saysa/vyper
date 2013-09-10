<?php

namespace application\models;

use Framework\Shared\Model;

class Article extends Model {
	
	/**
	 * @column
	 * @readwrite
	 * @primary
	 * @type autonumber
	 */
	protected $_id;
	
	protected $_continent;
	
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
	 * @type text
	 * @length 255
	 *
	 * @validate required
	 * @label description
	 */
	protected $_description;
	
	/**
	 * @column
	 * @readwrite
	 * @type text
	 * 
	 * @validate required
	 * @label text
	 */
	protected $_text;
	
	/**
	 * @column
	 * @readwrite
	 * @type text
	 *
	 * @validate required
	 * @label text
	 */
	protected $_releaseDate;
	
	protected $_releaseTime;
	
	protected $_highlightDate;
	
	protected $_highlightTime;
	
	protected $_endDate;
	
	protected $_endTime;
	
	/**
	 * @column
	 * @readwrite
	 * @type integer
	 */
	protected $_author;
	
	protected $_translator;
	
	protected $_source;
	
	protected $_sourceURL;
	
	protected $_type;
	
	protected $_metaKeywords;
	
	protected $_artistsKeywords;
	
	protected $_relatedPicture;
	
	protected $_relatedGallery;
	
	protected $_relatedVideo;
	
	protected $_relatedTheme;
	
	protected $_relatedItem;
	
	protected $_relatedEvent;
	
	protected $_relatedTour;
	
	protected $_forumURL;
	
	
}