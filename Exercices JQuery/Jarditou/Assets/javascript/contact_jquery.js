function verif() 
{     
        
     var lenom = $("#nom").val();
     if (lenom === "") 
     {            
         $("#nom").css("border-color", "#FF0000");
         var html ="<div class='alert alert-danger'role='alert'>"+"Vous n'avez pas renseigné le nom !"+"</div>";
         $("#alertnom").append(html);
         
     }
     else
     {
        $("#nom").css("border-color", "#008000");
        var html ="<div class='alert alert-success'role='alert'>"+"Quel joli nom !"+"</div>";
        $("#alertnom").append(html);
        
     }   

      var leprenom = $("#prenom").val();
 
      if (leprenom === "") 
      {            
        $("#prenom").css("border-color", "#FF0000");
        var html ="<div class='alert alert-danger'role='alert'>"+"Vous n'avez pas renseigné le prénom !"+"</div>";
        $("#alertnom").append(html);
    }
    else
    {
       $("#prenom").css("border-color", "#008000");
       var html ="<div class='alert alert-success'role='alert'>"+"Ok ça passe !"+"</div>";
       $("#alertprenom").append(html);
    }

    if($('#sexe1').is(':checked') || $('#sexe2').is(':checked'))
    {
        result = true;
        var html ="<div class='alert alert-success col-6'role='alert'>"+"Sexe bien introduit !"+"</div>";
        $("#alertsexe").append(html);
        
    }              
    else{

        var html ="<div class='alert alert-danger col-6'role='alert'>"+"Vous n'avez pas introduit le sexe dans le trou !"+"</div>";
        $("#alertsexe").append(html);
    }  

     var ladate = $("#date").val();
 
     if (ladate === "") {
     $("#date").css("border-color", "#FF0000");
         var html ="<div class='alert alert-danger col-8'role='alert'>"+"Regardez le calendrier pour savoir la date d'aujourd'hui !"+"</div>";
         $("#alertdate").append(html);
         return false;
     }
     else
     {
        $("#date").css("border-color", "#008000");
        var html ="<div class='alert alert-success col-8'role='alert'>"+"C'est pas très vieux ça"+"</div>";
        $("#alertdate").append(html);
     }

    
     var ladresse = $("#adresse").val();
 
     // Teste si la valeur est bonne
     if (ladresse === "") 
     {
        $("#adresse").css("border-color", "#FF0000");
            var html ="<div class='alert alert-danger col-8'role='alert'>"+"On sait pu où on habite ?"+"</div>";
            $("#alertadr").append(html);
            return false;
        }
        else
        {
           $("#adresse").css("border-color", "#008000");
           var html ="<div class='alert alert-success col-8'role='alert'>"+"C'est joli par là-bas !"+"</div>";
           $("#alertadr").append(html);
        }

     var lecode = $("#codepostal").val();
 
     // Teste si la valeur est bonne
     if (lecode === "") 
     {
        $("#codepostal").css("border-color", "#FF0000");
            var html ="<div class='alert alert-danger col-8'role='alert'>"+"Faut mettre plein de chiffres là"+"</div>";
            $("#alertcode").append(html);
            return false;
        }
        else
        {
           $("#codepostal").css("border-color", "#008000");
           var html ="<div class='alert alert-success col-8'role='alert'>"+"Ok !!!"+"</div>";
           $("#alertcode").append(html);
        }

     var laville = $("#ville").val();
 
     // Teste si la valeur est bonne
     if (laville === "") 
     {
        $("#ville").css("border-color", "#FF0000");
            var html ="<div class='alert alert-danger col-8'role='alert'>"+"Faux"+"</div>";
            $("#alertville").append(html);
            return false;
        }
        else
        {
           $("#ville").css("border-color", "#008000");
           var html ="<div class='alert alert-success col-8'role='alert'>"+"Ok !!!"+"</div>";
           $("#alertville").append(html);
        } 

     var lemail = $("#email").val();
 
     // Teste si la valeur est bonne
     if (lemail === "") 
     {
        $("#email").css("border-color", "#FF0000");
            var html ="<div class='alert alert-danger col-8'role='alert'>"+"Faux"+"</div>";
            $("#alertemail").append(html);
            return false;
        }
        else
        {
           $("#email").css("border-color", "#008000");
           var html ="<div class='alert alert-success col-8'role='alert'>"+"Ok !!!"+"</div>";
           $("#alertemail").append(html);
        } 

     var lesujet = $("#sujet").val();
 
     // Teste si la valeur est bonne
     if (lesujet === "") 
     {
     $("#sujet").css("border-color", "#FF0000");
            var html ="<div class='alert alert-danger col-8'role='alert'>"+"Faux"+"</div>";
            $("#alertsujet").append(html);
            return false;
        }
        else
        {
           $("#sujet").css("border-color", "#008000");
           var html ="<div class='alert alert-success col-8'role='alert'>"+"Ok !!!"+"</div>";
           $("#alertsujet").append(html);
        } 

    var laquest = $("#question").val();
     // Teste si la valeur est bonne
     if (laquest === "") 
     {
     $("#question").css("border-color", "#FF0000");
            var html ="<div class='alert alert-danger col-8'role='alert'>"+"Faux"+"</div>";
            $("#alertquest").append(html);
            return false;
        }
        else
        {
           $("#question").css("border-color", "#008000");
           var html ="<div class='alert alert-success col-8'role='alert'>"+"Ok !!!"+"</div>";
           $("#alertquestion").append(html);
        } 

     
     if($('#customCheck1').is(':checked'))    // Vérification à l'envoie du bouton radio "validation du formulaire" 
        {
            result = true;
        }              
        else{
           var html ="<div class='alert alert-danger col-8'role='alert'>"+"Faux"+"</div>";
            $("#alertquest").append(html);
            return false;
        }  

    document.forms[0].submit();         
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