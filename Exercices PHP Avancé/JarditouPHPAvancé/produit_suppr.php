<?php
require "connexion_bdd.php";
$db = connexionBase();
$pdoStat = $db->prepare("DELETE FROM produits WHERE pro_id=:pro_id LIMIT 1");

$pdoStat->bindValue(":pro_id", $_GET['pro_id']);

$InsertIsOk = $pdoStat->execute();

if($InsertIsOk){
    
    header("Location:Tableau.php");

}
else{

    $message = "Echec de la suppression";
}
?>