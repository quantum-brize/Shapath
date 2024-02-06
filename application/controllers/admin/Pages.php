<?php
defined('BASEPATH') or exit('No direct script access allowed');
require_once(APPPATH . 'controllers/admin/Admin.php');


class Pages extends Admin
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
            redirect('/admin/pages/home');
        }
    }


    public function home()
    {
        $this->init_model(MODEL_PAGES);
        $data = PAGE_DATA_ADMIN;
        $data['data_footer']['footer_link'] = ['home.js'];
        $data['data_header']['header_link'] = ['home.css'];
        $data['data_header']['title'] = 'Admin | Pages';
        $data['data_header']['sidebar']['pages'] = true;
        $data['data_header']['sidebar']['home'] = true;
        $data['data_page']['quotes'] = $this->Pages_model->get_all_quotes();



        $this->is_auth('admin/pages_home.php', $data);

    }


    public function update_quotes()
    {
        $uid = $this->input->post('uid');
        $quote = $this->input->post('quote');
        $quote_author = $this->input->post('quote_author');

        $this->init_model(MODEL_PAGES);
        
        if (empty($_FILES['quote_img']['name'][0])) {
            $this->Pages_model->update_quotes($uid, $quote, $quote_author, '');
        } else {
            $config['upload_path'] = './uploads/quotes_img/';
            $config['allowed_types'] = 'gif|jpg|png';
            $config['max_size'] = 5048;
            $config['encrypt_name'] = TRUE;
            $this->load->library('upload', $config);
            foreach ($_FILES['quote_img']['name'] as $key => $value) {
                $_FILES['userfile']['name'] = $_FILES['quote_img']['name'][$key];
                $_FILES['userfile']['type'] = $_FILES['quote_img']['type'][$key];
                $_FILES['userfile']['tmp_name'] = $_FILES['quote_img']['tmp_name'][$key];
                $_FILES['userfile']['error'] = $_FILES['quote_img']['error'][$key];
                $_FILES['userfile']['size'] = $_FILES['quote_img']['size'][$key];
                $this->upload->do_upload('userfile');
            }
            $upload_data = $this->upload->data();
            $this->Pages_model->update_quotes($uid, $quote, $quote_author, '/uploads/quotes_img/' . $upload_data['file_name']);
        }
        redirect('/admin/pages/home');
    }

}