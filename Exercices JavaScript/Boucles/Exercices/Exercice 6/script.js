var mot = window.prompt ("Saisissez votre mot :");
var lettre = mot.length;
var voy = 0;
var i = 0;


while (i<lettre)
{
    
        switch (mot.substr (i,1))
        {

        case "a" :
                voy ++;
        break;

        case "e" :
                voy ++;
        break;

        case "i" :
                voy ++;
        break;

        case "o" :
                voy ++;
        break;

        case "u" :
                voy ++;
        break;

        case "y" :
                voy ++;
        break;
        }

    i ++; 
}

alert ("Il y a" + " " + voy +" " + "voyelle(s)");







