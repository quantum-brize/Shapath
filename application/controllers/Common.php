<?php
defined('BASEPATH') or exit('No direct script access allowed');


class Common extends CI_Controller
{
	private $prefix_data = [];


	public function __construct()
	{
		parent::__construct();

	}

	public function load_page($page, $data)
	{

		$data = [
			'page_data' => [],
			'data_header' => [
				'header_link' => [],
				'header' => [],
				'sidebar' => [],
				'site' => 'web'
			],
			'data_footer' => [
				'footer_link' => [],
				'footer' => [],
				'site' => 'web'
			]
		];

		$this->load_headers($data['data_header']);
		$this->load->view($page);
		$this->load_footers($data['data_footer']);
	}
	private function load_headers($data)
	{
		if ($data['site'] == 'web') {
			$this->load->view('/web/inc/header_link.php');
			$this->load->view('/web/inc/header.php');
		}
	}

	private function load_footers($data)
	{
		if ($data['site'] == 'web') {
			$this->load->view('/web/inc/footer.php');
			$this->load->view('/web/inc/footer_link.php');
		}
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