function verif() 
{     
     // Récupère la valeur saisie dans le champ input     
     var lenom = $("#nom").val();
 
     // Teste si la valeur est bonne
     if (lenom === "") 
     {            
         alert("Le nom doit être renseigné"); 
         return false; // le script s'arrête ici, ce qu'il y a après n'est pas exécuté
     }    
      // Récupère la valeur saisie dans le champ input     
      var leprenom = $("#prenom").val();
 
      // Teste si la valeur est bonne
      if (leprenom === "") 
      {            
          alert("Le prénom doit être renseigné"); 
          return false; // le script s'arrête ici, ce qu'il y a après n'est pas exécuté
      }     

      var lesexe1 = $("#sexe1").val();
      var lesexe2 = $("#sexe2").val();
 
     // Teste si la valeur est bonne
     if (lesexe1.checked==="" && lesexe2.checked==="") 
     {            
         alert("Le sexe doit être renseigné"); 
         return false; // le script s'arrête ici, ce qu'il y a après n'est pas exécuté
     }   

     
     var ladate = $("#date").val();
 
     // Teste si la valeur est bonne
     if (ladate === "") 
     {            
         alert("La date doit être renseigné"); 
         return false; // le script s'arrête ici, ce qu'il y a après n'est pas exécuté
     }

    
     var ladresse = $("#adresse").val();
 
     // Teste si la valeur est bonne
     if (ladresse === "") 
     {            
         alert("L'adresse doit être renseigné"); 
         return false; // le script s'arrête ici, ce qu'il y a après n'est pas exécuté
     } 

     var lecode = $("#codepostal").val();
 
     // Teste si la valeur est bonne
     if (lecode === "") 
     {            
         alert("Le code postal doit être renseigné"); 
         return false; // le script s'arrête ici, ce qu'il y a après n'est pas exécuté
     }

     var laville = $("#ville").val();
 
     // Teste si la valeur est bonne
     if (laville === "") 
     {            
         alert("La ville doit être renseigné"); 
         return false; // le script s'arrête ici, ce qu'il y a après n'est pas exécuté
     }    

     var lemail = $("#email").val();
 
     // Teste si la valeur est bonne
     if (lemail === "") 
     {            
         alert("L'email doit être renseigné"); 
         return false; // le script s'arrête ici, ce qu'il y a après n'est pas exécuté
     }    
    }
$("#bouton_envoi").click(function(event) 
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