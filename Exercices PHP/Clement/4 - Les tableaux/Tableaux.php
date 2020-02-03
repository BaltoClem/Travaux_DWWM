<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Tableaux</title>
</head>
<body>
    
    <?php
    $tab[] = array(1, "janvier", "2016"); 
    $tab[] = array(2, "février", "2017"); 
    $tab[] = array(3, "mars", "2018"); 
    $tab[] = array(4, "avril", "2019");
    //Pour interroger un tableau 
    echo $tab[2][0]." ".$tab[2][1]." ".$tab[2][2]."<br>";

    echo "<br>";

    //Permet ici d'inclure des valeurs "chaînes de caractères" au lieu du numérique

    $facture = array("Janvier" => 500, "Février" => 620, "Décembre" => 300); 

    var_dump ($facture)."<br>";

    //Demander la taille d'un tableau

    $mois = array("Janvier", "Février", "Mars", "Avril", "Mai", "Juin", "Juillet", "Août", "Septembre", "Octobre", "Novembre", "Décembre");
 
echo count($mois); // Affiche 12 
var_dump ($mois);//Pour afficher plus précisément le contenu des 12 valeurs

echo "<br>";

//Parcours d'un tableau avec boucles

$factures = array("Janvier" => 500, "Février" => 620, "Mars" => 300, "Avril" => 130, "Mai" => 560, "Juin" => 350); 
 
$total_annuel = 0;
//L'instruction foreach permettra de lire les valeurs
foreach ($factures as $value) 
{ 
   echo $value." &euro;<br>"; 
   $total_annuel += $value;        
} 
 
echo "Total annuel de vos factures téléphoniques : ".$total_annuel." &euro;"; 

echo "<br>";
echo "<br>";

//On peut rajouter dans la boucle l'action echo "Facture du mois de ".$key." : ".$value." € <br>";
//pour détailler chaque facture de chaque mois 
    $total_annuel=0;
foreach ($factures as $key => $value) 
{ echo "Facture du mois de ".$key." : ".$value." € <br>"; 
    $total_annuel += $value;
    } 
 
echo "Total annuel de vos factures téléphoniques : ".$total_annuel." &euro;"; 

 var_dump ($factures);

 //La fonction array_push permet d'introduire une valeur dans un tableau

 $tab = array("Lundi", "Mardi", "Mercredi", "Jeudi"); 
array_push($tab, "Vendredi"); // Le var_dump affichera alors  lundi, mardi, mercredi, jeudi ET vendredi

var_dump($tab);

$tab = array("Lundi", "Mardi", "Mercredi"); 
$jour = array_pop($tab);//On initialise une nouvelle variable pour que cette dernière puisse utiliser la fonction pop ($jour)
//La dernière valeur du tableau sera alors supprimée de celui-ci
var_dump($tab);

//On rajoute ici des valeurs en début du tableau
$tab = array("Jeudi", "Vendredi"); 
array_unshift($tab, "Lundi", "Mardi", "Mercredi");

var_dump($tab);

//La fonction array_shift permet de dépiler un seul élément du tableau

$tab = array("Jeudi", "Vendredi"); 
$jour = array_shift($tab); 

var_dump ($tab, $jour);

$tab = array("Lundi", "Mardi", "Mercredi", "Jeudi", "Vendredi"); 
 
// Suppression de l'élément 2 (Mercredi)
unset($tab[2]);

//Pour trier dans le bon ordre l'ordre des valeurs (0,1,2,3 au lieu de 0,1,3,4 )
$tab = array_values($tab);
var_dump ($tab);

//Pour trier dans l'ordre alphabétique
$prenoms = array("Franck", "Laurent", "Caroline", "Magali", "Véronique");    
 
sort($prenoms);
 
for ($i = 0; $i <= count($prenoms)-1; $i++) 
{
   echo $prenoms[$i]."<br>";
}
echo "<br>";

//Pour trier dans l'ordre décroissant alphabétique

$prenoms = array("Franck", "Laurent", "Caroline", "Magali", "Véronique");    
 
rsort($prenoms); //Ce qui fera l'ordre décroissant
 
for ($i = 0; $i <= count($prenoms)-1; $i++) 
{
   echo $prenoms[$i]."<br>";
}

echo "<br>";

// Tri croissant des valeurs et non des clés

$tab = array("a" => "Lundi",
             "b" => "Mardi",
             "c" => "Mercredi",
             "d" => "Jeudi",
             "e" => "Vendredi"
        ); 
 
asort($tab);  
 
foreach ($tab as $cle => $valeur) 
{ 
   echo $cle ." : ".$valeur."<br>"; 
}
echo "<br>";
//Tri décroissant des valeurs et non des clés

$tab = array("a" => "Lundi",
             "b" => "Mardi",
             "c" => "Mercredi",
             "d" => "Jeudi");
 
arsort($tab); // Ce qui détermine l'ordre décroissant  
 
foreach ($tab as $key => $item) 
{ 
    echo $key ." : ".$item."<br>"; 
} 
    ?>
</body>
</html>