<?php
defined('BASEPATH') or exit('No direct script access allowed');

$route['default_controller']    = 'web/load';
$route['404_override']          = 'errors/custom_404';
$route['translate_uri_dashes']  = FALSE;



// ============================ web routes
$route['home']                      = 'web/load';
$route['contact-us']                = 'web/load/contact';
$route['donate']                    = 'web/load/donation';
$route['our-team']                  = 'web/about/our_team';
$route['mission-vision']            = 'web/about/mission_and_vision';
$route['faq']                       = 'web/about/faq';
$route['gallery']                   = 'web/about/gallery';
$route['events']                    = 'web/activity/events';
$route['blogs']                     = 'web/activity/blogs';
$route['project']                   = 'web/projects';
$route['our-volunteer']             = 'web/testimonial/our_volunteer';
$route['our-donor']                 = 'web/testimonial/our_donor';

// ============================ admin routes
$route['admin']                     = 'admin/Admin/index';
$route['admin/login']               = 'admin/Admin/login';
$route['admin/logout']              = 'admin/Admin/logout';
$route['admin/dashboard']           = 'admin/Admin/dashboard';
$route['admin/pages/']              = 'admin/Pages/index';
$route['admin/pages/home']          = 'admin/Pages/home';
$route['admin/pages/projects']      = 'admin/Pages/projects';
$route['admin/pages/projects/add']  = 'admin/Pages/projects_add';

