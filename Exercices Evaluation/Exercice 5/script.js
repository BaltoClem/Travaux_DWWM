var result = 0;

function TableMultiplication (x)
{
  
  for (i=1 ; i<=10; i++)
  {
    result = x*i;
    console.log (i+"x"+x+"="+result)
    
  }
   
}

TableMultiplication(parseInt(prompt("Veuillez saisir un nombre pour afficher sa table de multiplication")));
//On appelle ici la fonction déclarée auparavant

  
   
   
   
   
   