
var moinsvingt = 0;
var vingtquar = 0;
var plusquar = 0;

//Vu que la personne centenaire doit être comptée : une boucle do while
do
{
    var age = prompt("Veuillez saisir l'âge de la personne :")
    if (age < 20)
    {
        moinsvingt ++;
    }
    if (age > 20 && age <40)
    {
        vingtquar ++;
    }
    if (age >40)
    {
        plusquar ++;
    }
}
while (age < 100)
// Système de reconnaissance de pièces
//Grâce à cette boucle et aux conditions incluses, les données seront "stockées" et "calculées"

alert ("Il y a " + " " + moinsvingt + " personne(s) âgée(s) de moins de 20 ans");
alert ("Il y a " + " " + vingtquar + " personne(s) âgée(s) entre 20 et 40 ans");
alert ("Il y a " + " " + plusquar + " personne(s) âgée(s) de plus de 40 ans");