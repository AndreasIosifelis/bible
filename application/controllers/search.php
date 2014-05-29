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
        $this->responseJSON();
    }

    private function responseJSON() {
        $this->output->set_content_type("application/json; charset=utf-8");
        echo json_encode($this->response, JSON_UNESCAPED_UNICODE);
    }

}
