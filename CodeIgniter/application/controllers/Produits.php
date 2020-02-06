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
 //-----------------------------------------------------------LISTE-------------------------------------------------
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

//---------------------------------------------------------------AJOUT-----------------------------------------------------------

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

//-----------------------------------------------------------MODIFICATION---------------------------------------------------------------

public function modif($id)
{
    // Chargement de la librairie database 
    $this->load->database();
 
    // Chargement des assistants url et form        
    $this->load->helper('url', 'form');
 
    if ($this->input->post()) 
    {
        // On récupère
        $data = $this->input->post();
 
        $id = $this->input->post("pro_id");
 
        $this->db->where('pro_id', $id);
        $this->db->update('produits', $data);
 
        redirect('produits/liste');
    } 
    else    
     {
        $liste = $this->db->query("SELECT * FROM produits WHERE pro_id= ?", array($id));
 
        // Teste s'il y a un résultat à la requête effectué : 
        if ( ! $liste->row()) 
        {
            echo"<p>L'id ".$id." n'existe pas dans la base de données.</p>";    
            exit;             
        }            
 
        $model["produits"] = $liste->row(); // première ligne du résultat
        $this->load->view('modif', $model);
    } 
}

//-----------------------------------------------------------SUPPRESSION--------------------------------------------------------------------

public function suppr($id)
{
    // Chargement de la librairie database 
    $this->load->database();
 
    // Chargement des assistants url et form        
    $this->load->helper('url', 'form');
 
    if ($this->input->post()) 
    {
        // On récupère
        $data = $this->input->post();
 
        $id = $this->input->post("pro_id");
 
        $this->db->where('pro_id', $id);
        $this->db->delete('produits', $data);
 
        redirect('produits/liste');
    } 
    else    
     {
        $liste = $this->db->query("SELECT * FROM produits WHERE pro_id= ?", array($id));
 
        // Teste s'il y a un résultat à la requête effectué : 
        if ( ! $liste->row()) 
        {
            echo"<p>L'id ".$id." n'existe pas dans la base de données.</p>";    
            exit;             
        }            
 
        $model["produits"] = $liste->row(); // première ligne du résultat
        $this->load->view('suppr', $model);
    } 
}

}
