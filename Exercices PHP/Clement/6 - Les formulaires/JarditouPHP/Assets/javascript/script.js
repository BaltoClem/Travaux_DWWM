//Définition des RegEx
var nom = document.getElementById("nom");
var nom_m = document.getElementById("nom_manquant");
var nom_v = /^[a-zA-ZéèîïÉÈÎÏ][a-zéèêëàçîï]+([-'\s][a-zA-ZéèîïÉÈÎÏ][a-zéèêëàçîï]+)?$/;
//+ indique que le caractère peut être présent une ou plusieurs fois
//? indique que le caractère précédent doit être présent 0 ou 1 fois (absent, présent, mais non répété)

var prenom = document.getElementById("prenom");
var prenom_m = document.getElementById("prenom_manquant");
var prenom_v = /^[a-zA-ZéèîïÉÈÎÏ][a-zéèêëàçîï]+([-'\s][a-zA-ZéèîïÉÈÎÏ][a-zéèêëàçîï]+)?$/;

var sexe = document.getElementById("sexe");
var sexe_m = document.getElementById("sexe_manquant");

var date = document.getElementById("date");
var date_m = document.getElementById("date_manquant");
var date_v =/^([1-2][0-9][0-9][0-9](\-)[0-1][0-9](\-)[0-2][0-9])$/;

var adresse = document.getElementById("adresse");
var adresse_m = document.getElementById("adresse_manquant");
var adresse_v = /([a-zA-Z,. ])?([a-zA-Z])/;

var codepostal = document.getElementById("codepostal");
var codepostal_m = document.getElementById("code_manquant");
var codepostal_v = /^[0-9]{5}$/;

var ville = document.getElementById("ville");
var ville_m = document.getElementById("ville_manquant");
var ville_v = /^[a-zA-ZéèîïÉÈÎÏ]([a-zéèêëàçîï]?)+([-'\s][a-zA-ZéèîïÉÈÎÏ][a-zéèêëàçîï]+)?$/;

var mail = document.getElementById("mail");
var mail_m = document.getElementById("mail_manquant");
var mail_v = /^[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[az0-9])?/;

var sujet = document.getElementById("sujet");
var sujet_m = document.getElementById("sujet_manquant");

var question = document.getElementById("question");
var question_m = document.getElementById("question_manquant");

var bouton = document.getElementById("customCheck1");
var bouton_m = document.getElementById("customCheck1_manquant");

var validation = document.getElementById("bouton_envoi");
validation.addEventListener("click", f_valid);
/*La dernière ligne permet de définir la validation ou non du formulaire, 
le addEventListener va écouter par un clic ("click") la validation du f_valid définit plus tard 
grâce au bouton_envoi définit précédemment dans la variable validation*/

//Définition des conditions d'acceptation du formulaire

function f_valid() {

    //Vérification du nom
    if (nom.validity.valueMissing) {
        event.preventDefault();
        nom_m.textContent = "Veuillez renseigner votre nom";
        nom_m.style.color = "red";
    } else if (nom_v.test(nom.value) == false) {
        event.preventDefault();
        nom_m.textContent = "Format incorrect";
        nom_m.style.color = "orange";
    }

    //Vérification du prénom
    if (prenom.validity.valueMissing) {
        event.preventDefault();
        prenom_m.textContent = "Veuillez renseigner votre prénom";
        prenom_m.style.color = "red"
    } else if (prenom_v.test(prenom.value) == false) {
        event.preventDefault();
        prenom_m.textContent = "Format incorrect";
        prenom_m.style.color = "orange";
    }

    //Vérification du sexe
    if (sexe.validity.valueMissing) {
        event.preventDefault();
        sexe_m.textContent = "Veuillez renseigner un de ces champs";
        sexe_m.style.color = "red";
    }

    //Vérification de la date
    if (date.validity.valueMissing) {
        event.preventDefault();
        date_m.textContent = "Veuillez renseigner votre date de naissance";
        date_m.style.color = "red";
    } else if (date_v.test(date.value) == false) {
        event.preventDefault();
        date_m.textContent = "Format incorrect";
        date_m.style.color = "orange";
    }

    //Vérification de l'adresse
    if (adresse.validity.valueMissing) {
        event.preventDefault();
        adresse_m.textContent = "Veuillez renseigner votre adresse";
        adresse_m.style.color = "red"
    } else if (adresse_v.test(adresse.value) == false) {
        event.preventDefault();
        adresse_m.textContent = "Format incorrect";
        adresse_m.style.color = "orange";
    }

    //Vérification du code postal
    if (codepostal.validity.valueMissing) {
        event.preventDefault();
        codepostal_m.textContent = "Veuillez renseigner votre code postal";
        codepostal_m.style.color = "red";
    } else if (codepostal_v.test(codepostal.value) == false) {
        event.preventDefault();
        codepostal_m.textContent = "Format incorrect";
        codepostal_m.style.color = "orange";
    }
    //Vérification de la ville
    if (ville.validity.valueMissing) {
        event.preventDefault();
        ville_m.textContent = "Veuillez renseigner votre ville";
        ville_m.style.color = "red"
    } else if (ville_v.test(ville.value) == false) {
        event.preventDefault();
        ville_m.textContent = "Format incorrect";
        ville_m.style.color = "orange";
    }
    //Vérification du mail
    if (mail.validity.valueMissing) {
        event.preventDefault();
        mail_m.textContent = "Veuillez renseigner votre adresse mail";
        mail_m.style.color = "red";
    } else if (mail_v.test(mail.value) == false) {
        event.preventDefault();
        mail_m.textContent = "Format incorrect";
        mail_m.style.color = "orange";
    }
    //Vérification du sujet de la question
    if (sujet.validity.valueMissing) {
        event.preventDefault();
        sujet_m.textContent = "Veuillez choisir un sujet";
        sujet_m.style.color = "red";
    }

    //Vérification de la question
    if (question.validity.valueMissing) {
        event.preventDefault();
        question_m.textContent = "Veuillez poser votre question";
        question_m.style.color = "red";
    }

    //Vérification du bouton d'acceptation
    if (customCheck1.validity.valueMissing) {
        event.preventDefault();
        bouton_m.textContent = "Veuillez accepter le traitement informatique";
        bouton_m.style.color = "red";
    }
}