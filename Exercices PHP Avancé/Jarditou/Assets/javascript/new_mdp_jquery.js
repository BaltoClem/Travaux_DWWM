function verif() 
{ 

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

$("#bouton_envoi3").click(function(event) 
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