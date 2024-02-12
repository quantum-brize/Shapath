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


        $this->is_auth('admin/causes.php', $data);
    }


}