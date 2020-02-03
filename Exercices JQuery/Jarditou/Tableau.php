<?php
include("entete.php");
?>
<!--Création de la base du tableau-->

<!--Création de la structure du tableau-->
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

            <!--Création de la connexion entre la base de donnéers et le site-->
            <?php
require "connexion_bdd.php"; // Inclusion de notre bibliothèque de fonctions
$db = connexionBase(); // Appel de la fonction de connexion
$requete = "SELECT * FROM produits";//Sélection de tous les produits
$result = $db->query($requete);//query() envoie une seule requête à la base de données courante sur le serveur associé avec le link_identifier spécifié (ici -> $requete)
$produit = $result->fetch(PDO::FETCH_OBJ);

//Boucles php pour associer le tableau avec les données de la bases de données Jarditou

while ($row = $result->fetch(PDO::FETCH_OBJ))
/* On récupère ici une ligne depuis un jeu de résultats associé à l'objet PDOStatement. Ici la variable $row prendra en compte la requête précédemment définie
pour $result et on détermine par "->" à quel libellé est associé une ligne*/
{
    ?>
    <tr>
    <td><img src = "Assets/img/jarditou_photos/<?=$row->pro_id.".".$row->pro_photo?>" alt='' title='' width= "100" height= "auto" class="text-center align-middle"></td>
    <td class="text-center align-middle"><?=$row->pro_id ?></td>
    <td class="text-center align-middle"><?=$row->pro_ref?></td>
    <td class="text-center align-middle"><a href='detail.php?id=<?=$row->pro_id?>' class="lien"><?= $row->pro_libelle ?></a></td>
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
<?php
                include("pieddepage.php")
                ?>
</div>
</div>