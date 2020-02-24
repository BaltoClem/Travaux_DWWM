<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Inscrimod extends CI_Model
{
    public function inscr()//Définition et préparation des données à insérer dans la base de données
    {
    

        date_default_timezone_set('Europe/Paris');//Permet de préciser exactement les horaires souhaités
        $date = date("Y-m-d");//Définition de la date

        $nom=$this->input->post('nom',TRUE);
        $prenom=$this->input->post('prenom',TRUE);
        $mail=$this->input->post('email',TRUE);
        $lgn=$this->input->post('lgn',TRUE);
        $psswrd=$this->input->post('psswrd',TRUE);
        $password_hash = password_hash($psswrd, PASSWORD_DEFAULT);
        

        $data=array(//Définition des lignes où les données seront envoyées dans la base de données

            'nom'=>$nom,
            'prenom'=>$prenom,
            'mail'=>$mail,
            'lgn'=>$lgn,
            'psswrd'=>$password_hash,
            'date_inscr'=>$date
            
        );

        $this->db->insert('users',$data);//Exécution
    }
}
?>