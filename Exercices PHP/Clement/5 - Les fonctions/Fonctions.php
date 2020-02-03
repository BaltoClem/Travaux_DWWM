<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Fonctions</title>
</head>
<body>
    <?php

//Fonction en php

function bonjour($prenom)
{
    echo "Bonjour"." ".$prenom;
}
$prenom = "Dave";
bonjour($prenom);
echo "<br>";

//Exemple d'une fonction php avec des conditions

$age = 19;

function isMineur($age)
{
    if ($age > 18)
    {
        return "majeur";
    }

else{
    return "mineur";
}
}
echo isMineur($age);
echo "<br>";

// Exemple pour calculer un prix avec un tableau
function calculPrix($prix_ht, $remise) 
{                 
    $base_ht = $prix_ht - $remise;
    $prix_ttc = $base_ht * 1.20; 
    $retour = array($base_ht, $prix_ttc);
 
    return $retour; 
}   
 
$retour = function calculPrix(110, 10);
 
echo"- Base HT : ".$retour["base_ht"]." €<br>"; // affiche 100 €
echo"- Prix TTC : ".$retour["prix_ttc"]." €<br>"; // affiche 120 € 
?>
</body>
</html>