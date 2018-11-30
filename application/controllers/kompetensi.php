<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Kompetensi extends CI_Controller {

	public function __construct(){
    parent::__construct();
    $this->load->model('kompetensi_model');
		$this->load->model('kategori_kinerja_model');
    $this->load->library('form_validation');
  }

	public function index()
	{
		$data_kompetensi = $this->kompetensi_model->get_all();
		$data = array(
			'title' => 'Kompetensi Kinerja Dosen',
			'data_kompetensi' => $data_kompetensi,
		);

		$this->load->view('kuesioner/kompetensi/list_kompetensi',$data);
	}

	public function cek_unik(){
		$key_nama = $this->input->post('key_nama');
		$nama_kompetensi = $this->input->post('kompetensi');
		if($key_nama == $nama_kompetensi){
			return TRUE;
		}else if($this->kompetensi_model->get_row_by_nama($nama_kompetensi)>0){
			$this->form_validation->set_message('cek_unik', '{field} telah ada');
      return FALSE;
		}
	}

	public function form_valid(){
    $this->form_validation->set_error_delimiters('<div class="alert-danger" style="padding:10px;">','</div>');
    $this->form_validation->set_rules('kategori_kinerja','Kategori Kinerja','trim|required');
		$this->form_validation->set_rules('kompetensi','Kompetensi','trim|required|callback_cek_unik');
  }

  public function tambah(){
		$data = array(
			'title' => 'Tambah Data Kompetensi',
			'action' => site_url('kompetensi/aksitambah'),
			'key_nama' => '',
			'dd_kategori_kinerja' => $this->kategori_kinerja_model->dd_kategori_kinerja(),
			'kategori_selected' => set_value('kategori_kinerja',''),
			'kompetensi' => set_value('kompetensi',''),
			'id' => set_value('id',''),
			'button' => 'SAVE'
 		);

    $this->load->view('kuesioner/kompetensi/form_kompetensi',$data);
  }

	public function aksitambah(){
		$this->form_valid();

		if($this->form_validation->run() == FALSE){
			$this->tambah();
		}else{
			$data = array(
				'kd_kategori' => $this->input->post('kategori_kinerja',TRUE),
				'nama_kompetensi' => $this->input->post('kompetensi',TRUE)
			);
			$this->kompetensi_model->tambahData($data);
      $this->session->set_flashdata('message', "<div class='alert alert-success alert-dismissible' role='alert'>Data Berhasil Disimpan!<button type='button' class='close' data-dismiss='alert' aria-label='close'><span aria-hidden='true'>&times;</span></button></div>");
      redirect(site_url('kompetensi'));
		}
	}

	public function update($id){
		$this->load->model('kategori_kinerja_model');
		$data_kompetensi = $this->kompetensi_model->get_data($id);

		$data = array(
			'title' => 'Ubah Data Kompetensi',
			'action' => site_url('kompetensi/aksiupdate'),
			'key_nama' => set_value('key_nama',$data_kompetensi->nama_kompetensi),
			'dd_kategori_kinerja' => $this->kategori_kinerja_model->dd_kategori_kinerja(),
			'kategori_selected' => set_value('kategori_kinerja',$data_kompetensi->kd_kategori),
			'kompetensi' => set_value('kompetensi', $data_kompetensi->nama_kompetensi),
			'id' => set_value('id',$data_kompetensi->kd_kompetensi),
			'button' => 'UPDATE'
 		);

		$this->load->view('kuesioner/kompetensi/form_kompetensi',$data);
	}

	public function aksiupdate(){
		$this->form_valid();

		if($this->form_validation->run() == FALSE){
			$this->tambah($this->input->post('id'));
		}else{
			$data = array(
				'kd_kategori' => $this->input->post('kategori_kinerja',TRUE),
				'nama_kompetensi' => $this->input->post('kompetensi',TRUE)
			);
			$this->kompetensi_model->ubahData($data, $this->input->post('id'));
      $this->session->set_flashdata('message', "<div class='alert alert-success alert-dismissible' role='alert'>Data Berhasil Diubah!<button type='button' class='close' data-dismiss='alert' aria-label='close'><span aria-hidden='true'>&times;</span></button></div>");
      redirect(site_url('kompetensi'));
		}
	}
}
