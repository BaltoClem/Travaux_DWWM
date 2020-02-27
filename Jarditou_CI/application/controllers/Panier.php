<?php

defined('BASEPATH') OR exit('No direct script access allowed');
 
class Panier extends CI_Controller 
{
    ////////////////////////////////////////////////////////////AJOUT PRODUIT PANIER////////////////////////////////////////////////////////
    public function ajouterpanier() 
{
    $aData = $this->input->post();  // On récupère les données du produit

    if ($this->session->panier == null) // Au 1er article ajouté, création du panier car il n'existe pas
    {
        $aPanier = array();// On créé un tableau pour stocker les informations du produit
 
        array_push($aPanier, $aData); // On ajoute les infos du produit ($aData) au tableau du panier ($aPanier) 
 
        $this->session->set_userdata("panier", $aPanier);// On stocke le panier dans une variable de session nommée 'panier'

        redirect("produits/liste");//Redirection vers la liste de produits

     }
     else// le panier existe (et qu'on a déjà mis au moins un article)
     {  
 
         $aPanier = $this->session->panier;// On récupère le contenu du panier et on en créé une session "panier"
 
         $pro_id = $this->input->post('pro_id');//Définition de la variable $pro_id qui contient le contenu du champ pro_id du produit
 
         $bSortie = FALSE;//Permettra d'exécuter la condition définit plus tard
///////////////////////////////////////////////////////////////AUTRE METHODE///////////////////////////////////////////////////////////////////////////////
         /*$i=0;
         
         // on cherche si le produit existe déjà dans le panier
         foreach ($aPanier as $produit) 
         {
             if ($produit['pro_id'] == $pro_id)
             {

               

                echo(" i vaut ".$i." <br>");
                echo ("avant incrémentation". $aPanier[$i]['pro_qte']);

                $aPanier[$i]['pro_qte']++;

                $this->session->panier = $aPanier;
               
                var_dump( $aPanier[$i]['pro_qte']);

                $bSortie = TRUE;
               
             }
             $i++;
         }*/
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
        $count = count($aPanier);// Definition de la variable $count : le chiffre sera proportionnel au nombre d'input du produit

        for ($i = 0; $i < $count; $i++)//Compteur permettant de rechercher l'id du produit
        {
              if ($aPanier[$i]["pro_id"] == $pro_id)//Si la case pro_id des données de $pro_id sont similaires alors :
              {

                $aPanier[$i]['pro_qte']++;//+1 à la valeur de pro_qte du produit

                $this->session->panier = $aPanier;//Nouvelle création d'une session panier pour mettre à jour la quantité

                $bSortie = TRUE; //Empêche l'exécution de la prochaine condition
              }        
        }

         if ($bSortie==FALSE)
         { 
           
            array_push($aPanier, $aData);//On créé la fonction array_push qui mettra les données du nouveau produit sélectionné dans un tableau $aData
              
            $this->session->panier = $aPanier;//Une session panier sera créée à nouveau
        
        }
        redirect("produits/liste");//Redirection vers la liste des produits
    }
}
////////////////////////////////////////////////////////////AFFICHAGE PANIER/////////////////////////////////////////////////////////////////////////////////
public function afficherPanier()
{
     $this->load->view('panier');
}
////////////////////////////////////////////////////////////MODIFICATION QUANTITE/////////////////////////////////////////////////////////////////////////
public function modifierQuantite($pro_id,$pro_qte)
{

echo("modifierQuantite".$pro_id." ".$pro_qte);

    $aPanier = $this->session->panier;
 
    $aTemp = array(); //création d'un tableau temporaire vide
 
    // On parcourt le tableau produit après produit
    for ($i = 0; $i < count($aPanier); $i++) 
    {
        if ($aPanier[$i]['pro_id'] !== $pro_id)
        {
            array_push($aTemp, $aPanier[$i]);
        }
        else
        {
            $aPanier[$i]['pro_qte']=$pro_qte;
            array_push($aTemp, $aPanier[$i]);
        }
    }
 
    $aPanier = $aTemp;
    unset($aTemp);
    $this->session->set_userdata("panier", $aPanier);
 
    // On réaffiche le panier 
    redirect("panier/afficherPanier");
}
////////////////////////////////////////////////////////////SUPPRIMER ARTICLES PANIER////////////////////////////////////////////////////////
public function supprimerProduit($pro_id)
{
    $aPanier = $this->session->panier;
 
    $aTemp = array(); //création d'un tableau temporaire vide
 
    for ($i=0; $i<count($aPanier); $i++) //on cherche dans le panier les produits à ne pas supprimer
    {
        if ($aPanier[$i]['pro_id'] !== $pro_id)
        {
             array_push($aTemp, $aPanier[$i]); // ces produits sont ajoutés dans le tableau temporaire
        }
    }
 
   $aPanier = $aTemp;
   unset($aTemp);
   $this->session->panier = $aPanier; // le panier prend la valeur du tableau temporaire et ne contient donc plus le produit à supprimer
 
   // On réaffiche le panier 
   redirect("panier/afficherPanier");
}
////////////////////////////////////////////////////////////SUPPRIMER PANIER////////////////////////////////////////////////////////
public function supprimerpanier()

{
    
        unset($_SESSION["panier"]);
        redirect("panier/afficherpanier");
}
}
?>