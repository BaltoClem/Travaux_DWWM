<?php
session_start();//Pour activer la fonction $_SESSION plus tard

if(isset($_SESSION['User']))//Si une session "user" a été initialisée

{
    echo "Bienvenue sur Jarditou ".$_SESSION['User'].'<br/>';//On affichera le texte + le login de l'utilisateur
    echo "<a href='logout.php'>Se déconnecter</a>";//On proposera un bouton pour se déconnecter
}
?>