//Exercice 3


var nb1 = parseInt(window.prompt ("Saisissez votre premier nombre"));
var nb2 = parseInt(window.prompt ("Saisissez votre second nombre"));
var opé = window.prompt ("Veuillez entrez un opérateur (+,-,* ou /):");



switch (opé)
{
    case "+" :
            var resultat = nb1 + nb2;
    window.alert ("Le résultat est de :"+ " " + resultat);
    break;

    case "-" :
            var resultat = nb1 - nb2;
    window.alert ("Le résultat est de :"+ " " + resultat);
    break;

    case "*" :
            var resultat = nb1 * nb2;
    window.alert ("Le résultat est de :"+ " " + resultat);
    break;

    case "/" :
            var resultat = nb1 / nb2;
    
            if (nb1 == 0 || nb2 == 0)
    {

        window.alert ("Opération impossible");
        break;
    }

    window.alert ("Le résultat est de :"+ " " + resultat);

    
    break;

    default :

    window.alert ("Erreur :Opérateur inconnu");

}