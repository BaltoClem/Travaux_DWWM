<?php
require "connexion_bdd.php";// Inclusion de la bibliothèque de fonctions
$db = connexionBase();// Appel de la fonction de connexion

$date = date("Y-m-d H:i:s");//Définition de la date
date_default_timezone_set('Europe/Paris');

$pro_id = $_POST["pro_id"];//On demande ici d'aller chercher l'id du produit correspondant au produit sélectionné par l'utilisateur

$pdoStat = $db ->prepare("UPDATE produits 
                        SET pro_id=:pro_id, pro_ref=:pro_ref, pro_cat_id=:pro_cat_id, 
                        pro_libelle=:pro_libelle, pro_description=:pro_description, 
                        pro_prix=:pro_prix, pro_stock=:pro_stock, 
                        pro_couleur=:pro_couleur, pro_d_modif='".$date."',
                        pro_bloque=:pro_bloque 
                        WHERE pro_id=:pro_id");//Cette requête permet de mettre à jour les données que l'utilisateur voudra modifier

//les ":" devant les noms de colonne sont la nomenclature officielle de la fonction, cela sert à déterminer les colonnes concernées plus tard dans le script


//bindValue associe une valeur à un paramètre
$pdoStat->bindValue(':pro_id', $_POST['pro_id'], PDO::PARAM_INT);
$pdoStat->bindValue(':pro_ref', $_POST['reference'], PDO::PARAM_STR);
$pdoStat->bindValue(':pro_cat_id', $_POST['pro_cat_id'], PDO::PARAM_INT);
$pdoStat->bindValue(':pro_libelle', $_POST['libelle'], PDO::PARAM_STR);
$pdoStat->bindValue(':pro_description', $_POST['description'], PDO::PARAM_STR);
$pdoStat->bindValue(':pro_prix', $_POST['prix'], PDO::PARAM_INT);
$pdoStat->bindValue(':pro_stock', $_POST['stock'], PDO::PARAM_INT);
$pdoStat->bindValue(':pro_couleur', $_POST['couleur'], PDO::PARAM_STR);

if ($_POST['prod']==0) //Même condition que pour produit_ajout_script.php
{
    $bloque = NULL;
} 
else if ($_POST['prod']==1) 
{
    $bloque = 1;
}
$pdoStat->bindValue(':pro_bloque', $bloque, PDO::PARAM_STR);

$InsertIsOk = $pdoStat ->execute();

if($InsertIsOk)
{
    header("Location:Tableau.php");

}
else
{

    $message = "Echec de la modification";
}
?>

<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Validation de modification du produit</title>
</head>
<body>
<h1>Modification du produit</h1>
    <p><?php echo $message;?></p>
</body>
</html>
 
