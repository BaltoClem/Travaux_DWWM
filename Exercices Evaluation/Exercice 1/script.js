var PrixUni = parseInt(prompt("Veuillez indiquer le prix unitaire :"));
var QuantiCom = parseInt(prompt("Veuillez indiquer la quantité souhaitée :"));
var PrixAPay = 0;
var Port = 0;
var Rem = 0;
var Total = PrixUni*QuantiCom;

// La première condition sera pour calculer la remise selon le total de la commande de l'utilisateur
if (Total >= 100 && Total <= 200)
{
    Rem = Total*0.05;
}

else
{
    Rem = Total*0.1;
}

alert ("Vous avez le droit à une remise de :"+ " " + Rem + "€");

//Ensuite, les frais de port selon le montant du total

        if (Total < 500 || Total != 0)//Ici, si le total est différent de 0 les frais de port seront calculés
        {
            Port = Total * 0.02;
            ;
            if (Port < 6)
            {
            Port = 6;
            }
            alert ("Les frais de port sont estimés à :"+ " " + Port + "€");
        } 
        else if (Total =0)
        {
            Port =0;
        }
        else 
        {
            alert ("Les frais de port vous sont offerts !");
        }
// De là, on peut effectuer le calcul pour annoncer le montant de la commande
Total = Total-Rem+Port;
alert ("Le total de votre commande est de :" + " " + Total + "€");