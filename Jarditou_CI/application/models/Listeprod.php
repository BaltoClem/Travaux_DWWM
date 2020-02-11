<?php
 defined('BASEPATH') OR exit('No direct script access allowed');
 
 class Listeprod extends CI_Model
 {
      public function liste() 
      {
        
          $this->load->database();//Pour charger la bdd
          $requete = $this->db->query("SELECT * FROM produits");
          $aListe = $requete->result();
  
          return $aListe; //Appel de la variable           
      }  
 }
?>