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

  private $data_ta;

  function __construct()
  {
    parent::__construct();
    $this->load->library('form_validation');
    $this->load->library('datatables');
    $this->load->model('open_km_model');
    $this->load->model('tahun_akademik_model');
    //cek login
    if($this->session->userdata('logged')!=1){
      redirect(site_url().'auth');
    }

    if($this->session->userdata('hak_akses')<10){
      redirect('dashboard');
    }
    $this->data_ta = $this->tahun_akademik_model->get_status_aktif();
  }

  function index(){
    if ($this->session->userdata('hak_akses')<10) {
      redirect('blank');
    }
    //get kode kode_institusi berdasrakn level dan tahun akademik yg aktif
    //$kode_institusi = $this->arr_institusi[$this->session->userdata('hak_akses')];
    $thnAkademik = $this->data_ta->tahunAkademik;
    $kd_semester = $this->data_ta->kd_semester;
    $data = array(
      'title' => 'Open KM',
      'thnAkademik' => $thnAkademik,
      'kd_semester' => $kd_semester,
      'kode' => $this->session->userdata('hak_akses'),
      'url' => site_url('open_km/get_list_insitusi_json'),
      'action' => site_url('open_km/aksi_isi'),
      'dd_option'=> array(''=>'Pilih','0'=>'Tidak ada sama sekali','2'=>'Ada dan tidak lengkap','5'=>'Lengkap'),
    );
    $this->load->view('open_km/list_open_km',$data);
  }

  function get_list_insitusi_json(){
    $kode_institusi = $this->arr_institusi[$this->input->post('kode')];
    $thnAkademik = $this->input->post('thn_akademik');
    $kd_semester = $this->input->post('kd_semester');
    header('Content-Type: application/json');
    echo $this->open_km_model->get_all_by_institusi_json($kode_institusi,$thnAkademik,$kd_semester);
  }

  function aksi_isi(){
    $id = $this->input->post('id');
    $kd_dosen = $this->input->post('kd_dosen');
    $skor = $this->input->post('skor');
    $data = array(
      'thnAkademik' => $this->data_ta->tahunAkademik,
      'kd_semester' => $this->data_ta->kd_semester,
      'kd_dosen' => $kd_dosen,
      'skor' => $skor
    );
    $row_count = $this->open_km_model->get_by_id($id);
    if ($row_count>0) {
      $this->open_km_model->ubahOpenKM($data,$id);
      $this->session->set_flashdata('message', "<div class='alert alert-success alert-dismissible' role='alert'>Data Berhasil Diubah!<button type='button' class='close' data-dismiss='alert' aria-label='close'><span aria-hidden='true'>&times;</span></button></div>");
    }else{
      $this->open_km_model->simpanOpenKM($data);
      $this->session->set_flashdata('message', "<div class='alert alert-success alert-dismissible' role='alert'>Data Berhasil Disimpan!<button type='button' class='close' data-dismiss='alert' aria-label='close'><span aria-hidden='true'>&times;</span></button></div>");
    }
    // redirect(site_url('open_km'));
  }

  function ubah($id){
    $data_okm = $this->open_km_model->get_by_id($id);
    //https://www.w3schools.com/php/func_array_count.asp

    if(count($data_okm)!=0){
      $data = array(
        'title' => 'Update Open KM',
        'action' => site_url('open_km/aksiubah'),
        'data_okm' => $data_okm,
        'button' => 'UPDATE',
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
