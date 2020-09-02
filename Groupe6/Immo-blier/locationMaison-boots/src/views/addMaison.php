<div class="container bg-secondary">
    <?php

    //var_dump($_POST);
    if (isset($_POST["bienType"]) and isset($_POST["bienIdProprio"]) and isset($_POST["bienAddress1"]) and isset($_POST["bienAddress2"]) and isset($_POST["bienVille"]) and isset($_POST["beinVille"]) and isset($_POST["bienDept"]) and isset($_POST["beinCP"]) and isset($_POST["beinDispo"])) {
        $bienType = htmlspecialchars($_POST["bienType"]);
        $bienIdProprio = htmlspecialchars($_POST["bienIdProprio"]);
        $bienAddress1 = htmlspecialchars($_POST["bienAddress1"]);
        $bienAddress2 = htmlspecialchars($_POST["bienAddress2"]);
        $bienVille = htmlspecialchars($_POST["bienVille"]);
        $bienDept = htmlspecialchars($_POST["bienDept"]);
        $bienCP = htmlspecialchars($_POST["bienCP"]);
        $bienDispo = htmlspecialchars($_POST["bienDispo"]);
        echo $bienType." ".$bienIdProprio." ".$bienAddress1." ".$bienAddress2." ".$bienVille." ".$bienDept." ".$bienCP." ".$bienDispo;

    }
    if ($_SESSION["login"] == "danglot.damien@gmail.com") {

    ?>
    <form method="post" action="../../index.php?page=addMaison">
        <div class="form-row">
            <div class="form-group col-md-6">
                <label for="inputType">Type :</label>
                <select name="bienType" id="inputType" class="form-control">
                    <option selected>Choisir...</option>
                    <option>Maison</option>
                    <option>Appartement(s)</option>
                    <option>Garage</option>
                    <option>Terrain</option>
                    <option>ensemble(s)</option>
                </select>
            </div>
            <div class="form-group col-md-6">
                <label for="inputIdProprio">ID propriétaire :</label>
                <input name="bienIdProprio" type="text" class="form-control" id="inputIdProprio">
            </div>
        </div>

        <div class="form-group">
            <label for="inputAddress1">Adresse :</label>
            <input name="bienAddress1" type="text" class="form-control" id="inputAddress1" placeholder="Rue, avenue, impasse...">
        </div>

        <div class="form-group">
            <label for="inputAddress2">Complément d'adresse :</label>
            <input name="bienAddress2" type="text" class="form-control" id="inputAddress2" placeholder="Appartement, studio, étage...">
        </div>

        <div class="form-row">
            <div class="form-group col-md-6">
                <label for="inputVille">Ville :</label>
                <input name="bienVille" type="text" class="form-control" id="inputVille">
            </div>
            <div class="form-group col-md-4">
                <label for="inputDept">Département :</label>
                <select name="bienDept" id="inputDept" class="form-control">
                    <option selected>Choisir...</option>
                    <option value="62">...</option>
                </select>
            </div>
            <div class="form-group col-md-2">
                <label for="inputCP">Code Postal</label>
                <input name="bienCP" type="text" class="form-control" id="inputCP">
            </div>
        </div>

        <div class="form-row">
            <div class="form-group col-md-6">
                <div class="form-check">
                    <input name="bienDispo" class="form-check-input" type="checkbox" id="gridCheck">
                    <label class="form-check-label" for="gridCheck">Disponible</label>
                </div>
            </div>
            <div class="form-group col-md-6">
                <button type="submit" class="btn btn-primary">Enregistrer</button>
            </div>
        </div>
    </form>
</div>
<?php } else {
    echo "Vous n'avez pas accès à cette page.";
}
?>