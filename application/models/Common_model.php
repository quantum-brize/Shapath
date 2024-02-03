<?php 
defined('BASEPATH') or exit('nothing found');

class Common_model extends CI_Model {

    public function __construct(){
        parent::__construct();
        date_default_timezone_set(field_location);  
    }

    public function prd($data){
        echo '<pre>';
        print_r($data);
        echo '</pre>';
        die();

    }

    public function pr($data){
        echo '<pre>';
        print_r($data);
        echo '</pre>';

        
    }
}

?>