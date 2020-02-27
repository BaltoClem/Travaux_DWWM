<?php

if(isset($this->session->admin)||isset($this->session->user))
{
    echo "Bienvenue sur Jarditou ".$this->session->prenom."<br/>";
    echo "<a style='color:#0000FF; text-decoration:underline' href='http://localhost/Jarditou_CI/index.php/produits/deconnexion'>Se déconnecter</a>";
}
?>

<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <!--Mettre le lien pour BootStrap AVANT le lien CSS-->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
        integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link rel="stylesheet" href="http://localhost/Jarditou_CI/assets\css\style.css">
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <title>Jarditou</title>
</head>
<!--Consigne : un seul conteneur-->

<body
    style="background-image:url('http://www.maison-conseil.org/wp-content/uploads/2018/01/le-gazon-en-rouleau-profiter-jardin.png'); background-repeat:no-repeat; background-size : cover; background-attachment : fixed; background-position: center;">
    <div class="container" style="background-color:white;">

        <!--Afin de mettre les colonnes en disposition "ligne" il faut rajouter une class row-->
        <div class="row">
            <!--On trouve ici le haut de la page avec le logo-->
            <div class="col-6 mt-5"><img src="http://localhost/Jarditou_CI/assets\img\jarditou_logo.jpg"
                    alt="Logo Jarditou" id="logoJarditou" class="logo"></div>
            <div class="col-6 mt-5 pt-lg-5">
                <h3 id="toutlejardin">Tout le jardin</h3>
            </div>
            <style>
                #toutlejardin {
                    color: #2A752A;
                }
            </style>
            <!--Ici la barre de navigation avec les différents liens vers les autres pages-->
            <nav id="navbar" class="col-12 navbar-expand-sm navbar-dark">
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse justify-content-between" id="collapsibleNavbar">
                    <ul class="navbar-nav ml-0">
                        <li class="nav-item"><a class="nav-link"
                                href="http://localhost/Jarditou_CI/index.php/produits/index">Accueil</a></li>
                        <li class="nav-item"><a class="nav-link"
                                href="http://localhost/Jarditou_CI/index.php/produits/liste">Tableau</a></li>
                        <li class="nav-item"><a class="nav-link"
                                href="http://localhost/Jarditou_CI/index.php/produits/contact">Contact</a></li>
                        <?php
                if(empty($this->session->user ||  $this->session->admin))
                {
                    ?>
                        <li class="nav-item"><a class="nav-link"
                                href="http://localhost/Jarditou_CI/index.php/produits/inscription">Inscription</a></li>

                        <?php
                }
                ?>
                        <?php
               if(isset($this->session->admin))
                {
                    ?>
                        <li class="nav-item"><a class="nav-link"
                                href="http://localhost/Jarditou_CI/index.php/produits/addproduct">Ajouter un produit</a>
                        </li>
                        <?php
                }
                ?>
                    </ul>
                    <ul class="navbar-nav mr-0">
                        <?php
                if(empty($this->session->user ||  $this->session->admin))
                {
                    ?>


                        <li class="nav-item">
                            <a class="nav-link" href="http://localhost/Jarditou_CI/index.php/produits/form_connexion">Se connecter</a>
                        </li>

                        <?php
                }
                ?>
                        <li class="nav-item">
                            <a class="nav-link"
                                href="http://localhost/Jarditou_CI/index.php/panier/afficherpanier">
                                <img src="http://localhost\Jarditou_CI\assets\img\jarditou_photos\Shopping_cart_icon.svg.png"
                                    width="30" height="30" alt="Cart">
                                <?php if($this->session->panier) echo count($this->session->panier); else echo "0"; ?></a>

                        </li>
                    </ul>
                </div>
            </nav>
            <!--La banderole sur les promotions avec du web responsive en BootStrap-->
            <div class="col-12 mb-2 mt-1"><img src="http://localhost/Jarditou_CI/assets\img\promotion.jpg"
                    alt="Promotion" class="promotion"></div>