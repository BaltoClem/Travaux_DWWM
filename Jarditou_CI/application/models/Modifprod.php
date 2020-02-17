<?php

 defined('BASEPATH') OR exit('No direct script access allowed');
 
 
 class Modifprod extends CI_Model
 {

      public function modif() 
      {
        $query=$this->db->query("update users SET name='$name',email='$email',mobile='$mobile' where user_id='".$id."'");
          
                   
      }  
 }
?>