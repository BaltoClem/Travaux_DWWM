// Exercice 0

if (window.confirm ("Êtes-vous un patient ?")==true)
{
window.alert ("Bienvenue")
}
else
{
window.alert ("Au revoir")
}

var temperature = window.prompt ("Indiquez la température du patient");


if (temperature >= 38)
{
    window.alert ("Le patient a de la fièvre");
}
else if (temperature < 37)
{
    window.alert ("La température est trop basse");
}
else
{
    window.alert ("La température est normale");
}

var tension = window.prompt ("Indiquez votre tension");

if (temperature >41 && tension >25)
{
    window.alert ("Le patient va perdre connaissance")
}

var pouls = window.prompt ("Indiquez votre pouls");

if (temperature > 42 || (tension < 25 && pouls > 180))
{
    window.alert ("Prévenir la famille");
}

if (temperature >40 || tension >= 25 ) 
{
window.alert ("Hospitaliser le patient");
}

if (temperature == 0 && pouls == 0 )

{
window.alert ("Contacter les pompes funèbres")
}