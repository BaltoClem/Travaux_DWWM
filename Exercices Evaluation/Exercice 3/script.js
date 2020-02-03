var num = parseInt(window.prompt ("Veuillez saisir un nombre :"));
//On demande une première fois le nombre à l'utilisateur avec cette variable pour déclencher la boucle
var somme=0;
var i = 0;
var moyenne=0;
var min = num;
var max = num;

while (num != 0)
{
    somme = num+somme;
    i++;
    //On incrémente à chaque boucle pour donner le dénominateur de la division permettant de faire la division
    if (num < min){
        min = num;
        //On demande ici à ce que le nombre rentré soit vérifié et si celui-ci est inférieur au nombre précédent,
        //alors on écrase celui-ci et on le définit comme la plus petite valeur.
    }else if (num > max) {
        max= num;
        //On recommence la même procédure mais cette fois pour définir la plus grande valeur.
    }
    var num = parseInt(window.prompt ("Veuillez saisir un nombre :"));//Ici le nombre qui sera vérifié à chaque boucle
}

moyenne = somme/i;

alert("La somme des nombres est de :" + " " + somme);
alert("La moyenne des nombres est de :"+ " "+ moyenne);
alert("Le nombre le plus petit est :" + " " + min);
alert("Le nombre le plus grand est :" + " "+ max);

/*var somme=0;
var moyenne=0;
var minimax = [];

for (var i=0; num !=0 ; i++)
{
    var num = parseInt(window.prompt ("Veuillez saisir un nombre :"));
    somme = num+somme;
    minimax.push(num);
}

i=i-1;
moyenne = somme/i;

minimax.sort();

alert("La somme des nombres est de :" + " " + somme);
alert("La moyenne des nombres est de :"+ " "+ moyenne);
alert("Le nombre le plus petit est :" + " " +minimax[0]);
alert("Le nombre le plus grand est :" + " "+ minimax[minimax.length-1]);*/


// Une autre méthode avec une autre boucle

/*var somme=0;
var moyenne=0;
var num = 0;
var i= -1;

do
{
    var num = parseInt(window.prompt ("Veuillez saisir un nombre :")); 
    somme = num+somme;
    i++;
}
while (num !=0);


moyenne = somme/i;

window.alert("La somme des nombres est de :" + somme);
window.alert("La moyenne des nombres est de :"+ moyenne);*/