<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
    <?php

$a = array("19001" => array("Centre", "Centre", "Centre", "Centre", "Centre", "Centre", "", "", "Centre", "Centre", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Validation", "Validation"), 
         "19002" => array("Centre", "Centre", "Centre", "Centre", "Centre", "Centre", "Centre", "Centre", "Centre", "Centre", "Centre", "Centre", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Validation", ""), 
         "19003" => array("", "", "Centre", "Centre", "Centre", "Centre", "Centre", "Centre", "Centre", "Centre", "Centre", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "Stage", "", "", "Validation") 
       );

       var_dump($a);

       //Exercice 1 - 
$array1 = array_search("Validation", $a[19002])+1;
echo "La validation du stage 19002 se passe à la semaine". " ".$array1;
echo "<br>";

       //Exercice 2 -
$array2 = array_keys($a[19001],"Stage");
echo "La dernière occurrence de <em>Stage</em> se trouve à la place". " ".end($array2);
echo "<br>";

       //Exercice 3

$array3 = array_keys($a); 
var_dump($array3);

       //Exercice 4

$arra = array_keys($a[19003],"Stage");
$array4 = (count($arra));
echo "Le stage du groupe 19003 dure"." ". $array4. " "."semaines";
    ?>
</body>
</html>