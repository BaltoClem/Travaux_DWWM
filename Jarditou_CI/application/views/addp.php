<?php
include ("entete.php");
date_default_timezone_set('Europe/Paris');//Définition de la date
$date = date("Y-m-d");

?>
<br>

<div class="col-12"><?php echo validation_errors('<div class="alert alert-danger">','</div>');?></div>

<br>
<?php 
echo form_open_multipart("produits/insert",  array('class' => 'col-12 ml-3')); 
?>

<!--base_url est déjà défini dans config.php-->
<!--L'url d'envoi est définie ainsi afin que le formulaire soit exécuté comme souhaité grâce à la fonction insert dans Produits-->
                <div class="form-group col-10">

<!------------------------------------------------------------REFERENCE----------------------------------------------------------------->

                <div><label for="reference">Référence</label> <input type="text" name="reference" id="reference" class="form-control"></div>
                <div id="alertref"></div>   
                <br>

<!------------------------------------------------------------CATEGORIE----------------------------------------------------------------->
                <div><label for="categorie">Catégorie</label>
                <select class="custom-select" name="pro_cat_id" id="pro_cat_id">
                <option value="">-- Sélectionner une catégorie--</option>
                    
                    <?php
                    foreach($liste_cat as $row)
                    
                    {
                        ?>
                        <option value = "<?= $row->cat_id//Recherche de cat_id dans le tableau catégories grâce à la requête?>"><?=$row->cat_id."-".$row->cat_nom?></option>
                        <?php
                    }
                    ?>
                </select></div>
                <br>

 <!------------------------------------------------------------LIBELLE----------------------------------------------------------------->

<label for="libelle">Libellé</label> <input type="text" name="libelle" id="libelle" class="form-control">
<div id="alertelib"></div>
<br>
            
<!---------------------------------------------------DESCRIPTION--------------------------------------------------->
                <label for="description">Description</label> <textarea type="text" name="description" id="description" class="form-control"></textarea>
                <div id="alertedesc"></div>
                <br>

 <!------------------------------------------------------------PRIX----------------------------------------------------------------->

                <label for="prix">Prix</label> <input type="text" name="prix" id="prix" class="form-control">
                <div id="alerteprix"></div>
                <br>

  <!------------------------------------------------------------STOCK----------------------------------------------------------------->

                <label for="stock">Stock</label> <input type="text" name="stock" id="stock" class="form-control">
               <div id="alertestock"></div>
             
                            
                <br>

  <!------------------------------------------------------------COULEUR----------------------------------------------------------------->

                <div><label for="couleur">Couleur</label> <input type="text" name="couleur" id="couleur" class="form-control"></div>
                <div id="alertecoul"></div>
                
                        <br>
<!------------------------------------------------------------PHOTO----------------------------------------------------------------->

        <div><label for="photo">Photo du produit</label><input type="hidden" name="MAX_FILE_SIZE" value="104857600" />
                        <p><input type="file" name="pimg"></p></div>

  <!------------------------------------------------------------PRODUIT BLOQUE----------------------------------------------------------------->

                <label for="Produit"> Produit bloqué ?</label>
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="prod" id="bloque_oui" value=1> <label class="form-check-label" for="prod"> Oui </label>
                </div>
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="prod" id="bloque_non" value=0> <label class="form-check-label" for="prod"> Non </label>
                </div>
                <div id="alertebloq"></div>
                <br>
 <!------------------------------------------------------------DATE D'AJOUT----------------------------------------------------------------->

                <label for="ajout">Date d'ajout : </label><input type="text" name="dajout" class="form-control text-center col-2" value="<?=$date?>" readonly>
                <br>

<!------------------------------------------------------------BOUTON D'ENVOI----------------------------------------------------------------->

                <p><input type="submit" name="" value="Ajouter" class="btn btn-success">
                    <input type="reset" name="Annuler" value="Annuler"class="btn btn-danger"></p>


</div>
 </div>
 
<?php 
include ("pieddepage.php"); 
?>


<!--<script src="Assets\javascript\ajout_jquery.js"></script>-->