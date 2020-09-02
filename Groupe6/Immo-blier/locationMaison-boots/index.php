<?php
session_start();

require_once "src/views/elements/head.php";
require_once "src/views/elements/footer.php";


$page = "";
if (!isset($_GET["page"])){
    $page = "accueil";
}
else {
    $page = $_GET["page"];
}
if ($page == "accueil") {
    head(true);
    include "src/views/accueil.php";
} else if ($page == "louer") {
    head(false);
    include "src/views/louer.php";
} else if ($page == "detail") {
    head(false);
    include "src/views/detail.php";
} else if ($page == "contact") {
    head(true);
    include "src/views/contact.php";
} else if ($page == "projet") {
    head(true);
    include "src/views/projet.php";
} else if ($page == "addAgence") {
    head(true);
    include "src/views/addAgence.php";
} else if ($page == "addMaison") {
    head(true);
    include "src/views/addMaison.php";
} else if ($page == "addClient") {
    head(true);
    include "src/views/addClient.php";
} else if ($page == "gererMesBiens") {
    head(true);
    include "src/views/gererMesBiens.php";
} else if ($page == "connection") {
    head(true);
    include "src/views/connection.php";
} else {
    head(true);
    include "src/views/accueil.php";
}

if (isset($_POST["connectMail"]) and isset($_POST["connectPass"])) {
    $mail = htmlspecialchars($_POST["connectMail"]);
    $mdp = htmlspecialchars($_POST["connectPass"]);

} else {
    $mail = "";
}

$_SESSION["login"] = $mail;

footer();
