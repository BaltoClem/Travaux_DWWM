<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
<!--Mettre le lien pour BootStrap AVANT le lien CSS-->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link rel="stylesheet" href="assets\css\style.css">
    <title>Jarditou</title>
</head>
<!--Consigne : un seul conteneur-->
<body>
        <div class="container">
        
<!--Afin de mettre les colonnes en disposition "ligne" il faut rajouter une class row-->
                <div class= "row">        
<!--On trouve ici le haut de la page avec le logo-->
        <div class="col-6 mt-5"><img src="assets\img\jarditou_logo.jpg" alt="Logo Jarditou" id="logoJarditou" class="logo"></div>           
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
                <li class="nav-item"><a class="nav-link" href="Tableau.php">Tableau</a></li>
                <li class="nav-item"><a class="nav-link" href="contact.php">Contact</a></li>
                <li class="nav-item"><a class="nav-link" href="inscription.php">Inscription</a></li>
                <li class="nav-item"><a class="nav-link" href="produit_ajout.php">Ajouter un produit</a></li>
                <li class="nav-item"><a class="nav-link" href="connexion_index.php">Se connecter</a></li>
            </ul>
            
        </div>
    </nav>
<!--La banderole sur les promotions avec du web responsive en BootStrap-->
    <div class="col-12 mb-2 mt-1"><img src="assets\img\promotion.jpg" alt="Promotion" class="promotion"></div>

    <div class="table-responsive">
    <table class="table table-striped table-hover table-bordered">
        <thead>
            <tr class="text-center">
                <th>Photo</th>
                <th>ID</th>
                <th>Catégorie</th>
                <th>Libellé</th>
                <th>Prix</th>
                <th>Quantité</th>
                <th>Couleur</th>
                <th>Ajout</th>
                <th>Modifications</th>
                <th>Bloqué</th>
        </thead>

        <tbody>

            <!--Création de la connexion entre la base de donnéers et le site-->
<?php 
foreach ($liste_produits as $row) 
{          
    if (strlen($row->pro_photo) <= 4)
{
    $image_src = $row->pro_id.".".$row->pro_photo;
} else {
    $image_src = $row->pro_photo;
}

    ?>
    <tr>
    <td><img src = "assets/img/jarditou_photos/<?=$image_src?>" alt='photo' title='photo' width= "100" height= "auto" class="text-center align-middle"></td>
    <td class="text-center align-middle"><?=$row->pro_id ?></td>
    <td class="text-center align-middle"><?=$row->pro_ref?></td>
    <td class="text-center align-middle"><a href='detail.php?id=<?=$row->pro_id?>' class="lien" style="color:#0000FF; text-decoration:underline"><?= $row->pro_libelle ?></a></td>
    <td class="text-center align-middle"><?= $row->pro_prix."€"?></td>
    <td class="text-center align-middle"><?= $row->pro_stock?></td>
    <td class="text-center align-middle"><?= $row->pro_couleur?></td>
    <td class="text-center align-middle"><?= $row->pro_d_ajout?></td>
    <td class="text-center align-middle"><?= $row->pro_d_modif?></td>
    <td class="text-center align-middle"><?= $row->pro_bloque?></td>
    </tr>
    <?php
}
?>

        </tbody>
    </table>
</div>

 <!--Le bas de la page-->
 
 <footer class="col-12 p-1 mt-1">
                            <ul>
                                <li>Mentions légales</li>
                                <li>Horaires</li>
                                <li>Plan du site</li>
                            </ul>
</form>
                        </footer>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
 <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
 <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>


</body>
</html>
</div>
</div>