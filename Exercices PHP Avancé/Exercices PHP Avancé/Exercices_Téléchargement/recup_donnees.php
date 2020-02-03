<?php

//Pour autoriser les mimes : https://developer.mozilla.org/fr/docs/Web/HTTP/Basics_of_HTTP/MIME_types/Complete_list_of_MIME_types

/*var_dump($_POST['fileName']);
echo"<pre>";
var_dump($_FILES);*/

/////////////////////////////////////////////////AUTORISATION DES TYPES DE FICHIERS///////////////////////////////////////////////

$aMimeTypes = array("image/gif", "image/jpeg", "image/pjpeg", "image/png", "image/x-png", "image/tiff","application/pdf");
 
// On ouvre l'extension FILE_INFO
$finfo = finfo_open(FILEINFO_MIME_TYPE);
 
// On extrait le type MIME du fichier via l'extension FILE_INFO 
$mimetype = finfo_file($finfo, $_FILES["fichier"]["tmp_name"]);
 
// On ferme l'utilisation de FILE_INFO 
finfo_close($finfo);
 
if (in_array($mimetype, $aMimeTypes))
{
    /* Le type est parmi ceux autorisés, donc OK, on va pouvoir 
       déplacer et renommer le fichier */          
} 
else 
{
   // Le type n'est pas autorisé, donc ERREUR
 
   echo "Type de fichier non autorisé";    
   exit;
}    

/////////////////////////////////////////////////AUTORISATION DU POIDS DES FICHIERS///////////////////////////////////////////////

//Limitation de la taille du fichier autorisée

$taille_max    = 104857600;
$taille_fichier = filesize($_FILES['fichier']['tmp_name']);
if ($taille_fichier > $taille_max){
      echo "Vous avez dépassé la taille de fichier autorisée";
      exit;
}

/////////////////////////////////////////////////CONDITION DE TELECHARGEMENT///////////////////////////////////////////////

$cheminEtNomTemporaire = $_FILES ['fichier']['tmp_name'];

// Récupération de l'extension du fichier

$extension=substr (strrchr($_FILES['fichier']['name'],"."), 1);
$nouveauNom = $_POST['fileName'].'.'.$extension;

$cheminEtNomDefinitif = 'upload/'.$nouveauNom;// Le dossier avec le nouveau nom sera repertorié dans upload

$moveIsOk = move_uploaded_file($cheminEtNomTemporaire, $cheminEtNomDefinitif);

if ($moveIsOk){

$message = "Le fichier a été uploadé dans ".$cheminEtNomDefinitif;
}
else{

$message = "Suite à une erreur, le fichier n'a pas été uploadé";
}
?>

<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Traitement upload</title>
</head>
<body>
    <h1>Upload</h1>

<p><?= $message ?></p>

</body>
</html>