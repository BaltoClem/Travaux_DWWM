<?php

date_default_timezone_set('Europe/Paris');
$date = date("Y-m-d H:i:s");//Définition de la date

 defined('BASEPATH') OR exit('No direct script access allowed');
 
 class Modifprod extends CI_Model
 {
      public function modif() 
      {
        date_default_timezone_set('Europe/Paris');
        $date = date("Y-m-d H:i:s");//Définition de la date
        $pro_id = $_GET["id"];// Pour récupérer l'id du produit
          $this->load->database();//Pour charger la bdd
          $data = array(
            'pro_ref' => 'reference',
            'pro_cat_id'  => 'categorie',
            'pro_libelle'  => 'libelle',
            'pro_description' => 'description',
            'pro_prix' => 'prix',
            'pro_stock' => 'stock',
            'pro_couleur' => 'couleur',
            'pro_photo' => 'photo',
            'pro_bloque' => 'bloq',
            'pro_d_modif' => $date
    );
    
    $this->db->where('pro_id', $pro_id);
    $this->db->replace('table', $data);
          
                   
      } 
      public function liste() 
      {
        
          $this->load->database();//Pour charger la bdd
          $requete = $this->db->query("SELECT * FROM produits");
          $aListe = $requete->result();
  
          return $aListe; //Appel de la variable           
      }   
 }
?>