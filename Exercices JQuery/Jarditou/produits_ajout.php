<?php
include("entete.php");
require "connexion_bdd.php";
$result = $db->query("SELECT * FROM categories ORDER BY cat_id");
$categories = $result->fetchAll(PDO::FETCH_OBJ);
?>

<form action="produits_ajout_script.php" method="POST" class="col-12">
                <div class="form-group">

                <!--ID
                <label for="id"> ID :</label> <input type="text" name="id" id="id"class="form-control">
                <span id="id_manquant"></span>
                <br>-->

                <!--Référence-->
                <label for="reference"> Référence :</label> <input type="text" name="reference" id="reference" class="form-control">
                <span id="ref_manquant"></span>
                <br>

                <!--Catégorie-->
                <label for="categorie"> Catégorie :</label>
                <select class="custom-select" name="pro_id" id="pro_id">
                    <?php
                    foreach($categories as $c)
                    {
                    ?>
                        <option value = "<?= $c->cat_id?>"><?=$c->cat_id."-".$c->cat_nom?></option>
                    <?php
                    }
                    ?>
                </select>
                <br>

                <!--Libellé-->
                <label for="libelle"> Libellé :</label> <input type="text" name="libelle" id="libelle" class="form-control">
                <span id="lib_manquant"></span>
                <br>
            
                <!--Description-->
                <label for="description"> Description :</label> <textarea type="text" name="description" id="description" class="form-control"></textarea>
                <span id="desc_manquant"></span>
                <br>

                <!--Prix-->
                <label for="prix"> Prix :</label> <input type="text" name="prix" id="prix" class="form-control">
                <span id="prix_manquant"></span>
                <br>

                <!--Stock-->
                <label for="stock"> Stock :</label> <input type="stock" name="stock" id="stock" class="form-control">
                <span id="stock_manquant"></span>
                <br>

                <!--Couleur-->
                <label for="couleur"> Couleur :</label> <input type="couleur" name="couleur" id="couleur" class="form-control">
                <span id="stock_manquant"></span>
                <br>

                <!--Produit bloqué-->

    <label for="Produit"> Produit bloqué ?</label>
    <div class="form-check">
        <input class="form-check-input" type="radio" name="prod" id="prod" value="oui"> <label class="form-check-label" for="oui"> Oui </label>
    </div>
    <div class="form-check">
        <input class="form-check-input" type="radio" name="prod" id="prod" value="non" > <label class="form-check-label" for="non"> Non </label>
    </div>
    <br>

    <div>Date d'ajout : </div>
    <br>

    <div>Date de modification :</div>
    <br>
    <!--Bouton d'envoi-->
    <p><input type="submit" name="envoyer" value="Envoyer" id="bouton_envoi" class="btn btn-dark">
        <input type="reset" name="Annuler" value="Annuler"class="btn btn-danger"></p>
<p><?php echo $message;?></p>
<?php
                include("pieddepage.php")
                ?>