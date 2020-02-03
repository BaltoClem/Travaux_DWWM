<?php

function connexionConditionnelle(){
    if ($_SERVER["SERVER_NAME"] == "dev.amorce.org")
    {

        // Paramètre de connexion serveur
        $host = "localhost";
        $login= "cdumas";     // Votre login d'accès au serveur de BDD 
        $password="baltoclem924";    // Le Password pour vous identifier auprès du serveur
        $base = "cdumas";    // La bdd avec laquelle vous voulez travailler 
    }

    if ($_SERVER["SERVER_NAME"] == "localhost")
    {

        // Paramètre de connexion serveur
        $host = "localhost";
        $login= "root";     // Votre login d'accès au serveur de BDD 
        $password="";    // Le Password pour vous identifier auprès du serveur
        $base = "jarditou";    // La bdd avec laquelle vous voulez travailler 
    }
    return array($host,$login,$password,$base);
}

?>