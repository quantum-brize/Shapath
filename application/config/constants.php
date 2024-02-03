<?php
defined('BASEPATH') OR exit('No direct script access allowed');
define('SHOW_DEBUG_BACKTRACE', TRUE);
define('FILE_READ_MODE', 0644);
define('FILE_WRITE_MODE', 0666);
define('DIR_READ_MODE', 0755);
define('DIR_WRITE_MODE', 0755);
define('FOPEN_READ', 'rb');
define('FOPEN_READ_WRITE', 'r+b');
define('FOPEN_WRITE_CREATE_DESTRUCTIVE', 'wb'); // truncates existing file data, use with care
define('FOPEN_READ_WRITE_CREATE_DESTRUCTIVE', 'w+b'); // truncates existing file data, use with care
define('FOPEN_WRITE_CREATE', 'ab');
define('FOPEN_READ_WRITE_CREATE', 'a+b');
define('FOPEN_WRITE_CREATE_STRICT', 'xb');
define('FOPEN_READ_WRITE_CREATE_STRICT', 'x+b');
define('EXIT_SUCCESS', 0); // no errors
define('EXIT_ERROR', 1); // generic error
define('EXIT_CONFIG', 3); // configuration error
define('EXIT_UNKNOWN_FILE', 4); // file not found
define('EXIT_UNKNOWN_CLASS', 5); // unknown class
define('EXIT_UNKNOWN_METHOD', 6); // unknown class member
define('EXIT_USER_INPUT', 7); // invalid user input
define('EXIT_DATABASE', 8); // database error
define('EXIT__AUTO_MIN', 9); // lowest automatically-assigned error code
define('EXIT__AUTO_MAX', 125); // highest automatically-assigned error code
define('rest_controller_path', 'libraries/RestController.php');
define('DATA', 'data');
define('HTTP_STATUS', 'http_status');
define('key_status', 'status');
define('key_message','message');
define('key_data', 'data');
define('http_ok', 200);
define('header_allow_origin', 'Access-Control-Allow-Origin: *'); 
define('header_allow_headers', 'Access-Control-Allow-Headers: *'); 
define('header_allow_methods', "Access-Control-Allow-Methods: GET, POST, OPTIONS, PUT, DELETE, PATCH");
define('helper_form', 'form');
define('helper_url', 'url');
define('field_date', 'Y-m-d');
define('field_date_time', 'Y-m-d H:i:s');
define('field_location', 'Asia/Kolkata');



//////////////////////////////////////////////__URL
define('BASE_URL', 'http://localhost/Shapath/');

//////////////////////////////////////////////__PAGEDATA
define('PAGE_DATA_WEB', ['page_data' => [],'data_header' => ['header_link' => [],'title' => '','header' => [],'sidebar' => [],'site' => 'web'],'data_footer' => ['footer_link' => [],'footer' => [],'site' => 'web']]);
define('PAGE_DATA_ADMIN', ['page_data' => [],'data_header' => ['header_link' => [],'title' => '','header' => [],'sidebar' => [],'site' => 'admin'],'data_footer' => ['footer_link' => [],'footer' => [],'site' => 'admin']]);


/////////////////////////////////////////////__MODELS
define('MODEL_COMMON', 'Common_model');
define('MODEL_ADMIN', 'Admin_model');



////////////////////////////////////////////__TABLES
define('TABLE_USER','user');

