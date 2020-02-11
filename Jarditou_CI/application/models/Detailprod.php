<?php
 defined('BASEPATH') OR exit('No direct script access allowed');
 
 class Detailprod extends CI_Model
 {
      public function detail() 
      {
        $pro_id = $_GET["id"];// Pour récupérer l'id du produit
          $this->load->database();//Pour charger la bdd
          $requete = $this->db->query("SELECT * FROM produits 
          INNER JOIN categories 
          ON categories.cat_id = produits.pro_cat_id 
          WHERE pro_id=".$pro_id);
          $aProduits = $requete->row();//row est utilisé pour retourner un seul résultat, result aurait retourné plusieurs résultats
  
          return $aProduits; //Appel de la variable           
      }  
 }
?>