// Exercices sur les conditions

// if a ici qu'une seule condition à remplir, mais pour la visibilité il vaut mieux mettre cela entre crochets
var reponse = "oui"; 
 
if (reponse == "oui")
{     
    console.log("Bonne réponse !");    // Affichera 'Bonne réponse' dans la console
}

// Ici on peut tester les variations entre OU et ET avec && et ||
var age = "20"
var sexe = "Femme"

if (age > 18 || sexe == "Homme")  
{
    console.log("Vous avez plus de 18 ans OU vous un êtes un homme, vous pouvez conduire");
}

// Possibilité d'économiser des instructions dans if avec else et else if

var reponse ="C";

if (reponse == "A")
{
   console.log("Bonne réponse !");
} 
else if (reponse == "B")
{
   console.log("Mauvaise réponse !");
}
else
{
console.log ("Réponse inconnue...")
}


