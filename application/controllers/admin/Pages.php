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

    /**HOME*/
    public function home()
    {
        $this->init_model(MODEL_PAGES);
        $data = PAGE_DATA_WEB;
        $data['data_header']['title'] = 'Admin | Pages';
        $data['data_header']['sidebar']['pages'] = true;
        $data['data_header']['sidebar']['home'] = true;
        $this->is_auth('admin/index.php', $data);

    }

    public function add_admin(){
        $insert_users = [
            "uid"       => $this->generate_uid(UID_USER),
            "name"      => 'admin',
            "email"     => 'admin@gmail.com',
            "phone"     => '9679377775',
            "dob"       => '15-01-2002',
            "img"       => '/uploads/users_img/',
            "password"  => md5('123456'),
            "role"      => 'admin',
            "status"    => 'active',
        ];

        $this->init_model(MODEL_PAGES);
        $add_new_admin = $this->Pages_model->add_admin($insert_users);
    }

    public function franchise_registration()
    {
        $uid_users      = $this->generate_uid(UID_USER);
        $name           = $this->input->post('directors_name');
        $email          = $this->input->post('email');
        $phone          = $this->input->post('contact');
        $dob            = $this->input->post('dob');
        $password       = $this->input->post('password');
        $role           = 'centre';
        $status         = 'pending';
        $profile_img    = "";
        if (!empty($_FILES['directors_photo']['name'][0])) {
            $profile_img_data = $this->upload_files('./uploads/users_img/', 'directors_photo', IMG_FILE_TYPES, IMG_FILE_SIZE);
            $profile_img = '/uploads/users_img/' . $profile_img_data['file_name'];
        }
        
        $franchise_type             = $this->input->post('franchise_type');
        $referral_id                = $this->input->post('ref_id');
        $centre_name                = $this->input->post('centre_name');
        $fathers_name               = $this->input->post('fathers_name');
        $centre_state               = $this->input->post('centre_state');
        $centre_district            = $this->input->post('centre_district');
        $centre_place               = $this->input->post('centre_place');
        $centre_block               = $this->input->post('centre_block');
        $centre_post_office         = $this->input->post('centre_post_office');
        $centre_police_station      = $this->input->post('centre_police_station');
        $centre_pin_code            = $this->input->post('centre_pin_code');
        $centre_contact_no          = $this->input->post('centre_contact_no');
        $total_area                 = $this->input->post('total_area');
        $total_computers            = $this->input->post('number_of_computers');
        $total_staff                = $this->input->post('total_staff');
        $aadhar_img                 = "";
        $logo_img                   = "";
        $last_qualification_img     = "";
        $directors_signature_img    = "";
        if (!empty($_FILES['aadhar_img']['name'][0])) {
            $aadhar_img_data = $this->upload_files('./uploads/centre_img/', 'aadhar_img', IMG_FILE_TYPES, IMG_FILE_SIZE);
            $aadhar_img = '/uploads/centre_img/' . $aadhar_img_data['file_name'];
        }
        if (!empty($_FILES['centre_logo']['name'][0])) {
            $logo_img_data = $this->upload_files('./uploads/centre_img/', 'centre_logo', IMG_FILE_TYPES, IMG_FILE_SIZE);
            $logo_img = '/uploads/centre_img/' . $logo_img_data['file_name'];
        }
        if (!empty($_FILES['last_qualification_img']['name'][0])) {
            $last_qualification_img_data = $this->upload_files('./uploads/centre_img/', 'last_qualification_img', IMG_FILE_TYPES, IMG_FILE_SIZE);
            $last_qualification_img = '/uploads/centre_img/' . $last_qualification_img_data['file_name'];
        }
        if (!empty($_FILES['directors_signature_img']['name'][0])) {
            $pdirectors_signature_img_data = $this->upload_files('./uploads/centre_img/', 'directors_signature_img', IMG_FILE_TYPES, IMG_FILE_SIZE);
            $directors_signature_img = '/uploads/centre_img/' . $pdirectors_signature_img_data['file_name'];
        }
        
        $res_state          = $this->input->post('res_state');
        $res_district       = $this->input->post('res_district');
        $res_vill_city      = $this->input->post('res_vill');
        $res_block          = $this->input->post('res_block');
        $res_post_office    = $this->input->post('res_post_office');
        $res_police_station = $this->input->post('res_police_station');
        $res_pin_code       = $this->input->post('res_pin_code');
        $res_contact        = $this->input->post('res_contact_no');

        $insert_users = [
            "uid"       => $uid_users,
            "name"      => $name,
            "email"     => $email,
            "phone"     => $phone,
            "dob"       => $dob,
            "img"       => $profile_img,
            "password"  => md5($password),
            "role"      => $role,
            "status"    => $status,
        ];

        $insert_centre = [
            "uid"                       => $this->generate_uid(UID_CENTRE),
            "user_id"                   => $uid_users,
            "franchise_type"            => $franchise_type,
            "referral_id"               => $referral_id,
            "centre_name"               => $centre_name,
            "fathers_name"              => $fathers_name,
            "state"                     => $centre_state,
            "district"                  => $centre_district,
            "centre_place"              => $centre_place,
            "block"                     => $centre_block,
            "post_office"               => $centre_post_office,
            "police_station"            => $centre_police_station,
            "pincode"                   => $centre_pin_code,
            "contact"                   => $centre_contact_no,
            "total_area"                => $total_area,
            "total_computers"           => $total_computers,
            "total_staff"               => $total_staff,
            "logo_img"                  => $logo_img,
            "signature_img"             => $directors_signature_img,
            "aadhar_img"                => $aadhar_img,
            "last_qualification_img"    => $last_qualification_img,
        ];

        $insert_address = [
            "uid"               => $this->generate_uid(UID_ADDRESS),
            "user_id"           => $uid_users,
            "state"             => $res_state,
            "district"          => $res_district,
            "vill_city"         => $res_vill_city,
            "block"             => $res_block,
            "post_office"       => $res_post_office,
            "police_station"    => $res_police_station,
            "pin"               => $res_pin_code,
            "contact"           => $res_contact,
        ];

        $this->init_model(MODEL_PAGES);
        $add_new_centre = $this->Pages_model->add_new_centre($insert_users, $insert_centre, $insert_address);

        if ($add_new_centre) {
            redirect('online-registration');
        }
        
    }

    public function student_registration()
    {
        $uid_users      = $this->generate_uid(UID_USER);
        $name           = $this->input->post('name');
        $email          = $this->input->post('email');
        $phone          = $this->input->post('phone');
        $dob            = $this->input->post('dob');
        $password       = $this->input->post('password');
        $role           = 'student';
        $status         = 'pending';
        $profile_img    = "";
        if (!empty($_FILES['student_photo']['name'][0])) {
            $profile_img_data = $this->upload_files('./uploads/users_img/', 'student_photo', IMG_FILE_TYPES, IMG_FILE_SIZE);
            $profile_img = '/uploads/users_img/' . $profile_img_data['file_name'];
        }
        
        $fathers_name       = $this->input->post('fathers_name');
        $whatsapp           = $this->input->post('whatsapp');
        $aadhar             = $this->input->post('aadhar');
        $last_qualific      = $this->input->post('last_qualific');
        $passing_year       = $this->input->post('passing_year');
        $parcentage         = $this->input->post('parcentage');
        $marks              = $this->input->post('marks');
        $exam_board         = $this->input->post('exam_board');
        $aadhar_img         = "";
        $marksheet_img      = "";
        if (!empty($_FILES['aadhar_img']['name'][0])) {
            $aadhar_img_data = $this->upload_files('./uploads/student_img/', 'aadhar_img', IMG_FILE_TYPES, IMG_FILE_SIZE);
            $aadhar_img = '/uploads/student_img/' . $aadhar_img_data['file_name'];
        }
        if (!empty($_FILES['marksheet_img']['name'][0])) {
            $marksheet_img_data = $this->upload_files('./uploads/student_img/', 'marksheet_img', IMG_FILE_TYPES, IMG_FILE_SIZE);
            $marksheet_img = '/uploads/student_img/' . $marksheet_img_data['file_name'];
        }
        
        $state          = $this->input->post('state');
        $district       = $this->input->post('district');
        $vill_city      = $this->input->post('vill_city');
        $block          = $this->input->post('block');
        $post_office    = $this->input->post('post_office');
        $police_station = $this->input->post('police_station');
        $pin_code       = $this->input->post('pin_code');
        $contact        = $this->input->post('contact_no');

        $insert_users = [
            "uid"       => $uid_users,
            "name"      => $name,
            "email"     => $email,
            "phone"     => $phone,
            "dob"       => $dob,
            "img"       => $profile_img,
            "password"  => md5($password),
            "role"      => $role,
            "status"    => $status,
        ];

        $insert_student = [
            "uid"                   => $this->generate_uid(UID_STUDENT),
            "user_id"               => $uid_users,
            "fathers_name"          => $fathers_name,
            "whatsapp_no"           => $whatsapp,
            "aadhar"                => $aadhar,
            "last_qualification"    => $last_qualific,
            "passing_year"          => $passing_year,
            "marks_in_parcentage"   => $parcentage,
            "marks"                 => $marks,
            "exam_board"            => $exam_board,
            "aadhar_img"            => $aadhar_img,
            "marksheet_img"         => $marksheet_img,
        ];

        $insert_address = [
            "uid"               => $this->generate_uid(UID_ADDRESS),
            "user_id"           => $uid_users,
            "state"             => $state,
            "district"          => $district,
            "vill_city"         => $vill_city,
            "block"             => $block,
            "post_office"       => $post_office,
            "police_station"    => $police_station,
            "pin"               => $pin_code,
            "contact"           => $contact,
        ];

        $this->init_model(MODEL_PAGES);
        $add_new_centre = $this->Pages_model->add_new_student($insert_users, $insert_student, $insert_address);

        if ($add_new_centre) {
            redirect('student-admission');
        }
        
    }

}