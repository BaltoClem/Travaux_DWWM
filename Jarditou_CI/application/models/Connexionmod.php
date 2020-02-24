<?php
 defined('BASEPATH') OR exit('No direct script access allowed');
 
 class Connexionmod extends CI_Model
 {
      public function connexion() 
      {
          $data = $this->input->post();//Récupération des données
          $mail = $this->input->post('mail');//Récupération du mail saisi par l'utilisateur
          $requete = $this->db->query("SELECT * FROM users WHERE mail=?", $mail); // Exécution de la requête pour avoir l'identifiant correspondant au mail
          $Connex = $requete->row(); // row() utilisé pour retourner un seul résultat - result() pour retourner plusieurs résultats. Ici on retourne plusieurs résultats

          return $Connex; // Appel de la variable
      }
 }

