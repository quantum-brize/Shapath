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

    public function get_all_quotes()
    {

        $quotes = $this->db
            ->select('*')
            ->from(TABLE_QUOTES)
            ->get();

        $quotes = $quotes->result_array();
        return isset($quotes) ? $quotes : [];
    }

    public function get_all_videos()
    {
        $videos = $this->db
            ->select('*')
            ->from(TABLE_VIDEOS)
            ->get();

        $videos = $videos->result_array();
        return isset($videos) ? $videos : [];
    }


    public function get_about()
    {
        $about = $this->db
            ->select('*')
            ->from(TABLE_ABOUT)
            ->get();
        $about = $about->result_array();
        return isset($about) ? $about : [];

    }

    public function get_mission_vision()
    {
        $mission_vision = $this->db
            ->select('*')
            ->from(TABLE_MISSION_VISION)
            ->get();
        $mission_vision = $mission_vision->result_array();
        return isset($mission_vision) ? $mission_vision : [];

    }


    public function update_quotes($uid, $quote, $quote_author, $quote_img)
    {

        if (empty($quote_img)) {
            $data = [
                'quote' => $quote,
                'quote_by' => $quote_author,
            ];
        } else {
            $data = [
                'quote' => $quote,
                'quote_by' => $quote_author,
                'quote_img' => $quote_img
            ];
        }
        $update = $this->db->where('uid', $uid)
            ->update(TABLE_QUOTES, $data);
        return $update;

    }

    public function update_about_misson_vision($about_title, $about, $mission_title, $mission, $vision_title, $vision, $about_id, $mission_id, $vision_id, $about_img)
    {
        if (empty($about_img)) {
            $about_data = [
                'about_title' => $about_title,
                'about' => $about
            ];
        } else {
            $about_data = [
                'about_title' => $about_title,
                'about' => $about,
                'about_img' => $about_img
            ];
        }
        $update_about = $this->db->where('uid', $about_id)
            ->update(TABLE_ABOUT, $about_data);
        $mission_data = [
            'title' => $mission_title,
            'description' => $mission
        ];
        $update_misson = $this->db->where('uid', $mission_id)
            ->update(TABLE_MISSION_VISION, $mission_data);


        $vision_data = [
            'title' => $vision_title,
            'description' => $vision
        ];
        $update_vision = $this->db->where('uid', $vision_id)
            ->update(TABLE_MISSION_VISION, $vision_data);

        return $update_about && $update_misson && $update_vision;
    }

    public function update_video($uid, $url)
    {
        $data = [
            'path' => $url
        ];
        $update = $this->db->where('uid', $uid)
            ->update(TABLE_VIDEOS, $data);
        return $update;
    }

    public function update_project($p_id, $update_data){
        $update = $this->db->where('uid', $p_id)
                        ->update(TABLE_PROJECTS, $update_data);
        return $update;
    }

    public function add_work($work_title, $description, $path)
    {

        $data = [
            'uid' => $this->generate_uid(UID_WORK),
            'title' => $work_title,
            'description' => $description,
            'img' => $path
        ];
        $add = $this->db->insert(TABLE_SERVICES, $data);
        return $add;
    }

    public function get_all_work()
    {
        $work = $this->db
            ->select('*')
            ->from(TABLE_SERVICES)
            ->get();
        $work = $work->result_array();
        return !empty($work) ? $work : [];
    }

    public function delete_service($uid)
    {
        $delete = $this->db->where('uid', $uid)
            ->delete(TABLE_SERVICES);
        return $delete;
    }


    public function add_new_project($data)
    {
        $add = $this->db->insert(TABLE_PROJECTS, $data);
        return $add;
    }

    public function get_all_projects()
    {
        $projects = $this->db
            ->select('*')
            ->from(TABLE_PROJECTS)
            ->get();
        $projects = $projects->result_array();
        return !empty($projects) ? $projects : [];
    }

    public function get_projects_by_id($p_id)
    {

        $project = $this->db->select('*')
                ->from(TABLE_PROJECTS)
                ->where('uid', $p_id)
                ->get()
                ->row_array();
        return !empty($project) ? $project : [];

    }

}