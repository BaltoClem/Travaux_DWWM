function verif() 
{     
    var lemail = $("#mail").val();
     var reg1 = /^[a-zA-Z0-9.-]+@[a-z0-9.-]{2,252}.[a-z]{2,4}$/;
 
     // Teste si la valeur est bonne
     if (lemail === "") 
     {
        $("#mail").css("border-color", "#FF0000");
            var html ="<div class='alert alert-danger' role='alert'>"+"Veuillez renseigner votre adresse mail"+"</div>";
            $("#alertmail").append(html);
            return false;
        }
        else if (reg1.test(lemail) == false) {

         $("#mail").css("border-color", "#FFA500");
         var html ="<div class='alert alert-warning' role='alert'>"+"Format incorrect !"+"</div>";
         $("#alertmail").append(html);
         return false;
        }
        else
        {
           $("#email").css("border-color", "#008000");
           var html ="<div class='alert alert-success' role='alert'>"+"Ok !!!"+"</div>";
           $("#alertmail").append(html);
        } 
        document.forms[0].submit();         
}

$("#recup_submit").click(function(event) 
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