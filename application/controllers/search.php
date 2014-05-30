<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Search extends CI_Controller {

    private $response;

    public function __construct() {
        parent::__construct();
        $this->load->model("Search_model");
        $this->load->model("Error_model");
    }

    public function index() {
        $this->response = $this->Search_model->search($this->input->get());
        $this->responseJSON($this->input->get());
    }

    private function responseJSON($gets) {
        $this->output->set_header('Content-Type: application/json; charset=utf8');
        $this->output->set_header('Access-Control-Allow-Origin: *');
        $this->output->set_header('Access-Control-Max-Age: 3628800');
        $this->output->set_header('Access-Control-Allow-Methods: GET');

        $response = json_encode($this->response, JSON_UNESCAPED_UNICODE);
        echo $this->input->get('callback') . "(" . $response . ")";
    }
    
    public function lookup(){
        
    }

}
