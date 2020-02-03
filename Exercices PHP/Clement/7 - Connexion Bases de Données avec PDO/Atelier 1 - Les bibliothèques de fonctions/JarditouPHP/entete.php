<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
<!--Mettre le lien pour BootStrap AVANT le lien CSS-->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link rel="stylesheet" href="Assets\css\style.css">
    <title>Jarditou</title>
</head>
<!--Consigne : un seul conteneur-->
<body>
        <div class="container">
<!--Afin de mettre les colonnes en disposition "ligne" il faut rajouter une class row-->
                <div class= "row">        
<!--On trouve ici le haut de la page avec le logo-->
        <div class="col-6"><img src="Assets\img\jarditou_logo.jpg" alt="Logo Jarditou" id="logoJarditou" class="logo"></div>           
        <div class="col-6 mt-5"><h3>Tout le jardin</h3></div>
<!--Ici la barre de navigation avec les différents liens vers les autres pages-->
<nav id="navbar" class="col-12 navbar-expand-sm navbar-dark">
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="collapsibleNavbar">
            <ul class="navbar-nav">
                <li class="nav-item"><a class="nav-link" href="index.php">Accueil</a></li>
                <li class="nav-item"><a class="nav-link" href="Tableau.php">Tableau</a></li>
                <li class="nav-item"><a class="nav-link" href="Contact.php">Contact</a></li>
            </ul>
        </div>
    </nav>
<!--La banderole sur les promotions avec du web responsive en BootStrap-->
    <div class="col-12"><img src="Assets\img\promotion.jpg" alt="Promotion" class="promotion"></div>