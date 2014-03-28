vyper
=====

pour créer physiquement un model
il faut écrire dans une action de controller :

$database = Registry::get("database");
		$event = new Event(array(
		"connector" => $database
		));
		
		$database->sync($event);


Helper requete en dur

$database = Registry::get("database");
        $queryPdo = $database->query();
        $stmt = $queryPdo->connector->execute("SELECT * FROM article");
        for ($i=0; $i<$stmt->rowCount();$i++)
        {
            $rows[]=$stmt->fetch(\PDO::FETCH_OBJ);
        }
        var_dump($rows);

		
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


Requete popular

SELECT article.id, article.title, articlevisite.*, count(*) AS nb FROM article
INNER JOIN articlevisite ON article.id = articlevisite.articleId
GROUP BY articlevisite.articleId
ORDER BY nb DESC