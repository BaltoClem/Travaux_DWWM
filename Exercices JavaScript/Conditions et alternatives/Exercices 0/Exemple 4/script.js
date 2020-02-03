/* Exercice 0

Ici on rajoute la var pouls et on jongle avec les || et &&*/

var temperature = window.prompt ("Indiquez la température du patient");

var tension = window.prompt ("Indiquez votre tension");

var pouls = window.prompt ("Indiquez votre pouls");

if (temperature > 42 || (tension < 25 && pouls > 180))
{
    window.alert ("Prévenir la famille");
}
