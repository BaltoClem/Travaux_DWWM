<?php

session_start();
if(isset($_GET['logout']))
{
    session_destroy();
    header("location:connexion_index.php");
}
else{
    header("location:connexion_index.php");
}

?>