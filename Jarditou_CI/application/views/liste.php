<?php include ("entete.php"); ?>
    <div class="table-responsive">
    <table class="table table-striped table-hover table-bordered">
        <thead>
            <tr class="text-center">
                <th>Photo</th>
                <th>ID</th>
                <th>Catégorie</th>
                <th>Libellé</th>
                <th>Prix</th>
                <th>Quantité</th>
                <th>Couleur</th>
                <th>Ajout</th>
                <th>Modifications</th>
                <th>Bloqué</th>
        </thead>

        <tbody>
<?php 

foreach ($liste_produits as $row) 
{          
    if (strlen($row->pro_photo) <= 4)
{
    $image_src = $row->pro_id.".".$row->pro_photo;
} else {
    $image_src = $row->pro_photo;
}

    ?>
    <tr>
    <td><img src = "<?= base_url('assets\img\jarditou_photos/')?><?=$image_src?>" alt='photo' title='photo' width= "100" height= "auto" class="text-center align-middle"></td>
    <td class="text-center align-middle"><?=$row->pro_id ?></td>
    <td class="text-center align-middle"><?=$row->pro_ref?></td>
    <td class="text-center align-middle"><a href='http://localhost/Jarditou_CI/index.php/produits/detail?id=<?=$row->pro_id?>' class="lien" style="color:#0000FF; text-decoration:underline"><?= $row->pro_libelle ?></a></td>
    <td class="text-center align-middle"><?= $row->pro_prix."€"?></td>
    <td class="text-center align-middle"><?= $row->pro_stock?></td>
    <td class="text-center align-middle"><?= $row->pro_couleur?></td>
    <td class="text-center align-middle"><?= $row->pro_d_ajout?></td>
    <td class="text-center align-middle"><?= $row->pro_d_modif?></td>
    <td class="text-center align-middle"><?= $row->pro_bloque?></td>
    </tr>
    <?php
}
?>

        </tbody>
    </table>
</div>

 <?php include ("pieddepage.php")?>
</div>
</div>