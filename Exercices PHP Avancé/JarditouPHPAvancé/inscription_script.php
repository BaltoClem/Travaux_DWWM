<?php

require "connexion_bdd.php";// Inclusion de notre bibliothèque de fonctions
$db = connexionBase();
date_default_timezone_set('Europe/Paris');//Permet de préciser exactement les horaires souhaités
$date = date("Y-m-d H:i:s");//Définition de la date
$password = $_POST["psswrd"];
$passwordHash = password_hash($_POST["psswrd"], PASSWORD_BCRYPT);


$pdoStat = $db->prepare("INSERT INTO users(nom, prenom, mail, lgn, psswrd, date_inscr, date_dern_connex)
VALUES(:nom,:prenom,:email,:lgn,:psswrd,'".$date."','".$date."')");

$pdoStat->bindValue(':nom', $_POST['nom'], PDO::PARAM_STR);//":" sera défini par le $_POST que l'utilisateur aura choisi
$pdoStat->bindValue(':prenom', $_POST['prenom'], PDO::PARAM_STR);
$pdoStat->bindValue(':email', $_POST['email'], PDO::PARAM_STR);
$pdoStat->bindValue(':lgn', $_POST['lgn'], PDO::PARAM_STR);
$pdoStat->bindValue(':psswrd', $passwordHash, PDO::PARAM_STR);


$InsertIsOk = $pdoStat->execute();//la variable $InsertIsOk stocke l'exécution, si toutes les bindValue sont opérationnelles et sans erreurs, alors l'exécution pourra avoir lieu

if($InsertIsOk)//Si l'exécution dans la variable est sans erreur
{
    
    $message= "Insertion réussie";//alors une redirection sera effectuée

}
else{

    $message = "Echec de l'insertion";//Sinon une page apparaîtra pour signaler l'échec de l'insertion
}
//Initialisation d'un tableau d'erreurs

$aErreur = [];

//-----------------------------------------------------------------------------------------//

//LOGIN
if (empty($_POST["lgn"])) 
{//Si le nom est vide, l'erreur se trouvera dans le tableau erreur
    $aErreur[] = "erreur1=true";
}
else
{
    echo "LOGIN =".$_POST["lgn"]."<br>";
}

//-----------------------------------------------------------------------------------------//

//NOM
if (empty($_POST["nom"])) 
{//Si le nom est vide, l'erreur se trouvera dans le tableau erreur
    $aErreur[] = "erreur2=true";
}
else if (!preg_match("/^[a-zA-ZéèîïÉÈÎÏ][a-zéèêëàçîï]+([-'\s][a-zA-ZéèîïÉÈÎÏ][a-zéèêëàçîï]+)?$/", ($_POST["nom"]))) 
{
   $aErreur[] = "erreur2bis=true";
}
else
{
    echo "NOM =".$_POST["nom"]."<br>";
}

//-----------------------------------------------------------------------------------------//
//PRENOM
if (empty($_POST["prenom"])) 
{
    
    $aErreur[] = "erreur3=true";
   
}
else if (!preg_match("/^[a-zA-ZéèîïÉÈÎÏ][a-zéèêëàçîï]+([-'\s][a-zA-ZéèîïÉÈÎÏ][a-zéèêëàçîï]+)?$/", ($_POST["prenom"]))) 
{
   $aErreur[] = "erreur3bis=true";
}
else
{
    echo "PRENOM =".$_POST["prenom"]."<br>";
}

//-----------------------------------------------------------------------------------------//
//EMAIL
if (empty($_POST["email"])) 
{
    $aErreur[] = "erreur4=true";
}
else if (!preg_match("/^[a-zA-Z0-9.-]+@[a-z0-9.-]{2,252}.[a-z]{2,4}$/",($_POST["email"]))) 
{
   $aErreur[] = "erreur4bis=true";
}
else
{
    echo "ADRESSE EMAIL =".$_POST["email"]."<br>";
}

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
    header("Location:inscription.php?".$sUrl);//et on affiche les erreurs dans le formulaire contact.php
exit;//arrêt de la condition
}
?>

<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Validation d'ajout du client</title>
</head>
<body>
<h1>Insertion du client</h1>
    <p><?php echo $message;?></p>
</body>
</html>