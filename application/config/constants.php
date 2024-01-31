<?php
defined('BASEPATH') OR exit('No direct script access allowed');
defined('SHOW_DEBUG_BACKTRACE')                 OR define('SHOW_DEBUG_BACKTRACE', TRUE);
defined('FILE_READ_MODE')                       OR define('FILE_READ_MODE', 0644);
defined('FILE_WRITE_MODE')                      OR define('FILE_WRITE_MODE', 0666);
defined('DIR_READ_MODE')                        OR define('DIR_READ_MODE', 0755);
defined('DIR_WRITE_MODE')                       OR define('DIR_WRITE_MODE', 0755);
defined('FOPEN_READ')                           OR define('FOPEN_READ', 'rb');
defined('FOPEN_READ_WRITE')                     OR define('FOPEN_READ_WRITE', 'r+b');
defined('FOPEN_WRITE_CREATE_DESTRUCTIVE')       OR define('FOPEN_WRITE_CREATE_DESTRUCTIVE', 'wb'); // truncates existing file data, use with care
defined('FOPEN_READ_WRITE_CREATE_DESTRUCTIVE')  OR define('FOPEN_READ_WRITE_CREATE_DESTRUCTIVE', 'w+b'); // truncates existing file data, use with care
defined('FOPEN_WRITE_CREATE')                   OR define('FOPEN_WRITE_CREATE', 'ab');
defined('FOPEN_READ_WRITE_CREATE')              OR define('FOPEN_READ_WRITE_CREATE', 'a+b');
defined('FOPEN_WRITE_CREATE_STRICT')            OR define('FOPEN_WRITE_CREATE_STRICT', 'xb');
defined('FOPEN_READ_WRITE_CREATE_STRICT')       OR define('FOPEN_READ_WRITE_CREATE_STRICT', 'x+b');
defined('EXIT_SUCCESS')        OR define('EXIT_SUCCESS', 0); // no errors
defined('EXIT_ERROR')          OR define('EXIT_ERROR', 1); // generic error
defined('EXIT_CONFIG')         OR define('EXIT_CONFIG', 3); // configuration error
defined('EXIT_UNKNOWN_FILE')   OR define('EXIT_UNKNOWN_FILE', 4); // file not found
defined('EXIT_UNKNOWN_CLASS')  OR define('EXIT_UNKNOWN_CLASS', 5); // unknown class
defined('EXIT_UNKNOWN_METHOD') OR define('EXIT_UNKNOWN_METHOD', 6); // unknown class member
defined('EXIT_USER_INPUT')     OR define('EXIT_USER_INPUT', 7); // invalid user input
defined('EXIT_DATABASE')       OR define('EXIT_DATABASE', 8); // database error
defined('EXIT__AUTO_MIN')      OR define('EXIT__AUTO_MIN', 9); // lowest automatically-assigned error code
defined('EXIT__AUTO_MAX')      OR define('EXIT__AUTO_MAX', 125); // highest automatically-assigned error code

