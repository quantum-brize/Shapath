<?php
defined('BASEPATH') or exit('No direct script access allowed');

$route['default_controller']    = 'web/load';
$route['404_override']          = 'errors/custom_404';
$route['translate_uri_dashes']  = FALSE;



// ============================ web routes
$route['home']                          = 'web/load';
$route['about-us']                      = 'web/load/about_us';
$route['contact']                       = 'web/load/contact_us';
$route['online-registration']           = 'web/load/online_registration';
$route['student-admission']             = 'web/load/student_admission';
$route['franchise-list']                = 'web/load/franchise_list';
// $route['franchise-list']                = 'web/load/franchise_list';


// ============================ admin routes
$route['admin']                     = 'admin/Admin/index';
$route['admin/login']               = 'admin/Admin/login';
$route['admin/logout']              = 'admin/Admin/logout';
$route['admin/dashboard']           = 'admin/Admin/dashboard';
$route['admin/gallery']             = 'admin/Admin/gallery';
///////////////////////////////////////////////////////////////
$route['admin/home']                = 'web/load/home';



