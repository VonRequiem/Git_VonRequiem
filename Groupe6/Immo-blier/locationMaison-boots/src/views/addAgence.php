<div class="container bg-secondary">
    <?php
    //var_dump($_POST);
    if (isset($_POST["agenceId"]) and isset($_POST["agenceNom"]) and isset($_POST["agenceNomDir"]) and isset($_POST["agencePrenomDir"]) and isset($_POST["agenceMailDir"]) and isset($_POST["agenceTel"]) and isset($_POST["agenceAddress1"]) and isset($_POST["agenceAddress2"]) and isset($_POST["agenceVille"]) and isset($_POST["agenceDept"]) and isset($_POST["agenceCP"])) {
        $agenceId = htmlspecialchars($_POST["agenceId"]);
        $agenceNom = htmlspecialchars($_POST["agenceNom"]);
        $agenceNomDir = htmlspecialchars($_POST["agenceNomDir"]);
        $agencePrenomDir = htmlspecialchars($_POST["agencePrenomDir"]);
        $agenceMailDir = htmlspecialchars($_POST["agenceMailDir"]);
        $agenceTel = htmlspecialchars($_POST["agenceTel"]);
        $agenceAddress1 = htmlspecialchars($_POST["agenceAddress1"]);
        $agenceAddress2 = htmlspecialchars($_POST["agenceAddress2"]);
        $agenceVille = htmlspecialchars($_POST["agenceVille"]);
        $agenceDept = htmlspecialchars($_POST["agenceDept"]);
        $agenceCP = htmlspecialchars($_POST["agenceCP"]);
        echo $agenceId." ".$agenceNom." ".$agenceNomDir." ".$agencePrenomDir." ".$agenceMailDir." ".$agenceTel." ".$agenceAddress1." ".$agenceAddress2." ".$agenceVille." ".$agenceDept." ".$agenceCP;

    }
    if ($_SESSION["login"] == "danglot.damien@gmail.com") {
    ?>
    <form method="post" action="../../index.php?page=addAgence">
        <div class="form-row">
            <div class="form-group col-md-6">
                <label for="inputId">ID Agence :</label>
                <input name="agenceId" type="text" class="form-control" id="inputId">
            </div>
            <div class="form-group col-md-6">
                <label for="inputNomAgence">Nom Agence :</label>
                <input name="agenceNom" type="text" class="form-control" id="inputNomAgence">
            </div>
        </div>

        <div class="form-row">
            <div class="form-group col-md-6">
                <label for="inputNameDir">Nom directeur :</label>
                <input name="agenceNomDir" type="text" class="form-control" id="inputNameDir">
            </div>
            <div class="form-group col-md-6">
                <label for="inputPrenomDir">Prénom directeur :</label>
                <input name="agencePrenomDir" type="text" class="form-control" id="inputPrenomDir">
            </div>
        </div>

        <div class="form-row">
            <div class="form-group col-md-6">
                <label for="inputEmailDir">E-mail du directeur d'agence :</label>
                <input name="agenceMailDir" type="email" class="form-control" id="inputEmailDir">
            </div>
            <div class="form-group col-md-6">
                <label for="inputTelAgence">Téléphone :</label>
                <input name="agenceTel" type="text" class="form-control" id="inputTelAgence">
            </div>
        </div>

        <div class="form-group">
            <label for="inputAddress1">Adresse :</label>
            <input name="agenceAddress1" type="text" class="form-control" id="inputAddress1" placeholder="Rue, avenue, impasse...">
        </div>

        <div class="form-group">
            <label for="inputAddress2">Complément d'adresse :</label>
            <input name="agenceAddress2" type="text" class="form-control" id="inputAddress2" placeholder="Appartement, studio, étage...">
        </div>

        <div class="form-row">
            <div class="form-group col-md-6">
                <label for="inputVille">Ville :</label>
                <input name="agenceVille" type="text" class="form-control" id="inputVille">
            </div>
            <div class="form-group col-md-4">
                <label for="inputDept">Département :</label>
                <select name="agenceDept" id="inputDept" class="form-control">
                    <option selected>Choisir...</option>
                    <option value="62">...</option>
                </select>
            </div>
            <div class="form-group col-md-2">
                <label for="inputCP">Code Postal</label>
                <input name="agenceCP" type="text" class="form-control" id="inputCP">
            </div>
        </div>

        <button type="submit" class="btn btn-primary">Enregistrer</button>

    </form>
</div>
<?php } else {
    echo "Vous n'avez pas accès à cette page.";
}
?>
