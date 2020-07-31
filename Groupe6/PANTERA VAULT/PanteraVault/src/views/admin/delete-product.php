<?php
/* Connexion à une base MySQL avec l'invocation de pilote */
$dsn = 'mysql:dbname=pantera;host=127.0.0.1';
$user = 'root';
$password = '';

try {
    $dbh = new PDO($dsn, $user, $password);
} catch (PDOException $e) {
    echo 'Connexion échouée : ' . $e->getMessage();
}
//var_dump($dbh);


if (isset ($_GET ['id'])) {

    $id = $_GET['id'];
}


$sth = $dbh->prepare("DELETE FROM product WHERE idProduct = :id");
$sth->execute(['id' => $id]);

header('Location: produits.php');
exit();


?>
