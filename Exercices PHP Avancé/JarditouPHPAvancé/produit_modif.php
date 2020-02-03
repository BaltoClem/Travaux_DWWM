<?php include("entete.php")?>
      <?php     
      require "connexion_bdd.php"; // Inclusion de notre bibliothèque de fonctions
      $db = connexionBase(); // Appel de la fonction de connexion

      $pro_id = $_GET["id"];//On demande ici d'aller chercher l'id du produit correspondant au produit sélectionné par l'utilisateur

      $requete = "SELECT * FROM produits 
                  INNER JOIN categories ON produits.pro_cat_id = categories.cat_id 
                  WHERE pro_id=".$pro_id;//Cette requête permet d'afficher le produit que l'utilisateur a sélectionné grâce à l'id correspondant

      $requete2 = "SELECT * FROM categories 
                   ORDER BY cat_id";//Cette requête permet d'aller chercher l'id dans la tablea catégories
    
      date_default_timezone_set('Europe/Paris');//Définition de la date
      $date = date("Y-m-d H:i:s");
     
      $result = $db->query($requete);//Exécute la requête SQL, retourne un jeu de résultats en tant qu'objet PDOStatement
      $result2 = $db->query($requete2);//Exécute la requête SQL, retourne un jeu de résultats en tant qu'objet PDOStatement
      
      $produit = $result->fetch(PDO::FETCH_OBJ);//Récupère une ligne depuis un jeu de résultats associé à l'objet PDOStatement
      $categories = $result2->fetchAll(PDO::FETCH_OBJ);//Récupère une ligne depuis un jeu de résultats associé à l'objet PDOStatement
      ?>
   </head>

   <body> 
   <form action="produit_modif_script.php" method="POST" class="col-12" enctype="multipart/form-data">
   <div class="form">

<!--ID-->
<label for="id"> ID :</label> <input type="text" class="form-control" name="pro_id" value ="<?=$produit->pro_id//On choisit le pro_id de la requête définit dans la variable?>" readonly>

<br>

<!--Référence-->
<label for="reference"> Référence :</label> <input type="text"  class="form-control" name ="reference" value ="<?=$produit->pro_ref?>">

<br>

<!--Catégorie-->
<label for="categorie"> Catégorie :</label>
                <select class="custom-select" name="pro_cat_id" id="pro_cat_id">
                <?php
    foreach($categories as $c)//Permet de parcourir tous les champs de la table catégories
    {
        ?>
        <option value = "<?= $c->cat_id//On affiche ici l'id correspondant à la catégorie?>"

<?php 
        if ($c->cat_id == $produit->pro_cat_id/*Si l'id de la catégorie correspond au pro_cat_id de la table produit*/ ) 
        {
            echo "selected";//Alors sélectionner le produit
        }
        ?>>

<?=$c->cat_id."-".$c->cat_nom?></option><!--Affiche l'id et le nom de la catégorie-->
        <?php
    }
    ?>
                </select>
                <br>
                <br>
<!--Libellé-->
<label for="libelle"> Libellé :</label> <input type="text" class="form-control" name="libelle" value ="<?=$produit->pro_libelle?>">

<br>

<!--Description-->
<label for="description"> Description :</label> <input class="form-control" name="description" value ="<?=$produit->pro_description?>"></input>

<br>

<!--Prix-->
<label for="prix"> Prix :</label> <input type="text" name="prix" id="prix" class="form-control" name="prix" value = "<?=$produit->pro_prix?>">

<br>

<!--Stock-->
<label for="stock"> Stock :</label> <input type="stock" name="stock" id="stock" class="form-control" name="stock" value ="<?= $produit->pro_stock?>">

<br>

<!--Couleur-->
<label for="couleur"> Couleur :</label> <input type="couleur" name="couleur" id="couleur" class="form-control" name="couleur" value ="<?= $produit->pro_couleur?>">

<br>

<!--Produit bloqué-->

<label for="bloque">Produit bloqué ?</label><!--Pour des boutons radio différents, l'id doit être différent mais le name doit être le même-->
<br>
<div class="form-check form-check-inline">
  <input type="radio" class="form-check-input" value =1 id="bloque_oui" name="prod" 
  <?php if ($produit->pro_bloque == 1) { echo " checked"; }//"Si le produit est égal à 1, alors le bouton sera coché" ?>>
  <label class="form-check-label" for="bloque">Oui</label>
</div>

<div class="form-check form-check-inline">
  <input type="radio" class="form-check-input" value =isnull id="bloque_non" name="prod" 
  <?php if (is_null($produit->pro_bloque)) { echo " checked"; } //"Si le produit est égal à 0, alors le bouton sera coché"?>>
  <label class="form-check-label" for="bloque">Non</label>
</div>

<br>

<!--Téléchargement image-->
<br>

<p><label for="photo"> Photo du produit :</label><input type="hidden" name="MAX_FILE_SIZE" value="104857600">
<br>
<input type="file" name="fichier" id="fichier">
</p>

<!--Date d'ajout-->

<label for="ajout">Date d'ajout :</label><input type="text" class= "form-control" name="ajout" value ="<?=$produit->pro_d_ajout?>"readonly>
<br>

<!--Date de modification-->

<label for="modif">Date de modification :</label><input type="text" class= "form-control" name="modif" value ="<?=$date?>"readonly>
<br>
<br>
<!--Bouton d'envoi-->
<p>
    <input type="submit" name="envoyer" value="Valider" id="bouton_envoi" class="btn btn-success">
    <a href="Tableau.php" class="btn btn-danger">Retour</a>
</p>
  <?php
  include("pieddepage.php")
  ?>
   </body>
 </html>