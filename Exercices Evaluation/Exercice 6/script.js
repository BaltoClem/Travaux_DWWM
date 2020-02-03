var tab = ["Audrey", "Aurélien", "Flavien", "Jérémy", "Laurent", "Melik", "Nouara", "Salem", "Samuel", "Stéphane"];
var prenom = prompt ("Saisissez un prénom :");
var find = (tab.includes(prenom));

if (find == true)//Si le nom est trouvé
{
    alert ("Le prénom fait parti de la liste !");
    //Les deux prochaines lignes permettent de supprimer le prénom trouvé,
    //Puis, la donnée "" remplacera le prénom trouvé
    tab.splice(tab.indexOf(prenom), 1);
    tab.push ("")
}
else if (find == false)//Si le nom n'est pas dans la liste
{
    alert ("Le prénom ne fait pas parti de la liste...");
}

console.log (tab);