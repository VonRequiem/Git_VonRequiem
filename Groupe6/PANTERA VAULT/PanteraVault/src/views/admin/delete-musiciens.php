<?php
/* Connexion à une base MySQL avec l'invocation de pilote */
$dsn = 'mysql:dbname=pantera;host=127.0.0.1';
$user = 'root';
$password = '';

try {
    $dbh = new PDO($dsn, $user, $password);
} catch (PDOException $e) {
   // echo 'Connexion échouée : ' . $e->getMessage();
}
//var_dump($dbh);


if (isset ($_GET ['id'])) {

    $id = intval($_GET['id']);
}


$sth = $dbh->prepare("DELETE FROM musiciens WHERE idMusiciens = :id");
$sth->execute(['id' => $id]);

header('Location: musiciens.php');
exit();


?>

