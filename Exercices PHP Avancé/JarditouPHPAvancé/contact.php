<?php
include("entete.php");
?>

<!--Début du formulaire-->
<form action="contact_script.php" method="POST" class="col-12">
    <div class="form-group">
        <br>
        <p><strong class="ob"style="color : #bd2130;">* Ces zones sont obligatoires</strong></p>

        <legend>Vos coordonnées</legend>
        
<div class = "row">
<div class="col">

<!-------------------------------------------NOM------------------------------------------------------->

                <label for="Nom"> Votre Nom* :</label> <input type="text" name="nom" id="nom" class="form-control"required>
                <span id="nom_manquant"></span><div id="alertnom"></div>
                

            <!--PHP Pour le message d'erreur du nom-->
            <?php 
                            if (isset($_GET["erreur1"]))
                            {
                        ?>
            <div class="alert alert-danger">Vous n'avez pas renseigné votre nom</div>
            <?php
                            }
                            else if (isset($_GET["erreur1bis"]))
                            {
                        ?>
            <div class="alert alert-warning">Le format est incorrect</div>
            <?php
                            }
                        ?>
</div>

<!-------------------------------------------PRENOM------------------------------------------------------->
            
            <div class = "col"> <label for="Prénom"> Votre Prénom* : </label><input type="text" name="prenom" id="prenom"
                    class="form-control" required>
                <span id="prenom_manquant"></span><div id="alertprenom"></div>


    <!--PHP Pour le message d'erreur du prénom-->
    <?php 
