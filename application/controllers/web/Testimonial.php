<?php
defined('BASEPATH') OR exit('No direct script access allowed');
require_once(APPPATH.'controllers/web/Load.php');


class Testimonial extends Load {


    function __construct() {
        parent::__construct();
    }

    public function index(){
        $data = PAGE_DATA_WEB;
        $this->load_page('web/our_volunteer.php',$data);
    }

    public function our_volunteer(){
        $data = PAGE_DATA_WEB;
        $this->load_page('web/our_volunteer.php',$data);
    }

    public function our_donor(){
        $data = PAGE_DATA_WEB;
        $this->load_page('web/our_donor.php',$data);
    } 

}