<?php
defined('BASEPATH') or exit('NO Direct Script Access Allowed');

class Register extends CI_Controller
{
	function __construct()
	{
		parent::__construct();
		$this->load->model('Model_app');
		date_default_timezone_set("Asia/Jakarta");
	}

	private $view = 'Register';

	function index()
	{
		$data['title'] = 'Register';
		$plg_id = $this->session->userdata('plg_id');
		$data['jumlah_dikeranjang'] = $this->Model_app->get_data_keranjang($plg_id)->num_rows();


		// print_r($data['data_produk1']);
		// die();


		$this->load->view('front/layouts/header', $data);
		$this->load->view('front/layouts/menu_and_sidebar', $data);
		// $this->load->view('front/layouts/banner',$data);
		$this->load->view('front/Register', $data);
		$this->load->view('front/layouts/footer', $data);
	}


	function create()
	{
		$data['plg_id'] = $this->generate_id();
		$data['plg_email'] = $this->input->post('email');
		$data['plg_username'] = $this->input->post('username');
		$data['plg_password'] = md5($this->input->post('password'));
		$data['plg_nama'] = $this->input->post('nama');
		$data['plg_kelamin'] = $this->input->post('jkelamin');
		$data['plg_alamat'] = $this->input->post('alamat');
		$data['plg_telepon'] = $this->input->post('notelp');
		$data['plg_tanggal_dibuat'] = date('Y-m-d H:i:s');

		$config['upload_path'] = './assets/img/pelanggan/';
		$config['allowed_types'] = 'jpg|png|jpeg';
		$config['file_name'] = 'pelanggan' . time();
		$config['max_size'] = '2048';

		$this->load->library('upload', $config);

		if ($_FILES['image']['name']) {
			if ($this->upload->do_upload('image')) {
				$image = $this->upload->data();
				$data['plg_foto'] = $image['file_name'];
			}
		}

		// Cek Username dan email
		$cek_username = $this->db->where('plg_username', $data['plg_username'])->get('pelanggan')->num_rows();
		$cek_email = $this->db->where('plg_email', $data['plg_email'])->get('pelanggan')->num_rows();

		if ($cek_username > 0) {
			$this->session->set_flashdata('error', 'Username Sudah ada');
			redirect(base_url('register'));
		}

		if ($cek_email > 0) {
			$this->session->set_flashdata('error', 'Email Sudah ada');
			redirect(base_url('register'));
		}

		$this->Model_app->insert_data('pelanggan', $data);
		$this->session->set_flashdata('berhasil', 'Data Berhasil didaftarkan silahkan Login');
		redirect(base_url('login'));
	}


	function generate_id()
	{
		return $this->Model_app->get_kode_pelanggan();
	}
}
