<?php
defined('BASEPATH') or exit('NO Direct Script Access Allowed');

class Keranjang extends CI_Controller
{
	function __construct()
	{
		parent::__construct();
		$this->load->model('Model_app');
		date_default_timezone_set("Asia/Jakarta");
	}

	private $view = 'Keranjang';

	function index()
	{
		$data['title'] = 'Keranjang';
		$plg_id = $this->session->userdata('plg_id');
		$data['jumlah_dikeranjang'] = $this->Model_app->get_data_keranjang($plg_id)->num_rows();


		// print_r($data['data_produk1']);
		// die();
		$plg_id = $this->session->userdata('plg_id');

		$data['data_keranjang_pesanan'] = $this->Model_app->get_data_keranjang($plg_id)->result();
		$data['total_pesanan'] = $this->db->query("SELECT sum(sub_total) as total from keranjang where plg_id = '$plg_id' ")->row()->total;
		// var_dump($data['total_pesanan']);
		// die();


		$this->load->view('front/layouts/header', $data);
		$this->load->view('front/layouts/menu_and_sidebar', $data);
		// $this->load->view('front/layouts/banner',$data);
		$this->load->view('front/keranjang', $data);
		$this->load->view('front/layouts/footer', $data);
	}


	function tambah($produkid)
	{

		$data_produk = $this->Model_app->edit_data('produk', array('produkid' => $produkid))->row();
		$plg_id = $this->session->userdata('plg_id');

		$data['produkid'] = $produkid;
		$data['jumlah'] = $this->input->post('qty');
		$bahan = $this->input->post('bahan');
		$ongkos = $this->input->post('ongkos');
		$opKirim = $this->input->post('opKirim');
		$data['isi_pesan'] = $this->input->post('isi_pesan');
		$data['sub_total'] = (($data_produk->produk_harga * $data['jumlah']) + ($bahan * $data['jumlah'])) + $ongkos;
		// var subtotal = ((bahan * qty) + (harga * qty)) + parseInt(ongkos);
		// var_dump($bahan, $opKirim, $ongkos, $data_produk->harga_digital, $data['jumlah'], $data['sub_total']);
		// die();
		$data['plg_id'] = $this->session->userdata('plg_id');

		$config['upload_path'] = './assets/img/pesanan/';
		$config['allowed_types'] = 'jpg|png|jpeg';
		$config['file_name'] = 'desain' . time();
		$config['max_size'] = '2048';

		$this->load->library('upload', $config);

		if ($_FILES['image']['name']) {
			if ($this->upload->do_upload('image')) {
				$image = $this->upload->data();
				$data['gambar'] = $image['file_name'];
				// unlink('assets/img/pelanggan/'.$this->session->userdata('plg_foto'));
			}
		}

		$this->Model_app->insert_data('keranjang', $data);
		redirect(base_url('keranjang'));
	}
	function tambahDigital($produkid)
	{

		$data_produk = $this->Model_app->edit_data('produk', array('produkid' => $produkid))->row();
		$plg_id = $this->session->userdata('plg_id');

		$data['produkid'] = $produkid;
		$data['jumlah'] = $this->input->post('qty');
		$bahan = $this->input->post('bahan');
		$ongkos = $this->input->post('ongkos');
		$opKirim = $this->input->post('opKirim');
		$data['isi_pesan'] = $this->input->post('isi_pesan');
		$data['sub_total'] = (($data_produk->harga_digital * $data['jumlah']) + ($bahan * $data['jumlah'])) + $ongkos;
		// var subtotal = ((bahan * qty) + (harga * qty)) + parseInt(ongkos);
		// var_dump($bahan, $opKirim, $ongkos, $data_produk->harga_digital, $data['jumlah'], $data['sub_total']);
		// die();
		$data['plg_id'] = $this->session->userdata('plg_id');

		$config['upload_path'] = './assets/img/pesanan/';
		$config['allowed_types'] = 'jpg|png|jpeg';
		$config['file_name'] = 'desain' . time();
		$config['max_size'] = '2048';

		$this->load->library('upload', $config);

		if ($_FILES['image']['name']) {
			if ($this->upload->do_upload('image')) {
				$image = $this->upload->data();
				$data['gambar'] = $image['file_name'];
				// unlink('assets/img/pelanggan/'.$this->session->userdata('plg_foto'));
			}
		}

		$this->Model_app->insert_data('keranjang', $data);
		redirect(base_url('keranjang'));
	}
	function tambahOffset($produkid)
	{

		$data_produk = $this->Model_app->edit_data('produk', array('produkid' => $produkid))->row();
		$plg_id = $this->session->userdata('plg_id');

		$data['produkid'] = $produkid;
		$data['jumlah'] = $this->input->post('qty');
		$bahan = $this->input->post('bahan');
		$ongkos = $this->input->post('ongkos');
		$opKirim = $this->input->post('opKirim');
		$data['isi_pesan'] = $this->input->post('isi_pesan');
		$data['sub_total'] = (($data_produk->harga_offset * $data['jumlah']) + ($bahan * $data['jumlah'])) + $ongkos;

		// var subtotal = ((bahan * qty) + (harga * qty)) + parseInt(ongkos);
		// var_dump($bahan, $opKirim, $ongkos, $data_produk->harga_digital, $data['jumlah'], $data['sub_total']);
		// die();
		$data['plg_id'] = $this->session->userdata('plg_id');

		$config['upload_path'] = './assets/img/pesanan/';
		$config['allowed_types'] = 'jpg|png|jpeg';
		$config['file_name'] = 'desain' . time();
		$config['max_size'] = '2048';

		$this->load->library('upload', $config);

		if ($_FILES['image']['name']) {
			if ($this->upload->do_upload('image')) {
				$image = $this->upload->data();
				$data['gambar'] = $image['file_name'];
				// unlink('assets/img/pelanggan/'.$this->session->userdata('plg_foto'));
			}
		}

		$this->Model_app->insert_data('keranjang', $data);
		redirect(base_url('keranjang'));
	}

