<?php

session_start();
if(isset($_SESSION['User']))
{
    session_destroy();
    header("location:connexion_index.php");
}
else{
    header("location:connexion_index.php");
}

?>