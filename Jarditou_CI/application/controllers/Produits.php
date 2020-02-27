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
    $this->load->view('tableaucard', $aView);
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
//-----------------------------------------------------------------------------------------------------------------------------//


    public function __construct()
{
    parent:: __construct();

    $this->load->helper('url');
    $this->load->database();//Appel de la base de données
    $this->load->model('Productmod');//Appel du modèle Productmod où la requête a été définit plus tôt
}
//----------------------------------------------------------------AJOUT PRODUIT-------------------------------------------------------------//
    public function addproduct(){

    $this->load->model('productmod');//Chargement du modèle
   
     $aListe = $this->productmod->categ(); //Appel de la fonction dans la classe detailprod
  
     $aView["liste_cat"] = $aListe; //Ce qui est entre crochets est une définition de variable que l'on utilisera dans la view
  
     $this->load->view('addp', $aView);//Chargement de la vue + chargement de la requête

    }

    public function insert(){


        $this->load->helper(array('form', 'url'));

                $this->load->library('form_validation');

                $this->form_validation->set_rules('reference', 'Référence', 'required');//Condition de validation -> required = ne doit pas être vide
                $this->form_validation->set_rules('pro_cat_id', 'Catégorie', 'required');
                $this->form_validation->set_rules('libelle', 'Libellé', 'required');
                $this->form_validation->set_rules('description', 'Description', 'required');
                $this->form_validation->set_rules('prix', 'Prix', 'numeric|required');//Condition de validation -> numeric = ne doit contenir que des chiffres
                $this->form_validation->set_rules('stock', 'Stock', 'numeric|required');
                $this->form_validation->set_rules('couleur', 'Couleur', 'alpha|required');//Condition de validation -> alpha = ne doit contenir que des lettres
                //$this->form_validation->set_rules('pimg', 'photo','required');
                $this->form_validation->set_rules('prod', 'Produit bloqué', 'required',['required' => 'Vous devez indiquer si le produit est bloqué ou non']);//Personnalisation du message d'erreur
         
    $config['upload_path']='assets\img\jarditou_photos';//La destination du téléchargement de l'image
    $config['allowed_types']='png|jpg|jpeg';//Extensions autorisées
    $config['max_size']=104857600;//Limite de la taille de l'image autorisée
    $this->load->library('upload',$config);//Initilisation du chargement grâce à la librairie

    if ($this->form_validation->run() == FALSE)//Si une condition de validation n'est pas respectée :
    {
        $this->load->model('detailprod');
        $aListe2 = $this->detailprod->categ();
        $aView["liste_cat"] = $aListe2;
        $this->load->view('addp', $aView);
    }

    else if (!$this->upload->do_upload('pimg'))
    {
        echo"error";
    }
     
    else{
        $fd=$this->upload->data();//Télechargement des données

        $fn=$fd['file_name'];//Initialisation du nom de l'image

        $this->Productmod->ins($fn);//Insertion de l'image grâce à la requête définit dans ProductMod
        $this->load->view('ajoutsuccess');
    }
    
    }
//----------------------------------------------PAGE D'ACCUEIL-----------------------------------//
    public function index(){
        $this->load->view('index');
            }


//----------------------------------------------PAGE CONTACT-----------------------------------------//

public function contact(){
    $this->load->view('contact');
        }
//----------------------------------------------CONTROLE CONTACT-----------------------------------------//

