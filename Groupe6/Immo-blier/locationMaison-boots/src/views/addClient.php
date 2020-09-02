<?php



if ($_SESSION["login"] == "danglot.damien@gmail.com") {


?>
<div class="container bg-secondary">
    <?php

    if (isset($_POST["enrNom"]) and isset($_POST["enrPrenom"]) and isset($_POST["enrMail"]) and isset($_POST["enrPass"]) and isset($_POST["enrTel1"]) and isset($_POST["enrTel2"]) and isset($_POST["enrAddress1"]) and isset($_POST["enrAddress2"]) and isset($_POST["enrVille"]) and isset($_POST["enrDept"]) and isset($_POST["enrCP"])) {
        $enrNom = htmlspecialchars($_POST["enrNom"]);
        $enrPrenom = htmlspecialchars($_POST["enrPrenom"]);
        $enrMail = htmlspecialchars($_POST["enrMail"]);
        $enrPass = htmlspecialchars($_POST["enrPass"]);
        $enrTel1 = htmlspecialchars($_POST["enrTel1"]);
        $enrTel2 = htmlspecialchars($_POST["enrTel2"]);
        $enrAddress1 = htmlspecialchars($_POST["enrAddress1"]);
        $enrAddress2 = htmlspecialchars($_POST["enrAddress2"]);
        $enrVille = htmlspecialchars($_POST["enrVille"]);
        $enrDept = htmlspecialchars($_POST["enrDept"]);
        $enrCP = htmlspecialchars($_POST["enrCP"]);
        echo $enrNom." ".$enrPrenom." ".$enrMail." ".$enrPass." ".$enrTel1." ".$enrTel2." ".$enrAddress1." ".$enrAddress2." ".$enrVille." ".$enrDept." ".$enrCP;

    }
    ?>
    <form method="post" action="../../index.php?page=addClient">
        <div class="form-row">
            <div class="form-group col-md-6">
                <label for="inputName">Nom :</label>
                <input name="enrNom" type="text" class="form-control" id="inputName">
            </div>
            <div class="form-group col-md-6">
                <label for="inputPrenom">Prénom :</label>
                <input name="enrPrenom" type="text" class="form-control" id="inputPrenom">
            </div>
        </div>

        <div class="form-row">
            <div class="form-group col-md-6">
                <label for="inputId">ID Client :</label>
                <input name="enrId" type="text" class="form-control" id="inputName">
            </div>
        </div>

        <div class="form-row">
            <div class="form-group col-md-6">
                <label for="inputEmail4">E-mail :</label>
                <input name="enrMail" type="email" class="form-control" id="inputEmail4">
            </div>
            <div class="form-group col-md-6">
                <label for="inputPassword4">Mot de passe :</label>
                <input name="enrPass" type="password" class="form-control" id="inputPassword4">
            </div>
        </div>
        <div class="form-row">
            <div class="form-group col-md-6">
                <label for="inputTel1">Téléphone :</label>
                <input name="enrTel1" type="text" class="form-control" id="inputTel1">
            </div>
            <div class="form-group col-md-6">
                <label for="inputTel2">Téléphone 2 :</label>
                <input name="enrTel2" type="text" class="form-control" id="inputTel2">
            </div>
        </div>
        <div class="form-group">
            <label for="inputAddress">Adresse :</label>
            <input name="enrAddress1" type="text" class="form-control" id="inputAddress1" placeholder="Rue, avenue, impasse...">
        </div>
        <div class="form-group">
            <label for="inputAddress2">Complément d'adresse :</label>
            <input name="enrAddress2" type="text" class="form-control" id="inputAddress2" placeholder="Appartement, studio, étage...">
        </div>
        <div class="form-row">
            <div class="form-group col-md-6">
                <label for="inputCity">Ville :</label>
                <input name="enrVille" type="text" class="form-control" id="inputCity">
            </div>
            <div class="form-group col-md-4">
                <label for="inputState">Département :</label>
                <select name="enrDept" id="inputDept" class="form-control">
                    <option selected value="59">Nord</option>
                    <option value="62">Pas-de-Calais</option>
                </select>
            </div>
            <div class="form-group col-md-2">
                <label for="inputCP">Code Postal</label>
                <input name="enrCP" type="text" class="form-control" id="inputCP">
            </div>
        </div>

        <button type="submit" class="btn btn-primary">Enregistrer</button>
    </form>
</div>
<?php } else {
    echo "Vous n'avez pas accès à cette page.";
}
?>