if (isset($_GET["erreur2"]))
{
    ?>
    <div class="alert alert-danger">Vous n'avez pas renseigné votre prénom</div>
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
</div>
<br>

<!-------------------------------------------SEXE------------------------------------------------------->

    <label for="Sexe"> Sexe* : </label>
    <div class="form-check">
        <input class="form-check-input" type="radio" name="sexe" id="sexe1" value="Féminin"> <label
            class="form-check-label" for="Féminin"> Féminin </label>
</div>
<div class="form-check">
        <input class="form-check-input" type="radio" name="sexe" id="sexe2" value="Masculin"> <label
            class="form-check-label" for="Masculin"> Masculin </label><br>
    </div>
    <span id="sexe_manquant"></span> <div id="alertsexe"></div>
    <?php 

if (isset($_GET["erreur3"]))
{
    ?>
    <div class="alert alert-danger col-8">Vous n'avez pas réussi à insérer votre sexe, réessayez !
    </div>
    <?php
}
    ?>
<br>

<!-------------------------------------------DATE------------------------------------------------------->
    
    <div> <label for="DatedeNaissance"> Date de Naissance* : </label><input type="date" name="date" id="date" class="form-control col-8" required></div>
    <span id="date_manquant"></span><div id="alertdate"></div>
    <?php 
if (isset($_GET["erreur4"]))
{
    ?>
    <div class="alert alert-danger col-8">Vous n'avez pas renseigné votre date de naissance</div>
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

<!-------------------------------------------ADRESSE------------------------------------------------------->

    <div><label for="adresse"> Adresse* :</label><input type="text" name="adresse" id="adresse" class="form-control col-8" required>
        <span id="adresse_manquant"></span></div><div id="alertadr"></div>
    <?php 
if (isset($_GET["erreur5"]))
{
    ?>
    <div class="alert alert-danger col-8">Vous n'avez pas renseigné votre adresse</div>
    <?php
}
else if (isset($_GET["erreur5bis"]))
{
    ?>
    <div class="alert alert-warning col-8">Le format est incorrect</div>
    <?php
}
?>
    <span id="adresse_manquant"></span></div>


<!-------------------------------------------CODE POSTAL------------------------------------------------------->

    <div><label for="CodePostal"> Code postal* : </label><input type="text" name="codepostal" id="codepostal" class="form-control col-8" required>
        <span id="code_manquant"></span></div><div id="alertcode"></div>

    <?php 
if (isset($_GET["erreur6"]))
{
    ?>
    <div class="alert alert-danger col-8">Vous n'avez pas renseigné votre code postal</div>
    <?php
}
else if (isset($_GET["erreur6bis"]))
{
    ?>
    <div class="alert alert-warning col-8">Le format est incorrect</div>
    <?php
}
?>

    <br>

<!-------------------------------------------VILLE------------------------------------------------------->

    <div><label for="Ville"> Ville : </label><input type="text" name="ville" id="ville" class="form-control col-8" required>
        <span id="ville_manquant"></span></div><div id="alertville"></div>
    <?php 
if (isset($_GET["erreur7"]))
{
    ?>
    <div class="alert alert-danger col-8">Vous n'avez pas renseigné votre ville</div>
    <?php
}
else if (isset($_GET["erreur7bis"]))
{
    ?>
    <div class="alert alert-warning col-8">Le format est incorrect</div>
    <?php
}
?>

    <br>

<!-------------------------------------------EMAIL------------------------------------------------------->

    <div><label for="Email"> Email* :</label> <input type="text" name="email" id="email" placeholder="dave.loper@afpa.fr" required
            id="mail" class="form-control col-8">
        <span id="mail_manquant"></span></div><div id="alertemail"></div>

    <?php 
if (isset($_GET["erreur8"]))
{
    ?>
    <div class="alert alert-danger col-8">Vous n'avez pas renseigné votre adresse email</div>
    <?php
}
else if (isset($_GET["erreur8bis"]))
{
    ?>
    <div class="alert alert-warning col-8">Le format est incorrect</div>
    <?php
}
?>

    <br>
    <legend>Votre demande</legend>

<!-------------------------------------------QUESTION------------------------------------------------------->

<!-------------------------------------------SUJET------------------------------------------------------->
    <label for="Sujet"> Sujet* :
    </label>
    <select name="sujet" size="1" id="sujet" class="form-control col-8" required>
        <!--La size 1 a été utilisée pour mettre l'étiquette à la même taille que les précédentes-->
        <!--Pour définir les options d'une liste en formulaire, il faut utiliser option et value-->
        <option value="">--Veuillez choisir un sujet--</option>
        <option value="MesCommandes">Mes commandes</option>
        <option value="QuestionSurUnProduit">Question sur un produit</option>
        <option value="Réclamation">Réclamation</option>
        <option value="Autres">Autres</option>
    </select>
    <span id="sujet_manquant"></span><div id="alertsujet"></div>
    <br>
    <?php 

if (isset($_GET["erreur9"]))
{
    ?>
    <div class="alert alert-danger col-8">Vous n'avez pas saisi le sujet de votre question</div>
    <?php
}
    ?>

<!-------------------------------------------TEXTE------------------------------------------------------->

    <!--Une zone de texte sera définie par textarea, utile pour les commentaires-->
    <div><label for="Question"> Votre question* :</label> <textarea name="question" id="question" required
            class="form-control col-8"></textarea>
        <span id="question_manquant"></span></div><div id="alertquest"></div>
    <?php 

if (isset($_GET["erreur10"]))
{
    ?>
    <div class="alert alert-danger col-8">Vous n'avez pas saisi votre question</div>
    <?php
}
    ?>
<br>

<!-------------------------------------------BOUTON ACCEPTATION------------------------------------------------------->

    <div class="form-group custom-control custom-checkbox">
        <input type="checkbox" name="accord" class="custom-control-input" id="customCheck1" required>
        <label class="custom-control-label" for="customCheck1" id="boutonacc">J'accepte le traitement informatique de ce formulaire</label>
        <br>
        <span id="customCheck1_manquant"></span></div><div id="alertacc"></div>
    <?php 

if (isset($_GET["erreur11"]))
{
    ?>
    <div class="alert alert-danger col-8">Vous n'avez pas accepté le traitement informatique</div>
    <?php
}
    ?>

<!-------------------------------------------VALIDER & ANNULER------------------------------------------------------->

    <!--Afin de soumettre le formulaire lorsque l'utilisateur cliquera sur Envoyer, il faut définir l'input en type=submit-->
    <!--Afin de réinitialiser le formulaire lorsque l'utilisateur cliquera sur Annuler, il faudra définir l'input en type=reset-->
    <p><input type="submit" name="envoyer" value="Envoyer" id="bouton_envoi"class="btn btn-dark">
        <input type="reset" name="Annuler" value="Annuler"class="btn btn-danger"></p>
    
</form>

<?php
                include("pieddepage.php")
                ?>
                
                </div>
</div>
<script src="Assets\javascript\contact_jquery.js"></script>
<!--<script src="Assets\javascript\contact_script.js"></script>-->