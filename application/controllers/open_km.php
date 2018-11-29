<?php

/**
 *
 */
class Open_km extends CI_Controller
{
  private $arr_institusi = array(
    10 => array('1','3'),
    11 => array('2'),
    12 => array('1','2','3')
  );

  function __construct()
  {
    parent::__construct();
    $this->load->library('form_validation');
    $this->load->model('open_km_model');
    //cek login
    if($this->session->userdata('logged')!=1){
      redirect(site_url().'auth');
    }

    if($this->session->userdata('hak_akses')<10){
      redirect('blank');
    }
  }

  function index(){
    if ($this->session->userdata('hak_akses')<10) {
      redirect('blank');
    }
    //get kode kode_institusi berdasrakn level dan tahun akademik yg aktif
    $kode_institusi = $this->arr_institusi[$this->session->userdata('hak_akses')];
    $thnAkademik = $this->session->userdata('thn_akademik');

    $data = array(
      'title' => 'Open KM',
      'list_blm_selesai' => $this->open_km_model->list_institusi_not_done($kode_institusi,$thnAkademik),
      'list_selesai' => $this->open_km_model->list_institusi_done($kode_institusi,$thnAkademik),
      'action' => site_url('open_km/aksi_isi'),
      'dd_option'=> array(''=>'Pilih','0'=>'Tidak ada sama sekali','2'=>'Ada dan tidak lengkap','5'=>'Lengkap'),
    );
    $this->load->view('open_km/list_open_km',$data);
  }

  function aksi_isi(){
    $kd_dosen = $this->input->post('kd_dosen');
    $skor = $this->input->post('skor');
    $data = array(
      'thnAkademik' => $this->session->userdata('thn_akademik'),
      'kd_dosen' => $kd_dosen,
      'skor' => $skor
    );
    $this->open_km_model->simpanOpenKM($data);
    $this->session->set_flashdata('message', "<div class='alert alert-success alert-dismissible' role='alert'>Data Berhasil Disimpan!<button type='button' class='close' data-dismiss='alert' aria-label='close'><span aria-hidden='true'>&times;</span></button></div>");
    redirect(site_url('open_km'));
  }

  function ubah($id){
    $data_okm = $this->open_km_model->get_by_id($id);
    //https://www.w3schools.com/php/func_array_count.asp

    if(count($data_okm)!=0){
      $data = array(
        'title' => 'Update Open KM',
        'action' => site_url('open_km/aksiubah'),
        'data_okm' => $data_okm,
        'dd_option'=> array(''=>'Pilih','0'=>'Tidak ada sama sekali','2'=>'Ada dan tidak lengkap','5'=>'Lengkap'),
      );
      $this->load->view('open_km/form_open_km',$data);
    }else{
      redirect(site_url('open_km'));
    }
  }

  function aksiubah(){
    $data = array(
      'thnAkademik' => $this->input->post('thnAkademik'),
      'kd_dosen' => $this->input->post('kd_dosen'),
      'skor' => $this->input->post('skor')
    );
    $this->open_km_model->ubahOpenKM($data,$this->input->post('id'));
    $this->session->set_flashdata('message', "<div class='alert alert-success alert-dismissible' role='alert'>Data Berhasil Diubah!<button type='button' class='close' data-dismiss='alert' aria-label='close'><span aria-hidden='true'>&times;</span></button></div>");
    redirect(site_url('open_km'));
  }
}

?>
