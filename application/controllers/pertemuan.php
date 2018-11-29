<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Pertemuan extends CI_Controller {

  function __construct(){
		parent::__construct();
		$this->load->library('form_validation');
		$this->load->model('pertemuan_model');
    $this->load->model('tahun_akademik_model');
    $this->load->model('prodi_model');
	}

  function index(){
    $kode_jurusan = array(
      '01' => '',
      '11' => 'MI',
      '12' => 'TK',
      '13' => 'KA',
      '24' => 'SI',
      '25' => 'TI',
      '21' => 'AK',
      '20' => 'MJ'
    );

    $tahun = $this->tahun_akademik_model->get_status_aktif()->tahunAkademik;
    if($this->input->post('kd_jurusan')){
      $kd_prodi = $this->input->post('kd_jurusan');
      $kd_jurusan = $kode_jurusan[$kd_prodi];
    }else{
      $kd_prodi = '';
      $kd_jurusan = '';
    }
    $data_pertemuan = $this->pertemuan_model->tampil_all_pertemuan($tahun,$kd_jurusan);
    $data_jurusan = $this->prodi_model->tampil()->result();

    $data = array(
      'title' => 'Data Pertemuan Dosen',
      'data_pertemuan' => $data_pertemuan,
      'data_jurusan'=> $data_jurusan,
      'action' => site_url('pertemuan/index'),
      'kd_prodi' => $kd_prodi
    );
    $this->load->view('pertemuan/list_pertemuan',$data);
  }
}
?>
