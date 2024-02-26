<?php
defined('BASEPATH') or exit('nothing found');
require_once(APPPATH . 'models/Admin_model.php');

class Pages_model extends Admin_model
{

    public function __construct()
    {
        parent::__construct();
        date_default_timezone_set(field_location);
    }

    public function add_admin($insert_users){
        $add_user = $this->db->insert(TABLE_USER, $insert_users);
        if($add_user){
            return $add_user;
        }
    }
    public function add_new_centre($insert_users, $insert_centre, $insert_address)
    {
        $add_user = $this->db->insert(TABLE_USER, $insert_users);
        if($add_user){
            $add_centre = $this->db->insert(TABLE_CENTRE, $insert_centre);
            if($add_centre){
                $add_address = $this->db->insert(TABLE_ADDRESS, $insert_address);
                if($add_address){
                    return $add_address;  
                }
            }
        }
    }

    public function add_new_student($insert_users, $insert_student, $insert_address)
    {
        $add_user = $this->db->insert(TABLE_USER, $insert_users);
        if($add_user){
            $add_student = $this->db->insert(TABLE_STUDENT, $insert_student);
            if($add_student){
                $add_address = $this->db->insert(TABLE_ADDRESS, $insert_address);
                if($add_address){
                    return $add_address;  
                }
            }
        }
    }

}