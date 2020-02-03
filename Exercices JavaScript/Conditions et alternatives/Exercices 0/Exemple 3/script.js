/* Exercice 0

On prend compte ici de la tension du patient en plus de la température pour déterminer l'état du patient */

var temperature = window.prompt ("Indiquez la température du patient");

var tension = window.prompt ("Indiquez votre tension");

if (temperature >41 && tension >25)
{
    window.alert ("Le patient va perdre connaissance")
}