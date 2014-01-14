<?php

namespace application\models;

use Framework\Shared\Model;

/**
 * Album 
 * @author sbo
 * 
 * DVD / CD
 * On peut lier pleins d'artists sur un item
 * On créé l'item puis on lie les artists
 *
 */
class Item extends Model {
	
	protected $_id;
	
	protected $_status; // online, validation needed, created, incomplete, offline
	
	protected $_title;
	
	protected $_titleReal;
	
	protected $_catalogNumber;
	
	protected $_medium; // id CD, DVD, CD + DVD, book, VHS, digital release
	
	protected $_type; // id Single, Score Book, PVS, Mini-album, Maxi-Single, Documentary, Concert, Art-Book, Album
	
	protected $_date; // date de sortie
	
	protected $_label; // text
	
	protected $_details;
	
	protected $_country; // id
	
	protected $_continent;
	
	protected $_file; // id jaquette
}

