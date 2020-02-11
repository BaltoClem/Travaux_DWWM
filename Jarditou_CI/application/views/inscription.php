<?php
include("entete.php");

date_default_timezone_set('Europe/Paris');//Définition de la date
      $date = date("d-m-Y H:i:s");
?>


<!--Début du formulaire-->
<form action="inscription_script.php" method="POST" class="col-12">
    <div class="form-group">
        <br>
        <p><strong class="ob"style="color : #bd2130;">* Ces zones sont obligatoires</strong></p>

        <legend class="text-center font-weight-bold">Inscription</legend>
        <br>


<!-------------------------------------------LOGIN------------------------------------------------------->
        <label for="login"> Login* :</label> <input type="text" name="lgn" id="lgn" class="form-control" required>
                <span id="login_manquant"></span><div id="alertlog"></div>
            
            <?php 
                            if (isset($_GET["erreur1"]))
                            {
                        ?>
            <div class="alert alert-danger">Veuillez choisir un identifiant</div>
            <?php
                            }
                        ?>
<br>
<!-------------------------------------------NOM------------------------------------------------------->

<div class = "row">
<div class="col">

                <label for="Nom"> Votre Nom* :</label> <input type="text" name="nom" id="nom" class="form-control" required>
                <span id="nom_manquant"></span><div id="alertnom"></div>
            

            <!--PHP Pour le message d'erreur du nom-->
            <?php 
                            if (isset($_GET["erreur2"]))
                            {
                        ?>
            <div class="alert alert-danger">Vous n'avez pas renseigné votre nom</div>
            <?php
                            }
                            else if (isset($_GET["erreur2bis"]))
                            {
                        ?>
            <div class="alert alert-warning">Le format est incorrect</div>
            <?php
                            }
                        ?>
</div>

<!-------------------------------------------PRENOM------------------------------------------------------->
            
            <div class = "col"> <label for="Prénom"> Votre Prénom* : </label><input type="text" name="prenom" id="prenom" class="form-control" required>
                <span id="prenom_manquant"></span><div id="alertprenom"></div>


    <!--PHP Pour le message d'erreur du prénom-->
    <?php 
if (isset($_GET["erreur3"]))
{
    ?>
    <div class="alert alert-danger">Vous n'avez pas renseigné votre prénom</div>
    <?php
}
else if (isset($_GET["erreur3bis"]))
{
    ?>
    <div class="alert alert-warning">Le format est incorrect</div>
    <?php
}
?>
</div>
</div>
<br>

<!-------------------------------------------EMAIL------------------------------------------------------->

    <div><label for="Email"> Email* :</label> <input type="email" name="email" placeholder="dave.loper@afpa.fr" id="email" class="form-control col-8" required>
        <span id="mail_manquant"></span></div><div id="alertemail"></div>

    <?php 
if (isset($_GET["erreur4"]))
{
    ?>
    <div class="alert alert-danger col-8">Vous n'avez pas renseigné votre adresse email</div>
    <?php
}
else if (isset($_GET["erreur4bis"]))
{
    ?>
    <div class="alert alert-warning col-8">Le format est incorrect</div>
    <?php
}
?>

    <br>
<!-------------------------------------------CREATION DE MOT DE PASSE------------------------------------------------------->

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
<!-------------------------------------------VALIDATION DU MOT DE PASSE------------------------------------------------------->

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

<br>

<!-------------------------------------------DATE D'INSCRIPTION------------------------------------------------------->

<label for="modif">Date inscription :</label><input type="text" class= "form-control col-3" name="modif" value ="<?=$date?>"readonly>
<br>
<!-------------------------------------------VALIDER & ANNULER------------------------------------------------------->

    <!--Afin de soumettre le formulaire lorsque l'utilisateur cliquera sur Envoyer, il faut définir l'input en type=submit-->
    <!--Afin de réinitialiser le formulaire lorsque l'utilisateur cliquera sur Annuler, il faudra définir l'input en type=reset-->
    <p><input type="submit" name="envoyer" value="Envoyer" id="bouton_envoi2"class="btn btn-dark">
        <input type="reset" name="Annuler" value="Annuler"class="btn btn-danger"></p>
    
</form>

<?php
                include("pieddepage.php")
                ?>
                
                </div>
</div>
<script src="Assets\javascript\inscription_jquery.js"></script>
