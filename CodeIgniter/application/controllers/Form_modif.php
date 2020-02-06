<?php

class Form_modif extends CI_Controller {

        public function index()
        {
                $this->load->helper(array('form', 'url'));

                $this->load->library('form_validation');

                $this->form_validation->set_rules('pro_libelle', 'Libellé', 'required');
                $this->form_validation->set_rules('pro_ref', 'Référence', 'required');
               
                if ($this->form_validation->run() == FALSE)
                {
                        $this->load->view('modif');
                }
                else
                {
                        $this->load->view('modifsuccess');
                }
        }
}