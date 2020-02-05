<!-- application/views/liste.php -->
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="utf-8">
    <title>Liste des produits</title>
</head>
<body>
<h1>Liste des produits</h1>
 
<?php 
foreach ($liste_produits as $row) 
{
    echo"<p>".$row->pro_id."</p>";
    echo"<p>".$row->pro_ref."</p>";
    echo"<p>".$row->pro_libelle."</p>";
    echo"<p>".$row->pro_description."</p>";     
}
?>
</body>
</html>