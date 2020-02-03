<?php
include("entete.php");
?>
<div class></div>
<article>
        <h4 class="title-element">Récupération du mot de passe</h4>
            <br>
            <form method="post" class="default-form" action="recuperation_script.php">
                <p> <input type="email" placeholder ="Veuillez renseigner votre adresse mail" class="form-control" name="recup_mail" id="mail" required>
                <div id="alertmail"></div></p>
                

            <?php if (isset($_GET["erreur1"]))
            {
            ?>
            <div class="alert alert-danger">Vous n'avez pas renseigné votre adresse mail</div>
            <?php
            }
            else if (isset($_GET["erreur1bis"]))
            {
                ?>
                <div class="alert alert-warning col-8">Le format est incorrect</div>
                <?php
            }
            ?>
                <br>
                <input type="submit" value="Valider" name="recup_submit" id="recup_submit" class="btn btn-success">
                <a href="connexion_index.php" class="btn btn-danger">Retour</a>
            </form>
            <br>
</article>
<?php
include("pieddepage.php")
?>
<script src="Assets\javascript\recup_jquery.js"></script>