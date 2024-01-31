<?php
defined('BASEPATH') OR exit('No direct script access allowed');
require_once(APPPATH.'controllers/Common.php');


class Load extends Common {
    function __construct() {
        parent::__construct();
    }

    public function index(){
        $this->load_page('web/index.php',[]);
    }

    public function our_team(){
        $this->load_page('web/our_team.php',[]);
    }

    public function mission_and_vision(){
        $this->load_page('web/mission_and_vision.php',[]);

    }

    public function faq(){
        $this->load_page('web/faq.php',[]);

    }


}


?>