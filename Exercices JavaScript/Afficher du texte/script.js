// Exemples dans le cours "Afficher du texte"
var num = 1 ;
var prenom = "Jean" ;
 
alert(num);
alert(prenom);

var age = 27;

document.write ("<b>Votre âge est :</b>" + " " + age + "ans" );

var message = "Bonjour !";

alert (message);

// Exercices de la partie "Afficher du texte"

var reponse1 = window.prompt ("Entrez votre Nom :")
var reponse2 = window.prompt ("Entrez votre Prénom :")

if (window.confirm("Êtes-vous un homme ?") == true)

{
    alert ("Bonjour" + " " + reponse1 + " " + reponse2 + "\nBienvenue sur notre site web !");

}

else

{
    alert ("Bonjour" + " " + reponse1 + " " + reponse2 + "\nBienvenue sur notre site web !");

}