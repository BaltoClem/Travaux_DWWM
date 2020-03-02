<?php
include("entete.php");
?>
<div class="col-12"><?php echo validation_errors('<div class="alert alert-danger">','</div>');?></div>
<div class="mr-2"></div>
<article>
        <h4 class="title-element">Récupération du mot de passe</h4>
            <br>
            <?php 
            
echo form_open("produits/valmdpoub"); 
?>
                <p><b><label for="Email"> *Votre email :</label></b><input type="email" placeholder ="Veuillez renseigner votre adresse mail" class="form-control" name="mail" id="mail">
                <div id="alertmail"></div></p>
                <br>
                <input type="submit" value="Valider" name="recup_submit" id="recup_submit" class="btn btn-success">
                <a href="<?= site_url('produits/form_connexion')?>" class="btn btn-danger">Retour</a>
            </form>
            <br>
</article>

</div>
<?php
include("pieddepage.php")
?>
<script src="<?=base_url('assets\javascript\recup_jquery.js');?>"></script>