defined('rest_controller_path') OR define('rest_controller_path', 'libraries/RestController.php');
defined('DATA')                 OR define('DATA', 'data');
defined('HTTP_STATUS')          OR define('HTTP_STATUS', 'http_status');
defined('key_status')           OR define('key_status', 'status');
defined('key_message')          OR define('key_message','message');
defined('key_data')             OR define('key_data', 'data');
defined('http_ok')              OR define('http_ok', 200);
defined('header_allow_origin')  OR define('header_allow_origin', 'Access-Control-Allow-Origin: *');
defined('header_allow_headers') OR define('header_allow_headers', 'Access-Control-Allow-Headers: *');
defined('header_allow_methods') OR define('header_allow_methods', "Access-Control-Allow-Methods: GET, POST, OPTIONS, PUT, DELETE, PATCH");
defined('helper_form')          OR define('helper_form', 'form');
defined('helper_url')           OR define('helper_url', 'url');
defined('field_date')           OR define('field_date', 'Y-m-d');
defined('field_date_time')      OR define('field_date_time', 'Y-m-d H:i:s');
defined('field_location')       OR define('field_location', 'Asia/Kolkata');
////////////////////////////////////////////////////////////////////////////////////////////////////////////////-----TABLES
defined('TABLE_USERS')            OR define('TABLE_USERS','users');
defined('TABLE_PAPERS')           OR define('TABLE_PAPERS','papers');
defined('TABLE_OTP')              OR define('TABLE_OTP','otp_list');
defined('TABLE_CLIENTS')          OR define('TABLE_CLIENTS','client');
defined('TABLE_VENDOR')           OR define('TABLE_VENDOR','vendor');
defined('TABLE_CITY')             OR define('TABLE_CITY', 'city');
defined('TABLE_DISTRICT')         OR define('TABLE_DISTRICT', 'district');
defined('TABLE_STATE')            OR define('TABLE_STATE', 'state');
defined('TABLE_ADDRESS')          OR define('TABLE_ADDRESS', 'address');
defined('TABLE_PINCODE_AREA')     OR define('TABLE_PINCODE_AREA', 'pincode_area');
defined('TABLE_LISTS_APP_VERSON') OR define('TABLE_LISTS_APP_VERSON', 'lists_app_verson');
defined('TABLE_ASSIGNED')         OR define('TABLE_ASSIGNED','papers_assigned');
defined('TABLE_SOLD')             OR define('TABLE_SOLD','paper_sold');
defined('TABLE_COUPON')           OR define('TABLE_COUPON', 'coupons');
defined('TABLE_APPLIED_COUPON')   OR define('TABLE_APPLIED_COUPON', 'applied_coupons');
defined('TABLE_PAPER_PRICING')    OR define('TABLE_PAPER_PRICING','papers_pricing');
defined('TABLE_SYS_PREF')         OR define('TABLE_SYS_PREF','system_preferance');
defined('TABLE_BILLINGS')         OR define('TABLE_BILLINGS','billings');
defined('TABLE_RETURNED')         OR define('TABLE_RETURNED', 'papers_returned');
defined('TABLE_OTP_LIST')         OR define('TABLE_OTP_LIST', 'otp_list');
defined('TABLE_DUE_HISTORY')      OR define('TABLE_DUE_HISTORY', 'vendor_due_history');
defined('TABLE_PASSWORD')         OR define('TABLE_PASSWORD', 'passwords');
defined('TABLE_MAIL_CONFIG')      OR define('TABLE_MAIL_CONFIG', 'mail_config');
defined('TABLE_SUBSCRIPTION')     OR define('TABLE_SUBSCRIPTION', 'subscription');
defined('TABLE_BILL_HISTORY')     OR define('TABLE_BILL_HISTORY', 'bill_update_history');
defined('TABLE_EXPENSE_TYPE')     OR define('TABLE_EXPENSE_TYPE', 'expense_types');
defined('TABLE_EXPENSE')          OR define('TABLE_EXPENSE', 'expenses');
defined('TABLE_STOCK')            OR define('TABLE_STOCK','distributor_stock');
////////////////////////////////////////////////////////////////////////////////////////////////////////////////-----MODELS
// API
defined('MODEL_USERS')          OR define('MODEL_USERS','Api/Users_model');
defined('MODEL_SEND_OTP')       OR define('MODEL_SEND_OTP','Api/SendOtp_model');
defined('MODEL_UID_SERVICE')    OR define('MODEL_UID_SERVICE','Api/Uid_server_model');
defined('MODEL_OTP_SERVICE')    OR define('MODEL_OTP_SERVICE','Api/Otp_model');
defined('MODEL_VENDOR')         OR define('MODEL_VENDOR', 'Api/Vendor_model');
defined('MODEL_DISTRIBUTOR')    OR define('MODEL_DISTRIBUTOR', 'Api/Distributor_model');
defined('MODEL_LOCATION')       OR define('MODEL_LOCATION', 'Api/Location_model');
defined('MODEL_APP_INFO')       OR define('MODEL_APP_INFO', 'Api/App_info_model');
defined('MODEL_NEWS')           OR define('MODEL_NEWS', 'Api/News_paper_model');
defined('MODEL_BILLINGS')       OR define('MODEL_BILLINGS', 'Api/Billings_model');
defined('MODEL_COUPON')         OR define('MODEL_COUPON', 'Api/Coupon_model');
// ADMIN
defined('MODEL_ADMIN')          OR define('MODEL_ADMIN', 'Admin/Admin_model');
defined('MODEL_COUPONS')        OR define('MODEL_COUPONS', 'Admin/Coupons_model');
defined('MODEL_PAPER')          OR define('MODEL_PAPER', 'Admin/Paper_model');
defined('MODEL_DISTRIBUTORS')   OR define('MODEL_DISTRIBUTORS', 'Admin/Distributors_model');
defined('MODEL_DASHBOARD')      OR define('MODEL_DASHBOARD', 'Admin/Dashboard_model');
defined('MODEL_VENDORS')        OR define('MODEL_VENDORS', 'Admin/Vendor_model');
// Distributor
defined('MODEL_ONBOARDING_DIST') OR define('MODEL_ONBOARDING_DIST', 'Distributor/Onboarding_model');
defined('MODEL_VENDOR_DIST')     OR define('MODEL_VENDOR_DIST', 'Distributor/Vendor_model');
defined('MODEL_BILLINGS_DIST')   OR define('MODEL_BILLINGS_DIST', 'Distributor/Billings_model');

