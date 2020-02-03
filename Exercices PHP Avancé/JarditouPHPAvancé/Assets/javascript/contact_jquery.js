function verif() 
{     
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

         /////////////////////////////////////////SEXE/////////////////////////////////////////////////

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

         /////////////////////////////////////////DATE/////////////////////////////////////////////////

     var ladate = $("#date").val();
     var reg3 = /^([1-2][0-9][0-9][0-9](\-)[0-1][0-9](\-)[0-2][0-9])$/;
 
     if (ladate === "") {
     $("#date").css("border-color", "#FF0000");
         var html ="<div class='alert alert-danger col-8'role='alert'>"+"Pas possible !"+"</div>";
         $("#alertdate").append(html);   
     }
     else if (reg3.test(date.value) == false) {

      $("#date").css("border-color", "#FFA500");
      var html ="<div class='alert alert-warning col-8'role='alert'>"+"Format incorrect !"+"</div>";
      $("#alertdate").append(html);
     }
     else
     {
        $("#date").css("border-color", "#008000");
        var html ="<div class='alert alert-success col-8'role='alert'>"+"C'est pas très vieux ça"+"</div>";
        $("#alertdate").append(html);
     }

         /////////////////////////////////////////ADRESSE/////////////////////////////////////////////////

     var ladresse = $("#adresse").val();
     var reg4=/^([0-9]*)?([a-zA-Z,\. ]*)?$/;
 
     // Teste si la valeur est bonne
     if (ladresse === "") 
     {
        $("#adresse").css("border-color", "#FF0000");
            var html ="<div class='alert alert-danger col-8'role='alert'>"+"On sait pu où on habite ?"+"</div>";
            $("#alertadr").append(html);    
        }
        else if (reg4.test(adresse.value) == false ) {

         $("#adresse").css("border-color", "#FFA500");
         var html ="<div class='alert alert-warning col-8'role='alert'>"+"Format incorrect !"+"</div>";
         $("#alertadr").append(html);
        }
        else
        {
           $("#adresse").css("border-color", "#008000");
           var html ="<div class='alert alert-success col-8'role='alert'>"+"C'est joli par là-bas !"+"</div>";
           $("#alertadr").append(html);
        }
         /////////////////////////////////////////CODE POSTAL/////////////////////////////////////////////////
     var lecode = $("#codepostal").val();
     var reg5 = /^[0-9]{5}$/;
 
     // Teste si la valeur est bonne
     if (lecode === "") 
     {
        $("#codepostal").css("border-color", "#FF0000");
            var html ="<div class='alert alert-danger col-8'role='alert'>"+"Faut mettre plein de chiffres là"+"</div>";
            $("#alertcode").append(html);
            
        }
        else if (reg5.test(codepostal.value) == false) {

         $("#codepostal").css("border-color", "#FFA500");
         var html ="<div class='alert alert-warning col-8'role='alert'>"+"Format incorrect !"+"</div>";
         $("#alertcode").append(html);
        }
        else
        {
           $("#codepostal").css("border-color", "#008000");
           var html ="<div class='alert alert-success col-8'role='alert'>"+"Ok !!!"+"</div>";
           $("#alertcode").append(html);
        }


         /////////////////////////////////////////VILLE/////////////////////////////////////////////////

     var laville = $("#ville").val();
     var reg6 = /^[a-zA-ZéèîïÉÈÎÏ]([a-zéèêëàçîï]?)+([-'\s][a-zA-ZéèîïÉÈÎÏ][a-zéèêëàçîï]+)?$/;
 
     // Teste si la valeur est bonne
     if (laville === "") 
     {
        $("#ville").css("border-color", "#FF0000");
            var html ="<div class='alert alert-danger col-8'role='alert'>"+"Faux"+"</div>";
            $("#alertville").append(html);
            
        }
        else if (reg6.test(ville.value) == false) {

         $("#ville").css("border-color", "#FFA500");
         var html ="<div class='alert alert-warning col-8'role='alert'>"+"Format incorrect !"+"</div>";
         $("#alertville").append(html);
        }
        else
        {
           $("#ville").css("border-color", "#008000");
           var html ="<div class='alert alert-success col-8'role='alert'>"+"Ok !!!"+"</div>";
           $("#alertville").append(html);
        } 

 /////////////////////////////////////////EMAIL/////////////////////////////////////////////////

     var lemail = $("#email").val();
     var reg7 = /^[a-zA-Z0-9.-]+@[a-z0-9.-]{2,252}.[a-z]{2,4}$/;
 
     // Teste si la valeur est bonne
     if (lemail === "") 
     {
        $("#email").css("border-color", "#FF0000");
            var html ="<div class='alert alert-danger col-8'role='alert'>"+"Faux"+"</div>";
            $("#alertemail").append(html);
        }
        else if (reg7.test(email.value) == false) {

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


      /////////////////////////////////////////SUJET/////////////////////////////////////////////////

     var lesujet = $("#sujet").val();
 
     // Teste si la valeur est bonne
     if (lesujet === "") 
     {
     $("#sujet").css("border-color", "#FF0000");
            var html ="<div class='alert alert-danger col-8'role='alert'>"+"Veuillez renseigner un sujet"+"</div>";
            $("#alertsujet").append(html);
            
        }
        else
        {
           $("#sujet").css("border-color", "#008000");
           var html ="<div class='alert alert-success col-8'role='alert'>"+"Ok !!!"+"</div>";
           $("#alertsujet").append(html);
        } 

        /////////////////////////////////////////QUESTION/////////////////////////////////////////////////
    var laquest = $("#question").val();
     // Teste si la valeur est bonne
     if (laquest === "") 
     {
     $("#question").css("border-color", "#FF0000");
            var html ="<div class='alert alert-danger col-8'role='alert'>"+"Veuillez écrire votre question"+"</div>";
            $("#alertquest").append(html);
            
        }
        else
        {
           $("#question").css("border-color", "#008000");
           var html ="<div class='alert alert-success col-8'role='alert'>"+"Ok !!!"+"</div>";
           $("#alertquest").append(html);
        } 

        /////////////////////////////////////////ACCEPTATION/////////////////////////////////////////////////
     if($('#customCheck1').is(':checked'))    // Vérification à l'envoie du bouton radio "validation du formulaire" 
        {
            result = true;
        }              
        else{
           var html ="<div class='alert alert-danger col-8'role='alert'>"+"Veuillez accepter le traitement informatique"+"</div>";
            $("#alertacc").append(html);
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