<?php
require "connexion_bdd.php"; // Inclusion de notre bibliothèque de fonctions


$date = date("Y-m-d H:i:s");
$pro_id = $_POST["pro_id"];
date_default_timezone_set('Europe/Paris');
$pdoStat = $db ->prepare("INSERT INTO produits(pro_ref, pro_libelle, pro_prix, pro_stock, pro_couleur, pro_photo, pro_d_ajout)
VALUES(:pro_ref, :pro_libelle, :pro_prix, :pro_stock, :pro_couleur, '','".$date."')");

$pdoStat->bindValue(':pro_ref', $_POST['reference'], PDO::PARAM_STR);
$pdoStat->bindValue(':pro_libelle', $_POST['libelle'], PDO::PARAM_STR);
$pdoStat->bindValue(':pro_prix', $_POST['prix'], PDO::PARAM_STR);
$pdoStat->bindValue(':pro_stock', $_POST['stock'], PDO::PARAM_STR);
$pdoStat->bindValue(':pro_couleur', $_POST['couleur'], PDO::PARAM_STR);

$InsertIsOk = $pdoStat ->execute();

if($InsertIsOk){
    $message = "Le produit a été rajouté dans la base de données";
}
else{

    $message = "Echec de l'insertion";
}
?>

 
