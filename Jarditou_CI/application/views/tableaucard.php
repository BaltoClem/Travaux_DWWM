<?php include ("entete.php");
 ?>

<div class = "row d-flex justify-content-center">

<?php 

foreach ($liste_produits as $row) 
{  
  echo form_open("panier/ajouterPanier");        
?>

<div class="card text-center mb-2 ml-2 mr-2" style="width: 17rem;">
  <img src="http://localhost/Jarditou_CI/assets\img\jarditou_photos/<?=$row->pro_photo?>" class="card-img-top" alt="Produit">
  <div class="card-body">
    <h5 class="card-title"><?=$row->pro_libelle?></h5>
    <p class="card-text text-truncate"><?=$row->pro_description?></p>
    <div class=" text-white card-footer card bg-success"><?=$row->pro_prix?>€
  </div>
  <input type="hidden" name="pro_prix" value="<?= $row->pro_prix ?>">
   <input type="hidden" name="pro_id" value="<?= $row->pro_id ?>">
    <input type="hidden" name="pro_libelle" value="<?= $row->pro_libelle ?>">
    <input type="submit" value="Ajouter au panier" class="btn btn-warning mt-3"> 
    <input type="hidden" name="pro_stock" value="<?= $row->pro_stock ?>">
  <input type="hidden" class="form-control" name="pro_qte" id="pro_qte" value=1>
  <a href="http://localhost/Jarditou_CI/index.php/produits/detail?id=<?=$row->pro_id?>" class="btn btn-info mt-3">Plus d'infos</a>
  </div>
</div>

  <!--<div class="col mb-4">
    <div class="card">
    <img src = "http://localhost/Jarditou_CI/assets\img\jarditou_photos/" class="card-img-top" alt="photo">
      <div class="card-body">
        <h5 class="card-title"></h5>
        <p class="card-text text-truncate"></p>
        <a href="a href='http://localhost/Jarditou_CI/index.php/produits/detail?id='" class="btn btn-primary">Plus d'infos</a>
      </div>
    </div>
  </div>
-->
</form>
<?php
}
?>

</div>
</div>
<?php include ("pieddepage.php")?>