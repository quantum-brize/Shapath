<?php
defined('BASEPATH') or exit('No direct script access allowed');
require_once(APPPATH . 'controllers/Common.php');


class Admin extends Common
{

    function __construct()
    {
        parent::__construct();
    }
    public function index()
    {
        if ($this->session->userdata('name') == null) {
            $this->load_login();
        } else {
            $this->session->sess_destroy();
            $this->pr($this->session);
        }
    }


    public function load_login()
    {
        $this->load->view('admin/login');

    }



}