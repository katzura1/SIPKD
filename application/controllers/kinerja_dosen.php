<?php
/**
 *
 */
class Kinerja_dosen extends CI_Controller
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

  private $data_ta;

  function __construct()
  {
    parent::__construct();
    $this->load->library('datatables');
    //load model
    $this->load->model('tahun_akademik_model');
    $this->load->model('kinerja_dosen_model');
    $this->load->model('prodi_model');
    //tahun akademik yang aktif
    $this->data_ta = $this->tahun_akademik_model->get_status_aktif();
    //cek login
    if($this->session->userdata('logged')!=1){
      redirect(site_url().'auth');
    }
  }

  function get_nilai_prodi_json(){
    if($this->input->post('kode')=='0'){
      $kode = $this->arr_institusi[$this->session->userdata('hak_akses')];
    }else{
      $kode = $this->input->post('kode');
    }
    $thnAkademik = $this->input->post('thnAkademik');
    $kd_semester = $this->input->post('kd_semester');
    header('Content-Type: application/json');
    echo $this->kinerja_dosen_model->get_nilai_by_prodi($kode,$thnAkademik,$kd_semester);
  }

  function nilai_institusi(){
    $hak_akses = $this->session->userdata('hak_akses');
    $thnAkademik = set_value('thnAkademik',$this->data_ta->tahunAkademik);
    $kd_semester = set_value('kd_semester',$this->data_ta->kd_semester);
    $kode_institusi = $this->arr_institusi[$hak_akses];
    $data_kinerja = $this->kinerja_dosen_model->get_nilai_per_institusi($kode_institusi,$thnAkademik,$kd_semester);
    $arr_nm_prodi = array();
    $arr_kuesioner = array();
    $arr_ikd = array();
    $arr_soalnilai = array();
    $arr_pertemuan = array();
    $arr_materi = array();
    $arr_lppm = array();
    $arr_open_km = array();
    foreach ($data_kinerja as $value) {
      $arr_nm_prodi[] = $value->nama_prodi;
      $arr_kuesioner[] = $value->mean_kuesioner;
      $arr_ikd[] = $value->mean_ikd;
      $arr_soalnilai[] = $value->mean_soalnilai;
      $arr_pertemuan[] = $value->mean_pertemuan;
      $arr_materi[] = $value->mean_upload_materi;
      $arr_lppm[] = $value->mean_lppm;
      $arr_open_km[] = $value->mean_ok;
    }
    //
    $data = array(
      'title' => 'Penilaian Kinerja Dosen institusi',
      'nama_institusi' => $hak_akses==10?'STMIK,AMIK':'STIE',
      'dd_ta' => $this->tahun_akademik_model->get_dd_thn_akademik(),
      'dd_semester' => array('1'=>'Gasal', '2'=>'Genap'),
      'thnAkademik' => $thnAkademik,
      'kd_semester' => $kd_semester,
      'action' => site_url('kinerja_dosen/nilai_institusi'),
      'data_kinerja' => $data_kinerja,
      'arr_nm_prodi' => $arr_nm_prodi,
      'arr_kuesioner' => $arr_kuesioner,
      'arr_ikd' => $arr_ikd,
      'arr_soalnilai' => $arr_soalnilai,
      'arr_pertemuan' => $arr_pertemuan,
      'arr_materi' => $arr_materi,
      'arr_lppm' => $arr_lppm,
      'arr_open_km' => $arr_open_km
    );
    $this->load->view('kinerja/report_institusi',$data);
    // query where in kode institusi
    //beneri use case
    //baca2 sekilas crm
  }

  function nilai_prodi(){
    $hak_akses = $this->session->userdata('hak_akses');
    $thnAkademik = set_value('thnAkademik',$this->data_ta->tahunAkademik);
    $kd_semester = set_value('kd_semester',$this->data_ta->kd_semester);
    if($hak_akses>2 && $hak_akses<10){
      $kode_prodi = $this->arr_prodi[$hak_akses];
      $data = array(
        'title' => 'Penilaian Kinerja Dosen Prodi',
        'nama_prodi' => $this->prodi_model->getByKode($kode_prodi)->nama_prodi,
        'dd_ta' => $this->tahun_akademik_model->get_dd_thn_akademik(),
        'dd_semester' => array('1'=>'Gasal', '2'=>'Genap'),
        'thnAkademik' => $thnAkademik,
        'kd_semester' => $kd_semester,
        'kode'=> $kode_prodi,
        'url' => site_url('kinerja_dosen/get_nilai_prodi_json'),
        'action' => site_url('kinerja_dosen/nilai_prodi')
      );
    }else if($hak_akses>9 && $hak_akses<13){
      $kode_institusi = $this->arr_institusi[$hak_akses];
      $data = array(
        'title' => 'Penilaian Kinerja Dosen Prodi',
        'nama_institusi' => $hak_akses==10?'STMIK,AMIK':'STIE',
        'dd_ta' => $this->tahun_akademik_model->get_dd_thn_akademik(),
        'dd_semester' => array('1'=>'Gasal', '2'=>'Genap'),
        'thnAkademik' => $thnAkademik,
        'kd_semester' => $kd_semester,
        'dd_prodi'=> $this->prodi_model->get_dd_prodi($kode_institusi),
        'kode'=> set_value('kode_prodi',''),
        'url' => site_url('kinerja_dosen/get_nilai_prodi_json'),
        'action' => site_url('kinerja_dosen/nilai_prodi')
      );
    }

    $this->load->view('kinerja/report_prodi',$data);
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

  function cetak(){
    $hak_akses = $this->session->userdata('hak_akses');
    $kode_prodi = set_value('kode_prodi','');
    $thnAkademik = set_value('thnAkademik','');
    $kd_semester = set_value('kd_semester','');
    if ($kode_prodi=='') {
      $kode = $this->arr_institusi[$hak_akses];
    }else{
      $kode = $kode_prodi;
    }
    $data = array(
      'thnAkademik' => $thnAkademik,
      'kd_semester' => $kd_semester,
      'hak_akses' => $hak_akses,
      'kode_prodi' => $kode_prodi,
      'nama_prodi' => $kode_prodi==''?'':$this->prodi_model->getByKode($kode_prodi)->nama_prodi,
      'report' => $this->kinerja_dosen_model->report_prodi($kode,$thnAkademik,$kd_semester)
    );

    $this->load->view('kinerja/laporan_prodi',$data);
  }
}

?>
