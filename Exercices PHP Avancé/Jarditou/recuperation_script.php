<?php
session_start();
require "connexion_bdd.php";
$db = connexionBase();
$aErreur = [];
$recup_mail=$_POST["recup_mail"];
//-----------------------------------------------------------------------------------------//

//RECUPERATION ADRESSE MAIL
if (empty($recup_mail)) 
{
    $aErreur[] = "erreur1=true";
}
else if (!preg_match("/^[a-zA-Z0-9.-]+@[a-z0-9.-]{2,252}.[a-z]{2,4}$/",($recup_mail))) 
{
   $aErreur[] = "erreur1bis=true";
}
if (!empty($aErreur)) //Si le tableau n'est pas vide
{
    $sUrl = implode("&", $aErreur);//Alors on regroupe toutes les erreurs
    header("Location:recuperation_index.php?".$sUrl);//et on affiche les erreurs dans le formulaire produit_ajout.php
exit;//arrêt de la condition
}

//-----------------------------------------------------------------------------------------//

$query="SELECT * FROM users WHERE mail='".$recup_mail."'";
$result=$db->query($query);
$user = $result->fetch(PDO::FETCH_OBJ);

if(!empty($user))
{

    if ($user->mail==$recup_mail)

        {                   
        $message = "L'adresse mail existe, un mail avec un lien vous a été envoyé";
        }

    if($_POST){
        $aHeaders = array('MIME-Version' => '1.0',
                           'Content-Type' => 'text/html; charset=utf-8',
                           'From' => 'Dave Loper <dave.loper@afpa.fr>',
                           'Reply-To' => 'Service commercial <commerciaux@jarditou.com>',
                           'X-Mailer' => 'PHP/' . phpversion()
                           );
                           $message2 = "<!DOCTYPE html>
                           <html lang='fr'>
                           <head>
                           <meta charset='utf-8'>
                           <title>Mot de passe provisoire</title>   
                           <meta name='viewport' content='width=device-width, initial-scale=1, shrink-to-fit=no'>
                           <link rel='stylesheet' href='https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css' integrity='sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T' crossorigin='anonymous'>
                           <style>
                           html 
                           {
                              font-size: 100%;
                           }
                            
                           body 
                           {
                               font-size: 1rem; /* Si html fixé à 100%, 1rem = 16px = taille par défaut de police de Firefox ou Chrome */
                           /*}
                           </style>  
                           </head>
                           <body>
                           <div class='container'>
                               <div class='row'>
                                   <div class='col-12'>
                                     <h1>Mot de passe provisoire</h1>
                                 </div>    
                               </div>   
                               <div class='row'>
                                   <div class='col-12'>
                                     Voici le lien à suivre pour votre nouveau mot de passe <a href ='http://localhost/Clement/Exercices%20PHP%20Avanc%C3%A9/Jarditou/new_mdp.php?email=$recup_mail'> Cliquez ici </a>
                                 </div>    
                               </div>   
                                 
                           </div> 
                           <script src='https://code.jquery.com/jquery-3.3.1.slim.min.js' integrity='sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo' crossorigin='anonymous'></script>
                           <script src='https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js' integrity='sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM' crossorigin='anonymous'></script>
                           </body>
                           </html>";
        
        mail("dave.loper@afpa.fr", "Votre nouveau mot de passe provisoire",$message2,$aHeaders);
        }

}
else{
    
    $message = "l'adresse mail n'existe pas";


   
}
            

?>

<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Mot de passe provisoire envoyé</title>
</head>

<body>
    <p> <?php echo $message; ?></p>
    <br>
    <a style='color:#0000FF; text-decoration:underline' href="connexion_index.php">Retour</a>
</body>

</html>