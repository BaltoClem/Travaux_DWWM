<?php

include ("entete.php");
?>
</div>
<h1>Mon panier</h1>
<br>
 
<?php 
// Si le panier n'existe pas encore  
if ($this->session->panier != null) 
{ 
?>
     
    <table class="table table-striped">
        <thead>
            <tr>
                <th>Produit</th>
                <th>Prix</th>
                <th>Quantité</th>
                <th>Prix total</th>
                <th>&nbsp;</th> 
            </tr>   
        </thead>
        <tbody>
        <?php 
        $iTotal = 0;
        $aPanier = $this->session->panier;
 
       foreach($aPanier as $article)
       {

if($article["pro_qte"]!=0)
{
?>
        <tr>
                <td id="libelle"><?=$article["pro_libelle"]?></td>
                <td id="prix"value="<?=$article["pro_prix"]?>"><?=$article["pro_prix"]?> &euro;</td>
                <td id="qte"><input type="number" onclick="modifQuant(value,<?=$article['pro_id']?>)" value="<?=$article['pro_qte']?>"></td>
                <td><?= number_format(($article["pro_qte"]*$article["pro_prix"]),2)?> &euro;</td>
                <td>&nbsp;</td> 
            </tr>  
<?php
}
else{
redirect("panier/supprimerProduit/".$article['pro_id']);
}

    $iTotal += $article["pro_qte"]*$article["pro_prix"];

       }
        ?>
        </tbody>
    </table>
    <br>
            <h3>Récapitulatif</h3>
            
            <div>
                <p>TOTAL : <?= str_replace('.', ',' , $iTotal); ?> &euro;</p>
                <br>
                <p><a class="btn btn-danger" href="<?= site_url("panier/supprimerpanier"); ?>">Supprimer le panier</a>
                <a class="btn btn-warning" href="<?= site_url("produits/liste"); ?>">Retour </a></p>
                </div>
            
            
        
    <?php 
    } 
    else 
    { 
 
        ?>
        <div class="alert alert-danger">Votre panier est vide. Pour le remplir, vous pouvez consulter <a style='color:#0000FF; text-decoration:underline' href="<?= site_url("produits/liste"); ?>">la liste des produits</a>.</div>
        <?php 
    } 
  ?>
  
  <?php

include ("pieddepage.php");
?>


<script>
function modifQuant(value,id)
{

console.log("value : "+value+" "+id);
window.location.replace("http://localhost/Jarditou_CI/index.php/panier/modifierQuantite/"+id+"/"+value);

}
</script>