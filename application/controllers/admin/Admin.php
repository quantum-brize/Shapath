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
		}
        $resp['message'] = $resp['status'] ? 'user found' : 'user not found';
        return $this->response($resp);
    }

    public function dashboard()
    {
        $data = PAGE_DATA_ADMIN;
        $this->load_page('admin/dashboard.php', $data);
    }



}