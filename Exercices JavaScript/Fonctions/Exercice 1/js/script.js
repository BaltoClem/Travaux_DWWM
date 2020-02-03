    

    function cube (nombre)
    {
    return nombre*nombre*nombre;
    }
    function produit (x,y)
    {
    return x*y;
    }

    function afficheImg (image)
    {
    return image;
    }

var nombre = 3;
var x = 3;
var y = 5;
var image = "<img src = img/papillon.jpg>";



var resproduit = produit (x,y);
var rescube = cube (nombre);

    document.write ("Le cube de"+ " " + nombre + " "+ "est égal à" + " " + rescube);
    document.write ("<br>Le produit de" + " " + x + " " + "x" + " " + y + " " + "est égal à" + " "+ resproduit);
    document.write ("<br>"+image);
    