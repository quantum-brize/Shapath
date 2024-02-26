<?php
defined('BASEPATH') OR exit('No direct script access allowed');
require_once(APPPATH.'controllers/Common.php');


class Load extends Common {
    function __construct() {
        parent::__construct();
    }

    public function index(){
        $this->init_model(MODEL_PAGES);
        $data = PAGE_DATA_WEB;
        $data['data_header']['home'] = true;
        $this->load_page('web/index.php',$data);
    }

    public function about_us(){
        $this->init_model(MODEL_PAGES);
        $data = PAGE_DATA_WEB;
        $data['data_header']['about'] = true;
        $this->load_page('web/about_us.php',$data);
    }

    public function contact_us(){
        $this->init_model(MODEL_PAGES);
        $data = PAGE_DATA_WEB;
        $data['data_header']['contact'] = true;
        $this->load_page('web/contact_us.php',$data);
    }
    public function online_registration(){
        $this->init_model(MODEL_PAGES);
        $data = PAGE_DATA_WEB;
        $data['data_header']['online_registration'] = true;
        $this->load_page('web/online_registration.php',$data);
    }
    public function student_admission(){
        $this->init_model(MODEL_PAGES);
        $data = PAGE_DATA_WEB;
        $data['data_header']['student_admission'] = true;
        $this->load_page('web/student_admission.php',$data);
    }
    public function franchise_list(){
        $this->init_model(MODEL_PAGES);
        $data = PAGE_DATA_WEB;
        $data['data_header']['franchise_list'] = true;
        $this->load_page('web/franchise_list.php',$data);
    }
    public function home(){
        $this->init_model(MODEL_PAGES);
        $data = PAGE_DATA_ADMIN;
        $data['data_header']['franchise_list'] = true;
        $this->load_page('admin/index.php',$data);
    }


    // Admin
    /**HOME*/
    // public function home()
    // {
    //     $this->init_model(MODEL_PAGES);
    //     $data = PAGE_DATA_WEB;
    //     $data['data_header']['home'] = true;
    //     $this->load->view('admin/inc/header.php');
	// 	$this->load->view('admin/inc/header_link.php', $data);
    //     $this->load->view('admin/index.php',$data);
    //     $this->load->view('admin/inc/footer.php');
	// 	$this->load->view('admin/inc/footer_link.php', $data);

    // }

    
    








    public function donation(){
        $this->init_model(MODEL_PAGES);
        $data = PAGE_DATA_WEB;
        $id = $this->input->get('id');
        if(!empty($id)){
            $data['data_page']['project'] = $this->Pages_model->get_projects_by_id($id);
            $data['data_page']['flag'] = 1;

        }else{
            $data['data_page']['project'] = $this->Pages_model->get_all_projects();
            $data['data_page']['flag'] = 0;
        }
        
        $this->load_page('web/donation.php',$data);

    }
}


?>