	function hapus($id)
	{

		$data_keranjang = $this->Model_app->edit_data('keranjang', array('id' => $id))->row();
		unlink('assets/img/pesanan/' . $data_keranjang->gambar);
		$this->Model_app->delete_data('keranjang', array('id' => $id));

		redirect(base_url('keranjang'));
	}

	function edit($id)
	{
		$plg_id = $this->session->userdata('plg_id');
		$data['jumlah_dikeranjang'] = $this->Model_app->get_data_keranjang($plg_id)->num_rows();
		$data['title'] = 'Katalog';

		$data['data_keranjang'] = $this->Model_app->edit_data('keranjang', array('id' => $id))->row();

		$produk_id = $data['data_keranjang']->produkid;

		$data['produk'] = $this->Model_app->get_produk_where($produk_id)->row();
		$this->load->view('front/layouts/header', $data);
		$this->load->view('front/layouts/menu_and_sidebar', $data);
		$this->load->view('front/keranjang_edit', $data);
		$this->load->view('front/layouts/footer', $data);
	}


	function update($id)
	{

		$data_pesanan = $this->Model_app->edit_data('keranjang', array('id' => $id))->row();
		$data_produk = $this->Model_app->edit_data('produk', array('produkid' => $data_pesanan->produkid))->row();


		$data['jumlah'] = $this->input->post('qty');
		$data['isi_pesan'] = $this->input->post('isi_pesan');
		$data['sub_total'] = $data_produk->produk_harga * $data['jumlah'];

		$config['upload_path'] = './assets/img/pesanan/';
		$config['allowed_types'] = 'jpg|png|jpeg';
		$config['file_name'] = 'desain' . time();
		$config['max_size'] = '2048';

		$this->load->library('upload', $config);

		if ($_FILES['image']['name']) {
			if ($this->upload->do_upload('image')) {
				$image = $this->upload->data();
				$data['gambar'] = $image['file_name'];
				unlink('assets/img/pesanan/' . $data_pesanan->gambar);
			}
		}

		$this->Model_app->update_data('keranjang', array('id' => $id), $data);
		redirect(base_url('keranjang'));
	}


	function generate_id()
	{
		return $this->Model_app->get_kode_pelanggan();
	}
}
