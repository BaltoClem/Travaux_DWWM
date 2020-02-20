function verif() 
{     
    /////////////////////////////////////////LOGIN/////////////////////////////////////////////////
     var lelog = $("#lgn").val();
     
     if (lelog === "") 
     {            
         $("#lgn").css("border-color", "#FF0000");
         var html ="<div class='alert alert-danger'role='alert'>"+"Vous n'avez pas renseigné de login !"+"</div>";
         $("#alertlog").append(html);
     }
     else
     {
        $("#lgn").css("border-color", "#008000");
        var html ="<div class='alert alert-success'role='alert'>"+"Original !"+"</div>";
        $("#alertlog").append(html);
        
     }   
    
    
    /////////////////////////////////////////NOM/////////////////////////////////////////////////
     var lenom = $("#nom").val();
     var reg1 = /^[a-zA-ZéèîïÉÈÎÏ][a-zéèêëàçîï]+([-'\s][a-zA-ZéèîïÉÈÎÏ][a-zéèêëàçîï]+)?$/;

     if (lenom === "") 
     {            
         $("#nom").css("border-color", "#FF0000");
         var html ="<div class='alert alert-danger'role='alert'>"+"Vous n'avez pas renseigné le nom !"+"</div>";
         $("#alertnom").append(html);
     }
     else if (reg1.test(nom.value) == false) {

      $("#nom").css("border-color", "#FFA500");
      var html ="<div class='alert alert-warning'role='alert'>"+"Format incorrect !"+"</div>";
      $("#alertnom").append(html);
     }
     else
     {
        $("#nom").css("border-color", "#008000");
        var html ="<div class='alert alert-success'role='alert'>"+"Quel joli nom !"+"</div>";
        $("#alertnom").append(html);
        
     }   
         /////////////////////////////////////////PRENOM/////////////////////////////////////////////////
      var leprenom = $("#prenom").val();
      var reg2 = /^[a-zA-ZéèîïÉÈÎÏ][a-zéèêëàçîï]+([-'\s][a-zA-ZéèîïÉÈÎÏ][a-zéèêëàçîï]+)?$/;
      if (leprenom === "") 
      {            
        $("#prenom").css("border-color", "#FF0000");
        var html ="<div class='alert alert-danger'role='alert'>"+"Vous n'avez pas renseigné le prénom !"+"</div>";
        $("#alertprenom").append(html);
    }
    else if (reg2.test(prenom.value) == false) {

      $("#prenom").css("border-color", "#FFA500");
      var html ="<div class='alert alert-warning'role='alert'>"+"Format incorrect !"+"</div>";
      $("#alertprenom").append(html);
     }
    else
    {
       $("#prenom").css("border-color", "#008000");
       var html ="<div class='alert alert-success'role='alert'>"+"Ok ça passe !"+"</div>";
       $("#alertprenom").append(html);
    }


 /////////////////////////////////////////EMAIL/////////////////////////////////////////////////

     var lemail = $("#email").val();
     var reg3 = /^[a-zA-Z0-9.-]+@[a-z0-9.-]{2,252}.[a-z]{2,4}$/;
 
     // Teste si la valeur est bonne
     if (lemail === "") 
     {
        $("#email").css("border-color", "#FF0000");
            var html ="<div class='alert alert-danger col-8'role='alert'>"+"Veuillez renseigner votre adresse email"+"</div>";
            $("#alertemail").append(html);
        }
        else if (reg3.test(email.value) == false) {

         $("#email").css("border-color", "#FFA500");
         var html ="<div class='alert alert-warning col-8'role='alert'>"+"Format incorrect !"+"</div>";
         $("#alertemail").append(html);
        
        }
        else
        {
           $("#email").css("border-color", "#008000");
           var html ="<div class='alert alert-success col-8'role='alert'>"+"Ok !!!"+"</div>";
           $("#alertemail").append(html);
        }         
       
        
        /////////////////////////////////////////MOT DE PASSE/////////////////////////////////////////////////

     var lemdp = $("#psswrd").val();
     var reg4 = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])[0-9a-zA-Z]{8,}$/;// Doit contenir des majuscules, des chiffres, des minuscules, au moins 8 caractères
 
     // Teste si la valeur est bonne
     if (lemdp === "") 
     {
        $("#psswrd").css("border-color", "#FF0000");
            var html ="<div class='alert alert-danger col-6'role='alert'>"+"Veuillez choisir un mot de passe"+"</div>";
            $("#alertemdp").append(html);
        }
        else if (reg4.test(psswrd.value) == false) {

         $("#psswrd").css("border-color", "#FFA500");
         var html ="<div class='alert alert-warning col-6'role='alert'>"+"Format incorrect !"+"</div>";
         $("#alertemdp").append(html);
        
        }
        else
        {
           $("#psswrd").css("border-color", "#008000");
           var html ="<div class='alert alert-success col-6'role='alert'>"+"Ok !!!"+"</div>";
           $("#alertemdp").append(html);
        }         

        /////////////////////////////////////////CONFIRMATION MOT DE PASSE/////////////////////////////////////////////////

     var lemdp2 = $("#psswrd2").val();
   
 
     if (lemdp2 === "") 
     {
        $("#psswrd2").css("border-color", "#FF0000");
            var html ="<div class='alert alert-danger col-6'role='alert'>"+"Veuillez confirmer votre mot de passe"+"</div>";
            $("#alertemdp2").append(html);
            return false;
        }
        else if (lemdp2 !== lemdp ) {

         $("#psswrd2").css("border-color", "#FFA500");
         var html ="<div class='alert alert-warning col-6'role='alert'>"+"Mauvaise correspondance"+"</div>";
         $("#alertemdp2").append(html);
         return false;
         
        
        }
        else
        {
           $("#psswrd2").css("border-color", "#008000");
           var html ="<div class='alert alert-success col-6'role='alert'>"+"Ok !!!"+"</div>";
           $("#alertemdp2").append(html);
           
          
           
        }    
        
        document.forms[0].submit();         
    }

$("#btnenv2").click(function(event) 
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