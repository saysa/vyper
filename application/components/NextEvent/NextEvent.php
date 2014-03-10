<?php
namespace application\components\NextEvent;

/**
 * Displays last event info
 * @author sbo
 *
 */
class NextEvent {
	
	private $_eventID;
	private $_eventTitle;
	private $_eventDate;
	
	
	public function getEventID() {return $this->_eventID;}
	public function getEventTitle() {return $this->_eventTitle;}
	public function getEventDate() {return $this->_eventDate;}
	public function setEventID($_eventID) {$this->_eventID = $_eventID;}
	public function setEventTitle($_eventTitle) {$this->_eventTitle = $_eventTitle;}
	public function setEventDate($_eventDate) {$this->_eventDate = $_eventDate;}

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
	 * @return array
	 */
	public function templateVar()
	{
		$r= array();
		$r['nextEvent_exists'] = "true";
		$r['nextEvent_id'] = $this->getEventID();
		$r['nextEvent_title'] = $this->getEventTitle();
		$r['nextEvent_date'] = $this->getEventDate();
		return $r;
	}
	
}