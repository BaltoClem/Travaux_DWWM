// Test FOAD

console.log("Table de multiplication par 5");
console.log("=============================");
 
for (i=0; i<=10; i++)
{
       resultat = 5 * i;
 
       console.log("5 * "+i+" = "+resultat);
}
 
// instructions exécutées après le for (i vaut 10)
console.log("fin de la boucle");

var i = 0;
 
console.log("Table de multiplication par 5");
console.log("=============================");
 
while (i <= 10) 
{   
       // Exécute le calcul et stocke le résultat   
       // dans une variable nommée ‘resultat’  
       resultat = 5 * i;
 
       // A chaque tour, on affiche le résultat courant à l’utilisateur
       console.log("Le résultat de 5 x "+i+" est : "+resultat);
 
       // A chaque tour, on ajoute +1 à la variable i  
       i++; 
}
 
// instructions exécutées après le for (i vaut 10)
console.log("fin de la boucle");

cpt = 1;
 
while (cpt<5) 
{
       if (cpt==4) 
    {
         break;
    } 
 
    console.log("ligne : "+cpt);
    cpt++;
}
 
console.log("fin de la boucle");

var cpt = 1;
 
while (cpt < 5) 
{
       if (cpt == 3)
       {
        cpt++
        continue;
       }
 
       console.log("ligne : "+cpt);
       cpt++;
}
 
console.log("fin de la boucle");
