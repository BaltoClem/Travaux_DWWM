
<?php
session_start();

if(isset($_SESSION['User']))

{
    echo "Bienvenue sur Jarditou ".$_SESSION['User'].'<br/>';
    echo "<a style='color:#0000FF; text-decoration:underline' href='logout.php'>Se déconnecter</a>";
}
?>

<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
<!--Mettre le lien pour BootStrap AVANT le lien CSS-->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link rel="stylesheet" href="http://localhost/Jarditou_CI/assets\css\style.css">
    <title>Jarditou</title>
</head>
<!--Consigne : un seul conteneur-->
<body>
        <div class="container">
        
<!--Afin de mettre les colonnes en disposition "ligne" il faut rajouter une class row-->
                <div class= "row">        
<!--On trouve ici le haut de la page avec le logo-->
        <div class="col-6 mt-5"><img src="http://localhost/Jarditou_CI/assets\img\jarditou_logo.jpg" alt="Logo Jarditou" id="logoJarditou" class="logo"></div>           
        <div class="col-6 mt-5 pt-lg-5"><h3 id="toutlejardin">Tout le jardin</h3></div>
        <style>#toutlejardin{
            color : #2A752A;}
            </style>
<!--Ici la barre de navigation avec les différents liens vers les autres pages-->
<nav id="navbar" class="col-12 navbar-expand-sm navbar-dark">
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse justify-content-between" id="collapsibleNavbar">
            <ul class="navbar-nav ml-0">
                <li class="nav-item"><a class="nav-link" href="index.php">Accueil</a></li>
                <li class="nav-item"><a class="nav-link" href="http://localhost/Jarditou_CI/">Tableau</a></li>
                <li class="nav-item"><a class="nav-link" href="contact.php">Contact</a></li>
                <li class="nav-item"><a class="nav-link" href="inscription.php">Inscription</a></li>
                <li class="nav-item"><a class="nav-link" href="http://localhost/Jarditou_CI/index.php/produits/addproduct">Ajouter un produit</a></li>
                <li class="nav-item"><a class="nav-link" href="connexion_index.php">Se connecter</a></li>
        </div>
    </nav>
<!--La banderole sur les promotions avec du web responsive en BootStrap-->
    <div class="col-12 mb-2 mt-1"><img src="http://localhost/Jarditou_CI/assets\img\promotion.jpg" alt="Promotion" class="promotion"></div>