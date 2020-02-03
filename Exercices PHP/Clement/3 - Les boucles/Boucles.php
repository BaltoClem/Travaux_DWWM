<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Les boucles en PHP</title>
</head>
<body>
    <?php

for ($i=0; $i<150; $i++){
    if ($i%2 != 0){
        echo $i . "<br>";}
    };

for ($i=0; $i<500; $i++){
    echo "Je dois faire des sauvegardes régulières de mes fichiers <br>";
};
echo"<br>";
?>
<br>

<table align = center border width=500 height=500>

<?php
for($i=0; $i<=12; $i++)
{
    echo"<tr>";

    for($j=0; $j<=12; $j++)
    {
        echo"<td>".$i*$j."</td>";
    }
    echo"</tr>";

}
    ?>
    </table>
</body>
</html>