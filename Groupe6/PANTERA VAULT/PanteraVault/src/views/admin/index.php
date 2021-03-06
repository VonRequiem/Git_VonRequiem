
<!DOCTYPE html>
<html lang="fr">
<head>
    <title>Pantera Vault - principal</title>
    <link rel="stylesheet" href="/assets/css/bootstrap.css">
    <link rel="stylesheet" href="/assets/css/custom.css">
    <link href="https://fonts.googleapis.com/css2?family=IM+Fell+Double+Pica+SC&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Shojumaru&display=swap" rel="stylesheet">
    <meta charset="UTF-8">
</head>
<body class="bg-dark">

    <!--en-tête-->
    <nav class="form-row navbar bg-secondary col-md-12 justify-content-center d-flex w-100 m-0 p-0 py-2 pt-4">
            <!--vignette logo-->
            <div class="form-group">
                <div class="form-row col-md-3 vignetteLogo">
                    <img class="form-group icone-logo" src="/assets/img/en-tete/pantera-logo.png" alt="">
                    <div class="form-group vignetteTitre">Pantera<br>Vault</div>
                </div>
            </div>
            <!--rechercher-->
            <div class="form-group">
                <div class="form-row col-md-3 rechercheTitre">
                    <form>
                        <input class="form-group" type="search" placeholder="Chercher..." aria-label="Search">
                        <button class="form-group"><img class="icone" src="/assets/img/en-tete/loupe.svg" alt=""></button>
                    </form>
                </div>
            </div>
            <!--reseaux sociaux-->
            <div class="form-group">
                <div class="form-group col-md-1 resSocTitre">
                    <a href="https://www.facebook.com"><img class="icone" src="/assets/img/en-tete/social/facebook.svg" alt=""></a>
                    <a href="https://twitter.com"><img class="icone" src="/assets/img/en-tete/social/twitter.svg" alt=""></a>
                    <a href="https://fr.linkedin.com"><img class="icone" src="/assets/img/en-tete/social/linkedin.svg" alt=""></a>
                    <a href="https://www.youtube.com"><img class="icone" src="/assets/img/en-tete/social/youtube.svg" alt=""></a>
                </div>
            </div>
            <!--se connecter + panier-->
            <div class="form-group col-md-2 mt-1">
                <div class="form-row ">
                    <div class="nav-item dropdown form-group ">
                        <a class="nav-link dropdown-toggle contenuTextConnect" href="#" id="navbarDropdown00" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Connexion</a>
                        <div class="dropdown-menu align-content-center bg-secondary" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item text-black bg-secondary contenuText" href="#">Mon compte</a>
                            <a class="dropdown-item text-black bg-secondary contenuText" href="/enregistrer.html">S'enregistrer</a>
                            <a class="dropdown-item text-black bg-secondary contenuText" href="#">Ma liste d'envie</a>
                            <a class="dropdown-item text-black bg-secondary contenuText" href="/connection.html">Connexion</a>
                        </div>
                    </div>
                    <div class="form-group">
                        <a href=""><img class="iconePan" src="/assets/img/en-tete/panier.svg" alt=""></a>
                    </div>
                </div>
            </div>
    </nav>
    <!--main menu row li-->
    <nav class="navbar navbar-expand-lg navbar-light bg-secondary navBar">
        <a class="navbar-brand text-black navPantera" href="/index.html">PANTERA VAULT</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ml-md-auto m-auto">
                <li class="nav-item active">
                    <a class="nav-link contenuText" href="/src/views/admin/index.php">TABLEAU DE BORD </a>
                </li>
                <div class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle contenuText" href="#" id="navbarDropdown01" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">MEMBRES </a>
                    <div class="dropdown-menu align-content-center bg-secondary" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item bg-secondary contenuText" href="/phil.html">PHIL ANSELMO </a>
                        <a class="dropdown-item bg-secondary contenuText" href="/rex.html">REX BROWN </a>
                        <a class="dropdown-item bg-secondary contenuText" href="/vinnie.html">VINNIE PAUL </a>
                        <a class="dropdown-item bg-secondary contenuText" href="/dime.html">DIMEBAG DARREL </a>
                    </div>
                </div>
                <div class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle contenuText" href="#" id="navbarDropdown02" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">INSTRUMENTS </a>
                    <div class="dropdown-menu align-content-center bg-secondary" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item bg-secondary contenuText" href="/guitares.html">GUITARES </a>
                        <a class="dropdown-item bg-secondary contenuText" href="/basses.html">BASSES </a>
                        <a class="dropdown-item bg-secondary contenuText" href="/batteries.html">BATTERIES </a>
                        <a class="dropdown-item bg-secondary contenuText" href="/sons.html">SONS </a>
                        <a class="dropdown-item bg-secondary contenuText" href="/accessoires.html">ACCESSOIRES</a>
                    </div>
                </div>
                <li class="nav-item active">
                    <a class="nav-link contenuText" href="">HISTOIRE </a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link contenuText" href="">ALBUMS </a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link contenuText" href="">BOUTIQUE </a>
                </li>
            </ul>
        </div>
    </nav>



    <!--menu admin-->
    <div class="justify-content-center d-flex">
        <ul class="nav">
            <li class="nav-item">
                <a class="nav-link" href="/src/views/admin/index.php"> Tableau de bord </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/src/views/admin/commandes.php"> Commandes </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/src/views/admin/produits.php"> Produits </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/src/views/admin/category.php"> Catégories </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/src/views/admin/user.php"> Utilisateurs </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/src/views/admin/musiciens.php"> musiciens </a>
            </li>
        </ul>
    </div>








    <div id="scrollUp1">
        <a href="#top"><img src="/assets/img/util/square-up.svg" class="square"/></a>
    </div>
    <br>
    <div id="scrollUp2">
        <a href="javascript:history.go(-1)"><img src="/assets/img/util/square-left.svg" class="square"></a>
    </div>


    <script src="/assets/js/jquery-3.4.1.min.js"></script>
    <script src="/assets/js/bootstrap.bundle.js"></script>

</body>
</html>