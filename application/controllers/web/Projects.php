<?php
defined('BASEPATH') OR exit('No direct script access allowed');
require_once(APPPATH.'controllers/web/Load.php');


class Projects extends Load {


    function __construct() {
        parent::__construct();
    }

    public function index(){
        $this->init_model(MODEL_PAGES);
        $id = $this->input->get('id');
        $data = PAGE_DATA_WEB;
        $data['data_header']['header_link'] = ['projects.css'];
        $data['data_page']['project'] = $this->Pages_model->get_projects_by_id($id);

        $this->load_page('web/project.php',$data);
    }

}