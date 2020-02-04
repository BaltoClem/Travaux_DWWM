<?php
session_start();
require_once('connexion_bdd.php');//On fait appel à la base

$db = connexionBase(); //On retourne la fonction de connexion

if(isset($_POST['connexion']))//Si le bouton de connexion est activé
    {
        if(empty($_POST['mail']) || empty($_POST['motdepasse']))//SI les champs mail ou mot de passe sont vides alors :
        {
        header("location:connexion_index.php?Empty= Merci de remplir ces champs");//On revient sur la page initiale eet un message d'erreur apparaitra
        }
        else
        {
            $query="SELECT * FROM users WHERE mail='".$_POST['mail']."'"; //Préparation de la requête
            $result=$db->query($query);//Exécute une requête SQL, retourne un jeu de résultats en tant qu'objet
            
            if($result)//si la requête est validée
            {
                $user = $result->fetch(PDO::FETCH_OBJ); //Récupère la ligne et la retourne en tant qu'objet.
                    if (password_verify($_POST['motdepasse'], $user->psswrd))//Vérifie si le mot de passe crypté dans la BDD et ce qu'a saisi l'utilisateur correspond
                    {
                    $_SESSION['User']=$_POST['mail'];//Création d'une session par rapport au mail de l'utilisateur
                        if($user->role=='admin')//Si le rôle de l'utilisateur initié dans la bdd est "admin"
                        {
                        $_SESSION["Admin"]=$user->role;//alors une session "Admin" sera créée
                        }
                    header("location:index.php");//Retour vers l'index
                    } 
                    else 
                    {
                    header("location:connexion_index.php?Invalid= Merci de saisir des identifiants corrects");
                    
                    }
            }
            else
            {
            header("location:connexion_index.php?Invalid= Merci de saisir un identifiant ou un mot de passe corrects");
            }
        }
    }
    else
    {
        echo 'La connexion a échoué';
    }

?>