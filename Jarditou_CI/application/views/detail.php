<?php include("entete.php")?>

</head>

<body>
<?php echo form_open_multipart("produits/suppr?id=$row->pro_id",  array('class' => 'col-12', 'name' => 'detail'));?>

      <div class="text-center">
        <img src="http://localhost/Jarditou_CI/assets\img\jarditou_photos\<?=$row->pro_photo?>" alt="produit" name ="photo" width=300 height=300>
      </div>


      <!-------------------------------------------------------------------ID----------------------------------------------------------------------------------->
      <label for="id"> ID :</label> <input type="text" class="form-control" name="id" value="<?=$row->pro_id?>" readonly><!-- "value" ici concerne le pro_id de $produit,cad le résultat de la recherche-->

      <br>

      <!--Référence-->
      <label for="reference"> Référence :</label> <input type="text" name="reference" class="form-control" value="<?=$row->pro_ref?>"
        readonly>

      <br>

      <!--Catégorie-->
      <label for="categorie"> Catégorie :</label><input name="categorie" class="form-control" value="<?=$row->cat_nom?>" readonly>
      <br>

      <!--Libellé-->
      <label for="libelle"> Libellé :</label> <input type="text" name="libelle" class="form-control" value="<?=$row->pro_libelle?>"
        readonly>

      <br>

      <!--Description-->
      <label for="description"> Description :</label> <textarea class="form-control" name="description" value
        placeholder="<?=$row->pro_description?>" readonly></textarea>

      <br>

      <!--Prix-->
      <label for="prix"> Prix :</label> <input type="text" name="prix" id="prix" class="form-control"
        value="<?=$row->pro_prix?>" readonly>

      <br>

      <!--Stock-->
      <label for="stock"> Stock :</label> <input type="stock" name="stock" id="stock" class="form-control"
        value="<?= $row->pro_stock?>" readonly>

      <br>

      <!--Couleur-->
      <label for="couleur"> Couleur :</label> <input type="couleur" name="couleur" id="couleur" class="form-control"
        value="<?= $row->pro_couleur?>" readonly>

      <br>

      <!--Produit bloqué-->
      <label for="bloque">Produit bloqué ?</label>
      <!--Pour des boutons radio différents, l'id doit être différent mais le name doit être le même-->
      <br>
      <div class="form-check form-check-inline">
        <input type="radio" class="form-check-input" value="<?=$row->pro_bloque?>" id="bloque_oui" name="bloque"
          disabled
          <?php if ($row->pro_bloque == 1) { echo "checked"; }//"Si le produit est égal à 1, alors le bouton sera coché" ?>>
        <label class="form-check-label" for="bloque">Oui</label>
      </div>

      <div class="form-check form-check-inline">
        <input type="radio" class="form-check-input" value="<?=$row->pro_bloque?>" id="bloque_non" name="bloque"
          disabled
          <?php if (is_null($row->pro_bloque)) { echo "checked"; }//"Si le produit est égal à 0, alors le bouton sera coché" ?>>
        <label class="form-check-label" for="bloque">Non</label>
      </div>
      <br>
      <br>

      <!--Bouton d'envoi-->
      <p>
      
    
                    
        <a href="http://localhost/Jarditou_CI/index.php/produits/detail_modif?id=<?=$row->pro_id?>" class="btn btn-warning"> Modifier </a>
        <!--produit_modif.php?id= fait référence à l'id qui sera indiqué sur l'url, le php détermine ensuite quel id sélectionner-->
        <input type="button" class="btn btn-danger" name="suppr" value="Supprimer" onclick="validateForm()"></input>

<script>
        function validateForm() {
         event.preventDefault(); // prevent form submit
         var form = document.forms["detail"]; // storing the form
         swal({
                title: "Etes-vous sûr ?",
                text: "Une fois supprimé, vous ne pourrez pas récupérer le produit!",
                icon: "warning",
                buttons: true,
                dangerMode: true,
              })
             .then((willDelete) => {
                  if (willDelete) {
                    
                    swal("Votre produit a été supprimé !",{button:false, icon: "error",});
                        form.submit();
                  } else {
                         swal("Votre produit n'a pas été supprimé !",{button: "Ouf !", icon: "success"});
              }
           });
}
</script>
<style>
.swal-overlay {
  background-color: rgba(243, 156, 18, 0.45);
}

</style>
<a href="http://localhost/Jarditou_CI/index.php/produits/liste" class="btn btn-success">Retour</a>

</form>
      </p>
      <?php
  include("pieddepage.php")
  ?>
</body>

</html>