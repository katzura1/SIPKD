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
    if($hak_akses==1 || $hak_akses==2){
      //arahkan ke page lihat data personal jika hak akses dosen biasa
      redirect(site_url('lppm/lihat_data'));
    }
    else if($hak_akses>2 && $hak_akses<10){
      $this->lihat_data_prodi();
    }
  }

  public function get_data_penelitian(){
    $id = $this->input->post('id');
    $data = array(
      'data_penelitian' => $this->lppm_model->get_data_modal($id),
    );
    $this->load->view('lppm/modal_penelitian',$data);
  }

  function get_penelitian_prodi_json($t1,$t2,$s,$kode_prodi){
    $thnAkademik = $t1.'/'.$t2;
    $kd_semester = $s;
    header('Content-Type: application/json');
    echo $this->lppm_model->get_penelitian_prodi($thnAkademik,$kd_semester,$kode_prodi);
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
