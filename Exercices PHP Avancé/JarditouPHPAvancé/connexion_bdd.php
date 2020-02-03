<?php

require "serveur_connexion.php";
function connexionBase()

{
    $connx = connexionConditionnelle();
    
   // Paramètre de connexion serveur
   try 
   {
    $db = new PDO('mysql:host=' .$connx[0]. ';charset=utf8;dbname=' .$connx[3],$connx[1], $connx[2]);
        return $db;
    } 
    catch (Exception $e) 
    {
        echo 'Erreur : ' . $e->getMessage() . '<br>';
        echo 'N° : ' . $e->getCode() . '<br>';
        die('Connexion au serveur impossible.');
    } 
}
/*try 
   {        
        $db = new PDO('mysql:host=localhost;charset=utf8;dbname=jarditou', 'root', '');//Ligne pour se connecter à la BDD
       $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);//
   } 
   
   catch (Exception $e) {
      echo "Erreur : " . $e->getMessage() . "<br>";
      echo "N° : " . $e->getCode();
      die("Fin du script");
   }*/
?>