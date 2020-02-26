<?php

defined('BASEPATH') OR exit('No direct script access allowed');
 
class Panier extends CI_Controller 
{
    public function ajouterpanier() 
{
    // On récupère les données du formulaire 
    $aData = $this->input->post();  

    // Au 1er article ajouté, création du panier car il n'existe pas
    if ($this->session->panier == null) 
    {
        // On créé un tableau pour stocker les informations du produit  
        $aPanier = array();
 
        // On ajoute les infos du produit ($aData) au tableau du panier ($aPanier)
        
        var_dump($aData);
        echo("<br>");

        $aData['pro_qte']=1;

        var_dump($aData);
        echo("<br>");

        array_push($aPanier, $aData);  
 
        // On stocke le panier dans une variable de session nommée 'panier'            
        $this->session->set_userdata("panier", $aPanier);

        redirect("produits/liste");
        
 
        // 
     }
     else
     { // le panier existe (on a déjà mis au moins un article) 
 
         // On récupère le contenu du panier en session           
         $aPanier = $this->session->panier;
 
         $pro_id = $this->input->post('pro_id');
 
         $bSortie = FALSE;
 $i=0;
         // on cherche si le produit existe déjà dans le panier
         foreach ($aPanier as $produit) 
         {
             if ($produit['pro_id'] == $pro_id)
             {

                $aPanier[$i]['pro_qte']++;
               
                var_dump( $aPanier[$i]['pro_qte']);

                $bSortie = TRUE;
             }
             $i++;
         }
         var_dump( $aPanier);
         var_dump($bSortie);
         //var_dump($aPanier);
         if ($bSortie===FALSE)
         { // sinon, le produit est ajouté dans le panier
           echo "test";
            array_push($aPanier, $aData);
            // On remet le tableau des produitss que  
            $this->session->panier = $aPanier;
            //$this->load->view('tableaucard');
             // On redirige sur la liste
             redirect("produits/liste");
         }
     }
     //var_dump($aPanier);
}

public function afficherPanier()
{
     $this->load->view('panier');
}
}
?>