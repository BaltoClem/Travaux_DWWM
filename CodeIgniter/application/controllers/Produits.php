<?php

//-------------------------------------------------Exercice 1--------------------------------------------------------

// application/controllers/Produits.php
 /*
defined('BASEPATH') OR exit('No direct script access allowed');
 
class Produits extends CI_Controller 
{
 
    public function liste()
    {
        // Déclaration du tableau associatif à tranmettre à la vue
        $aView = array();
 
           
        $aView["prenom"] = "Dave";
        $aView["nom"] = "Loper";          
 
        // On passe le tableau en second argument de la méthode 
        $this->load->view('liste', $aView);
    }
}*/

//-------------------------------------------------Exercice 2--------------------------------------------------------

defined('BASEPATH') OR exit('No direct script access allowed');
 
class Produits extends CI_Controller 
{
 
    public function liste()
{
    // Charge la librairie 'database'
    $this->load->database();
 
    // Exécute la requête 
    $results = $this->db->query("SELECT * FROM produits");  
 
    // Récupération des résultats    
    $aListe = $results->result();   
 
    // Ajoute des résultats de la requête au tableau des variables à transmettre à la vue   
    $aView["liste_produits"] = $aListe;
 
    // Appel de la vue avec transmission du tableau  
    $this->load->view('liste', $aView);
}

public function ajout()
{
   if ($this->input->post()) { // 2ème appel de la page: traitement du formulaire
 
        $data = $this->input->post();
 
        $this->db->insert('produits', $data);
 
        redirect("produits/liste");
   } 
   else 
   { // 1er appel de la page: affichage du formulaire
       $this->load->view('ajout');
   }
}

}
