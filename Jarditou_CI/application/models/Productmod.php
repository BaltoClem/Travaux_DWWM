<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Productmod extends CI_Model
{
    public function ins($x)//Définition et préparation des données à insérer dans la base de données
    {
        $ref=$this->input->post('reference', TRUE);
        $lib=$this->input->post('libelle',TRUE);
        $cat=$this->input->post('pro_cat_id',TRUE);
        $desc=$this->input->post('description',TRUE);
        $prix=$this->input->post('prix',TRUE);
        $stock=$this->input->post('stock',TRUE);
        $coul=$this->input->post('couleur',TRUE);
        $bloq=$this->input->post('prod',TRUE);
        $dajout=$this->input->post('dajout',TRUE);


        $w=array(//Définition des lignes où les données seront envoyées dans la base de données

            'pro_ref'=>$ref,
            'pro_libelle'=>$lib,
            'pro_cat_id'=>$cat,
            'pro_description'=>$desc,
            'pro_prix'=>$prix,
            'pro_stock'=>$stock,
            'pro_couleur'=>$coul,
            'pro_bloque'=>$bloq,
            'pro_d_ajout'=>$dajout,
            'pro_photo'=>$x

        );

        $this->db->insert('produits',$w);//Exécution
    }
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