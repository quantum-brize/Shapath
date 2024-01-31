<?php
defined('BASEPATH') or exit('No direct script access allowed');

$route['default_controller'] = 'web/load';
$route['404_override'] = 'errors/custom_404';
$route['translate_uri_dashes'] = FALSE;



// ============================ web routes
$route['home']   = 'web/load';