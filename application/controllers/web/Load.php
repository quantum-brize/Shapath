<?php
defined('BASEPATH') OR exit('No direct script access allowed');
require_once(APPPATH.'controllers/Common.php');


class Load extends Common {
    function __construct() {
        parent::__construct();
    }

    public function index(){
        $data = PAGE_DATA_WEB;
        $this->load_page('web/index.php',$data);
    }

    public function contact(){
        $data = PAGE_DATA_WEB;
        $this->load_page('web/contact.php',$data);
    }

    public function donation(){
        $data = PAGE_DATA_WEB;
        $this->load_page('web/donation.php',$data);

    }
}


?>