////////////////////////////////////////////////////////////////////////////////////////////////////////////////-----USERS
defined('USER_CLIENT')          OR define('USER_CLIENT', 'user_client');
defined('USER_VENDOR')          OR define('USER_VENDOR', 'user_vendor');
defined('USER_DISTRIBUTOR')     OR define('USER_DISTRIBUTOR', 'user_distributor');
////////////////////////////////////////////////////////////////////////////////////////////////////////////////-----FORMAT
defined('FORMAT_DATETIME')      OR define('FORMAT_DATETIME', 'Y-m-d H:i:s');
////////////////////////////////////////////////////////////////////////////////////////////////////////////////-----UID - KEY
defined('KEY_USER')               OR define('KEY_USER', 'USER');
defined('KEY_OTP')                OR define('KEY_OTP', 'OTP');
defined('KEY_VENDOR')             OR define('KEY_VENDOR', 'VENDOR');
defined('KEY_ADDRESS')            OR define('KEY_ADDRESS','ADDRESS');
defined('KEY_COUPON')             OR define('KEY_COUPON','COUPON');
defined('KEY_PAPER')              OR define('KEY_PAPER', 'PAPER');
defined('KEY_BILL')               OR define('KEY_BILL','BILL');
defined('KEY_APPLIED_COUPON')     OR define('KEY_APPLIED_COUPON', 'APPLIED_COUPON');
defined('KEY_PAPER_ASSIGN')       OR define('KEY_PAPER_ASSIGN', 'PAPER_ASSIGN');
defined('KEY_PAPER_PRICE')        OR define('KEY_PAPER_PRICE', 'PAPER_PRICE');
defined('KEY_SYS_PRE')            OR define('KEY_SYS_PRE','SYS_PRE');
defined('KEY_RETURN')             OR define('KEY_RETURN', 'RETURN');
defined('KEY_PASSWORD')           OR define('KEY_PASSWORD', 'PASSWORD');
defined('KEY_HISTORY')            OR define('KEY_HISTORY', 'HISTORY');
defined('KEY_EMAIL')              OR define('KEY_EMAIL', 'EMAIL');
defined('KEY_SUBSCRIPTION')       OR define('KEY_SUBSCRIPTION', 'SUBSCRIPTION');
defined('KEY_BILL_UPDATE')        OR define('KEY_BILL_UPDATE', 'BILL_UPDATE' );
defined('KEY_EXPENSES')           OR define('KEY_EXPENSES' , 'EXPENSES');
defined('KEY_STOCK')              OR define('KEY_STOCK' , 'STOCK');
////////////////////////////////////////////////////////////////////////////////////////////////////////////////-----UID - VALUE
defined('UID_USER_PREFIX')        OR define('UID_USER_PREFIX', 'U');
defined('UID_OTP_PREFIX')         OR define('UID_OTP_PREFIX', 'O');
defined('UID_VENDOR_PREFIX')      OR define('UID_VENDOR_PREFIX', 'V');
defined('UID_ADDRESS_PREFIX')     OR define('UID_ADDRESS_PREFIX', 'A');
defined('UID_COUPON_PREFIX')      OR define('UID_COUPON_PREFIX', 'C');
defined('UID_PAPER_PREFIX')       OR define('UID_PAPER_PREFIX', 'P');
defined('UID_BILL_PREFIX')        OR define('UID_BILL_PREFIX', 'B');
defined('UID_APPLIED_COUPON')     OR define('UID_APPLIED_COUPON', 'APC');
defined('UID_PAPER_ASSIGN')       OR define('UID_PAPER_ASSIGN', 'PA');
defined('UID_PAPER_PRICE_PREFIX') OR define('UID_PAPER_PRICE_PREFIX', 'PPR');
defined('UID_SYS_PRE')            OR define('UID_SYS_PRE', 'SYS');
defined('UID_RETURN_PREFIX')      OR define('UID_RETURN_PREFIX', 'RE');
defined('UID_PASSWORD_PREFIX')    OR define('UID_PASSWORD_PREFIX', 'PAS');
defined('UID_HISTORY')            OR define('UID_HISTORY_PREFIX', 'HIS');
defined('UID_EMAIL')              OR define('UID_EMAIL_PREFIX', 'EML');
defined('UID_SUBSCRIPTION')       OR define('UID_SUBSCRIPTION_PREFIX', 'SUB');
defined('UID_BILL_UPDATE')        OR define('UID_BILL_UPDATE','BUP');
defined('UID_EXPENSES')           OR define('UID_EXPENSES', 'EXP'); 
defined('UID_STOCK')              OR define('UID_STOCK', 'ST'); 
////////////////////////////////////////////////////////////////////////////////////////////////////////////////-----PARAM
defined('PARAM_NAME')           OR define('PARAM_NAME', 'name');
defined('PARAM_EMAIL')          OR define('PARAM_EMAIL', 'email');
defined('PARAM_MOBILE')         OR define('PARAM_MOBILE', 'mobile');
defined('PARAM_ADDERSS')        OR define('PARAM_ADDERSS', 'address');
defined('PARAM_STATE')          OR define('PARAM_STATE', 'state');
defined('PARAM_DISTRICT')       OR define('PARAM_DISTRICT', 'district');
defined('PARAM_PINCODE')        OR define('PARAM_PINCODE', 'pincode');
defined('PARAM_PASSWORD')       OR define('PARAM_PASSWORD', 'password');
////////////////////////////////////////////////////////////////////////////////////////////////////////////////-----TEXT