<?php

defined('BASEPATH') OR exit('No direct script access allowed');
class Detailcat extends CI_Model
{
public function categ()
    
    {

        $this->load->database();
        $requete = $this->db->get('categories');
        if($requete->num_rows() > 0) {
            $results = $requete->result();
        }
        else{
            echo "Erreur";
        }
        return $results;
    }
    }
    ?>