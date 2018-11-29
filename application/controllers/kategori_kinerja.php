<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Kategori_kinerja extends CI_Controller {

  public function __construct(){
    parent::__construct();
    $this->load->model('kategori_kinerja_model');
    $this->load->library('form_validation');
  }

  public function index(){
    $data_kategori = $this->kategori_kinerja_model->get_all();
    $data = array(
      'title' => 'Daftar Kategori Kinerja',
      'data_kategori' => $data_kategori
    );

    $this->load->view('kuesioner/kategori_kinerja/list_kategori_kinerja',$data);
  }

  public function form_valid(){
    $this->form_validation->set_error_delimiters('<div class="alert-danger" style="padding:10px;">','</div>');
    $this->form_validation->set_rules('nama_kategori','Nama Kategori Kinerja','trim|required');
  }

	public function tambah()
	{
    $data = array(
      'title' => 'Form Kategori Kinerja',
      'kd_kategori' => set_value('kd_kategori',''),
      'nama_kategori' => set_value('nama_kategori',''),
      'action' => site_url('kategori_kinerja/aksitambah'),
      'button' => 'SIMPAN'
    );
		$this->load->view('kuesioner/kategori_kinerja/form_kategori_kinerja',$data);
	}

  public function aksitambah(){
    $this->form_valid();
    if($this->form_validation->run() == FALSE){
      $this->tambah();
    }else{
      $data = array(
        'nama_kategori' => $this->input->post('nama_kategori'),
      );
      $this->kategori_kinerja_model->tambahData($data);
      $this->session->set_flashdata('message', "<div class='alert alert-success alert-dismissible' role='alert'>Data Berhasil Disimpan!<button type='button' class='close' data-dismiss='alert' aria-label='close'><span aria-hidden='true'>&times;</span></button></div>");
      redirect(site_url('kategori_kinerja'));
    }
  }

  public function update($kd_kategori){
    $data_kategori = $this->kategori_kinerja_model->get_data($kd_kategori);
    $data = array(
      'title' => 'Update Kategori Kinerja',
      'kd_kategori' => set_value('kd_kategori', $data_kategori->kd_kategori),
      'nama_kategori' => set_value('nama_kategori',$data_kategori->nama_kategori),
      'action' => site_url('kategori_kinerja/aksiupdate'),
      'button' => 'UBAH'
    );
    $this->load->view('kuesioner/kategori_kinerja/form_kategori_kinerja',$data);
  }

  public function aksiupdate(){
    $this->form_valid();

    if($this->form_validation->run() == FALSE){
      $this->update($this->input->post('kd_kategori'));
    }else{
      $kd_kategori = $this->input->post('kd_kategori');
      $data = array(
        'nama_kategori' => $this->input->post('nama_kategori'),
      );
      $this->kategori_kinerja_model->ubahData($data,$kd_kategori);
      $this->session->set_flashdata('message', "<div class='alert alert-success alert-dismissible' role='alert'>Data Berhasil Diubah!<button type='button' class='close' data-dismiss='alert' aria-label='close'><span aria-hidden='true'>&times;</span></button></div>");
      redirect(site_url('kategori_kinerja'));
    }
  }
}
