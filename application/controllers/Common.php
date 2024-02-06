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

	public function response($resp)
	{
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
		$this->load->view($page, $data['data_page']);
		$this->load_footers($data['data_footer']);
	}
	private function load_headers($data)
	{

		$this->load->view('/' . $data['site'] . '/inc/header_link.php', $data);
		$this->load->view('/' . $data['site'] . '/inc/header.php');

	}

	private function load_footers($data)
	{

		$this->load->view('/' . $data['site'] . '/inc/footer.php');
		$this->load->view('/' . $data['site'] . '/inc/footer_link.php', $data);

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


	public function upload_files($path, $file_name)
	{
		$config['upload_path'] = $path;
		$config['allowed_types'] = 'gif|jpg|png';
		$config['max_size'] = 5048;
		$config['encrypt_name'] = TRUE;
		$this->load->library('upload', $config);
		foreach ($_FILES[$file_name]['name'] as $key => $value) {
			$_FILES['userfile']['name'] = $_FILES[$file_name]['name'][$key];
			$_FILES['userfile']['type'] = $_FILES[$file_name]['type'][$key];
			$_FILES['userfile']['tmp_name'] = $_FILES[$file_name]['tmp_name'][$key];
			$_FILES['userfile']['error'] = $_FILES[$file_name]['error'][$key];
			$_FILES['userfile']['size'] = $_FILES[$file_name]['size'][$key];
			$this->upload->do_upload('userfile');
		}

		return $this->upload->data();
	}


}

?>