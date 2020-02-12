<?php include("entete.php")?>
<?php     
     
      //On demande ici d'aller chercher l'id du produit correspondant au produit sélectionné par l'utilisateur
 
      ?>
</head>

<body>
  <form class="col-12">
    <div class="form">


      <div class="text-center">
        <img src="http://localhost/Jarditou_CI/assets\img\jarditou_photos\<?=$row->pro_photo?>" alt="produit" width=300 height=300>
      </div>


      <!-------------------------------------------------------------------ID----------------------------------------------------------------------------------->
      <label for="id"> ID :</label> <input type="text" class="form-control" name="id" value="<?=$row->pro_id?>" readonly><!-- "value" ici concerne le pro_id de $produit,cad le résultat de la recherche-->

      <br>

      <!--Référence-->
      <label for="reference"> Référence :</label> <input type="text" class="form-control" value="<?=$row->pro_ref?>"
        readonly>

      <br>

      <!--Catégorie-->
      <label for="categorie"> Catégorie :</label><input class="form-control" value="<?=$row->cat_nom?>" readonly>
      <br>

      <!--Libellé-->
      <label for="libelle"> Libellé :</label> <input type="text" class="form-control" value="<?=$row->pro_libelle?>"
        readonly>

      <br>

      <!--Description-->
      <label for="description"> Description :</label> <textarea class="form-control" value
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
      
    
                    
        <a href='produit_modif.php?id=<?=$row->$pro_id?>' class="btn btn-warning"> Modifier </a>
        <!--produit_modif.php?id= fait référence à l'id qui sera indiqué sur l'url, le php détermine ensuite quel id sélectionner-->
        <a href="http://localhost/Jarditou_CI/index.php/produits/suppr?id=<?= $row->pro_id?>" class="btn btn-danger"
          onclick="return confirm('Etes-vous sûr de vouloir supprimer le produit ?')">Supprimer<a>
            <a href="http://localhost/Jarditou_CI/index.php/produits/liste" class="btn btn-success">Retour</a>
      </p>
      <?php
  include("pieddepage.php")
  ?>
</body>

</html>