<?php
include("entete.php");
?>

<form action="new_mdp_script.php" method="POST" class="col-12">
    <div class="form-group">
        <br>
        <p><strong class="ob"style="color : #bd2130;">* Ces zones sont obligatoires</strong></p>

        <legend class="text-center font-weight-bold">Nouveau mot de passe</legend>
        <br>
<!-------------------------------------------NOUVEAU MOT DE PASSE------------------------------------------------------->

<label for="psswrd"> Choisissez un mot de passe* :</label> <input type="password" name="psswrd" id="psswrd" class="form-control col-6" required>
                <span id="psswrd_manquant"></span><div id="alertemdp"></div>
                <p style="font-size:0.75em"><em>Doit contenir des majuscules, des chiffres, des minuscules et au moins 8 caractères</em></p>
            

            <!--PHP Pour le message d'erreur -->
            <?php 
                            if (isset($_GET["erreur5"]))
                            {
                        ?>
            <div class="alert alert-danger col-6">Vous n'avez pas renseigné de mot de passe</div>
            <?php
                            }
                            else if (isset($_GET["erreur5bis"]))
                            {
                        ?>
            <div class="alert alert-warning col-6">Le format est incorrect</div>
            <?php
                            }
                        ?>
<!-------------------------------------------VALIDATION DU NOUVEAU MOT DE PASSE------------------------------------------------------->

<label for="psswrd"> Confirmez votre mot de passe* :</label> <input type="password" name="psswrd2" id="psswrd2" class="form-control col-6" required>
                <span id="psswrd_manquant"></span><div id="alertemdp2"></div>
            

            <!--PHP Pour le message d'erreur -->
            <?php 
                            if (isset($_GET["erreur6"]))
                            {
                        ?>
            <div class="alert alert-danger col-6">Vous n'avez pas confirmé votre mot de passe</div>
            <?php
                            }
                            else if (isset($_GET["erreur6bis"]))
                            {
                        ?>
            <div class="alert alert-warning col-6">Le mot de passe est différent</div>
            <?php
                            }
                        ?>
                        
<?php $valeur=$_GET['email']; echo '<input type="mail" hidden class="form-control" name="mail" id="mail" value="'.$valeur.'">'; ?>

<br>
<p><input type="submit" name="envoyer" value="Envoyer" id="bouton_envoi3"class="btn btn-dark">
<input type="reset" name="Annuler" value="Annuler"class="btn btn-danger"></p>
    
</form>

<?php
    include("pieddepage.php")
?>

</div>

<script src="Assets\javascript\new_mdp_jquery.js"></script>
