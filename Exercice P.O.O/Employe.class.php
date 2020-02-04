<?php

class Employe
{
    public $_nom;
    public $_prenom;
    public $date_emb=2010;
    public $_poste;
    public $_salaire;
    public $_service;


    public function calculAnciennete()
        {
            $this->$date_emb = $this->date('Y')-$date_emb;
            return $this->$date_emb;
        }
}
?>
