<?php

namespace application\models;

class User extends \Framework\Shared\Model {
	
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
	 * @length 100
	 * 
	 * @validate required, alpha, min(3), max(32)
	 * @label first name
	 */
	protected $_first;
	
	/**
	 * @column
	 * @readwrite
	 * @type text
	 * @length 100
	 * 
	 * @validate required, alpha, min(3), max(32)
	 * @label last name
	 */
	protected $_last;
	
	/**
	 * @column
	 * @readwrite
	 * @type text
	 * @length 100
	 *
	 * @validate required, min(3), max(32)
	 * @label nickname
	 */
	protected $_nickname;
	
	/**
	 * @column
	 * @readwrite
	 * @type boolean
	 */
	protected $_gender;
	
	/**
	 * @column
	 * @readwrite
	 * @type datetime
	 *
	 * @validate required
	 * @label birthdate
	 */
	protected $_birthdate;
	
	/**
	 * @column
	 * @readwrite
	 * @type text
	 * @length 100
	 * @index
	 *
	 * @validate required, min(3), max(32)
	 * @label login
	 */
	protected $_login;
	
	/**
	 * @column
	 * @readwrite
	 * @type text
	 * @length 100
	 * @index
	 * 
	 * @validate required, max(100)
	 * @label email address
	 */
	protected $_email;
	
	/**
	 * @column
	 * @readwrite
	 * @type text
	 * @length 100
	 * 
	 * @validate required, min(8), max(32)
	 * @label password
	 */
	protected $_password;
	
	/**
	 * @column
	 * @readwrite
	 * @type text
	 */
	protected $_notes;
	
	/**
	 * @column
	 * @readwrite
	 * @type boolean
	 * @index
	 */
	protected $_admin = false;
	
	/**
	 * @column
	 * @readwrite
	 * @type text
	 * @length 255
	 */
	protected $_gmail;
	
	/**
	 * @column
	 * @readwrite
	 * @type text
	 * @length 255
	 */
	protected $_mobile;
	
	/**
	 * @column
	 * @readwrite
	 * @type text
	 * @length 255
	 */
	protected $_address;
	
	/**
	 * @column
	 * @readwrite
	 * @type integer
	 * @index
	 */
	protected $_country;
	
	/**
	 * @column
	 * @readwrite
	 * @type integer
	 */
	protected $_language;
	
	/**
	 * @column
	 * @readwrite
	 * @type integer
	 */
	protected $_timeDifference;
	
	/**
	 * @column
	 * @readwrite
	 * @type text
	 */
	protected $_aboutYourself;
	
	public function isFriend($id)
	{
		$friend = Friend::first(array(
				"user" => $this->getId(),
				"friend" => $id
		));
		
		if ($friend)
		{
			return true;
		}
		return false;
	}
	
	public static function hasFriend($id, $friend)
	{
		$user = new self(array(
				"id" => $id
		));
		return $user->isFriend($friend);
	}
	
	/**
	 * Returns the latest file from the database,
	 * which is linked to the current user row
	 */
	public function getFile()
	{
		return File::first(array(
			"user = ?"    => $this->id,
			"live = ?"    => true,
			"deleted = ?" => false 
		), array("*"), "id", "DESC");
	}
	
	public function admin()
	{
		return $this->_admin;
	}
}
