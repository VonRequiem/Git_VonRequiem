<?php

/* Connexion à une base MySQL avec l'invocation de pilote */
$dsn = 'mysql:dbname=pantera;host=127.0.0.1';
$user = 'root';
$password = '';

try {
    $dbh = new PDO($dsn, $user, $password);
} catch (PDOException $e) {
    //  echo 'Connexion échouée : ' . $e->getMessage();
}
//var_dump($dbh);

$sql = 	'SELECT   *   FROM  Product 

	    INNER JOIN option ON option_idOption = idOption,
	    INNER JOIN distributeur ON distributeur_iddistributeur = iddistributeur,
	    INNER JOIN category ON category_idcategory = idcategory,

	    WHERE nomOption LIKE "%'.$_POST ['recherche'].'%"
        AND nonDistributeur LIKE "%'.$_POST ['recherche'].'%"
        AND nomcategory LIKE "%'.$_POST ['recherche'].'%"';



$stmt= $dbh->prepare($sql);
$stmt->execute();
$result = $sth->fetch();


?>
