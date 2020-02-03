// Exercices de la partie "Opérateurs"

var a = "100";
var b = 100;
b--;
var c = 1.00;
var d =! true;


document.write ("Ceci est une chaîne de caractères :"+ " " + a); // Concaténer le texte et la variable a
document.write ("<br> Ceci est une décrémentation :"+ " " + b); // Modification de la variable au niveau des déclarations , il ne reste plus qu'à appliquer sur l'écran
document.write ("<br> Ajout de la variale a à la variable c :" + a + c); // Impossible d'associer les deux termes vu que la variable a est une chaîne de caractères et non un nombre
document.write ("<br>Inversion de la valeur :" + " " + d ); // Il faut rajouter ! après = à la variable d pour inverser