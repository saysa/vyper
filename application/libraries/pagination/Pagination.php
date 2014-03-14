<?php

/**
 * @namespace	Pagination
 */
namespace Pagination;

class Pagination {

	protected  $page_name;			// - Nom de la page appelee : %s sera remplace par le num�ro de la page
	protected  $current_page;		// - Page actuelle
	protected $total_pages;		// - Nombre total de pages
	protected  $showitems;			// - Nombre d'item
	protected $output;			// - Sortie HTML

	protected  $options = array(

		 'range'				=> 3, // Nombre d'item � afficher de chaque c�t� de la page courante
		 'posts_per_page'		=> 4, // Nombre d'article par page

		 'text_first_page' 		=> '&laquo;', // Texte du bouton "Premiere page"
		 'text_last_page' 		=> '&raquo;', // Texte du bouton "Derniere page"
		 'text_next_page' 		=> '&rsaquo;', // Texte du bouton "Suivant"
		 'text_previous_page' 	=> '&lsaquo;' // Texte du bouton "Precedent"

	);

	function __construct( $page_name, $current_page, $total_posts, $options = array() )
	{

		// On mets a jour les options
		$this->options = $options + $this->options;

		// On recupere l'adresse de la page
		$this->page_name = $page_name;

		// On recupere le numero de la page courante
		$this->current_page = intval($current_page);

		// On definit le nombre de page total
        $this->total_pages = ceil( intval($total_posts) / intval($this->options['posts_per_page']) );

	    // Gestion des pages � voir
	    $this->showitems = ($this->options['range'] * 2) + 1;

		// On genere la pagination
		$this->generateOutput();
	}


	/*
	 * Genere le code HTML Final.
	 *
	*/

	function generateOutput()
	{

		 // Si on a plus d'une page, on affiche la navigation
	     if(1 != $this->total_pages)
	     {
	         $this->output = '<div class="pagination">';
	         //$this->output.= "<span>Page $this->current_page sur $this->total_pages : </span> ";


			 // Gestion du lien permettant d'aller a la premiere page
			 if( $this->options['text_first_page'] ) {
			 	if($this->current_page > 2 && $this->current_page > $this->options['range'] + 1 && $this->showitems < $this->total_pages) {
			 		$this->output.= "<a href='".sprintf($this->page_name, 1)."' class='page-numbers'>". $this->options['text_first_page'] ."</a>";
			 	}
	         }

	         // Gestion du lien "Precedent"
	         if( $this->options['text_previous_page'] ) {
	         	if($this->current_page > 2 && $this->showitems < $this->total_pages) {
	         		$this->output.= "<a href='".sprintf($this->page_name, $this->current_page - 1)."' class='page-numbers'>". $this->options['text_previous_page'] ."</a>";
	         	}

			}
			 // Gestion des autres boutons de la pagination
	         for ( $i=1; $i <= $this->total_pages; $i++ )
	         {
	             if ( ( $i >= $this->current_page - $this->options['range'] && $i <= $this->current_page + $this->options['range'] ) || $this->total_pages <= $this->showitems )
	             {
	                 $this->output.= ($this->current_page == $i) ? "<span class='page-numbers current'>".$i."</span>" : "<a href='".sprintf($this->page_name, $i)."' class='page-numbers' >".$i."</a>";
	             }
	         }

	 		 // Next page link
		 	 if( $this->options['text_next_page'] ) {
		 	 	if ( $this->current_page < $this->total_pages - 1 && $this->showitems < $this->total_pages ) {
		 	 		$this->output.= "<a href='".sprintf($this->page_name, $this->current_page + 1)."' class='page-numbers'>". $this->options['text_next_page'] ."</a>";
		 	 	}
	         }

	         // Last page link
	         if( $this->options['text_last_page'] ) {
	         	if ( $this->current_page < $this->total_pages-1 && $this->current_page + $this->options['range'] < $this->total_pages && $this->showitems < $this->total_pages ) {
	         		$this->output.= "<a href='".sprintf($this->page_name, $this->total_pages)."' class='page-numbers'>". $this->options['text_last_page'] ."</a>";
	         	}
	         }

	         $this->output.= "</div>";
	     }
	}

	/*
	 * Affiche la pagination s'il y a plus d'une seule page.
	 *
	*/

	function display() {
		return $this->output;
	}
}