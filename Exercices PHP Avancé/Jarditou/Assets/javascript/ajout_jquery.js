function verif() 
{     
     
    ///////////////////////////////////////////////////////////REFERENCE/////////////////////////////////////////////////////////////////

     var laref = $("#reference").val();
 
     // Teste si la valeur est bonne
     if (laref === "") 
     {            
        $("#reference").css("border-color", "#FF0000");
        var html ="<div class='alert alert-danger'role='alert'>"+"Vous n'avez pas renseigné la référence !"+"</div>";
        $("#alertref").append(html);
     }
     else
     {
        $("#reference").css("border-color", "#008000");
        var html ="<div class='alert alert-success'role='alert'>"+"Ok !"+"</div>";
        $("#alertref").append(html);   
     }   
      
     ///////////////////////////////////////////////////////////CATEGORIE/////////////////////////////////////////////////////////////////

      var lacat = $("#pro_cat_id").val();
 
      if (lacat === "") 
      {            
        $("#pro_cat_id").css("border-color", "#FF0000");
        var html ="<div class='alert alert-danger'role='alert'>"+"Vous n'avez pas renseigné la catégorie !"+"</div>";
        $("#alertecat").append(html); 
      }     
      else
      {
         $("#pro_cat_id").css("border-color", "#008000");
         var html ="<div class='alert alert-success'role='alert'>"+"Ok !"+"</div>";
         $("#alertecat").append(html);
         
        }

    ///////////////////////////////////////////////////////////LIBELLE/////////////////////////////////////////////////////////////////

    
      var lelib = $("#libelle").val();
 
      if (lelib === "") 
      {            
        $("#libelle").css("border-color", "#FF0000");
        var html ="<div class='alert alert-danger'role='alert'>"+"Vous n'avez pas renseigné le libellé !"+"</div>";
        $("#alertelib").append(html); 
      }    
      else
      {
         $("#libelle").css("border-color", "#008000");
         var html ="<div class='alert alert-success'role='alert'>"+"Ok !"+"</div>";
         $("#alertelib").append(html);
        }

    ///////////////////////////////////////////////////////////DESCRIPTION/////////////////////////////////////////////////////////////////

     var ladesc = $("#description").val();
 
     if (ladesc === "") 
     {            
        $("#description").css("border-color", "#FF0000");
        var html ="<div class='alert alert-danger'role='alert'>"+"Vous n'avez pas renseigné la description !"+"</div>";
        $("#alertedesc").append(html); 
     }
     else
     {
        $("#description").css("border-color", "#008000");
        var html ="<div class='alert alert-success'role='alert'>"+"Ok !"+"</div>";
        $("#alertedesc").append(html);
    }

    ///////////////////////////////////////////////////////////PRIX/////////////////////////////////////////////////////////////////

     var leprix = $("#prix").val();
     var reg1 = /^[0-9]+$/;
 
     if (leprix === "") 
     {            
        $("#prix").css("border-color", "#FF0000");
        var html ="<div class='alert alert-danger'role='alert'>"+"Vous n'avez pas renseigné le prix !"+"</div>";
        $("#alerteprix").append(html); 
     } 
     else if (reg1.test(prix.value) == false) {

        $("#prix").css("border-color", "#FFA500");
        var html ="<div class='alert alert-warning'role='alert'>"+"C'est avec des chiffres !"+"</div>";
        $("#alerteprix").append(html);
       }
    else
     {
        $("#prix").css("border-color", "#008000");
        var html ="<div class='alert alert-success'role='alert'>"+"Ok !"+"</div>";
        $("#alerteprix").append(html);
    }

    ///////////////////////////////////////////////////////////STOCK/////////////////////////////////////////////////////////////////

     var lestock = $("#stock").val();
     var reg2 = /^[0-9]+$/;
 
     if (lestock === "") 
     {            
        $("#stock").css("border-color", "#FF0000");
        var html ="<div class='alert alert-danger'role='alert'>"+"Vous n'avez pas renseigné le stock !"+"</div>";
        $("#alertestock").append(html); 
     }
     else if (reg2.test(stock.value) == false) {

        $("#stock").css("border-color", "#FFA500");
        var html ="<div class='alert alert-warning'role='alert'>"+"C'est avec des chiffres aussi !"+"</div>";
        $("#alertestock").append(html);
       }
     else
     {
        $("#stock").css("border-color", "#008000");
        var html ="<div class='alert alert-success'role='alert'>"+"Ok !"+"</div>";
        $("#alertestock").append(html);
     }

    ///////////////////////////////////////////////////////////COULEUR/////////////////////////////////////////////////////////////////

     var lacoul = $("#couleur").val();
     var reg3 = /^[a-zA-ZéèîïÉÈÎÏ][a-zéèêëàçîï]+([-'\s][a-zA-ZéèîïÉÈÎÏ][a-zéèêëàçîï]+)?$/;
 
     if (lacoul === "") 
     {            
        $("#couleur").css("border-color", "#FF0000");
        var html ="<div class='alert alert-danger'role='alert'>"+"Vous n'avez pas renseigné la couleur du produit !"+"</div>";
        $("#alertecoul").append(html); 
     }
     else if (reg3.test(couleur.value) == false) {

        $("#couleur").css("border-color", "#FFA500");
        var html ="<div class='alert alert-warning'role='alert'>"+"Là par contre ce n'est pas avec des chiffres !"+"</div>";
        $("#alertecoul").append(html);
       }
       
     else
     {
        $("#couleur").css("border-color", "#008000");
        var html ="<div class='alert alert-success'role='alert'>"+"Ok !"+"</div>";
        $("#alertecoul").append(html);         
     }

    ///////////////////////////////////////////////////////////PRODUIT BLOQUE/////////////////////////////////////////////////////////////////

     if($('#bloque_oui').is(':checked') || $('#bloque_non').is(':checked'))    // Vérification à l'envoie du bouton radio "validation du formulaire" 
     {
         result = true;
         var html ="<div class='alert alert-success col-6'role='alert'>"+"Ok !"+"</div>";
        $("#alertebloq").append(html);
     }              
     else{

        var html ="<div class='alert alert-danger col-6'role='alert'>"+"Faux !"+"</div>";
        $("#alertebloq").append(html);
        return false;
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