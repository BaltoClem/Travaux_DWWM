<?php
session_start();

if(isset($_SESSION['User']))

{
    echo "Bienvenue sur Jarditou ".$_SESSION['User'].'<br/>';
    echo "<a href='logout.php'>Se déconnecter</a>";
}
?>