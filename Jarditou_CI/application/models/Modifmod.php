<?php
 defined('BASEPATH') OR exit('No direct script access allowed');
 
 class Modifmod extends CI_Model
 {
      public function modif($id) 
      {
        $data = $this->input->post();
        $id = $this->input->post("pro_id");
        $this->db->where('pro_id', $id);
        $this->db->update('produits', $data);
    }
}
