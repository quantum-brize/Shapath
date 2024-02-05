<?php
defined('BASEPATH') or exit('No direct script access allowed');
require_once(APPPATH . 'controllers/admin/Admin.php');


class Component extends Admin
{

    function __construct()
    {
        parent::__construct();

    }

    public function index()
    {
        if (
            $this->session->userdata(SES_ADMIN_ID) == null &&
            $this->session->userdata(SES_SUB_ADMIN_ID) == null
        ) {
            redirect('/admin/login');
        } else {
            redirect('/admin/component/quotes');
        }
    }

    public function quotes(){
        $data = PAGE_DATA_ADMIN;
        $data['data_footer']['footer_link'] = ['quotes.js'];
        $this->is_auth('admin/quotes.php', $data);
    

    }
    public function videos(){
        $data = PAGE_DATA_ADMIN;
        $this->is_auth('admin/videos.php', $data);
    }

}