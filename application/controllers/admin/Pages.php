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
        $data['data_footer']['footer_link'] = ['home_js.php'];
        $data['data_header']['header_link'] = ['home.css'];
        $data['data_header']['title'] = 'Admin | Pages';
        $data['data_header']['sidebar']['pages'] = true;
        $data['data_header']['sidebar']['home'] = true;
        $data['data_page']['quotes'] = $this->Pages_model->get_all_quotes();
        $data['data_page']['videos'] = $this->Pages_model->get_all_videos();
        $data['data_page']['about'] = $this->Pages_model->get_about();
        $data['data_page']['mission_vision'] = $this->Pages_model->get_mission_vision();
        $data['data_page']['services'] = $this->Pages_model->get_all_work();

        $this->is_auth('admin/pages_home.php', $data);

    }
    public function projects()
    {
        $this->init_model(MODEL_PAGES);
        $data = PAGE_DATA_ADMIN;
        $data['data_footer']['footer_link'] = ['projects_js.php'];
        $data['data_header']['header_link'] = [];
        $data['data_header']['title'] = 'Admin | Projects';
        $data['data_header']['sidebar']['pages'] = true;
        $data['data_header']['sidebar']['projects'] = true;
        $data['data_page']['projects'] = $this->Pages_model->get_all_projects();

        $this->is_auth('admin/pages_projetcs.php', $data);

    }

    public function projects_add()
    {
        $this->init_model(MODEL_PAGES);
        $data = PAGE_DATA_ADMIN;
        $data['data_footer']['footer_link'] = ['projects_js.php'];
        $data['data_header']['header_link'] = ['projects.css'];
        $data['data_header']['title'] = 'Admin | Add Project';
        $data['data_header']['sidebar']['pages'] = true;
        $data['data_header']['sidebar']['projects'] = true;


        $this->is_auth('admin/pages_projetcs_add.php', $data);
    }

    public function projects_update()
    {
        $p_id = $this->input->get('p_id');

        $this->init_model(MODEL_PAGES);
        $data = PAGE_DATA_ADMIN;
        $data['data_footer']['footer_link'] = ['projects_js.php'];
        $data['data_header']['header_link'] = ['projects.css'];
        $data['data_header']['title'] = 'Admin | Edit Project';
        $data['data_header']['sidebar']['pages'] = true;
        $data['data_header']['sidebar']['projects'] = true;
        $data['data_page']['project'] = $this->Pages_model->get_projects_by_id($p_id);


        $this->is_auth('admin/pages_projetcs_update.php', $data);
    }


    public function update_about()
    {
        $about_title = $this->input->post('about_title');
        $about = $this->input->post('about');
        $mission_title = $this->input->post('mission_title');
        $mission = $this->input->post('mission');
        $vision_title = $this->input->post('vision_title');
        $vision = $this->input->post('vision');
        $about_id = $this->input->post('about_id');
        $mission_id = $this->input->post('mission_id');
        $vision_id = $this->input->post('vision_id');

        $this->init_model(MODEL_PAGES);

        if (empty($_FILES['about_img']['name'][0])) {
            $this->Pages_model->update_about_misson_vision($about_title, $about, $mission_title, $mission, $vision_title, $vision, $about_id, $mission_id, $vision_id, '');
        } else {
            $upload_data = $this->upload_files('./uploads/about_img/', 'about_img', IMG_FILE_TYPES, IMG_FILE_SIZE);
            $this->Pages_model->update_about_misson_vision($about_title, $about, $mission_title, $mission, $vision_title, $vision, $about_id, $mission_id, $vision_id, '/uploads/about_img/' . $upload_data['file_name']);
        }
        redirect('/admin/pages/home');

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
            $upload_data = $this->upload_files('./uploads/quotes_img/', 'quote_img', IMG_FILE_TYPES, IMG_FILE_SIZE);
            $this->Pages_model->update_quotes($uid, $quote, $quote_author, '/uploads/quotes_img/' . $upload_data['file_name']);
        }
        redirect('/admin/pages/home');
    }
    public function add_new_project()
    {
        $project_title = $this->input->post('project_title');
        $project_cover_details = $this->input->post('project_cover_details');
        $project_page_title = $this->input->post('project_page_title');
        $project_page_video = $this->input->post('project_page_video');
        $project_page_description = $this->input->post('project_page_description');

        $project_logo_data = $this->upload_files('./uploads/project_logo/', 'project_logo', IMG_FILE_TYPES, IMG_FILE_SIZE);
        $project_img_data = $this->upload_files('./uploads/project_img/', 'project_img', IMG_FILE_TYPES, IMG_FILE_SIZE);
        $galary_img_data = $this->upload_files('./uploads/project_galary_img/', 'galary_img', IMG_FILE_TYPES, IMG_FILE_SIZE);

        $project_img = '/uploads/project_img/' . $project_img_data['file_name'];
        $project_logo = '/uploads/project_logo/' . $project_logo_data['file_name'];

        $galary_img_arr = [];
        if (!empty($galary_img_data)) {
            foreach ($galary_img_data as $key => $val) {
                $galary_img_arr[$key] = '/uploads/project_galary_img/' . $val['file_name'];
            }
            $galary_img = implode(',', $galary_img_arr);
        }


        $this->init_model(MODEL_PAGES);
        $insert_data = [
            "uid" => $this->generate_uid(UID_PROJECT),
            "project_title" => $project_title,
            "project_cover_details" => $project_cover_details,
            "project_page_title" => $project_page_title,
            "project_page_video" => $project_page_video,
            "project_page_description" => $project_page_description,
            "project_img" => $project_img,
            "project_logo" => $project_logo,
            "galary_img" => $galary_img
        ];

        $add_new_project = $this->Pages_model->add_new_project($insert_data);

        if ($add_new_project) {
            redirect('admin/pages/projects');
        }
    }

    public function update_project()
    {
        $p_id = $this->input->get('p_id');
        $project_title = $this->input->post('project_title');
        $project_cover_details = $this->input->post('project_cover_details');
        $project_page_title = $this->input->post('project_page_title');
        $project_page_video = $this->input->post('project_page_video');
        $project_page_description = $this->input->post('project_page_description');
        $this->init_model(MODEL_PAGES);
        $update_data = [];
        if (
            empty($_FILES['project_logo']['name'][0]) &&
            empty($_FILES['project_img']['name'][0]) &&
            empty($_FILES['galary_img']['name'][0])
        ) {
            $update_data = [
                "project_title" => $project_title,
                "project_cover_details" => $project_cover_details,
                "project_page_title" => $project_page_title,
                "project_page_video" => $project_page_video,
                "project_page_description" => $project_page_description,
            ];
        }

        $update = $this->Pages_model->update_project($p_id, )

    }

    public function update_video()
    {
        $uid = $this->input->post('uid');
        $url = $this->input->post('url');

        if (!empty($uid) && !empty($url)) {
            $this->init_model(MODEL_PAGES);
            $this->Pages_model->update_video($uid, $url);
        }
        redirect('/admin/pages/home');

    }

    public function add_work()
    {
        $work_title = $this->input->post('work_title');
        $description = $this->input->post('description');

        if (!empty($_FILES['work_img']['name'][0])) {
            $this->init_model(MODEL_PAGES);
            $upload_data = $this->upload_files('./uploads/work_img/', 'work_img', IMG_FILE_TYPES, IMG_FILE_SIZE);
            $this->Pages_model->add_work($work_title, $description, '/uploads/work_img/' . $upload_data['file_name']);
        }
        redirect('/admin/pages/home');

    }


    public function delete_service()
    {
        $uid = $this->input->get('uid');
        $this->init_model(MODEL_PAGES);
        $this->Pages_model->delete_service($uid);
        redirect('/admin/pages/home');
    }



}