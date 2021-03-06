<?php

namespace application\models;

use Framework\Model\Exception\Type;
use Framework\Shared\Model;
use Framework\StringMethods;

/**
 * Album 
 * @author sbo
 * 
 * DVD / CD
 * On peut lier pleins d'artists sur un item
 * On créé l'item puis on lie les artists
 *
 */
class Disco extends Model {

    /**
     * @column
     * @readwrite
     * @primary
     * @type autonumber
     */
	protected $_id;
	
	//protected $_status; // online, validation needed, created, incomplete, offline

    /**
     * @column
     * @readwrite
     * @type text
     * @length 255
     *
     * @validate required
     */
	protected $_title;

    /**
     * @column
     * @readwrite
     * @type text
     * @length 255
     */
	protected $_titleReal;

    /**
     * @column
     * @readwrite
     * @type text
     * @length 255
     */
	protected $_cdJapan;

    /**
     * @column
     * @readwrite
     * @type text
     * @length 255
     */
    protected $_itunes;

    /**
     * @column
     * @readwrite
     * @type text
     * @length 255
     */
    protected $_amazon;

    /**
     * @column
     * @readwrite
     * @type integer
     *
     * @validate required
     */
	protected $_medium; // id CD, DVD, CD + DVD, book, VHS, digital release

    /**
     * @column
     * @readwrite
     * @type integer
     */
	protected $_type; // id Single, Score Book, PVS, Mini-album, Maxi-Single, Documentary, Concert, Art-Book, Album

    /**
     * @column
     * @readwrite
     * @type date
     *
     * @label Release Date
     */
	protected $_date; // date de sortie

    /**
     * @column
     * @readwrite
     * @type text
     * @length 255
     */
	protected $_label; // text

    /**
     * @column
     * @readwrite
     * @type text
     *
     * @label description
     */
	protected $_details;

    /**
     * @column
     * @readwrite
     * @type integer
     */
	protected $_country; // id

    /**
     * @column
     * @readwrite
     * @type integer
     */
	protected $_continent;

    /**
     * @column
     * @readwrite
     * @type integer
     *
     * @related Picture
     */
	protected $_file; // id jaquette

    public function getTypeName($id)
    {
        $disco = Disco::first(array("id=?"=>$id));
        return DiscoType::first(array("id=?" => $disco->type))->name;
    }

    public function getRawFile($id)
    {
        $disco = Disco::first(array("id=?" => $id));


        if ($disco->file == "0")
        {
            return "no_cd.png";
        }
        else
        {
            $image_path = Picture::get_path($disco->file);
            return $image_path . Picture::first(array("id=?"=>$disco->file))->filename;
        }


    }

    public function getDateRelease($id)
    {
        $date = Disco::first(array("id=?" => $id))->date;
        $year = substr($date, 0, 4);
        $month = substr($date, 5, 2);
        $day = substr($date, 8, 2);
        return "{$day}/{$month}/{$year}";
    }

    public function getStringUrl($id)
    {
        $disco = Disco::first(array("id=?" => $id));
        return StringMethods::filterURL($disco->title);
    }

    public function getOneArtist($id)
    {
        $relArtist = RelArtistItem::first(array("idItem=?"=>$id, "type=?"=>"disco"));
        return Artist::first(array("id=?"=>$relArtist->idArtist))->name;
    }

    public function getMediumName($id)
    {
        $disco = Disco::first(array("id=?" => $id));
        return Medium::first(array("id=?"=>$disco->medium))->name;
    }

    public function getCountryName($id)
    {
        $disco = Disco::first(array("id=?" => $id));
        return Country::first(array("id=?"=>$disco->country))->name;
    }

}

