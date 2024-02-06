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

    public function update_quotes($uid, $quote, $quote_author, $quote_img)
    {

        if (empty($quote_img)) {
            $data = [
                'quote' => $quote,
                'quote_by' => $quote_author,
            ];
        }else{
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

    public function update_video($uid, $url){
        $data = [
            'path' => $url
        ];
        $update = $this->db->where('uid', $uid)
						->update(TABLE_VIDEOS, $data);
        return $update;
    }   

}