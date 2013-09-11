<?php

namespace application\components\Auth;

use application\models\User;

class Auth {
	
	protected $_error_login = false;
	protected $_error_password = false;
	
	public function getError_login() {return $this->_error_login;}
	public function getError_password() {return $this->_error_password;}
	public function setError_login($_error_login) {$this->_error_login = $_error_login;}
	public function setError_password($_error_password) {$this->_error_password = $_error_password;}

	/**
	 * 
	 * @param string $login
	 * @param string $password
	 */
	public function validate($login, $password)
	{
		if (empty($login))
		{
			$this->setError_login(true);
		}
			
		if (empty($password))
		{
			$this->setError_password(true);
		}
		
		if ($this->_error_login || $this->_error_password)
		{
			return false;
		}
		
		return true;
	}
	
	public function match($login, $password)
	{
		$user = User::first(array(
				"login = ?" => $login,
				"password = ?" => $password,
				"live = ?" => true,
				"deleted = ?" => false
		));
		
		if (!empty($user))
		{
			return $user->id;
		}
		
		return false;
	}
}

?>