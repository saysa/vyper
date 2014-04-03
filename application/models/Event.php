<?php

namespace application\models;

use Framework\Shared\Model;

/**
 * 
 * @author sbo
 *
 * Faire un nouveau model pour les lien de buy text 255
 */

class Event extends Model {
	
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
	 * @type text
	 * @length 255
	 *
	 * @label real title
	 */
	protected $_realTitle;
	
	/**
	 * @column
	 * @readwrite
	 * @type text
	 *
	 * @label description
	 */
	protected $_description;
	
	/**
	 * @column
	 * @readwrite
	 * @type text
	 *
	 * @label description real
	 */
	protected $_descriptionReal;
	
	/**
	 * @column
	 * @readwrite
	 * @type integer
	 */
	protected $_location; // id location
	
	/**
	 * @column
	 * @readwrite
	 * @type integer
	 */
	protected $_type; // concert, event
	
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
	protected $_artistsKeywords;
	
	/**
	 * @column
	 * @readwrite
	 * @type date
	 * 
	 * @validate required
	 */
	protected $_date;
	
	/**
	 * @column
	 * @readwrite
	 * @type time
	 */
	protected $_time;
	
	/**
	 * @column
	 * @readwrite
	 * @length 255
	 * @type text
	 */
	protected $_price; // text
	
	/**
	 * @column
	 * @readwrite
	 * @type integer
	 *
	 * @related Picture
	 */
	protected $_relatedPicture;
	
	/**
	 * @readwrite
	 */
	protected $_stringURL;

    public function getRawPicture($id)
    {
        $event = Event::first(array("id=?" => $id));
        $image_path = Picture::get_path($event->relatedPicture);
        return $image_path . Picture::first(array("id=?"=>$event->relatedPicture))->filename;

    }

    public function getMini75Picture($id)
    {
        $event = Event::first(array("id=?" => $id));
        $image_path = Picture::get_path($event->relatedPicture);
        return $image_path . "75x75-" . Picture::first(array("id=?"=>$event->relatedPicture))->filename;

    }

    public function getTown($eventId)
    {
        $event = Event::first(array("id=?" => $eventId));
        $location = Location::first(array("id=?" => $event->location));

        return $location->town;
    }

    public function getCountry($eventId)
    {
        $event = Event::first(array("id=?" => $eventId));
        $location = Location::first(array("id=?" => $event->location));
        $country = Country::first(array("id=?" => $location->country))->name;

        $country = substr($country, 0, 3);

        return $country;
    }
}
