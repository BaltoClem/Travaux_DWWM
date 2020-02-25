<?php
 defined('BASEPATH') OR exit('No direct script access allowed');
 
 class Ajoutpaniermod extends CI_Model
 {
      public function cart() 
      {
    $id = $this->uri->segment(3);
    $this->db->select('*');
    $this->db->from('produits');
    $this->db->where('pro_id', $id);
    $query=$this->db->get();
    $row=$query->row();

    $data= array(
        'id' => $id,
        'qty' => "1",
        'price' => $row ->pro_prix,
        'name' => $row->pro_libelle
    );

    $this->cart->insert($data);
      }
 }
 ?>