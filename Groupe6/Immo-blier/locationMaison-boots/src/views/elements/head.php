<?php
function head($principal) {
    ?>
    <!doctype html>
    <html lang="en">
    <head>
        <title>LocationMaison</title>
        <link rel="stylesheet" href="assets/css/bootstrap.css">
        <link rel="stylesheet" href="assets/css/custom.css">
        <meta charset="UTF-8">
    </head>
    <body class="bg-light">

        <?php
        if($principal) {
        ?>
        <div class="jumbotron head">
        <div class="row">
            <div class="col-xs-2 col-sm-2 col-md-1  col-lg-1  col-xl-1">
                <img src="assets/img/BernardBlier.jpg" class="w-100">
            </div>
            <div class="col-xs-5 col-sm-5 col-md-9  col-lg-9  col-xl-9">
                <h1 class="display-4">Bienvenue chez IMMO-Blier!</h1>
                <p class="lead">Le site de ventes et locations de biens immobiliers de Bernard Blier!
                    <br>
                    "Chez moi on ne vends pas, on ventile!!"</p>
                <hr class="my-2">
            </div>


        </div>
            <?php
            }
        else { ?>
    <div class="jumbotron head text-center">
            <h1 class="display-4">Louer un bien</h1>
        <?php } ?>


        <nav class="navbar navbar-expand-lg navbar-light text-center">
            <a class="navbar-brand" href="/">Accueil</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="index.php?page=addClient">addClient </a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="index.php?page=addMaison">addMaison </a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="index.php?page=addAgence">addAgence </a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="index.php?page=gererMesBiens">Gerer mes biens </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Acheter </a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="index.php?page=louer">Louer </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Estimer </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Nos agences </a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="index.php?page=contact">Nous contacter </a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="index.php?page=connection">Se connecter </a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="src/views/deconnection.php">Se déconnecter </a>
                    </li>
                </ul>
            </div>
        </nav>
    </div>
<?php
}