public function form_contact(){

    $this->load->helper(array('form', 'url'));

    $this->load->library('form_validation');

    $this->form_validation->set_rules('nom', 'Nom', 'regex_match[/^[a-zA-ZéèîïÉÈÎÏ][a-zéèêëàçîï]+([-\'\s][a-zA-ZéèîïÉÈÎÏ][a-zéèêëàçîï]+)?$/]|required',['regex_match' => 'Format incorrect']);
    $this->form_validation->set_rules('prenom', 'Prénom', 'regex_match[/^[a-zA-ZéèîïÉÈÎÏ][a-zéèêëàçîï]+([-\'\s][a-zA-ZéèîïÉÈÎÏ][a-zéèêëàçîï]+)?$/]|required',['regex_match' => 'Format incorrect']);
    $this->form_validation->set_rules('sexe', 'Sexe', 'required');
    $this->form_validation->set_rules('date', 'Date de Naissance', 'required');
    $this->form_validation->set_rules('adresse', 'Adresse', 'required');
    $this->form_validation->set_rules('codepostal', 'Code Postal', 'integer|exact_length[5]|required',['integer' => 'Veuillez rentrer des chiffres.']);
    $this->form_validation->set_rules('ville', 'Ville', 'required');
    $this->form_validation->set_rules('email', 'Email', 'valid_email|required',['valid_email' => 'Veuillez rentrer une adresse e-mail valide.']);
    $this->form_validation->set_rules('sujet', 'Sujet', 'required',['required' => 'Veuillez choisir le sujet de votre question.']);
    $this->form_validation->set_rules('question', 'Question', 'required');
    $this->form_validation->set_rules('accord', 'Bouton accord', 'required',['required' => 'Veuillez accepter le traitement informatique.']);
    
    if ($this->form_validation->run() == FALSE)
    {
        
        $this->load->view('contact');
    }
    else{
        
        echo "NOM = ".$_POST["nom"]."<br>";
        echo "PRENOM = ".$_POST["prenom"]."<br>";
        echo "SEXE = ".$_POST["sexe"]."<br>";
        echo "DATE = ".$_POST["date"]."<br>";
        echo "ADRESSE = ".$_POST["adresse"]."<br>";
        echo "CODE POSTAL = ".$_POST["codepostal"]."<br>";
        echo "VILLE = ".$_POST["ville"]."<br>";
        echo "EMAIL = ".$_POST["email"]."<br>";
        echo "SUJET = ".$_POST["sujet"]."<br>";
        echo "QUESTION = ".$_POST["question"]."<br>";
    }
}
//----------------------------------------------INSCRIPTION-----------------------------------------//

public function inscription(){

if ($this->input->post()){

    $this->form_validation->set_rules('nom', 'Nom', 'regex_match[/^[a-zA-ZéèîïÉÈÎÏ][a-zéèêëàçîï]+([-\'\s][a-zA-ZéèîïÉÈÎÏ][a-zéèêëàçîï]+)?$/]|required',['regex_match' => 'Format incorrect']);
    $this->form_validation->set_rules('prenom', 'Prénom', 'regex_match[/^[a-zA-ZéèîïÉÈÎÏ][a-zéèêëàçîï]+([-\'\s][a-zA-ZéèîïÉÈÎÏ][a-zéèêëàçîï]+)?$/]|required',['regex_match' => 'Format incorrect']);
    $this->form_validation->set_rules('email', 'Email', 'valid_email|required',['valid_email' => 'Veuillez rentrer une adresse e-mail valide.']);
    $this->form_validation->set_rules('psswrd', 'Mot de passe', 'regex_match[/^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])[0-9a-zA-Z]{8,}$/]|required',['regex_match' => 'Veuillez respecter la condition de création de mot de passe']);
    $this->form_validation->set_rules('psswrd2', 'Confirmation de mot de passe', 'matches[psswrd]|required',['matches' => 'Vos mots de passe doivent être identiques']);
    
    if ($this->form_validation->run() == FALSE)
    {
       
        $this->load->view('inscription');
    }
    else{
        $this->load->model('inscrimod');
        $this->inscrimod->inscr();
        $this->load->view('inscr_success');
    }
}
    else{
        $this->load->view('inscription');
    }
}

//----------------------------------------------DETAIL-----------------------------------------//

public function detail(){
     // On charge le modèle 
     $this->load->model('detailprod');//Chargement du modèle
   
     $aListe = $this->detailprod->detail_prod(); //Appel de la fonction dans la classe detailprod
  
     $aView["row"] = $aListe; //Ce qui est entre crochets est une définition de variable que l'on utilisera dans la view
  
     $this->load->view('detail', $aView);//Chargement de la vue et de la variable définit à la ligne précédente
     
        }

//----------------------------------------------SUPPRESSION-----------------------------------------//

