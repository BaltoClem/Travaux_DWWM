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
    <link rel="stylesheet" href="Assets\css\style.css">
    <title>Jarditou</title>
</head>
<!--Consigne : un seul conteneur-->
<body>
        <div class="container">
        
<!--Afin de mettre les colonnes en disposition "ligne" il faut rajouter une class row-->
                <div class= "row">        
<!--On trouve ici le haut de la page avec le logo-->
        <div class="col-6 mt-5"><img src="Assets\img\jarditou_logo.jpg" alt="Logo Jarditou" id="logoJarditou" class="logo"></div>           
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
                <?php
                if(empty($_SESSION["User"]))
                {
                    ?>
                <li class="nav-item"><a class="nav-link" href="inscription.php">Inscription</a></li>
        </ul>
        <?php
                }
                ?>
                <?php
                if(isset($_SESSION["Admin"]))
                {
                    ?>
                    <li class="nav-item"><a class="nav-link" href="produit_ajout.php">Ajouter un produit</a></li>
                    <?php
                }
                ?>
                                <?php
                if(empty($_SESSION["User"]))
                {
                    ?>
                     <ul class="navbar-nav mr-0">
                                <li class="nav-item"><a class="nav-link" href="connexion_index.php">Se connecter</a></li>
                                
                                <?php
                }
                ?>
            </ul>
            
        </div>
    </nav>
<!--La banderole sur les promotions avec du web responsive en BootStrap-->
    <div class="col-12 mb-2 mt-1"><img src="Assets\img\promotion.jpg" alt="Promotion" class="promotion"></div>
<?php 
require "connexion_bdd.php";// Inclusion de la bibliothèque de fonctions

$db = connexionBase();// Appel de la fonction de connexion

date_default_timezone_set('Europe/Paris');//Définition de la date
$date = date("d-m-Y");

$result = $db->query("SELECT * FROM categories ORDER BY cat_id");//Une requête pour sélectionner l'id correspondant à la catégorie

$categories = $result->fetchAll(PDO::FETCH_OBJ);//FetchAll prendra toutes les données de la requête initiée précédemment
?>

<form action="produit_ajout_script.php" method="POST" class="col-12" enctype="multipart/form-data">
                <div class="form-group">

<!------------------------------------------------------------REFERENCE----------------------------------------------------------------->

                <div><label for="reference"> Référence :</label> <input type="text" name="reference" id="reference" class="form-control" required></div>
                <span id="ref_manquant"></span><div id="alertref"></div>
                <?php 
                            if (isset($_GET["erreur1"]))
                            {
                        ?>
            <div class="alert alert-danger">Vous n'avez pas renseigné la référence</div>
            <?php
                            }
                            else if (isset($_GET["erreur1bis"]))
                            {
                        ?>
            <div class="alert alert-warning">Le format est incorrect</div>
            <?php
                            }
                        ?>                      
                <br>

