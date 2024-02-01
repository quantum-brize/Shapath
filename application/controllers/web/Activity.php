<?php
defined('BASEPATH') or exit('No direct script access allowed');
require_once(APPPATH . 'controllers/web/Load.php');


class Activity extends Load
{
    function __construct()
    {
        parent::__construct();
    }

    public function index()
    {
        redirect('/home');
    }
    public function events()
    {
        $data = PAGE_DATA_WEB;
        $this->load_page('web/events.php', $data);
    }
    public function blogs()
    {
        $data = PAGE_DATA_WEB;
        $this->load_page('web/blogs.php', $data);
    }

}


?>