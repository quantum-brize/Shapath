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
        if ($this->session->userdata('user_id') == null) {
            redirect('/admin/login');
        } else {
            redirect('/admin/dashboard');
        }
    }


    public function login(){
        $this->load_login(); 
    }

    public function admin_login(){
        $userName = $this->input->post('userName');
		$password = $this->input->post('password');
        $resp = [
            'status'=> false,
            'message'=> '',
            'userType'=> ''
        ];
		if(!empty($userName) && !empty($password)){
			$this->init_model(MODEL_ADMIN);
			$is_admin = $this->Admin_model->is_admin($userName, md5($password));
            $resp['status'] = !empty($is_admin);
            $resp['userType'] = !empty($is_admin) ? $is_admin['type']: '';
            if($resp['status']){
                $this->session->set_userdata('user_id', $is_admin['uid']);
                $this->session->set_userdata('user_name', $is_admin['user_name']);
                $this->session->set_userdata('user_type', $is_admin['type']);
            }
		}
        $resp['message'] = $resp['status'] ? 'user found' : 'user not found';
        return $this->response($resp);
    }

    public function logout(){
		$this->session->unset_userdata('user_id');
		$this->session->unset_userdata('user_name');
		$this->session->unset_userdata('user_type');
		redirect('/admin');
	}

    public function dashboard()
    {   
        if ($this->session->userdata('user_id') == null) {
            redirect('/admin');
        } else {
            $data = PAGE_DATA_ADMIN;
            $this->load_page('admin/dashboard.php', $data);
        }
    }



}