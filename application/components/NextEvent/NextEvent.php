<?php
namespace application\components\NextEvent;

use \Framework\StringMethods as StringMethods;

/**
 * Displays last event info
 * @author sbo
 *
 */
class NextEvent {
	
	private $_eventID;
	private $_eventTitle;
	private $_eventDate;
	private $_stringURL;
	
	
	public function getEventID() {return $this->_eventID;}
	public function getEventTitle() {return $this->_eventTitle;}
	public function getEventDate() {return $this->_eventDate;}
	public function setEventID($_eventID) {$this->_eventID = $_eventID;}
	public function setEventTitle($_eventTitle) {$this->_eventTitle = $_eventTitle;}
	public function setEventDate($_eventDate) {$this->_eventDate = $_eventDate;}
	public function getStringURL() 
	{
		$string = $this->_eventTitle;
		return StringMethods::filterURL($string);
	}

	/**
	 * Constructor : Initializes properties
	 * @param string $_eventID
	 * @param string $_eventTitle
	 * @param string $_eventDate
	 */
	public function initialize($_eventID, $_eventTitle, $_eventDate)
	{
		$this->setEventID($_eventID);
		$this->setEventTitle($_eventTitle);
		$this->setEventDate($_eventDate);
		
	}
	
	/**
	 * Returns the remaining days before the event
	 * @return number
	 */
	public function getRemainingDays()
	{
		$event = $this->getEventDate();
		$month = substr($event, 5, 2);
		$year = substr($event, 0, 4);
		$day = substr($event, 8, 2);
		
		$event = mktime(0,0,0,$month,$day,$year);
		$today = time();
		$difference = $event - $today;
		
		return ceil($difference/86400);
	}

    /**
     * Returns the event date day
     * @return string
     */
    public function getEventDateDay()
    {
        $event = $this->getEventDate();
        $day = substr($event, 8, 2);
        return $day;
    }


    /**
     * Returns the event date month on Jan, Feb format
     * @return string
     */
    public function getEventDateMonth()
    {
        setlocale (LC_TIME, 'fr_FR.utf8','fra');
        $event = $this->getEventDate();
        $month = substr($event, 5, 2);
        $year = substr($event, 0, 4);
        $day = substr($event, 8, 2);
        $time = mktime(0,0,0,$month,$day,$year);
        $month = utf8_encode(ucfirst(strftime( "%b", $time )));
        $month = str_replace(".", "", $month);
        return $month;
    }
	
	/**
	 * @return array
	 */
	public function templateVar()
	{
		$r= array();
		$r['nextEvent_exists'] = "true";
		$r['nextEvent_id'] = $this->getEventID();
		$r['nextEvent_title'] = $this->getEventTitle();
		$r['nextEvent_date'] = $this->getEventDate();
        $r['nextEvent_dateDay'] = $this->getEventDateDay();
        $r['nextEvent_dateMonth'] = $this->getEventDateMonth();
		$r['nextEvent_remainingDays'] = $this->getRemainingDays();
		$r['nextEvent_stringURL'] = $this->getStringURL();
		
		return $r;
	}
	
}