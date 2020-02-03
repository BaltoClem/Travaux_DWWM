<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Bonjour</title>
</head>
<body>
   <?php
   echo"Bonjour le monde";
   ?> 
   <?php echo "<h1>Bonjour le monde</h1>";
   ?>
   <h1><?php echo "Bonjour le monde"; ?></h1>
   <?php
   $bonjour = "Bonjour le monde";
   echo "<b>$bonjour</b>";
   ?>
   <h1><?php echo "Bonjour le monde"; ?></h1>

   <?php
echo"Lorem ipsum dolor, sit amet consectetur adipisicing elit.";
    echo"<br/>";
echo"Dolores suscipit porro consequatur aut sit quia corrupti nisi deserunt,";
    echo"<br/>";
 echo"minima nihil reprehenderit et non velit repudiandae ratione,";
    echo"<br/>";
 echo"iure perspiciatis aliquam doloribus.";
    echo"<br/>";
 ?>
   <br>
   
   <?php 
   //Concaténer des valeurs avec .
   $a = "Winter"; 
echo $a . " is coming !";
    ?>
    <br>

    <?php
    //Faire des calculs

   echo $a = 0; // vaut 0
   echo"<br/>";

   echo $a = ($b=5) +7; // vaut 12 car (5+7)
   echo"<br/>";

   echo $a += 4; // vaut 16 car "+=" => $a = $a + 4
   echo"<br/>";

   echo $a -= 20; // vaut -4 ($a = $a-20)
   echo"<br/>";

//Faire des conditions type if
// Méthode classique
$age = 25;
if ($age>=18)
{
   $reponse = "majeur";
}
else
{
   $reponse = "mineur";
}
echo $reponse;
echo "</br>";

//Deuxième méthode plus économique
   $age = 22;
(($age >= 18) ? $reponse="majeur" : $reponse="mineur"); 
   echo "Vous êtes ".$reponse. "."; 
   echo"<br/>";

 // Façon ternaire d'écrire une condition encore plus rapidement
   $age = 25;
echo "Vous êtes ".(($age >= 18) ? "majeur" : "mineur"). "."; 
echo"<br/>";

//Déclarer des variables pour les tableaux
$couleur[0] = "red";
$couleur[1] = "blue";
$couleur[2] = "white";
$couleur[3] = "black";

// Deuxième méthode

$couleur[] = "red";
$couleur[] = "blue";
$couleur[] = "white";
$couleur[] = "black";
 
// pour afficher la valeur "white", on écrira :
echo $couleur[2];

echo"<br/>";

//Utilisation d'une fonction avec "global" pour appeler les variables en dehors de la fonction
$a = $b = 2; 
 
function somme() { 
  global $a, $b; 
  $b = $a + $b; 
} 
 
somme(); 
 
echo $b."<br>";

//Utilisation d'une fonction avec "static" pour conserver la variable de la fonction

//Test faux

function Test() { 
    $a=0; 
    echo $a."<br>"; 
    $a++; 
 } 
  
 // Appel de la fonction (2 fois)
 Test(); 
 Test();
 
 // Test vrai

 function Test1 () 
{ 
   static $a=0; 
   echo "$a<br />"; 
   $a++;
} 
 
// Appel de la fonction (3 fois)
Test1(); 
Test1(); 
Test1(); 

echo"<br/>";

//Déclarer une variable variable

$var1 = "bonjour";
$$var1 = "le monde";
echo $bonjour;
// Cela affichera le monde en déclarant la variable bonjour
echo"<br/>";

$a = 15.125863; 
settype($a, "integer"); /* en précisant ici que la variable $a est une integer, 
on demande à ce qu'un entier apparaisse*/
echo $a;

echo"<br/>";

$a = 6.32172; 
$b = intval($a); // affichera ici en entier aussi
$c = doubleval($a); 
echo $a." ".$b." ".$c; 

echo"<br/>";

// Déclarer une constante

define("EURO", 6.55957);
echo EURO; // affichera définitivement et constamment 6.55957;
echo "</br>";

// Afficher des infos d'une variable
$myVar = "bonjour";
var_dump($myVar);

echo "</br>";

//Ajouter des messages d'erreur
$myVar = "KO";
 
if ($myVar == "OK") 
{    
   echo"C'est bon<br>";
} 
else 
{
    echo"Ouh la la pas bien !<br>"; // Message affiché dans la page web
    error_log("Ouh la la pas bien"); // Message enregistré dans le fichier 'C:/wamp/logs/php_error.log' 
} 

echo"C'est bon<br>";

$myVar = "OK";
echo (($myVar == "OK") ? "C'est bon <br>" : "Ouh la la pas bien"); error_log("Ouh la la pas bien");

echo"</br>";

//Les variables "Système"

echo $_SERVER["SERVER_NAME"];
echo"</br>";

var_dump($_SERVER);
?>

<?php
  $euro = 6.55957;
  printf("%.2f FF<br />",$euro); // sert à arrondir au deuxième chiffre après la virgule
 
  $money1 = 68.75;
  $money2 = 54.35;
  $money = $money1 + $money2;
 
  echo $money; // affiche 123.1;
 
  echo "affichage sans printf : ".$money."<br>";
 
  $monformat = sprintf("%01.2f", $money); // sert à afficher le deuxième chiffre après la virgule
 
  echo $monformat; // affiche 123.10
 
  echo "affichage avec printf : ".$monformat."<br>";
 
  $year = "2002";
  $month = "4";
  $day = "5";
 
  $date = sprintf("%04d-%02d-%02d", $year, $month, $day); //sprintf définit ici le nombre de caractères à afficher 
 
  echo $date; // affichera "2002-04-05"
  
?>
<br>
<!--Exercice-->

<?php
echo $_SERVER["SERVER_ADDR"];
echo"<br/>";
echo $_SERVER["REMOTE_ADDR"];
?>

</body>
</html>