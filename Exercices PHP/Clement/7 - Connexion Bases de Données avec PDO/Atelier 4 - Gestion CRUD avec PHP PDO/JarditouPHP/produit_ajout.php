<?php
include("entete.php");
require "connexion_bdd.php";// Inclusion de la bibliothèque de fonctions

$db = connexionBase();// Appel de la fonction de connexion

date_default_timezone_set('Europe/Paris');//Définition de la date
$date = date("d-m-Y");

$result = $db->query("SELECT * FROM categories ORDER BY cat_id");//Une requête pour sélectionner l'id correspondant à la catégorie

$categories = $result->fetchAll(PDO::FETCH_OBJ);//FetchAll prendra toutes les données de la requête initiée précédemment
?>

<form action="produit_ajout_script.php" method="POST" class="col-12">
                <div class="form-group">

                <!--Référence-->
                <div><label for="reference"> Référence :</label> <input type="text" name="reference" id="reference" class="form-control">
                <span id="ref_manquant"></span>
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
                        </div>
                <br>

                <!--Catégorie-->
                <label for="categorie"> Catégorie :</label>
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
                <br>
                <br>
                <!--Libellé-->
                <label for="libelle"> Libellé :</label> <input type="text" name="libelle" id="libelle" class="form-control">
                <span id="lib_manquant"></span>
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
                <span id="desc_manquant"></span>
                <?php 
                    if (isset($_GET["erreur4"]))
                    {
                        ?>
                        <div class="alert alert-danger">Vous n'avez pas renseigné la description</div>
                        <?php
                    }
                   
                    ?>
                <br>

                <!--Prix-->
                <label for="prix"> Prix :</label> <input type="text" name="prix" id="prix" class="form-control">
                <span id="prix_manquant"></span>
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

                <!--Stock-->
                <label for="stock"> Stock :</label> <input type="text" name="stock" id="stock" class="form-control">
                <span id="stock_manquant"></span>
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

                <!--Couleur-->
                <div><label for="couleur"> Couleur :</label> <input type="text" name="couleur" id="couleur" class="form-control">
                <span id="stock_manquant"></span>
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

                <!--Produit bloqué-->

                <label for="Produit"> Produit bloqué ?</label>
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="prod" id="bloque_oui" value=1> <label class="form-check-label" for="prod"> Oui </label>
                </div>
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="prod" id="bloque_non" value=0> <label class="form-check-label" for="prod"> Non </label>
                </div>
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
                <!--Date d'ajout-->

                <label for="ajout">Date d'ajout : <?=$date?></label>
                <br>

                <!--Bouton d'envoi-->
                <p><input type="submit" name="envoyer" value="Envoyer" id="bouton_envoi" class="btn btn-dark">
                    <input type="reset" name="Annuler" value="Annuler"class="btn btn-danger"></p>
<?php
                include("pieddepage.php")
                ?>