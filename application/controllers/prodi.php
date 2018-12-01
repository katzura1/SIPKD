<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Prodi extends CI_Controller {

  public function __construct(){
    parent::__construct();
    $this->load->library('form_validation');
    if($this->session->userdata('logged')!=1){
      redirect(site_url().'auth');
    }
  }

  public function index(){
    $this->load->model('prodi_model');
    $rows = $this->prodi_model->tampil()->result();

    $data = array(
      'title' => 'Kelola prodi',
      'data_prodi' => $rows
    );

    $this->load->view('program_studi/prodi',$data);
  }

  public function tambah($error = NULL){
    $this->load->model('institusi_model');

    $data = array(
      'title' => 'Tambah prodi',
      'action' => site_url().'prodi/aksitambah',
      'kode_prodi' => set_value('kode_prodi',''),
      'nama_prodi' => set_value('nama_prodi',''),
      'kode_institusi' => set_value('kode_institusi',''),
      'data_institusi' => $this->institusi_model->getAll(),
      'error' => $error,
      'button' => 'SIMPAN'
    );

    $this->load->view('program_studi/prodi_form',$data);
  }

  public function aksiTambah(){
    $this->form_valid();
    $this->form_validation->set_rules('kode_prodi', 'Kode prodi', 'required|min_length[2]|max_length[2]|is_unique[program_studi.kode_prodi]');

    if($this->form_validation->run() ==FALSE){
      $this->tambah();
    }else{
      $data = array(
        'kode_prodi' => $this->input->post('kode_prodi'),
        'nama_prodi' => $this->input->post('nama_prodi'),
        'kode_institusi' => $this->input->post('kode_institusi')
      );
      $this->load->model('prodi_model');
      if($this->prodi_model->tambahData($data)){
        redirect(site_url().'prodi');
      }else{

      }
    }
  }

  private function form_valid(){
    $this->form_validation->set_error_delimiters('<div class="alert-danger" style="padding:10px;width:80%;margin-top:5px;">','</div>');
    $this->form_validation->set_rules('nama_prodi', 'Nama prodi', 'required|is_unique[program_studi.nama_prodi]');
  }

  public function update($kode_prodi){
    $this->load->model('prodi_model');
    $this->load->model('institusi_model');
    $row = $this->prodi_model->getByKode($kode_prodi);
    $data = array(
      'title' => 'Update prodi',
      'action' => site_url().'prodi/aksiupdate',
      'kode_prodi' => $row->kode_prodi,
      'nama_prodi' => $row->nama_prodi,
      'kode_institusi' => $row->kode_institusi,
      'data_institusi' => $this->institusi_model->getAll(),
      'kode_prodi_ro' => 'readonly',
      'button' => 'UPDATE'
    );

    $this->load->view('program_studi/prodi_form',$data);
  }

  public function aksiupdate(){
    $this->form_valid();

    if($this->form_validation->run() == FALSE){
      $this->update($this->input->post('kode_prodi'));
    }else{
      $data = array(
        'nama_prodi' => $this->input->post('nama_prodi'),
        'kode_institusi' => $this->input->post('kode_institusi')
      );
      $this->load->model('prodi_model');
      $this->prodi_model->update($data,$this->input->post('kode_prodi'));
      redirect(site_url().'prodi');
    }
  }

  public function delete($kode_prodi){
    $this->load->model('prodi_model');
    $this->prodi_model->delete($kode_prodi);

    redirect(site_url().'prodi');
  }
}
