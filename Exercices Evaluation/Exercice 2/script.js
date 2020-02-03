var num = parseInt(prompt ("Saisissez un nombre :"));
//parseInt permet de définir le nombre saisi en un entier, ce qui permet un calcul
result = 0;


for (num ;num!=0 ; num--)
// On initialise la variable, puis on lui donne la consigne, puis quoi faire si la consigne est false
// Dans ce cas-ci, on demande à ce que la variable num soit incrémentée à chaque boucle

{
    result = num + result;
    // Grâce à cette opération, le premier chiffre sera le nombre saisi car result est déjà défini en 0

    console.log (result)
    // On affiche à chaque boucle le résultat escompté
}