var PrixUni = parseInt(prompt("Veuillez indiquer le prix unitaire :"));
var QuantiCom = parseInt(prompt("Veuillez indiquer la quantité souhaitée :"));
var PrixAPay = 0;
var Port = 0;
var Rem = 0;
var Total = PrixUni * QuantiCom;

if (Total < 500) {
    Port = Total * 0.02;

    if (Port < 6) {
        Port = 6;

    }
    alert("Les frais de port sont estimés à :" + " " + Port + "€");
} else {
    alert("Les frais de port vous sont offerts !");
}
Total = Total + Port;

if (Total >= 100 && Total <= 200) {
    Rem = Total * 0.05;
} else if (Total > 200) {
    Rem = Total * 0.1;
}
alert("Vous avez le droit à une remise de :" + " " + Rem + "€");

PrixAPay = Total - Rem;

alert("Le total de votre commande est de :" + " " + PrixAPay + "€");