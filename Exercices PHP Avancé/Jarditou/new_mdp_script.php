<?php

require "connexion_bdd.php";// Inclusion de notre bibliothèque de fonctions
$db = connexionBase();
$password =($_POST["psswrd"]);
$password_hash = password_hash($password, PASSWORD_DEFAULT);
$recup_mail = $_POST["mail"];

$pdoStat = $db->prepare("UPDATE users 
                        SET psswrd='$password_hash' 
                        WHERE mail='".$recup_mail."'");
                        
$pdoStat->bindValue(':psswrd', $password_hash, PDO::PARAM_STR);
$pdoStat->bindValue(':mail', $recup_mail, PDO::PARAM_STR);

$InsertIsOk = $pdoStat->execute();//la variable $InsertIsOk stocke l'exécution, si toutes les bindValue sont opérationnelles et sans erreurs, alors l'exécution pourra avoir lieu

if($InsertIsOk)//Si l'exécution dans la variable est sans erreur
{
    
    $message= "Le mot de passe a été changé";//alors une redirection sera effectuée

}
else{

    $message = "Le mot de passe n'a pas pu être modifié";//Sinon une page apparaîtra pour signaler l'échec de l'insertion
}

$aErreur = [];

//-----------------------------------------------------------------------------------------//
//MOT DE PASSE
if (empty($_POST["psswrd"])) 
{
    
    $aErreur[] = "erreur5=true";
   
}
else if (!preg_match("/^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])[0-9a-zA-Z]{8,}$/", ($_POST["psswrd"]))) 
{
   $aErreur[] = "erreur5bis=true";
}
else
{
    echo "MDP =".$_POST["psswrd"]."<br>";
}

//-----------------------------------------------------------------------------------------//
//CONFIRMATION MOT DE PASSE

if (empty($_POST["psswrd2"])) 
{
    
    $aErreur[] = "erreur6=true";
   
}
else if (($_POST["psswrd2"])!== ($_POST["psswrd"]))
{
   $aErreur[] = "erreur6bis=true";
}
else
{
    echo "MDP =".$_POST["psswrd2"]."<br>";
}
//-----------------------------------------------------------------------------------------//

//Initialisation d'une fonction pour que toutes les erreurs apparaissent en même temps

if (!empty($aErreur)) //Si le tableau n'est pas vide
{
    $sUrl = implode("&", $aErreur);//Alors on regroupe toutes les erreurs
    header("Location:new_mdp.php?".$sUrl);//et on affiche les erreurs dans le formulaire contact.php
exit;//arrêt de la condition
}