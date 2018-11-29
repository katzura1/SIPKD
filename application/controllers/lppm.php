<?php
/**
 *
 */
class Lppm extends CI_Controller
{

  function __construct()
  {
    parent::__construct();
    $this->load->model('lppm_model');
  }

  function index(){
    $hak_akses = $this->session->userdata('hak_akses');
    if($hak_akses==1 || $hak_akses==2){
      //arahkan ke page lihat data personal jika hak akses dosen biasa
      redirect(site_url('lppm/lihat_data'));
    }
  }

  function lihat_data(){
    $kd_dosen = $this->session->userdata('nik');
    $ta_penelitian = set_value('ta_penelitian','');
    $s_penelitian = set_value('s_penelitian','');
    $ta_pengabdian = set_value('ta_pengabdian','');
    $s_pengabdian = set_value('s_pengabdian','');

    $data = array(
      'title' => 'Laporan Penelitian dan Pengabdian Masyarakat',
      'ta_penelitian' => $ta_penelitian,
      's_penelitian' => $s_penelitian,
      'dd_ta_penelitian' => $this->lppm_model->get_dd_ta_penelitian(),
      'ta_pengabdian' => $ta_pengabdian,
      's_pengabdian' => $s_pengabdian,
      'dd_ta_pengabdian' => $this->lppm_model->get_dd_ta_pengabdian(),
      'data_penelitian' => $this->lppm_model->get_penelitian_by_dosen($kd_dosen,$ta_penelitian,$s_penelitian),
      'data_pengabdian' => $this->lppm_model->get_pengabdian_by_dosen($kd_dosen,$ta_pengabdian,$s_pengabdian)
    );
    $this->load->view('lppm/report_dosen',$data);
  }
}

 ?>
