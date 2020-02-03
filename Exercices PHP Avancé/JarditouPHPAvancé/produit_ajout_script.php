<?php
require "connexion_bdd.php";// Inclusion de notre bibliothèque de fonctions
$db = connexionBase();// Appel de la fonction de connexion
date_default_timezone_set('Europe/Paris');//Permet de préciser exactement les horaires souhaités
$date = date("Y-m-d H:i:s");//Définition de la date

$pdoStat = $db->prepare("INSERT INTO produits(pro_ref, pro_cat_id, pro_libelle,pro_description, pro_prix, pro_stock, pro_couleur, pro_bloque, pro_d_ajout)
VALUES(:pro_ref,:pro_cat_id,:pro_libelle,:pro_description,:pro_prix,:pro_stock,:pro_couleur,:pro_bloque, '".$date."')");

//les ":" devant les noms de colonne sont la nomenclature officielle de la fonction, cela sert à déterminer les coloones concernées plus tard dans le script
//bindValue associe une valeur à un paramètre

$pdoStat->bindValue(':pro_ref', $_POST['reference'], PDO::PARAM_STR);//":" sera défini par le $_POST que l'utilisateur aura choisi
$pdoStat->bindValue(':pro_cat_id', $_POST['pro_cat_id'], PDO::PARAM_STR);
$pdoStat->bindValue(':pro_libelle', $_POST['libelle'], PDO::PARAM_STR);
$pdoStat->bindValue(':pro_description', $_POST['description'], PDO::PARAM_STR);
$pdoStat->bindValue(':pro_prix', $_POST['prix'], PDO::PARAM_STR);
$pdoStat->bindValue(':pro_stock', $_POST['stock'], PDO::PARAM_STR);
$pdoStat->bindValue(':pro_couleur', $_POST['couleur'], PDO::PARAM_STR);

//Pour le produit bloqué, une condition est nécessaire

if ($_POST['prod']==0)//Si le produit est définit comme 0
 {
    $bloque = NULL;//alors la variable $bloque sera considéré comme nulle
} 
else if ($_POST['prod']==1) //Si le produit est définit à 1
{
    $bloque = 1;//alors la variable sera définit par 1
}
$pdoStat->bindValue(':pro_bloque', $bloque/*dans le tableau et dans la base de données, la valeur correspondante définit précédemment par la condition sera affiché*/, PDO::PARAM_STR);

$InsertIsOk = $pdoStat->execute();//la variable $InsertIsOk stocke l'exécution, si toutes les bindValue sont opérationnelles et sans erreurs, alors l'exécution pourra avoir lieu

if($InsertIsOk)//Si l'exécution dans la variable est sans erreur
{
    
    $message= "Insertion réussie";//alors une redirection sera effectué vers le tableau des produits

}
else{

    $message = "Echec de l'insertion";//Sinon une page apparaîtra pour signaler l'échec de l'insertion
}


//----------------------------------------------------------------------------------------------------

//Initialisation d'un tableau d'erreurs

$aErreur = [];

//-----------------------------------------------------------------------------------------//

//REFERENCE
if (empty($_POST["reference"])) 
{
    $aErreur[] = "erreur1=true";
}
else
{
    echo "Reference =".$_POST["reference"]."<br>";
}

//-----------------------------------------------------------------------------------------//
//CATEGORIE
if (empty($_POST["pro_cat_id"])) 
{
    
    $aErreur[] = "erreur2=true"; 
}
else
{
    echo "Catégorie =".$_POST["pro_cat_id"]."<br>";
}
//-----------------------------------------------------------------------------------------//
//LIBELLE

if (empty($_POST["libelle"])) 
{
    
    $aErreur[] = "erreur3=true"; 
}
else
{
    echo "Libellé =".$_POST["libelle"]."<br>";
}

//-----------------------------------------------------------------------------------------//
//DESCRIPTION

if (empty($_POST["description"])) 
{
    
    $aErreur[] = "erreur4=true"; 
}
else
{
    echo "Description =".$_POST["description"]."<br>";
}


//-----------------------------------------------------------------------------------------//
//PRIX

if (empty($_POST["prix"])) 
{
    $aErreur[] = "erreur5=true";
}
else if (!preg_match("/^[0-9]+$/", ($_POST["prix"])))
{
    $aErreur[] = "erreur5bis=true";
 }
else
{
    echo "Prix =".$_POST["prix"]."<br>";
}

//-----------------------------------------------------------------------------------------//
//STOCK

if (empty($_POST["stock"])) 
{
    $aErreur[] = "erreur6=true";
}
else if (!preg_match("/^[0-9]+$/", ($_POST["stock"])))
{
    $aErreur[] = "erreur6bis=true";
 }
else
{
    echo "Stock =".$_POST["stock"]."<br>";
}

//-----------------------------------------------------------------------------------------//
//COULEUR

if (empty($_POST["couleur"])) 
{
    
    $aErreur[] = "erreur7=true";
   
}
else if (!preg_match("/^[a-zA-ZéèîïÉÈÎÏ][a-zéèêëàçîï]+([-'\s][a-zA-ZéèîïÉÈÎÏ][a-zéèêëàçîï]+)?$/", ($_POST["couleur"]))) 
{
   $aErreur[] = "erreur7bis=true";
}
else
{
    echo "Couleur =".$_POST["couleur"]."<br>";
}

//-----------------------------------------------------------------------------------------//
//PRODUIT BLOQUE

if (!isset($_POST["prod"])) 
{
    $aErreur[] = "erreur8=true";
}
else
{
    echo "Bloquant =".$_POST["prod"]."<br>";
}

//-----------------------------------------------------------------------------------------//
//PHOTO

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
$new_id = $db -> lastInsertId();// Récupération de l'ID du produit en cours de création
$extension=substr (strrchr($_FILES['fichier']['name'],"."), 1);//Récupération de l'extension de l'image
$nouveauNom = $new_id.'.'.$extension;

$requete2 = $db -> prepare("UPDATE produits
                            SET pro_photo=:pro_photo
                            WHERE pro_id=:pro_id");

$requete2->bindValue(':pro_photo', $nouveauNom, PDO::PARAM_STR);
$requete2->bindValue(':pro_id', $new_id, PDO::PARAM_STR);

$cheminEtNomDefinitif = 'C:/laragon/www/Clement/Exercices PHP Avancé/JarditouPHPAvancé/Assets/img/jarditou_photos/'.$nouveauNom;// Le dossier avec le nouveau nom sera repertorié dans upload

$moveIsOk = move_uploaded_file($cheminEtNomTemporaire,$cheminEtNomDefinitif);//On remplace le nom temporaire par le nom définitif

if ($moveIsOk){

$message = "Le fichier a été uploadé dans ".$cheminEtNomDefinitif;
}
else{

$message = "Suite à une erreur, le fichier n'a pas été uploadé";
}

$InsertIsOk2 = $requete2->execute();//la variable $InsertIsOk stocke l'exécution, si toutes les bindValue sont opérationnelles et sans erreurs, alors l'exécution pourra avoir lieu

if($InsertIsOk2)//Si l'exécution dans la variable est sans erreur
{
    
    header("Location:Tableau.php");//alors une redirection sera effectué vers le tableau des produits

}
else{

    $message = "Echec de la modification";//Sinon une page apparaîtra pour signaler l'échec de l'insertion
}

/////////////////////////////////////////////////TABLEAU ERREUR///////////////////////////////////////////////


if (!empty($aErreur)) //Si le tableau n'est pas vide
{
    $sUrl = implode("&", $aErreur);//Alors on regroupe toutes les erreurs
    header("Location:produit_ajout.php?".$sUrl);//et on affiche les erreurs dans le formulaire produit_ajout.php
exit;//arrêt de la condition
}

?>

<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Validation d'ajout du produit</title>
</head>
<body>
<h1>Insertion du produit</h1>
    <p><?php echo $message;?></p>
</body>
</html>