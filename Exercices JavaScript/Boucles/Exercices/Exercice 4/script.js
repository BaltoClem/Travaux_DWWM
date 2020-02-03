var somme=0;
var moyenne=0;


for (var i=0; num !=0 ; i++)
{
    
    var num = parseInt(window.prompt ("Veuillez saisir un nombre :"));
    somme = num+somme; 
}

i=i-1;
moyenne = somme/i;

window.alert("La somme des nombres est de :" + somme);
window.alert("La moyenne des nombres est de :"+ moyenne);

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