<?php
class Productmod extends CI_Model
{
    public function ins($x)//Définition et préparation des données à insérer dans la base de données
    {
        $ref=$this->input->post('reference');
        $lib=$this->input->post('libelle');
        $cat=$this->input->post('pro_cat_id');
        $desc=$this->input->post('description');
        $prix=$this->input->post('prix');
        $stock=$this->input->post('stock');
        $coul=$this->input->post('couleur');
        $bloq=$this->input->post('prod');
        $dajout=$this->input->post('dajout');


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
}

?>