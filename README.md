vyper
=====

pour créer physiquement un model
il faut écrire dans une action de controller :

$database = Registry::get("database");
		$event = new Event(array(
		"connector" => $database
		));
		
		$database->sync($event);
		
Helper copier coller pour mise en page double colonne

<div class="row">
							<div class="col-lg-4">
								/**
								**/
							</div>
							<div class="col-lg-4">
								/**
								**/
							</div>
						</div>