<?php

//Initialisation d'un tableau d'erreurs

$aErreur = [];

//-----------------------------------------------------------------------------------------//

//NOM
if (empty($_POST["nom"])) 
{//Si le nom est vide, l'erreur se trouvera dans le tableau erreur
    $aErreur[] = "erreur1=true";
}
else if (!preg_match("/^[a-zA-ZéèîïÉÈÎÏ][a-zéèêëàçîï]+([-'\s][a-zA-ZéèîïÉÈÎÏ][a-zéèêëàçîï]+)?$/", ($_POST["nom"]))) 
{
   $aErreur[] = "erreur1bis=true";
}
else
{
    echo "NOM =".$_POST["nom"]."<br>";
}

//-----------------------------------------------------------------------------------------//

//PRENOM
if (empty($_POST["prenom"])) 
{
    
    $aErreur[] = "erreur2=true";
   
}
else if (!preg_match("/^[a-zA-ZéèîïÉÈÎÏ][a-zéèêëàçîï]+([-'\s][a-zA-ZéèîïÉÈÎÏ][a-zéèêëàçîï]+)?$/", ($_POST["prenom"]))) 
{
   $aErreur[] = "erreur2bis=true";
}
else
{
    echo "PRENOM =".$_POST["prenom"]."<br>";
}

//-----------------------------------------------------------------------------------------//

//SEXE
if (empty($_POST["sexe"])) 
{
    $aErreur[] = "erreur3=true";
}
else
{
    echo "SEXE =".$_POST["sexe"]."<br>";
}

//-----------------------------------------------------------------------------------------//

//DATE DE NAISSANCE
if (empty($_POST["date"])) 
{
    $aErreur[] = "erreur4=true";
}
else if (!preg_match("/^([1-2][0-9][0-9][0-9](\-)[0-2][0-9](\-)[0-3][0-9])$/", ($_POST["date"])))
{
    $aErreur[] = "erreur4bis=true";
 }
else
{
    echo "DATE DE NAISSANCE =".$_POST["date"]."<br>";
}

//-----------------------------------------------------------------------------------------//

//ADRESSE
if (empty($_POST["adresse"])) 
{
    $aErreur[] = "erreur5=true";
}
else if (!preg_match("/[a-zA-ZÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖØŒŠþÙÚÛÜÝŸàáâãäåæçèéêëìíîïðñòóôõöøœšÞùúûüýÿ]+[^1-9¢ß¥£™©®ª×÷±²³¼½¾µ¿¶·¸º°¯§…¤¦≠¬ˆ¨‰]+/", ($_POST["adresse"])))
{
    $aErreur[] = "erreur5bis=true";
 }
else
{
    echo "ADRESSE =".$_POST["adresse"]."<br>";
}

//-----------------------------------------------------------------------------------------//

//CODE POSTAL
if (empty($_POST["codepostal"])) 
{
    $aErreur[] = "erreur6=true";
}
else if (!preg_match("/^[0-9]{5}$/", ($_POST["codepostal"])))
{
    $aErreur[] = "erreur6bis=true";
 }
else
{
    echo "CODE POSTAL =".$_POST["codepostal"]."<br>";
}

//-----------------------------------------------------------------------------------------//

//VILLE
if (empty($_POST["ville"])) 
{
    $aErreur[] = "erreur7=true";  
}
else if (!preg_match("/^[a-zA-ZéèîïÉÈÎÏ]([a-zéèêëàçîï]?)+([-'\s][a-zA-ZéèîïÉÈÎÏ][a-zéèêëàçîï]+)?$/", ($_POST["ville"])))
{
    $aErreur[] = "erreur7bis=true";
 }
else
{
    echo "VILLE =".$_POST["ville"]."<br>";
}

//-----------------------------------------------------------------------------------------//

//EMAIL
if (empty($_POST["email"])) 
{
    $aErreur[] = "erreur8=true";
}
else if (!preg_match("/^[a-zA-Z0-9.-]+@[a-z0-9.-]{2,252}.[a-z]{2,4}$/",($_POST["email"]))) 
{
   $aErreur[] = "erreur8bis=true";
}
else
{
    echo "ADRESSE EMAIL =".$_POST["email"]."<br>";
}

//-----------------------------------------------------------------------------------------//

//SUJET
if (empty($_POST["sujet"])) 
{
    $aErreur[] = "erreur9=true";
}
else
{
    echo "SUJET =".$_POST["sujet"]."<br>";
}

//-----------------------------------------------------------------------------------------//

//QUESTION
if (empty($_POST["question"])) 
{
    $aErreur[] = "erreur10=true";
}
else
{
    echo "QUESTION =".$_POST["question"]."<br>";
}

//-----------------------------------------------------------------------------------------//

//ACCORD
if (empty($_POST["accord"])) 
{
    $aErreur[] = "erreur11=true";
}
else
{ 
    echo "ACCORD =".$_POST["accord"]."<br>";
}

//-----------------------------------------------------------------------------------------//

//Initialisation d'une fonction pour que toutes les erreurs apparaissent en même temps

if (!empty($aErreur)) //Si le tableau n'est pas vide
{
    $sUrl = implode("&", $aErreur);//Alors on regroupe toutes les erreurs
    header("Location:contact.php?".$sUrl);//et on affiche les erreurs dans le formulaire contact.php
exit;//arrêt de la condition
}

?>