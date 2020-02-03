var ref = document.getElementById("reference");
var ref_m = document.getElementById("ref_manquant");

var cat = document.getElementById("pro_cat_id");
var cat_m = document.getElementById("cat_manquant");

var lib = document.getElementById("libelle");
var lib_m = document.getElementById("lib_manquant");

var desc = document.getElementById("description");
var desc_m = document.getElementById("desc_manquant");

var prix = document.getElementById("prix");
var prix_m = document.getElementById("prix_manquant");
var prix_v = /^[0-9]+$/;

var stock = document.getElementById("stock");
var stock_m = document.getElementById("stock_manquant");
var stock_v = /^[0-9]+$/;

var coul = document.getElementById("couleur");
var coul_m = document.getElementById("couleur_manquant");
var coul_v = /^[a-zA-ZéèîïÉÈÎÏ][a-zéèêëàçîï]+([-'\s][a-zA-ZéèîïÉÈÎÏ][a-zéèêëàçîï]+)?$/;

var bloq1 = document.getElementById("bloque_oui");
var bloq2 = document.getElementById("bloque_non");
var bloq_m = document.getElementById("bloq_manquant");


var validation2 = document.getElementById("bouton_envoi2");
validation2.addEventListener("click", f_valid);

function f_valid() {
    if (ref.value == "") {
        event.preventDefault();
        ref_m.textContent = "Veuillez renseigner la référence";
        ref_m.style.color = "red";
    }
        else{}

    if (cat.value == "") {
        event.preventDefault();
        cat_m.textContent = "Veuillez renseigner la catégorie";
        cat_m.style.color = "red";
    }
        else{}
    
    if (lib.value == "") {
        event.preventDefault();
        lib_m.textContent = "Veuillez renseigner le libellé";
        lib_m.style.color = "red";
    }
        else{} 

    if (desc.value == "") {
        event.preventDefault();
        desc_m.textContent = "Veuillez renseigner la description";
        desc_m.style.color = "red";
    }
        else{}  

    if (prix.value == "") {
        event.preventDefault();
        prix_m.textContent = "Veuillez renseigner le prix";
        prix_m.style.color = "red";
        } else if (prix_v.test(prix.value) == false) {
        event.preventDefault();
        prix_m.textContent = "Format incorrect";
        prix_m.style.color = "orange";
    }

        else{}       

    if (stock.value == "") {
        event.preventDefault();
        stock_m.textContent = "Veuillez renseigner le stock";
        stock_m.style.color = "red";
        } else if (stock_v.test(stock.value) == false) {
        event.preventDefault();
        stock_m.textContent = "Format incorrect";
        stock_m.style.color = "orange";
        }
    
        else{} 

    if (coul.value == "") {
        event.preventDefault();
        coul_m.textContent = "Veuillez renseigner la couleur du produit";
        coul_m.style.color = "red";
        } else if (coul_v.test(coul.value) == false) {
        event.preventDefault();
        coul_m.textContent = "Format incorrect";
        coul_m.style.color = "orange";
        }
            
    else{} 

    if (!bloq1.checked && !bloq2.checked) {
        event.preventDefault();
        bloq_m.textContent = "Veuillez renseigner un de ces champs";
        bloq_m.style.color = "red";
    }

        else{} 
}

