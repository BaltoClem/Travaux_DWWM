function verif() 
{     
     // Récupère la valeur saisie dans le champ input     
     var laref = $("#reference").val();
 
     // Teste si la valeur est bonne
     if (laref === "") 
     {            
         alert("La référence doit être renseignée"); 
         return false; // le script s'arrête ici, ce qu'il y a après n'est pas exécuté
     }    
      // Récupère la valeur saisie dans le champ input     
      var lacat = $("#pro_cat_id").val();
 
      // Teste si la valeur est bonne
      if (lacat === "") 
      {            
          alert("La catégorie doit être renseignée"); 
          return false; // le script s'arrête ici, ce qu'il y a après n'est pas exécuté
      }     

      var lelib = $("#libelle").val();
 
      // Teste si la valeur est bonne
      if (lelib === "") 
      {            
          alert("Le libellé doit être renseigné"); 
          return false; // le script s'arrête ici, ce qu'il y a après n'est pas exécuté
      }    


     var ladesc = $("#description").val();
 
     // Teste si la valeur est bonne
     if (ladesc === "") 
     {            
         alert("La description doit être renseignée"); 
         return false; // le script s'arrête ici, ce qu'il y a après n'est pas exécuté
     }

    
     var leprix = $("#prix").val();
 
     // Teste si la valeur est bonne
     if (leprix === "") 
     {            
         alert("Le prix doit être renseigné"); 
         return false; // le script s'arrête ici, ce qu'il y a après n'est pas exécuté
     } 

     var lestock = $("#stock").val();
 
     // Teste si la valeur est bonne
     if (lestock === "") 
     {            
         alert("Le stock doit être renseigné"); 
         return false; // le script s'arrête ici, ce qu'il y a après n'est pas exécuté
     }

     var lacoul = $("#couleur").val();
 
     // Teste si la valeur est bonne
     if (lacoul === "") 
     {            
         alert("La couleur doit être renseignée"); 
         return false; // le script s'arrête ici, ce qu'il y a après n'est pas exécuté
     }    

     if($('#bloque_oui').is(':checked') || $('#bloque_non').is(':checked'))    // Vérification à l'envoie du bouton radio "validation du formulaire" 
     {
         result = true;
     }              
     else{

         alert("Veuillez indiquer si le produit est bloqué");
     }  
    document.forms[0].submit();         
}

$("#bouton_envoi2").click(function(event) 
{
    /* On doit bloquer l'èvènement par défaut - ici l'envoi du formulaire -
    * avec l'instruction preventDefault() 
    * le paramètre 'event' est un objet (nommé 
    * librement) représentant l'évènement
    */         
    event.preventDefault();
 
    // Appel de la fonction verif()
    verif();             
}); 