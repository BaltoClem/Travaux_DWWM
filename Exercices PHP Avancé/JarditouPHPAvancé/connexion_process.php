<?php
session_start();
require_once('connexion_script.php');

    if(isset($_POST['login']))
    {
        var_dump($_POST);
        if(empty($_POST['nom']) || empty($_POST['motdepasse']))
        {
            header("location:index.php?Empty= Merci de remplir ces champs");
        }
        else
        {
            $query="SELECT * FROM users WHERE nom='".$_POST['nom']."' AND psswrd='".$_POST['motdepasse']."'";
            $result=mysqli_query($con, $query);

            if(mysqli_fetch_assoc($result))
            {
                $_SESSION['User']=$_POST['nom'];
                header("location:bienvenue.php");
            }
            else
            {
                header("location:connexion_index.php?Invalid= Merci de saisir un identifiant ou un mot de passe correct");
            }
        }
    }
    else
    {
        echo 'La connexion a échoué';
    }

?>