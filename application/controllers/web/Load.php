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
        $data['data_page']['projects'] = $this->Pages_model->get_all_projects();
        $data['data_page']['about'] = $this->Pages_model->get_about_web();
        $data['data_page']['mission_vision'] = $this->Pages_model->get_mission_vision();
        $data['data_page']['quotes'] = $this->Pages_model->get_all_quotes();
        $data['data_page']['services'] = $this->Pages_model->get_all_work();
        $data['data_page']['blogs'] = $this->Pages_model->get_all_blogs();
        $data['data_page']['causes'] = $this->Pages_model->get_causes();
        $data['data_page']['events'] = $this->Pages_model->get_event();
        $data['data_page']['video'] = $this->Pages_model->get_all_videos();
        $data['data_page']['audio'] = $this->Pages_model->get_audio();
        $data['data_page']['gallery_img'] = $this->Pages_model->get_gallery_img();
        $this->load_page('web/index.php',$data);
    }

    public function contact(){
        
        $data = PAGE_DATA_WEB;
        $data['data_header']['contact'] = true;
        $this->load_page('web/contact.php',$data);
    }
    
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