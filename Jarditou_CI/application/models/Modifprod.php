
    <?php
    defined('BASEPATH') OR exit('No direct script access allowed');
    
    class Modifmod extends CI_Model
    {
        public function ins()//Définition et préparation des données à insérer dans la base de données
        {
            $ref=$this->input->post('pro_ref');
            $lib=$this->input->post('pro_libelle');
            $cat=$this->input->post('pro_cat_id');
            $desc=$this->input->post('pro_description');
            $prix=$this->input->post('pro_prix');
            $stock=$this->input->post('pro_stock');
            $coul=$this->input->post('pro_couleur');
            $bloq=$this->input->post('pro_bloque');
            
    
    
            $w=array(//Définition des lignes où les données seront envoyées dans la base de données
    
                'pro_ref'=>$ref,
                'pro_libelle'=>$lib,
                'pro_cat_id'=>$cat,
                'pro_description'=>$desc,
                'pro_prix'=>$prix,
                'pro_stock'=>$stock,
                'pro_couleur'=>$coul,
                'pro_bloque'=>$bloq
                
               
    
            );
    
            $this->db->update('produits',$w);//Exécution
        }
 }
?>