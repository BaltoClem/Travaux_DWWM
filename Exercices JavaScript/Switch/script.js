
//Ici on test le switch
var FavoriteColor = "jaune";

switch (FavoriteColor)
{
    case "vert" :
    case "bleu" :
        console.log("Comme le ciel ou l'herbe") // Possibilité de regrouper plusieurs cas
        break;
    case "rouge" :
        console.log ("Comme le sang")
        break;
    default:
        console.log("Aucune comparaison possible")
}