public function suppr(){
    // On charge le modèle 

    $this->load->model('supprprod');//Chargement du modèle
  
    $aListe = $this->supprprod->suppr(); //Appel de la fonction dans la classe detailprod
 
    //$aView["row"] = $aListe; //Ce qui est entre crochets est une définition de variable que l'on utilisera dans la view
 
    $this->load->view('index');//Chargement de la vue et de la variable définit à la ligne précédente

    sleep(3);
       }

//---------------------------------------------SUCCES SUPPRESSION------------------------------------------

public function suppr_success(){
$this->load->view('suppr_success');
            }


//----------------------------------------------DETAIL MODIF-----------------------------------------//

public function detail_modif(){
    // On charge le modèle 
    $this->load->model('detailprod');//Chargement du modèle
  
    $aListe = $this->detailprod->detail_prod(); //Appel de la fonction dans la classe detailprod pour afficher le détail du produit
    $aListe2 = $this->detailprod->categ();
 
    $aView["row"] = $aListe; //Ce qui est entre crochets est une définition de variable que l'on utilisera dans la view
    $aView["liste_cat"] = $aListe2;
 
    $this->load->view('detail_modif', $aView);//Chargement de la vue est de la variable définit à la ligne précédente
    

       }

//----------------------------------------------MODIFICATION-----------------------------------------//

public function modif($id)
{
        $this->load->model('modifmod');
        $this->modifmod->modif($id);

        $this->load->view('modifsuccess');
    
    /*else 
    {
        $aListe = $this->db->query("SELECT * FROM produits WHERE id= ?", array($id));
        $aView["produits"] = $aListe->row(); // première ligne du résultat
        $this->load->view('modif', $aView);
    }*/
}
//----------------------------------------------CONNEXION-----------------------------------------//

public function connexion()
    {
        $this->load->model('connexionmod'); //Chargement du model de connexion
        $connex=$this->connexionmod->connexion();//Chargement de la fonction définit dans connexionmod

        $password_bdd = $connex->psswrd;//Recherche du champ mot de passe dans la base de données
        $password_form = $this->input->post('motdepasse');//Variable contenant ce que l'utilisateur aura saisi dans le formulaire de connexion
        $password = password_verify($password_form, $password_bdd);//Comparaison du mot de passe saisi et celui de la base de données

        $prenom = $connex->prenom;//Recherche du champ prénom dans la base de données

        if($password)//Si le mot de passe a bien été vérifié et ok
        {
            $acces = $connex->role;//On va cherche le role dans la base de données
            if($acces == "admin")//Si le rôle est "admin"
            {
                $this->session->set_userdata("admin", TRUE);//Création d'une session "admin
                $this->session->set_userdata("prenom", $prenom);//Création de la variable $prenom avec le champ prénom de la base de données
                $this->load->view('index');//Redirection vers la page d'accueil
            }
            else
            {
                $this->session->set_userdata("user", TRUE);//Création de la session user
                $this->session->set_userdata("prenom", $prenom);//Création de la variable $prenom avec le champ prénom de la base de données
                $this->load->view('index');//Redirection vers la page d'accueil
            }
        }
        else
        {
            $this->load->view('connexion_index');
        }

    }

public function form_connexion()
{
    $this->load->view('connexion_index');
}
//------------------------------------------------------------------------DECONNEXION------------------------------------------------//
public function deconnexion()

{
    if(isset($this->session->admin)||isset($this->session->user))
    {
        session_destroy();
        redirect("produits/index");
    }
}
//------------------------------------------------------------------------AFFICHAGE PANIER------------------------------------------------//

public function cart()
{
    $this->load->view('cart');
}

//------------------------------------------------------------------------INSERTION PANIER------------------------------------------------//

public function addcart()
{
    $this->load->model('ajoutpaniermod');
    $this->ajoutpaniermod->cart();

    $this->load->view('cartsuccess');
}

//------------------------------------------------------------------------RECUPERATION MDP ------------------------------------------------//

public function mdpoub()
{
    $this->load->view('recuperation_index');
}


}

?>