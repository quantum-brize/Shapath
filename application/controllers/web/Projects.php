<?php
defined('BASEPATH') OR exit('No direct script access allowed');
require_once(APPPATH.'controllers/web/Load.php');


class Projects extends Load {


    function __construct() {
        parent::__construct();
    }

    public function index(){
        $data = PAGE_DATA_WEB;
        $data['data_header']['header_link'] = ['web/inc/css/projects_css.php'];

        $this->load_page('web/project.php',$data);
    }

}