<?php

namespace application\models;

use Framework\Shared\Model;

class Lineup extends Model {
	
	protected $_id;
	
	protected $_idMember;
	
	protected $_idArtist; // le groupe
	
	protected $_start; // 1991
	
	protected $_end; // 1997
	
	protected $_status; // active, gone
	
	protected $_role1;
	protected $_role2;
	protected $_role3;
}
