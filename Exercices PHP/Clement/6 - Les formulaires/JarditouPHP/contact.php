<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
        integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link rel="stylesheet" href="Assets\css\style.css">
    <!--Mettre le lien css APRES BootStrap-->
    <title>Contact</title>
</head>

<body>
    <div class="container">
        <div class="row">

            <div class="col-6"><img src="Assets\img\jarditou_logo.jpg" alt="Logo Jarditou" id="logoJarditou"
                    class="logo"></div>
            <div class="col-6 mt-5">
                <h3>Tout le jardin</h3>
            </div>

            <!--Configuration du menu Navbar-->
            <nav id="navbar" class="col-12 navbar-expand-sm navbar-dark">
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="collapsibleNavbar">
                    <ul class="navbar-nav">
                        <li class="nav-item"><a class="nav-link" href="index.php">Accueil</a></li>
                        <li class="nav-item"><a class="nav-link" href="Tableau.php">Tableau</a></li>
                        <li class="nav-item"><a class="nav-link" href="Contact.php">Contact</a></li>
                    </ul>
                </div>
            </nav>

            <!--Bande sur la promotion-->
            <div class="col-12"><img src="Assets\img\promotion.jpg" alt="Promotion" class="promotion"></div>

            <!--Début du formulaire-->
            <form action="script.php" method="POST" class="col-12">
                <div class="form-group">
                    <p>* Ces zones sont obligatoires</p>

                    <legend>Vos coordonnées</legend>
                    <div class="row">
                        <div class="col">

                            <!--Avec form-control dans "class", on peut mettre deux labels l'un à côté de l'autre (en ligne, en définissant la div "row" auparavant)-->

                            <!--NOM-->
                            <label for="nom"> Votre Nom* :</label> <input type="text" name="nom" id="nom" class="form-control">
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
                        <div class="col">
                            <label for="prenom"> Votre Prénom* : </label><input type="text" name="prenom" id="prenom" class="form-control">
                            <span id="prenom_manquant"></span></div>

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
                    <br>

                    <!--Mise en place du genre-->
                    <label for="sexe"> Sexe* : </label>
                    <div class="form-check">
                        <input class="form-check-input" type="radio" name="sexe" id="sexe" value="Féminin" >
                        <label class="form-check-label" for="Féminin"> Féminin </label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input" type="radio" name="sexe" id="sexe" value="Masculin" >
                        <label class="form-check-label" for="Masculin"> Masculin </label><br>
                        <span id="sexe_manquant"></span></div>
                        <!--Message d'erreur PHP pour le genre-->
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
                    <div> <label for="date"> Date de Naissance* : </label><input type="date" name="date" id="date" class="form-control col-8" >
                        <span id="date_manquant"></span></div>

                        <!--Message d'erreur PHP pour la date-->
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
                    <div><label for="adresse"> Adresse* :</label><input type="text" name="adresse" id="adresse" class="form-control col-8">
                    <span id="adresse_manquant"></span></div>
                            <!--Message d'erreur PHP pour l'adresse-->
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
                        
                    <br>

                    <!--Mise en place du code postal-->
                    <div><label for="codepostal"> Code postal* : </label><input type="text" name="codepostal" id="codepostal" class="form-control col-8" >
                        <span id="code_manquant"></span></div>

                    <!--Message d'erreur PHP pour le code postal-->
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
                    <div><label for="ville"> Ville : </label><input type="text" name="ville" id="ville" class="form-control col-8" >
                        <span id="ville_manquant"></span></div>

                    <!--Message d'erreur PHP pour la ville-->
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
                    <div><label for="email"> Email* :</label> <input type="text" name="email" placeholder="dave.loper@afpa.fr" id="email" class="form-control col-8">
                        <span id="mail_manquant"></span></div>

                    <!--Messagee d'erreur PHP pour le mail-->

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
                    
                    <legend>Votre demande</legend>

                    <!--Section sur la question-->

                    <!--Mise en place du choix du sujet-->
                    <div> <label for="sujet"> Sujet* :</label>
                        <select name="sujet" size="1" id="sujet" class="form-control col-8" >
                            <!--La size 1 a été utilisée pour mettre l'étiquette à la même taille que les précédentes-->
                            <!--Pour définir les options d'une liste en formulaire, il faut utiliser option et value-->
                            <option value="">--Veuillez choisir un sujet--</option>
                            <option value="MesCommandes">Mes commandes</option>
                            <option value="QuestionSurUnProduit">Question sur un produit</option>
                            <option value="Réclamation">Réclamation</option>
                            <option value="Autres">Autres</option>
                        </select>
                        <span id="sujet_manquant"></span></div>

                    <!--Message d'erreur PHP pour le sujet-->

                                                <?php 

                        if (isset($_GET["erreur9"]))
                        {
                            ?>
                                                <div class="alert alert-danger col-8">Vous n'avez pas saisi le sujet de votre question</div>
                                                <?php
                        }
                            ?>
                    
                    <br>

                    <!--Mise en place de la rédaction de la question-->
                    <!--Une zone de texte sera définie par textarea, utile pour les commentaires-->
                    <div><label for="question"> Votre question* :</label> <textarea name="question" id="question" class="form-control col-8" ></textarea>
                        <span id="question_manquant"></span></div>

                    <!--Message d'erreur PHP pour la question-->

                                            <?php 

                    if (isset($_GET["erreur10"]))
                    {
                        ?>
                                            <div class="alert alert-danger col-8">Vous n'avez pas saisi votre question</div>
                                            <?php
                    }
                        ?>
                    
                    <br>

                    <!--Bouton d'acceptation-->
                    <div class="form-group custom-control custom-checkbox">
                        <input type="checkbox" name="accord" value="accord" class="custom-control-input" id="customCheck1" >
                        <label class="custom-control-label" for="customCheck1">J'accepte le traitement informatique de ce formulaire</label>
                        <div class="valid-feedback">Champs Valide</div>
                        <div class="invalid-feedback">Cochez cette case pour continuer</div>
                        <span id="customCheck1_manquant"></span></div>
                        
                    <!--Message d'erreur pour le bouton d'acceptation-->

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

            <footer class="col-12 p-3">

                <ul class="fin">
                    <li>Mentions légales</li>
                    <li>Horaires</li>
                    <li>Plan du site</li>
                </ul>

            </footer>

            <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
                integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
                crossorigin="anonymous"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
                integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
                crossorigin="anonymous"></script>
            <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
                integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
                crossorigin="anonymous"></script>
        </div>
    </div>
    <!--<script src="Assets\javascript\script.js"></script>-->
</body>

</html>