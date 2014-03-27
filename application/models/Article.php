<?php

namespace application\models;

use Framework\Shared\Model;

/**
 * 
 * @author sbo
 *
 * On peut lier des artists pour le front pouvoir afficher les related articles, news
 *
 */

class Article extends Model {
	
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
	protected $_user;
	
	/**
	 * @column
	 * @readwrite
	 * @type integer
	 */
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
	 * @type date
	 *
	 * @validate required
	 * @label Release Date
	 */
	protected $_releaseDate;
	
	/**
	 * @column
	 * @readwrite
	 * @type time
	 *
	 * @validate required
	 * @label Release time
	 */
	protected $_releaseTime;
	
	/**
	 * @column
	 * @readwrite
	 * @length 50
	 * @type text
	 * 
	 * @validate required
	 * @label Author
	 */
	protected $_author;
	
	/**
	 * @column
	 * @readwrite
	 * @length 50
	 * @type text
	 */
	protected $_translator;
	
	/**
	 * @column
	 * @readwrite
	 * @length 255
	 * @type text
	 */
	protected $_source;
	
	/**
	 * @column
	 * @readwrite
	 * @length 255
	 * @type text
	 */
	protected $_sourceURL;
	
	/**
	 * @column
	 * @readwrite
	 * @type integer
	 * 
	 * @validate required
	 */
	protected $_type;
	
	/**
	 * @column
	 * @readwrite
	 * @type text
	 * 
	 * @validate required
	 */
	protected $_metaKeywords;
	
	/**
	 * @column
	 * @readwrite
	 * @length 255
	 * @type text
	 */
	protected $_artistsKeywords;
	
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
	 * @column
	 * @readwrite
	 * @type integer
	 */
	protected $_relatedGallery;
	
	/**
	 * @column
	 * @readwrite
	 * @type integer
	 */
	protected $_relatedVideo;
	
	/**
	 * @column
	 * @readwrite
	 * @type integer
	 */
	protected $_relatedTheme;
	
	/**
	 * @column
	 * @readwrite
	 * @type integer
	 */
	protected $_relatedItem;
	
	/**
	 * @column
	 * @readwrite
	 * @type integer
	 */
	protected $_relatedEvent;
	
	/**
	 * @column
	 * @readwrite
	 * @type integer
	 */
	protected $_relatedTour;
	
	/**
	 * @column
	 * @readwrite
	 * @length 255
	 * @type text
	 */
	protected $_forumURL;
	
	/**
	 * @readwrite
	 */
	protected $_stringURL;

    public function getRawPicture($id)
    {
        $article = Article::first(array("id=?" => $id));
        $image_path = Picture::get_path($article->relatedPicture);
        return $image_path . Picture::first(array("id=?"=>$article->relatedPicture))->filename;

    }
}