
/*var N = window.prompt ("Veuillez saisir le premier multiple :");
var X = window.prompt ("Veuillez saisir le second multiple :");
var resultat=N*X;

console.log("Table de multiplication par 10");
console.log("------------------------------");
 
do 
{   
       resultat = N * X;
 
       console.log(X +"x"+ N + "=" + resultat);
  
       N--;
} while (N >= 1) ;
console.log("fin de la boucle");*/


var N = window.prompt ("Veuillez saisir le premier multiple :");
var X = window.prompt ("Veuillez saisir le second multiple :");
var i=0;

while (N >= 1)
{
    i = N*X;
    console.log (N + "x"+ X + "=" + i)
    N--;
}


