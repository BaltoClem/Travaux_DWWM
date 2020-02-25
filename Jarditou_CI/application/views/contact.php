<?php
include ("entete.php");
?>

<!--Début du formulaire-->
<div class="col-12"><?php echo validation_errors('<div class="alert alert-danger">','</div>');?></div>

<br>
<?php 
echo form_open_multipart("produits/form_contact",  array('class' => 'col-12 ml-3')); 
?>
<br>
<p><strong class="ob" style="color : #bd2130;">* Ces zones sont obligatoires</strong></p>

<legend>Vos coordonnées</legend>

<div class="form-row">
    <div class="col">

        <!-------------------------------------------NOM------------------------------------------------------->

        <label for="Nom"> Votre Nom* :</label> <input type="text" name="nom" id="nom" class="form-control col-11">
        <span id="alertnom"></span>

    </div>

    <!-------------------------------------------PRENOM------------------------------------------------------->

    <div class="col"> <label for="Prénom"> Votre Prénom* : </label><input type="text" name="prenom" id="prenom" class="form-control col-11">
        <div id="alertprenom"></div>
    </div>
</div>
<br>

<!-------------------------------------------SEXE------------------------------------------------------->

<label for="Sexe"> Sexe* : </label>
<div class="form-check">
    <input class="form-check-input" type="radio" name="sexe" id="sexe1" value="Féminin"> <label class="form-check-label"
        for="Féminin"> Féminin </label>
</div>
<div class="form-check">
    <input class="form-check-input" type="radio" name="sexe" id="sexe2" value="Masculin"> <label
        class="form-check-label" for="Masculin"> Masculin </label><br>
</div>
<div id="alertsexe"></div>
<br>

<!-------------------------------------------DATE------------------------------------------------------->

<label for="DatedeNaissance"> Date de Naissance* : </label><input type="date" name="date" id="date" class="form-control col-8">
<div id="alertdate"></div>
<br>

<!-------------------------------------------ADRESSE------------------------------------------------------->

<label for="adresse"> Adresse* :</label><input type="text" name="adresse" id="adresse" class="form-control col-8">
    <div id="alertadr"></div>
    <br>


    <!-------------------------------------------CODE POSTAL------------------------------------------------------->

    <label for="CodePostal"> Code postal* : </label><input type="text" name="codepostal" id="codepostal" class="form-control col-8">
        <div id="alertcode"></div>
        <br>

        <!-------------------------------------------VILLE------------------------------------------------------->

        <label for="Ville"> Ville : </label><input type="text" name="ville" id="ville" class="form-control col-8">
            <div id="alertville"></div>
            <br>

            <!-------------------------------------------EMAIL------------------------------------------------------->

            <label for="Email"> Email* :</label> <input type="text" name="email" id="email" placeholder="dave.loper@afpa.fr" id="mail" class="form-control col-8">
                <div id="alertemail"></div>
                <br>
            
                <legend>Votre demande</legend>

                <!-------------------------------------------QUESTION------------------------------------------------------->

                <!-------------------------------------------SUJET------------------------------------------------------->
                <label for="Sujet"> Sujet* :</label>
                <select name="sujet" size="1" id="sujet" class="form-control col-8">
                    <!--La size 1 a été utilisée pour mettre l'étiquette à la même taille que les précédentes-->
                    <!--Pour définir les options d'une liste en formulaire, il faut utiliser option et value-->
                    <option value="">--Veuillez choisir un sujet--</option>
                    <option value="MesCommandes">Mes commandes</option>
                    <option value="QuestionSurUnProduit">Question sur un produit</option>
                    <option value="Réclamation">Réclamation</option>
                    <option value="Autres">Autres</option>
                </select>
                <div id="alertsujet"></div>
                <br>
                <!-------------------------------------------TEXTE------------------------------------------------------->

                <!--Une zone de texte sera définie par textarea, utile pour les commentaires-->
                <div><label for="Question"> Votre question* :</label> <textarea name="question" id="question"
                        class="form-control col-8"></textarea>
                    <div id="alertquest"></div>
                    <br>

                    <!-------------------------------------------BOUTON ACCEPTATION------------------------------------------------------->

                    <div class="form-group custom-control custom-checkbox">
                        <input type="checkbox" name="accord" class="custom-control-input" id="customCheck1">
                        <label class="custom-control-label" for="customCheck1" id="boutonacc">J'accepte le traitement
                            informatique de ce formulaire</label>
                        <div id="alertacc"></div>
                    </div>


                    <!-------------------------------------------VALIDER & ANNULER------------------------------------------------------->
                    </form>
                    <!--Afin de soumettre le formulaire lorsque l'utilisateur cliquera sur Envoyer, il faut définir l'input en type=submit-->
                    <!--Afin de réinitialiser le formulaire lorsque l'utilisateur cliquera sur Annuler, il faudra définir l'input en type=reset-->
                    <p><input type="submit" name="envoyer" value="Envoyer" id="btnenv" class="btn btn-success">
                        <input type="reset" name="Annuler" value="Annuler" class="btn btn-danger"></p>
                        </form>
                        </div>
                        </div>
                    <?php
    include ("pieddepage.php")
?>
                    <script src="<?php echo base_url("assets\javascript\contact_jquery.js");?>"></script>