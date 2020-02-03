/* Exercice 0

Le patient doit indiquer ici sa température. Selon cette dernière, l'ordinateur déterminera si l'état du patient est inquiétant ou non */

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

