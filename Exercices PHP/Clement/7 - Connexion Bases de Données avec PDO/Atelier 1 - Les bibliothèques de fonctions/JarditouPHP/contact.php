<?php
include("entete.php");
?>

<!--Début du formulaire-->
<form action="script.php" method="POST" class="col-12">
    <div class="form-group">
        <p>* Ces zones sont obligatoires</p>

        <legend>Vos coordonnées</legend>
        
            

                <!--Avec form-control dans "class", on peut mettre deux labels l'un à côté de l'autre (en ligne, en définissant la div "row" auparavant)-->
<div class = "row">
<div class="col">
                <!--NOM-->
                <label for="Nom"> Votre Nom* :</label> <input type="text" name="nom" id="nom" class="form-control">
                <span id="nom_manquant"></span>
            

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
            <!--PRENOM-->
            
            <div class = "col"> <label for="Prénom"> Votre Prénom* : </label><input type="text" name="prenom" id="prenom" 
                    class="form-control">
                <span id="prenom_manquant"></span>


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

    <!--Mise en place du genre-->
    <label for="Sexe"> Sexe* : </label>
    <div class="form-check">
        <input class="form-check-input" type="radio" name="sexe" id="sexe" value="Féminin"> <label
            class="form-check-label" for="Féminin"> Féminin </label>
    </div>
    <div class="form-check">
        <input class="form-check-input" type="radio" name="sexe" id="sexe" value="Masculin" > <label
            class="form-check-label" for="Masculin"> Masculin </label><br>
        <span id="sexe_manquant"></span>
    </div>
    <?php 

if (isset($_GET["erreur3"]))
{
    ?>
    <div class="alert alert-danger col-8">Vous n'avez pas réussi à insérer votre sexe, réessayez !
    </div>
    <?php
}
    ?>

    <!--Mise en place de la date-->
    <!--Lorsque l'on définit un type en date, le déroulement du calendrier sur l'étiquette s'installe automatiquement-->
    <br>
    <div> <label for="DatedeNaissance"> Date de Naissance* : </label><input type="date" name="Date de Naissance"
            id="date" class="form-control col-8">
    </div>
    <span id="date_manquant"></span>
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

    <!-- Mise en place de l'adresse-->
    <div><label for="adresse"> Adresse* :</label><input type="text" name="adresse" id="adresse" 
            class="form-control col-8">
        <span id="adresse_manquant"></span></div>
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


    <!--Mise en place du code postal-->
    <div><label for="CodePostal"> Code postal* : </label><input type="text" name="Code postal" id="codepostal" 
            class="form-control col-8">
        <span id="code_manquant"></span></div>

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

    <!--Mise en place de la ville -->
    <div><label for="Ville"> Ville : </label><input type="text" name="Ville" id="ville" class="form-control col-8" >
        <span id="ville_manquant"></span></div>
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

    <!--Mise en place de l'email-->
    <div><label for="Email"> Email* :</label> <input type="email" name="Email" placeholder="dave.loper@afpa.fr" 
            id="mail" class="form-control col-8">
        <span id="mail_manquant"></span></div>

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

    <!--Section sur la question-->

    <!--Mise en place du choix du sujet-->
    <label for="Sujet"> Sujet* :
    </label>
    <select name="sujet" size="1" id="sujet" class="form-control col-8">
        <!--La size 1 a été utilisée pour mettre l'étiquette à la même taille que les précédentes-->
        <!--Pour définir les options d'une liste en formulaire, il faut utiliser option et value-->
        <option value="">--Veuillez choisir un sujet--</option>
        <option value="MesCommandes">Mes commandes</option>
        <option value="QuestionSurUnProduit">Question sur un produit</option>
        <option value="Réclamation">Réclamation</option>
        <option value="Autres">Autres</option>
    </select>
    <span id="sujet_manquant"></span>
    <br>
    <?php 

if (isset($_GET["erreur9"]))
{
    ?>
    <div class="alert alert-danger col-8">Vous n'avez pas saisi le sujet de votre question</div>
    <?php
}
    ?>

    <!--Mise en place de la rédaction de la question-->
    <!--Une zone de texte sera définie par textarea, utile pour les commentaires-->
    <div><label for="Question"> Votre question* :</label> <textarea name="VotreQuestion" id="question" 
            class="form-control col-8"></textarea>
        <span id="question_manquant"></span></div>
    <?php 

if (isset($_GET["erreur10"]))
{
    ?>
    <div class="alert alert-danger col-8">Vous n'avez pas saisi votre question</div>
    <?php
}
    ?>

    <!--Bouton d'acceptation-->
    <div class="form-group custom-control custom-checkbox">
        <input type="checkbox" name="accord" value="accord" class="custom-control-input" id="customCheck1" >
        <label class="custom-control-label" for="customCheck1">J'accepte le traitement informatique de ce
            formulaire</label>
        <br>
        <span id="customCheck1_manquant"></span></div>
    <?php 

if (isset($_GET["erreur11"]))
{
    ?>
    <div class="alert alert-danger col-8">Vous n'avez pas accepté le traitement informatique</div>
    <?php
}
    ?>

    <!--Mise en place des boutons de soumission et d'annulation-->

    <!--Afin de soumettre le formulaire lorsque l'utilisateur cliquera sur Envoyer, il faut définir l'input en type=submit-->
    <!--Afin de réinitialiser le formulaire lorsque l'utilisateur cliquera sur Annuler, il faudra définir l'input en type=reset-->
    <p><input type="submit" name="envoyer" value="Envoyer" id="bouton_envoi">
        <input type="reset" name="Annuler" value="Annuler"></p>
    </div>
</form>

<?php
                include("pieddepage.php")
                ?>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
    integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous">
</script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
    integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous">
</script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
    integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous">
</script>
</div>
</div>
<!--<script src="Assets\javascript\script.js"></script>-->
</body>

</html>