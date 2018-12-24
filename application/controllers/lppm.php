<?php
/**
 *
 */
class Lppm extends CI_Controller
{
  private $arr_prodi = array(
    3 => '24',
    4 => '25',
    5 => '13',
    6 => '11',
    7 => '12',
    8 => '21',
    9 => '20'
  );

  private $arr_institusi = array(
    10 => array('1','3'),
    11 => array('2')
  );

  function __construct()
  {
    parent::__construct();
    $this->load->library('Datatables');
    $this->load->model('lppm_model');
    $this->load->model('tahun_akademik_model');
    $this->load->model('prodi_model');
    //check login
    if($this->session->userdata('logged')!=1){
      redirect(site_url().'auth');
    }
  }

  function index(){
    $hak_akses = $this->session->userdata('hak_akses');
    if($hak_akses>2 && $hak_akses<10){
      $this->lihat_data_prodi();
    }else if($hak_akses>=10 && $hak_akses<13){
      $this->lihat_data_insititusi();
    }else{
      //arahkan ke page lihat data personal jika hak akses dosen biasa
      redirect(site_url('lppm/lihat_data'));
    }
  }

  public function get_data_penelitian(){
    $id = $this->input->post('id');
    $data = array(
      'data_penelitian' => $this->lppm_model->get_data_modal($id,'data_proposal_penelitian'),
    );
    $this->load->view('lppm/modal_penelitian',$data);
  }

  public function get_data_pengabdian(){
    $id = $this->input->post('id');
    $data = array(
      'data_pengabdian' => $this->lppm_model->get_data_modal($id,'data_proposal'),
    );
    $this->load->view('lppm/modal_pengabdian',$data);
  }

  function get_penelitian_prodi_json($t1,$t2,$s,$kode_prodi){
    $thnAkademik = $t1.'/'.$t2;
    $kd_semester = $s;
    header('Content-Type: application/json');
    echo $this->lppm_model->get_penelitian_prodi($thnAkademik,$kd_semester,$kode_prodi);
  }

  function get_penelitian_institusi_json($t1,$t2,$s,$kode){
    $thnAkademik = $t1.'/'.$t2;
    $kd_semester = $s;
    $kode_institusi = $this->arr_institusi[$kode];
    header('Content-Type: application/json');
    echo $this->lppm_model->get_penelitian_institusi($thnAkademik,$kd_semester,$kode_institusi);
  }

  function get_pengabdian_prodi_json($t1,$t2,$s,$kode_prodi){
    $thnAkademik = $t1.'/'.$t2;
    $kd_semester = $s;
    header('Content-Type: application/json');
    echo $this->lppm_model->get_pengabdian_prodi($thnAkademik,$kd_semester,$kode_prodi);
  }

  function get_pengabdian_institusi_json($t1,$t2,$s,$kode){
    $thnAkademik = $t1.'/'.$t2;
    $kd_semester = $s;
    $kode_institusi = $this->arr_institusi[$kode];
    header('Content-Type: application/json');
    echo $this->lppm_model->get_pengabdian_institusi($thnAkademik,$kd_semester,$kode_institusi);
  }

  function lihat_data_prodi(){
    //cek hak_akses
    $hak_akses = $this->session->userdata('hak_akses');
    if ($hak_akses<3 || $hak_akses>9) {
      redirect(site_url('lppm/lihat_data'));
    }
    $kode_prodi = $this->arr_prodi[$this->session->userdata('hak_akses')];
    $data_ta =  $this->tahun_akademik_model->get_status_aktif();
    $thn_akademik = set_value('thnAkademik', $data_ta->tahunAkademik);
    $kd_semester = set_value('kd_semester', $data_ta->kd_semester);

    $data = array(
      'title' => 'Data LPPM Prodi',
      'kode_prodi' => $kode_prodi,
      'nama_prodi' => $this->prodi_model->getByKode($kode_prodi)->nama_prodi,
      'tahun_akademik' => $thn_akademik,
      'kd_semester' => $kd_semester,
      'dd_ta' => $this->tahun_akademik_model->get_dd_thn_akademik(),
      'dd_s' => array('1'=>'Gasal','2'=>'Genap'),
      'action' => site_url('lppm'),
    );
    $this->load->view('lppm/list_prodi',$data);
  }

  function lihat_data_insititusi(){
    //cek hak_akses
    $hak_akses = $this->session->userdata('hak_akses');
    if ($hak_akses<10 || $hak_akses>11) {
      redirect(site_url('lppm/lihat_data'));
    }
    $data_ta =  $this->tahun_akademik_model->get_status_aktif();
    $thn_akademik = set_value('thnAkademik', $data_ta->tahunAkademik);
    $kd_semester = set_value('kd_semester', $data_ta->kd_semester);
    //jika tidak ada kode prodi berarti semua prodi
    // var_dump($this->input->post('kd_prodi')!==null && $this->input->post('kd_prodi')!='');
    // die();
    if($this->input->post('kd_prodi')!==null && $this->input->post('kd_prodi')!='') {
      $kode = $this->input->post('kd_prodi');
      $url1 = site_url("lppm/get_penelitian_prodi_json/$thn_akademik/$kd_semester/$kode");
      $url2 = site_url("lppm/get_pengabdian_prodi_json/$thn_akademik/$kd_semester/$kode");
    }else{
      $kode = $hak_akses;
      $url1 = site_url("lppm/get_penelitian_institusi_json/$thn_akademik/$kd_semester/$kode");
      $url2 = site_url("lppm/get_pengabdian_institusi_json/$thn_akademik/$kd_semester/$kode");
    }
    $data = array(
      'title' => 'Data LPPM Institusi',
      'kode' => $kode,
      'nama_institusi' => $hak_akses==10?'STMIK,AMIK':'STIE',
      'dd_prodi'=> $this->prodi_model->get_dd_prodi($this->arr_institusi[$hak_akses]),
      'kd_prodi'=> set_value('kd_prodi',''),
      'dd_ta' => $this->tahun_akademik_model->get_dd_thn_akademik(),
      'tahun_akademik' => $thn_akademik,
      'dd_s' => array('1'=>'Gasal','2'=>'Genap'),
      'kd_semester' => $kd_semester,
      'action' => site_url('lppm'),
      'url1'=>$url1,
      'url2'=>$url2
    );
    $this->load->view('lppm/list_institusi',$data);
  }

  function lihat_data(){
    $kd_dosen = $this->session->userdata('nik');
    $data_ta =  $this->tahun_akademik_model->get_status_aktif();
    $ta_penelitian = set_value('ta_penelitian',$data_ta->tahunAkademik);
    $s_penelitian = set_value('s_penelitian',$data_ta->kd_semester);
    $ta_pengabdian = set_value('ta_pengabdian',$data_ta->tahunAkademik);
    $s_pengabdian = set_value('s_pengabdian',$data_ta->kd_semester);

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
