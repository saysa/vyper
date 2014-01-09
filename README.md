vyper
=====

pour créer physiquement un model
il faut écrire dans une action de controller :

$database = Registry::get("database");
		$event = new Event(array(
		"connector" => $database
		));
		
		$database->sync($event);