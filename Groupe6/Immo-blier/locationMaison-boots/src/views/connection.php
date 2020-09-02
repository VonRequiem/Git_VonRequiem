<div class="container">
    <?php

    if (isset($_POST["connectMail"]) and isset($_POST["connectPass"])) {
        $mail = htmlspecialchars($_POST["connectMail"]);
        $mdp = htmlspecialchars($_POST["connectPass"]);


    }
    ?>
<form method="post" action="../../index.php">
    <div class="form-group">
        <label for="exampleInputEmail1">Votre adresse Mail :</label>
        <input name="connectMail" type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
        <small id="emailHelp" class="form-text text-muted">Votre Mail servira d'identifiant.</small>
    </div>
    <div class="form-group">
        <label for="exampleInputPassword1">Mot de passe :</label>
        <input name="connectPass" type="password" class="form-control" id="exampleInputPassword1">
    </div>
    <button type="submit" class="btn btn-primary">Se connecter</button>
</form>
</div>