<!------------------------------------------------------------CATEGORIE----------------------------------------------------------------->
                <div><label for="categorie"> Catégorie :</label>
                <select class="custom-select" name="pro_cat_id" id="pro_cat_id">
                <option value="">-- Sélectionner une catégorie--</option>
                    <?php
                    foreach($categories as $c)
                    //foreach permettra de parourir dans le tableau de la base de données et affichera ici toutes les catégories du tableau sous forme de liste déroulante
                    {
                    ?>
                        <option value = "<?= $c->cat_id//Recherche de cat_id dans le tableau catégories grâce à la requête?>"><?=$c->cat_id."-".$c->cat_nom?></option>
                    <?php
                    }
                    ?>
                </select>
                <?php 
                    if (isset($_GET["erreur2"]))
                    {
                        ?>
                        <div class="alert alert-danger">Vous n'avez pas renseigné la catégorie</div>
                        <?php
                    }
                   
                    ?>
                    <span id="cat_manquant"></span><div id="alertecat"></div>
                    </div>
                <br>

 <!------------------------------------------------------------LIBELLE----------------------------------------------------------------->

                <label for="libelle"> Libellé :</label> <input type="text" name="libelle" id="libelle" class="form-control">
                <span id="lib_manquant"></span><div id="alertelib"></div>
                <?php 
                    if (isset($_GET["erreur3"]))
                    {
                        ?>
                        <div class="alert alert-danger">Vous n'avez pas renseigné le libellé</div>
                        <?php
                    }
                   
                    ?>
                <br>
            
                <!--Description-->
                <label for="description"> Description :</label> <textarea type="text" name="description" id="description" class="form-control"></textarea>
                <span id="desc_manquant"></span><div id="alertedesc"></div>
                
                <?php 
                    if (isset($_GET["erreur4"]))
                    {
                        ?>
                        <div class="alert alert-danger">Vous n'avez pas renseigné la description</div>
                        <?php
                    }
                   
                    ?>
                <br>

 <!------------------------------------------------------------PRIX----------------------------------------------------------------->

                <label for="prix"> Prix :</label> <input type="text" name="prix" id="prix" class="form-control">
                <span id="prix_manquant"></span><div id="alerteprix"></div>
                <?php 
                            if (isset($_GET["erreur5"]))
                            {
                        ?>
            <div class="alert alert-danger">Vous n'avez pas renseigné le prix</div>
            <?php
                            }
                            else if (isset($_GET["erreur5bis"]))
                            {
                        ?>
            <div class="alert alert-warning">Le format est incorrect</div>
            <?php
                            }
                        ?>
                <br>

  <!------------------------------------------------------------STOCK----------------------------------------------------------------->

                <label for="stock"> Stock :</label> <input type="text" name="stock" id="stock" class="form-control">
                <span id="stock_manquant"></span><div id="alertestock"></div>
                <?php 
                            if (isset($_GET["erreur6"]))
                            {
                        ?>
            <div class="alert alert-danger">Vous n'avez pas renseigné le stock</div>
            <?php
                            }
                            else if (isset($_GET["erreur6bis"]))
                            {
                        ?>
            <div class="alert alert-warning">Le format est incorrect</div>
            <?php
                            }
                        ?>
                <br>

  <!------------------------------------------------------------COULEUR----------------------------------------------------------------->

                <div><label for="couleur"> Couleur :</label> <input type="text" name="couleur" id="couleur" class="form-control">
                <span id="couleur_manquant"></span><div id="alertecoul"></div>
                <?php 
                            if (isset($_GET["erreur7"]))
                            {
                        ?>
            <div class="alert alert-danger">Vous n'avez pas renseigné la couleur du produit</div>
            <?php
                            }
                            else if (isset($_GET["erreur7bis"]))
                            {
                        ?>
            <div class="alert alert-warning">Le format est incorrect</div>
            <?php
                            }
                        ?>
                        </div>
                        <br>
<!------------------------------------------------------------PHOTO----------------------------------------------------------------->

        <div><label for="photo">Photo du produit :</label><input type="hidden" name="MAX_FILE_SIZE" value="104857600" />
                        <p><input type="file" name="fichier" id="fichier"></p></div>

  <!------------------------------------------------------------PRODUIT BLOQUE----------------------------------------------------------------->

                <label for="Produit"> Produit bloqué ?</label>
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="prod" id="bloque_oui" value=1> <label class="form-check-label" for="prod"> Oui </label>
                </div>
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="prod" id="bloque_non" value=0> <label class="form-check-label" for="prod"> Non </label>
                </div>
                <span id="bloq_manquant"></span><div id="alertebloq"></div>
                <?php 

                if (isset($_GET["erreur8"]))
                {
                    ?>
                    <div class="alert alert-danger col-8">Vous n'avez pas indiqué si le produit est bloquant ou non
                    </div>
                    <?php
                }
                    ?>
                <br>
 <!------------------------------------------------------------DATE D'AJOUT----------------------------------------------------------------->

                <label for="ajout">Date d'ajout : <?=$date?></label>
                <br>

<!------------------------------------------------------------BOUTON D'ENVOI----------------------------------------------------------------->

                <p><input type="submit" name="envoyer" value="Envoyer" id="bouton_envoi2" class="btn btn-dark">
                    <input type="reset" name="Annuler" value="Annuler"class="btn btn-danger"></p>

</form>
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

<script src="Assets\javascript\ajout_jquery.js"></script>