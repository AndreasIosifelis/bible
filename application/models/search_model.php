<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Search_model extends CI_Model {

    private $errors = array();
    private $allowedFilters = array(
        "book", "version", "chapter", "number", "search", "start", "limit", "callback", "_"
    );

    public function search($input) {

        $this->validateInput($input);

        if (!empty($this->errors)) {
            $response['errors'] = $this->errors;
            return $response;
        }

        if (isset($input['book']))
            $this->db->where("bookId", $input["book"]);

        if (isset($input['version']))
            $this->db->where("versionId", $input["version"]);

        if (isset($input['chapter']))
            $this->db->where("chapterId", $input["chapter"]);

        if (isset($input['number']))
            $this->db->where("number", $input["number"]);

        if (isset($input['search']))
            $this->db->like('text', $input['search']);

        if (isset($input['start']) && isset($input['limit']))
            $this->db->limit((int) $input['limit'], (int) $input['start']);



        $query = $this->db->get("verses");


        $response["totalcount"] = $query->num_rows;
        $response["verses"] = $query->result();

        return $response;
    }

    private function validateInput($input) {
        
        if (empty($input)){
            $this->errors[] = 'EMPTY INPUT';
            return;
        }

        foreach ($input as $key => $value) {
            if (!in_array($key, $this->allowedFilters)) {
                $this->errors[] = "INVALID FILTER '{$key}'";
            }
        }
    }

}
