var num = prompt ("Entrez votre nombre : ");
var estPremier = true;

for (var i=2; i<num; i++)
{
    if (num % i === 0) 
    {
        estPremier = false
        alert (num +" "+"n'est pas un nombre premier car il est divisible par" + " "+ i + " "+ "aussi")
        break;
    }
    else 
    {
        alert(num + " "+"est un nombre premier !");
        break;
    }
}