<?php
defined('BASEPATH') OR exit('No direct script access allowed');
require_once(APPPATH.'controllers/web/Load.php');


class Projects extends Load {


    function __construct() {
        parent::__construct();
    }

    public function index(){
        $this->load_page('web/project.php',[]);
    }

}