<?php
defined('BASEPATH') or exit ('NO Direct Script Access Allowed');

class Home extends CI_Controller{
	function __construct(){
		parent::__construct();
		$this->load->model('Model_app');


	}

	private $view = 'home';

	function index(){
		$data['title'] = 'Home';
		$plg_id = $this->session->userdata('plg_id');
		$data['jumlah_dikeranjang'] = $this->Model_app->get_data_keranjang($plg_id)->num_rows();

		$data['data_produk1'] = $this->Model_app->get_produk_limit(10,0)->result();
		$data['data_produk2'] = $this->Model_app->get_produk_random(20,10)->result();
		$data['data_produk3'] = $this->Model_app->get_produk_random(30,20)->result();

		$data['data_kategori'] = $this->Model_app->get_data('kategori','kategori_id','desc')->result();
		// print_r($data['data_produk1']);
		// die();

		
		$this->load->view('front/layouts/header',$data);
		$this->load->view('front/layouts/menu_and_sidebar',$data);
		$this->load->view('front/layouts/banner',$data);
		$this->load->view('front/home',$data);
		$this->load->view('front/layouts/footer',$data);
	}


	 

	


}