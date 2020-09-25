<?php

//le dossier ou se trouvera le fichier
$target_dir = "uploads/";

//le nom de destination du fichier (leDossier + le nom du fichier)
$target_file = $target_dir . basename($_FILES["upload"]["name"]);

//la liste des extentions autorisée
$allowed_exts = ["jpg", "jpeg", "png", "pdf", "docx", "html", "csv", "xls"];

//l'extention du fichier envoyé
$ext = strtolower(pathinfo($target_file,PATHINFO_EXTENSION));

//l'objet response qui serra retourné
$response = new StdClass();

//variable qui servira de point de comparaison. false par defaut et passe a true si extention valide
$check = false;

//vérification de l'extention
//on parcour notre array si l'extention du fichier match avec une extention on arrete le parcour et on défini check en true
foreach ($allowed_exts as $allowed_ext) {
  if ($ext == $allowed_ext) {
    $check = true;
    break;
  }
}

//Si check est a true (pas besoin de specifier le == true)
if($check) {
    if (file_exists($target_file)) {
        $response->state = 2;
        $response->fileName = $_FILES['upload']['name'];
        $response->url = $target_file;
    }else{
        //on déplace le fichier vers sa destination finale
        move_uploaded_file($_FILES["upload"]["tmp_name"], $target_file);

        //on va définir l'état de response a 0
        $response->state = 0;
        //on va définir le nom du fichier retournée par response
        $response->fileName = $_FILES['upload']['name'];
        //on va définir l'url retourné par response
        $response->url = $target_file;
    }


} 
//Si check est false
else {
  //on va définir l'état de response a 1 (ce qui signifie erreur , dans ce cas présent cela signifie exactement que l'extention ne matche pas avec notre array $allowed_exts)
  $response->state = 1;
}

//on retourne response sous forme de JSON
echo json_encode($response);

?>