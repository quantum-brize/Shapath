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
        if (
            $this->session->userdata(SES_ADMIN_ID) == null &&
            $this->session->userdata(SES_SUB_ADMIN_ID) == null
        ) {
            redirect('/admin/login');
        } else {
            redirect('/admin/dashboard');
        }
    }


    public function login()
    {
        $this->load_login();
    }

    public function admin_login()
    {
        $userName = $this->input->post('userName');
        $password = $this->input->post('password');
        $resp = [
            KEY_STATUS => false,
            KEY_MESSAGE => '',
            KEY_TYPE => ''
        ];
        if (!empty($userName) && !empty($password)) {
            $this->init_model(MODEL_ADMIN);
            $is_admin = $this->Admin_model->is_admin($userName, md5($password));
            $resp[KEY_STATUS] = !empty($is_admin);
            $resp[KEY_TYPE] = !empty($is_admin) ? $is_admin[KEY_TYPE] : '';

            if ($resp[KEY_STATUS]) {

                if ($is_admin[KEY_TYPE] == USER_ADMIN) {

                    $this->session->set_userdata(SES_ADMIN_ID, $is_admin[KEY_UID]);
                    $this->session->set_userdata(SES_ADMIN_NAME, $is_admin[KEY_USER_NAME]);
                    $this->session->set_userdata(SES_TYPE, $is_admin[KEY_TYPE]);

                } else if ($is_admin[KEY_TYPE] == USER_SUB_ADMIN) {

                    $this->session->set_userdata(SES_SUB_ADMIN_ID, $is_admin[KEY_UID]);
                    $this->session->set_userdata(SES_SUB_ADMIN_NAME, $is_admin[KEY_USER_NAME]);
                    $this->session->set_userdata(SES_TYPE, $is_admin[KEY_TYPE]);

                }
            }
        }
        $resp[KEY_MESSAGE] = $resp[KEY_STATUS] ? 'user found' : 'user not found';
        return $this->response($resp);
    }

    public function logout()
    {
        if ($this->session->userdata(SES_TYPE) == USER_ADMIN) {

            $this->session->unset_userdata(SES_ADMIN_ID);
            $this->session->unset_userdata(SES_ADMIN_NAME);
            $this->session->unset_userdata(SES_TYPE);

        } else if ($this->session->userdata(SES_TYPE) == USER_SUB_ADMIN) {

            $this->session->unset_userdata(SES_SUB_ADMIN_ID);
            $this->session->unset_userdata(SES_SUB_ADMIN_NAME);
            $this->session->unset_userdata(SES_TYPE);

        }
        redirect('/admin');
    }

    public function dashboard()
    {
        $data = PAGE_DATA_ADMIN;
        $data['data_footer']['footer_link'] = [];
        $data['data_header']['title'] = 'Admin | Dashboard';   
        $data['data_header']['sidebar']['dashboard'] = true;
        
        $this->is_auth('admin/dashboard.php', $data);
        
    }

    

    public function is_auth($page, $data){
        if (
            $this->session->userdata(SES_ADMIN_ID) == null &&
            $this->session->userdata(SES_SUB_ADMIN_ID) == null
        ) {
            redirect('/admin');
        } else {
            $this->load_page($page, $data);
        }
    }



    public function gallery(){
        $data = PAGE_DATA_ADMIN;
        $data['data_footer']['footer_link'] = ['gallery_js.php'];
        $data['data_header']['header_link'] = ['gallery.css'];
        $data['data_header']['title'] = 'Admin | Gallery';   
        $data['data_header']['sidebar']['gallery'] = true;

        $this->init_model(MODEL_PAGES);
        $data['data_page']['gallery_img'] =  $this->Pages_model->get_gallery_img();


        $this->is_auth('admin/gallery.php', $data);
    }
    public function gallery_img_add(){

        if(!empty($_FILES['galary_img'])){
            $galary_img_data = $this->upload_files('./uploads/galary_img/', 'galary_img', IMG_FILE_TYPES, IMG_FILE_SIZE);

            $galary_img_arr = [];


            if (!empty($galary_img_data)) {
                if ($this->isAssociativeArray($galary_img_data)) {
                    $gallery_img_data = '/uploads/galary_img/' . $galary_img_data['file_name'];
                } else {
                    foreach ($galary_img_data as $key => $val) {
                        $galary_img_arr[$key] = '/uploads/galary_img/' . $val['file_name'];
                    }
                    $gallery_img_data= implode(',', $galary_img_arr);
                }
            }
            $this->init_model(MODEL_PAGES);
            $this->Pages_model->gallery_img_update($gallery_img_data);
        }
        redirect('admin/gallery');

    }

   
    public function causes(){
        $data = PAGE_DATA_ADMIN;
        $data['data_footer']['footer_link'] = [];
        $data['data_header']['header_link'] = [];
        $data['data_header']['title'] = 'Admin | Causes';   
        $data['data_header']['sidebar']['causes'] = true;
        $this->init_model(MODEL_PAGES);
        $data['data_page']['causes'] =  $this->Pages_model->get_causes();

        $this->is_auth('admin/causes.php', $data);
    }

    public function causes_add(){
        $data = PAGE_DATA_ADMIN;
        $data['data_footer']['footer_link'] = [];
        $data['data_header']['header_link'] = [];
        $data['data_header']['title'] = 'Admin | Add Causes';   
        $data['data_header']['sidebar']['causes'] = true;
       

        $this->is_auth('admin/causes_add.php', $data);
    }


    public function add_new_cause(){
        

        if(!empty($_FILES['cause_img'])){
            $cause_img_data = $this->upload_files('./uploads/cause_img/', 'cause_img', IMG_FILE_TYPES, IMG_FILE_SIZE);

            $cause_img = '/uploads/cause_img/' . $cause_img_data['file_name'];

            $this->init_model(MODEL_PAGES);

            $data = [
                'uid'     => $this->generate_uid(UID_CAUSES),
                'title'   => $this->input->post('name'),
                'details' => $this->input->post('details'),
                'goal'    => $this->input->post('goal'),
                'img'     => $cause_img,
            ];
            $this->Pages_model->add_causes($data);
            redirect('admin/causes');
        }
    }

    public function causes_update(){
        $data = PAGE_DATA_ADMIN;
        $data['data_footer']['footer_link'] = [];
        $data['data_header']['header_link'] = [];
        $data['data_header']['title'] = 'Admin | Update Causes';   
        $data['data_header']['sidebar']['causes'] = true;
        $this->init_model(MODEL_PAGES);
        $data['data_page']['cause'] =  $this->Pages_model->get_causes_by_id($this->input->get('c_id'));
        

        $this->is_auth('admin/causes_update.php', $data);

    }

    public function update_cause(){

        $data = [];

        if(!empty($_FILES['cause_img']['name'][0])){
            $cause_img_data = $this->upload_files('./uploads/cause_img/', 'cause_img', IMG_FILE_TYPES, IMG_FILE_SIZE);
            $data['img'] = '/uploads/cause_img/' . $cause_img_data['file_name'];
        }
        $data['title'] = $this->input->post('name');
        $data['details'] = $this->input->post('details');
        $data['goal'] = $this->input->post('goal');
        $data['raised'] = $this->input->post('raised');

        $this->init_model(MODEL_PAGES);
        $this->Pages_model->update_cause($this->input->post('uid'),$data);
        redirect('admin/causes');
    }

    public function delete_cause(){

        $uid = $this->input->get('c_id');
        $this->init_model(MODEL_PAGES);
        $this->Pages_model->delete_cause($uid);
        redirect('admin/causes');
    }

}