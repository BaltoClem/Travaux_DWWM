//Exercice 4

var statut = window.prompt ("Etes vous marié ou célibataire ?");
var enfant = window.prompt ("Combien d'enfant(s) avez-vous ?");
var salaire = window.prompt ("Quel est votre salaire ?");
var prixRepas = window.prompt ("Veuillez indiquer le prix du repas :");
var result = 0;


if (salaire < 1200)
{
    if (statut = "marié")
        {
        result = prixRepas - (prixRepas*0.25+(enfant*0.1)+0.1);
        if (result > prixRepas/2){
        result = prixRepas/2
        }
        window.alert ("Votre participation sera de :" + result +"€");
        
    }
    else  
        {
        result = prixRepas -(prixRepas*0.2+(enfant*0.1)+0.1);
        window.alert ("Votre participation sera de :" + result +"€");
        }

} 
else 
{
    if (statut="marié")
        {
            result = prixRepas -(prixRepas*0.25+(enfant*0.1));
            window.alert ("Votre participation sera de :" + result +"€");
        } 
    
    else  
        {
            result = prixRepas -(prixRepas*0.2+(enfant*0.1));
            window.alert ("Votre participation sera de :" + result +"€");
        }
}
