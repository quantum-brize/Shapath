<?php
defined('BASEPATH') or exit('No direct script access allowed');


class Common extends CI_Controller
{
	private $prefix_data = [];


	public function __construct()
	{
		ini_set('error_reporting', E_ALL & ~E_DEPRECATED);
		parent::__construct();

	}

	public function response($resp){
		$response = json_encode($resp);
        echo $response;
	}

	public function init_model($model)
	{	
		$this->load->model($model);
	}

	public function load_page($page, $data)
	{
		$this->load_headers($data['data_header']);
		$this->load->view($page);
		$this->load_footers($data['data_footer']);
	}
	private function load_headers($data)
	{

		$this->load->view('/' . $data['site'] . '/inc/header_link.php');
		if ($data['header_link']) {
			foreach ($data['header_link'] as $link) {
				$this->load->view($link);
			}
		}
		$this->load->view('/' . $data['site'] . '/inc/header.php');

	}

	private function load_footers($data)
	{

		$this->load->view('/' . $data['site'] . '/inc/footer.php');
		if ($data['footer_link']) {
			foreach ($data['footer_link'] as $link) {
				$this->load->view($link);
			}
		}
		$this->load->view('/' . $data['site'] . '/inc/footer_link.php');

	}
	public function load_login()
	{
		$this->load->view('admin/login');

	}
	public function prd($data)
	{
		echo '<pre>';
		print_r($data);
		echo '</pre>';
		die();
	}
	public function pr($data)
	{
		echo '<pre>';
		print_r($data);
		echo '</pre>';
	}

	private function uid()
	{
		return strtoupper(bin2hex(openssl_random_pseudo_bytes(4)));
	}

	public function generate_uid($purpose = null)
	{
		return (array_key_exists($purpose, $this->prefix_data)) ? $this->prefix_data[$purpose] . $this->uid() . date('Ymd') : 0;
	}
}

?>