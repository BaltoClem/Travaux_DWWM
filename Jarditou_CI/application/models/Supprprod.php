<?php
 defined('BASEPATH') OR exit('No direct script access allowed');
 
 class Supprprod extends CI_Model
 {
      public function suppr() 
      {
          
        $pro_id = $_GET["id"];// Pour récupérer l'id du produit
          $this->load->database();//Pour charger la bdd
          $this->db->delete('produits',array('pro_id'=>$pro_id));
                   
      }  
 }
?>