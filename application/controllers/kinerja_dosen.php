<?php
/**
 *
 */
class Kinerja_dosen extends CI_Controller
{
  private $data_ta;

  function __construct()
  {
    parent::__construct();
    //load model
    $this->load->model('tahun_akademik_model');
    $this->load->model('kinerja_dosen_model');
    //tahun akademik yang aktif
    $this->data_ta = $this->tahun_akademik_model->get_status_aktif();
  }

  function nilai_dosen(){
    $kd_dosen = $this->session->userdata('nik');
    $thnAkademik = set_value('thnAkademik',$this->data_ta->tahunAkademik);
    $kd_semester = set_value('kd_semester',$this->data_ta->kd_semester);
    $data_nilai = $this->kinerja_dosen_model->get_nilai_by_dosen($kd_dosen,$thnAkademik,$kd_semester);
    $data = array(
      'title' => 'Penilaian Kinerja Dosen',
      'dd_ta' => $this->tahun_akademik_model->get_dd_thn_akademik(),
      'dd_semester' => array('1'=>'Gasal', '2'=>'Genap'),
      'thnAkademik' => $thnAkademik,
      'kd_semester' => $kd_semester,
      'data_nilai' => $data_nilai,
      'action' => site_url('kinerja_dosen/nilai_dosen')
    );
    $this->load->view('kinerja/report_dosen',$data);
  }
}

?>
