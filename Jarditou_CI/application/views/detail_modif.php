<?php include("entete.php")?>
</head>
 <!-- <form class="col-12">-->
  <?php 
echo form_open_multipart("produits/modif/$row->pro_id",  array('class' => 'col-12 ml-5')); 
?>

      <div class="text-center">
        <img src="http://localhost/Jarditou_CI/assets\img\jarditou_photos\<?=$row->pro_photo?>" alt="produit" name ="photo" width=300 height=300>
      </div>


      <!-------------------------------------------------------------------ID----------------------------------------------------------------------------------->
      <label for="id"> ID :</label> <input type="text" class="form-control col-10" name="pro_id" value="<?=$row->pro_id?>" readonly><!-- "value" ici concerne le pro_id de $produit,cad le résultat de la recherche-->

      <br>

      <!---------------------------------------------------------------Référence-------------------------------------------------------------------------------->
      <label for="reference"> Référence :</label> <input type="text" name="pro_ref" class="form-control col-10" value="<?=$row->pro_ref?>">
<br>
      <!--Catégorie-->
      <p><label for="categorie">Catégorie</label>
      <select class="custom-select " name="pro_cat_id" id="pro_cat_id">
                <option value="">--Sélectionner une catégorie--</option>
                    
                    <?php
                   
                   foreach($liste_cat as $row2) // Permet l'affichage du menu déroulant pour obtenir la liste des catégories
                   {
                       ?>
                       <option value = "<?= $row2->cat_id?>"
                       <?php
               
                       if ($row2->cat_id == $row->pro_cat_id)
                       {
                           echo "selected";
                       }
                       ?>
                       >
                       <?=$row2->cat_id."-".$row2->cat_nom?></option>
               
                       <?php
                   }
                    ?>
                    
                    
                </select>
                </p>
      <!--Libellé-->
      <label for="libelle"> Libellé :</label> <input type="text" name="pro_libelle" class="form-control col-10" value="<?=$row->pro_libelle?>">

      <br>

      <!--Description-->
      <label for="description"> Description :</label> <textarea class="form-control col-10" name="pro_description"><?=$row->pro_description?></textarea>

      <br>

      <!--Prix-->
      <label for="prix"> Prix :</label> <input type="text" name="pro_prix" id="prix" class="form-control col-10"
        value="<?=$row->pro_prix?>">

      <br>

      <!--Stock-->
      <label for="stock"> Stock :</label> <input type="stock" name="pro_stock" id="stock" class="form-control col-10"
        value="<?= $row->pro_stock?>">

      <br>

      <!--Couleur-->
      <label for="couleur"> Couleur :</label> <input type="couleur" name="pro_couleur" id="couleur" class="form-control col-10"
        value="<?= $row->pro_couleur?>">

      <br>
      <div><label for="photo">Photo du produit</label> <p><input type="file" name="pro_photo"></p></div>
      <!--Produit bloqué-->
      <label for="bloque">Produit bloqué ?</label>
      <!--Pour des boutons radio différents, l'id doit être différent mais le name doit être le même-->
      <br>
      <div class="form-check form-check-inline">
        <input type="radio" class="form-check-input" value=1 id="bloque_oui" name="pro_bloque"
          
          <?php if ($row->pro_bloque == 1) { echo "checked"; }//"Si le produit est égal à 1, alors le bouton sera coché" ?>>
        <label class="form-check-label" for="bloque">Oui</label>
      </div>

      <div class="form-check form-check-inline">
        <input type="radio" class="form-check-input" value=0 id="bloque_non" name="pro_bloque"
         
          <?php if (is_null($row->pro_bloque)) { echo "checked"; }//"Si le produit est égal à 0, alors le bouton sera coché" ?>>
        <label class="form-check-label" for="bloque">Non</label>
      </div>
      <br>
      <br>

      <!--Bouton d'envoi-->
      <p>
        <input type="submit" name="" value="Valider" class="btn btn-success">
            <a href="http://localhost/Jarditou_CI/index.php/produits/liste" class="btn btn-info">Retour</a>
      </p>
      <?php
  include("pieddepage.php")
  ?>
</body>

</html>