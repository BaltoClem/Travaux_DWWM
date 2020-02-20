<?php
include("entete.php");

date_default_timezone_set('Europe/Paris');//Définition de la date
      $date = date("d-m-Y H:i:s");
?>

<div class="col-12"><?php echo validation_errors('<div class="alert alert-danger">','</div>');?></div>

<?php 
echo form_open("produits/inscription",  array('class' => 'col-12')); 
?>
<div class="form-group">
    <br>
    <p><strong class="ob" style="color : #bd2130;">* Ces zones sont obligatoires</strong></p>

    <legend class="text-center font-weight-bold">Inscription</legend>
    <br>


    <!-------------------------------------------LOGIN------------------------------------------------------->
    <label for="login"> Login* :</label> <input type="text" name="lgn" id="lgn" class="form-control">
    <div id="alertlog"></div>
    <br>
    <!-------------------------------------------NOM------------------------------------------------------->

    <div class="row">
        <div class="col">

            <label for="Nom"> Votre Nom* :</label> <input type="text" name="nom" id="nom" class="form-control">
            <div id="alertnom"></div>
        </div>

        <!-------------------------------------------PRENOM------------------------------------------------------->

        <div class="col"> <label for="Prénom"> Votre Prénom* : </label><input type="text" name="prenom" id="prenom"
                class="form-control">
            <div id="alertprenom"></div>
        </div>
    </div>
    <br>

    <!-------------------------------------------EMAIL------------------------------------------------------->

    <div><label for="Email"> Email* :</label> <input type="email" name="email" placeholder="dave.loper@afpa.fr" id="email" class="form-control col-8"></div>
    <div id="alertemail"></div>
    <br>
    <!-------------------------------------------CREATION DE MOT DE PASSE------------------------------------------------------->

    <label for="psswrd"> Choisissez un mot de passe* :</label> <input type="password" name="psswrd" id="psswrd"
        class="form-control col-6">
    <div id="alertemdp"></div>
    <p style="font-size:0.75em"><em>Doit contenir des majuscules, des chiffres, des minuscules et au moins 8
            caractères</em></p>


    <!-------------------------------------------VALIDATION DU MOT DE PASSE------------------------------------------------------->

    <label for="psswrd"> Confirmez votre mot de passe* :</label> <input type="password" name="psswrd2" id="psswrd2"
        class="form-control col-6">
    <div id="alertemdp2"></div>
    <br>

    <!-------------------------------------------DATE D'INSCRIPTION------------------------------------------------------->

    <label for="modif">Date inscription :</label><input type="text" class="form-control col-3" name="modif"
        value="<?=$date?>">
    <br>
    <!-------------------------------------------VALIDER & ANNULER------------------------------------------------------->

    <!--Afin de soumettre le formulaire lorsque l'utilisateur cliquera sur Envoyer, il faut définir l'input en type=submit-->
    <!--Afin de réinitialiser le formulaire lorsque l'utilisateur cliquera sur Annuler, il faudra définir l'input en type=reset-->
    <p><input type="submit" name="envoyer" value="Envoyer" id="btnenv2" class="btn btn-success">
        <input type="reset" name="Annuler" value="Annuler" class="btn btn-danger"></p>

</div>
<?php
include ("pieddepage.php")
?>
<script src="<?php echo base_url("assets\javascript\inscription_jquery.js");?>"></script>