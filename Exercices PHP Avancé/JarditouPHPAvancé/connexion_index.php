<?php
include("entete.php");
?>

<div class="container">
    <div class="row">
        <div class="col-lg-6 m-auto">
            <div class = "card bg-dark">
                <div class = "card-title bg-primary text-white mt-5">
                <h3 class="text-center py-3">Connexion</h3>
                </div>

                <?php 
                
                if(@$_GET['Empty']==true)
                {
                ?>
                    <div class="alert-light text-danger text-center py-3"><?php echo $_GET['Empty']?></div>
                <?php
                }

                if(@$_GET['Invalid']==true)
                {
                ?>
                    <div class="alert-light text-danger text-center py-3"><?php echo $_GET['Invalid']?></div>
                <?php
                }
                ?>

                <div class = "card-body">

                    <form action="connexion_process.php" method="post">

                    <input type="text" name="nom" placeholder="Identifiant" class="form-control mb-3">
                    <input type="password" name="motdepasse" placeholder="Mot de passe" class="form-control mb-3">
                    <button class="btn btn-success mt-3" name="login">Se connecter</button>
                    
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

<?php
include("pieddepage.php")
?>