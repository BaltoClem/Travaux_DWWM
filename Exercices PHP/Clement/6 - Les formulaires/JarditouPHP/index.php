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
    
                 <!--Le texte principal avec Bootstrap, à partir de LG le texte prendra 8 colonnes-->
                 <div class = "col-6 col-lg-8">
                     <h1>Accueil</h1>
                     <hr>
                     
                     <h2>L'entreprise</h2>
                     
                     <p>Notre entreprise familiale met tout son savoir-faire à votre disposition dans le domaine du jardin et du paysagisme.</p>
                     <p>Créée il y a 70 ans, notre entreprise vend fleurs, arbustes, matériel à main et motorisés.</p>
                     <p>Implantés à Amiens, nous intervenons dans tout le département de la Somme : Albert, Doullens, Péronne, Abbeville, Corbie</p>
                     
                     <h2>Qualité</h2>
                     
                     <p>Nous mettons à votre disposition un service personnalisé, avec 1 seul interlocuteur durant tout votre projet.</p>
                     <p>Vous serez séduit par notre expertise, nos compétences et notre sérieux.</p>
                     <br>
                     
                     <h2>Devis gratuit</h2>
                     
                     <p>Vous pouvez bien sûr contacter pour de plus amples informations ou pour une demande d’intervention. Vous souhaitez un devis ? Nous vous le réalisons gratuitement.</p>
                    </div>
                    
                    <!--La colonne droite (devra disparaître en dessous de lg)-->
                    
                    <aside class="col-6 col-lg-4">
                        [COLONNE DROITE]
                    </aside>                   
                    
                </div>
                <!--Le bas de la page-->
                    <div class= "row">
                        <footer class="col-12 p-3">
                            <ul>
                                <li> Mentions légales</li>
                                <li>Horaires</li>
                                <li> Plan du site</li>
                            </ul>
                        </footer>
</footer>
</div>
</div>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
 <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
 <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
</body>
</html>