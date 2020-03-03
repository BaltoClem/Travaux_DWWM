<?php
include ("entete.php");
?>

<div class="container">
    <div class="row">
        <div class="col-lg-6 m-auto">
            <div class="card bg-dark">
                <div class="card-title bg-primary text-white mt-5">
                    <h3 class="text-center py-3">Connexion</h3>
                </div>

                <?php 
                
                if(@$_GET['Empty']==true)
                {
                ?>
                <div class="alert-light text-danger text-center py-3"><?php echo $_GET['Empty']?></div><!-- On définit le pop-up pour signaler l'erreur d'un champ vide-->
                <?php
                }

                if(@$_GET['Invalid']==true)
                {
                ?>
                <div class="alert-light text-danger text-center py-3"><?php echo $_GET['Invalid']?></div><!-- On définit le pop-up pour signaler un mdp ou id incorrect-->
                <?php
                }
                ?>

                <div class="card-body">

                    <?php 
echo form_open("produits/connexion"); 
?>

                        <input type="text" name="mail" id="mail" placeholder="Votre adresse email" class="form-control mb-3">
                        <input type="password" name="motdepasse" id="motdepasse" placeholder="Mot de passe" class="form-control mb-3">
                        <button class="btn btn-success mt-3" name="connexion">Se connecter</button>
                    </form>
                </div>
            </div>
            <div class = "text-center"><a style='color:#28A728; text-decoration:underline' href="<?=site_url('produits/mdpoub')?>">Mot de passe oublié ?</a></div>
        </div>
    </div>
</div>

</div>
<?php
include("pieddepage.php")
?>