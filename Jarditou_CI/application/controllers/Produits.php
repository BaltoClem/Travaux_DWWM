<?php

//-------------------------------------------------Exercice 1--------------------------------------------------------

// application/controllers/Produits.php
 /*
defined('BASEPATH') OR exit('No direct script access allowed');
 
class Produits extends CI_Controller 
{
 
    public function liste()
    {
        // Déclaration du tableau associatif à tranmettre à la vue
        $aView = array();
 
           
        $aView["prenom"] = "Dave";
        $aView["nom"] = "Loper";          
 
        // On passe le tableau en second argument de la méthode 
        $this->load->view('liste', $aView);
    }
}*/

//-------------------------------------------------Exercice 2--------------------------------------------------------

defined('BASEPATH') OR exit('No direct script access allowed');
 
class Produits extends CI_Controller 
{
 //-----------------------------------------------------------LISTE-------------------------------------------------
    public function liste()
{
    $this->load->model('listeprod');//Chargement du modèle
   
    $aListe = $this->listeprod->liste(); //Appel de la fonction dans la classe detailprod
 
    // Ajoute des résultats de la requête au tableau des variables à transmettre à la vue   
    $aView["liste_produits"] = $aListe;
 
    // Appel de la vue avec transmission du tableau  
    $this->load->view('liste', $aView);
}
//---------------------------------------------------------------AJOUT (COURS)-----------------------------------------------------------

/*public function ajout()
{       
   // Chargement de l'assistant form       
   $this->load->helper('form');
 
   // Chargement des librairies 'form_validation' et 'upload'
   $this->load->library('form_validation', 'upload');
 
    if ($this->input->post()) 
   { // Si le formulaire est posté            
 
         
         //Ici, mettre vos set_rules() et exécuter la validation 
         
 
         // Si validation OK : 
 
         
         //Avant d'enregistrer en base de données, il nous faut 
         // récupérer l'extension du fichier 
          
 
         // On extrait l'extension du nom du fichier,
         // on utilise la variable PHP superglobale $_FILES    
         if ($_FILES) 
         {
            // On extrait l'extension du nom du fichier 
            // Dans $_FILES["pro_photo"], pro_photo est la valeur donnée à l'attribut name du champ de type 'file'  
            $extension = substr(strrchr($_FILES["pro_photo"]["name"], "."), 1);
         }
 
         
         // On a l'extension du fichier donc on peut enregistrer
         // en base de données 
         
 
         
         // Pour créer le nom du fichier : il faut récupérer la clé primaire (pro_id) : 
         //- dans le cas du formulaire d'ajout : il faut récupérer avec la méthode $this-db->InsertId();
         //- dans le cas du formulaire de modification : on récupère le pro_id passé dans un champ de type hidden     
         
 
         // On créé un tableau de configuration pour l'upload
         $config['upload_path'] = 'assets\img\jarditou_photos'; // chemin où sera stocké le fichier
 
         // nom du fichier final
         $config['file_name'] = $id.'.'.$extension; 
 
         // On indique les types autorisés (ici pour des images)
         $config['allowed_types'] = 'gif|jpg|jpeg|png'; 
 
         // On charge la librairie 'upload'
         $this->load->library('upload');
 
         // On initialise la config 
         $this->upload->initialize($config);
 
         // La méthode do_upload() effectue les validations sur l'attribut HTML 'name' ('fichier' dans notre formulaire) et si OK renomme et déplace le fichier tel que configuré
         if ( ! $this->upload->do_upload('pimg')) 
{
     // Echec : on récupère les erreurs dans une variable (une chaîne)
     $errors = $this->upload->display_errors();    
 
     // on réaffiche la vue du formulaire en passant les erreurs 
     $aView["errors"] = $errors;
 
     $this->load->view('ajout', $aView);
}
else
{ // Succès 
    redirect('produits/liste');
} 
   }
}*/
//----------------------------------------------------------------UPLOAD IMAGE-------------------------------------------------------------//


    public function __construct()
{
    parent:: __construct();

    $this->load->database();//Appel de la base de données
    $this->load->model('Productmod');//Appel du modèle Productmod où la requête a été définit plus tôt
}

    public function addproduct(){
$this->load->view('addp');//Nécessaire pour la view du formulaire d'ajout
    }

    public function insert(){


        $this->load->helper(array('form', 'url'));

                $this->load->library('form_validation');

                $this->form_validation->set_rules('reference', 'Référence', 'required');
                $this->form_validation->set_rules('pro_cat_id', 'Catégorie', 'required');
                $this->form_validation->set_rules('libelle', 'Libellé', 'required');
                $this->form_validation->set_rules('description', 'Description', 'required');
                $this->form_validation->set_rules('prix', 'Prix', 'decimal|required');
                $this->form_validation->set_rules('stock', 'Stock', 'integer|required');
                $this->form_validation->set_rules('couleur', 'Couleur', 'alpha|required');
                $this->form_validation->set_rules('prod', 'Produit bloqué', 'required',['required' => 'Vous devez indiquer si le produit est bloqué ou non']);
         
                if ($this->form_validation->run() == TRUE)
                {
                    echo "Formulaire validé";
                }
    $config['upload_path']='assets\img\jarditou_photos';//La destination du téléchargement de l'image
    $config['allowed_types']='png|jpg|jpeg';//Extensions autorisées
    $config['max_size']=104857600;//Limite de la taille de l'image autorisée
    $this->load->library('upload',$config);//Initilisation du chargement grâce à la librairie

    if(!$this->upload->do_upload('pimg'))//Condition si le téléchargement échoue ou non
    {
        $errors = $this->upload->display_errors();    
 
     // on réaffiche la vue du formulaire en passant les erreurs 
     $aView["errors"] = $errors;
 
     $this->load->view('addp', $aView);//Si échec, error sera affiché
    }
    else{
        $fd=$this->upload->data();//Télechargement des données

        $fn=$fd['file_name'];//Initialisation du nom de l'image

        $this->Productmod->ins($fn);//Insertion de l'image grâce à la requête définit dans ProductMod

        header("Location:http://localhost/Jarditou_CI/index.php/produits/liste");

    }
    }
//----------------------------------------------PAGE D'ACCUEIL-----------------------------------//
    public function index(){
        $this->load->view('index');
            }


//----------------------------------------------CONTACT-----------------------------------------//

public function contact(){
    $this->load->view('contact');
        }

//----------------------------------------------INSCRIPTION-----------------------------------------//

public function inscription(){
    $this->load->view('inscription');
        }

//----------------------------------------------CONNEXION-----------------------------------------//

public function connexion(){
    $this->load->view('connexion_index');
        }

//----------------------------------------------DETAIL-----------------------------------------//

public function detail(){
     // On charge le modèle 
     $this->load->model('detailprod');//Chargement du modèle
   
     $aListe = $this->detailprod->detail(); //Appel de la fonction dans la classe detailprod
  
     $aView["row"] = $aListe; //Ce qui est entre crochets est une définition de variable que l'on utilisera dans la view
  
     $this->load->view('detail', $aView);//Chargement de la vue est de la variable définit à la ligne précédente
        }

}
    

?>