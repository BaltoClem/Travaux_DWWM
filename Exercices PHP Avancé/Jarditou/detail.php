<?php include("entete.php")?>
<?php     
      require "connexion_bdd.php"; // Inclusion de la bibliothèque de fonctions
      $db = connexionBase(); // Appel de la fonction de connexion

      $pro_id = $_GET["id"];//On demande ici d'aller chercher l'id du produit correspondant au produit sélectionné par l'utilisateur
      
      $requete = "SELECT * FROM produits 
                  INNER JOIN categories 
                  ON categories.cat_id = produits.pro_cat_id 
                  WHERE pro_id=".$pro_id;//Cette requête permet d'afficher le produit que l'utilisateur a sélectionné grâce à l'id correspondant correspondant précédemment
 
      $result = $db->query($requete);//Exécute la requête SQL, retourne un jeu de résultats en tant qu'objet PDOStatement, ici la requête précédemment soumise
 
      // Renvoi de l'enregistrement sous forme d'un objet
      $produit = $result->fetch(PDO::FETCH_OBJ);//Récupère une ligne depuis un jeu de résultats associé à l'objet PDOStatement
      ?>
</head>

<body>
  <form class="col-12">
    <div class="form">


      <div class="text-center">
        <img src="Assets/img/jarditou_photos/<?=$produit->pro_photo?>" alt="produit" width=300 height=300>
      </div>


      <!-------------------------------------------------------------------ID----------------------------------------------------------------------------------->
      <label for="id"> ID :</label> <input type="text" class="form-control" name="id" value="<?=$produit->pro_id?>"
        readonly><!-- "value" ici concerne le pro_id de $produit,cad le résultat de la recherche-->

      <br>

      <!--Référence-->
      <label for="reference"> Référence :</label> <input type="text" class="form-control" value="<?=$produit->pro_ref?>"
        readonly>

      <br>

      <!--Catégorie-->
      <label for="categorie"> Catégorie :</label><input class="form-control" value="<?=$produit->cat_nom?>" readonly>
      <br>

      <!--Libellé-->
      <label for="libelle"> Libellé :</label> <input type="text" class="form-control" value="<?=$produit->pro_libelle?>"
        readonly>

      <br>

      <!--Description-->
      <label for="description"> Description :</label> <textarea class="form-control" value
        placeholder="<?=$produit->pro_description?>" readonly></textarea>

      <br>

      <!--Prix-->
      <label for="prix"> Prix :</label> <input type="text" name="prix" id="prix" class="form-control"
        value="<?=$produit->pro_prix?>" readonly>

      <br>

      <!--Stock-->
      <label for="stock"> Stock :</label> <input type="stock" name="stock" id="stock" class="form-control"
        value="<?= $produit->pro_stock?>" readonly>

      <br>

      <!--Couleur-->
      <label for="couleur"> Couleur :</label> <input type="couleur" name="couleur" id="couleur" class="form-control"
        value="<?= $produit->pro_couleur?>" readonly>

      <br>

      <!--Produit bloqué-->
      <label for="bloque">Produit bloqué ?</label>
      <!--Pour des boutons radio différents, l'id doit être différent mais le name doit être le même-->
      <br>
      <div class="form-check form-check-inline">
        <input type="radio" class="form-check-input" value="<?=$produit->pro_bloque?>" id="bloque_oui" name="bloque"
          disabled
          <?php if ($produit->pro_bloque == 1) { echo "checked"; }//"Si le produit est égal à 1, alors le bouton sera coché" ?>>
        <label class="form-check-label" for="bloque">Oui</label>
      </div>

      <div class="form-check form-check-inline">
        <input type="radio" class="form-check-input" value="<?=$produit->pro_bloque?>" id="bloque_non" name="bloque"
          disabled
          <?php if (is_null($produit->pro_bloque)) { echo "checked"; }//"Si le produit est égal à 0, alors le bouton sera coché" ?>>
        <label class="form-check-label" for="bloque">Non</label>
      </div>
      <br>
      <br>

      <!--Bouton d'envoi-->
      <p>
      <?php
      if(isset($_SESSION["Admin"]))
                {
                    ?>
        <a href='produit_modif.php?id=<?=$pro_id?>' class="btn btn-warning"> Modifier </a>
        <!--produit_modif.php?id= fait référence à l'id qui sera indiqué sur l'url, le php détermine ensuite quel id sélectionner-->
        <a href="produit_suppr.php?pro_id=<?= $produit->pro_id?>" class="btn btn-danger"
          onclick="return confirm('Etes-vous sûr de vouloir supprimer le produit ?')">Supprimer<a>
        <?php
        }
        ?>
        
            <a href="Tableau.php" class="btn btn-success">Retour</a>
      </p>
      <?php
  include("pieddepage.php")
  ?>
</body>

</html>