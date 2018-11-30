<?php
/**
 *
 */
class Kuesioner extends CI_Controller
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

  public function __construct()
  {
    parent::__construct();
    $this->load->library('form_validation');
    $this->load->model('kuesioner_model');
    $this->load->model('prodi_model');
    $this->load->model('dosen_model');
    $this->load->model('kategori_kinerja_model');
    $this->load->model('kompetensi_model');
    $this->load->model('tahun_akademik_model');
    //cek login
    if($this->session->userdata('logged')!=1){
      redirect(site_url().'auth');
    }
    $this->data_ta = $this->tahun_akademik_model->get_status_aktif();
  }

  public function index(){
    //cek hak akses
    $hak = $this->session->userdata('hak_akses');
    if($hak<3 || $hak>11){
      redirect('kuesioner/lihat_data');
    }
    //load list dosen
    $thnAkademik = $this->data_ta->tahunAkademik;
    $kd_semester = $this->data_ta->kd_semester;
    $penilai = strpos($this->session->userdata('hak'),'KAPRODI')!==false?'1':'2';
    //if penilai 1 data prodi if 2 data institusi
    if ($penilai=='1') {
      $kode_prodi = $this->arr_prodi[$this->session->userdata('hak_akses')];
      $data_dosen = $this->kuesioner_model->get_all_not_done($kode_prodi, $thnAkademik, $kd_semester, $penilai);
      $data_dosen_s = $this->kuesioner_model->get_all_done($kode_prodi, $thnAkademik, $kd_semester, $penilai);

      $data = array(
        'title' => 'Kuesioner',
        'data_dosen' => $data_dosen,
        'data_dosen_s' => $data_dosen_s,
        'title_text' => 'Program Studi',
        'title_kode' => $this->prodi_model->getByKode($kode_prodi)->nama_prodi
      );
    }else{
      $kode_institusi = $this->arr_institusi[$this->session->userdata('hak_akses')];
      $data_dosen = $this->kuesioner_model->get_all_not_done_by_institusi($kode_institusi, $thnAkademik, $kd_semester, $penilai);
      $data_dosen_s = $this->kuesioner_model->get_all_done_by_institusi($kode_institusi, $thnAkademik, $kd_semester, $penilai);

      $data = array(
        'title' => 'Kuesioner',
        'data_dosen' => $data_dosen,
        'data_dosen_s' => $data_dosen_s,
        'title_text' => 'Institusi',
        'title_kode' => $this->prodi_model->get_institusi($kode_institusi)
      );
    }

    $this->load->view('kuesioner/list_dosen',$data);
  }

  //mengisi nilai kuesioner dosen
  public function isi($kd_dosen=NULL){
    //cek hak akses
    $hak = $this->session->userdata('hak_akses');
    if($hak>2 && $hak<10){
      $this->isi_prodi($kd_dosen);
    }else if($hak>9 && $hak<12){
      $this->isi_pk1($kd_dosen);
    }else{
      redirect('kuesioner/lihat_data');
    }
  }

  public function isi_pk1($kd_dosen){
    //1. cek kaprodi sesuai dgn kode prodi dosen
    $d_dosen = $this->dosen_model->get_by_kd($kd_dosen);
    $kode_institusi = $this->arr_institusi[$this->session->userdata('hak_akses')];

    if(in_array($d_dosen->kode_institusi,$kode_institusi)){
      $data_kategori = $this->kategori_kinerja_model->get_all();
      $data_kompetensi = $this->kompetensi_model->get_all();
      $data = array(
        'title' => 'Daftar Kuesioner',
        'thnAkademik' => $this->data_ta->tahunAkademik,
        'kd_semester' => $this->data_ta->kd_semester,
        'data_kategori' => $data_kategori,
        'data_kompetensi' => $data_kompetensi,
        'data_dosen' => $d_dosen,
        'action' => site_url('kuesioner/aksi_isi'),
        'penilai' => strpos($this->session->userdata('hak'),'KAPRODI')!==false?'1':'2',
      );

      $this->load->view('kuesioner/list_kuesioner',$data);
    }else{
      redirect(site_url('kuesioner'));
      //kode prodi kaprodi tidak sama dengan kode prodi dosen
    }
  }

  public function isi_prodi($kd_dosen){
    //1. cek kaprodi sesuai dgn kode prodi dosen
    $d_dosen = $this->dosen_model->get_by_kd($kd_dosen);
    $kd_prodi = $this->arr_prodi[$this->session->userdata('hak_akses')];

    if($d_dosen->kode_prodi==$kd_prodi){
      $data_kategori = $this->kategori_kinerja_model->get_all();
      $data_kompetensi = $this->kompetensi_model->get_all();
      $data = array(
        'title' => 'Daftar Kuesioner',
        'thnAkademik' => $this->data_ta->tahunAkademik,
        'kd_semester' => $this->data_ta->kd_semester,
        'data_kategori' => $data_kategori,
        'data_kompetensi' => $data_kompetensi,
        'data_dosen' => $d_dosen,
        'action' => site_url('kuesioner/aksi_isi'),
        'penilai' => strpos($this->session->userdata('hak'),'KAPRODI')!==false?'1':'2',
      );

      $this->load->view('kuesioner/list_kuesioner',$data);
    }else{
      redirect(site_url('kuesioner'));
      //kode prodi kaprodi tidak sama dengan kode prodi dosen
    }
  }

  public function aksi_isi(){
    if(!$this->input->post('thnAkademik')){
      redirect(site_url('kuesioner'));
    }

    $thnAkademik = $this->input->post('thnAkademik');
    $kd_semester = $this->input->post('kd_semester');
    $kd_dosen = $this->input->post('kd_dosen');
    $penilai = $this->input->post('penilai');
    $data = array(
      'thnAkademik' => $thnAkademik,
      'kd_semester' => $kd_semester,
      'kd_dosen' => $kd_dosen,
      'penilai' => $penilai,
      'tgl_isi' => date('Y-m-d'),
      'tgl_ubah' => date('Y-m-d')
    );
    $id = $this->kuesioner_model->tambah($data);

    $kd_kompetensi = $this->input->post('kd_kompetensi');
    $skor = $this->input->post('skor');

    for ($i=0; $i < count($kd_kompetensi); $i++) {
      $data_detail =array(
        'id' => $id,
        'kd_kompetensi' => $kd_kompetensi[$i],
        'skor' => $skor[$i]
      );
      $this->kuesioner_model->tambahDetail($data_detail);
    }
    redirect(site_url('kuesioner'));
  }

  public function ubah($id){
    //cek hak akses
    $d_dosen = $this->kuesioner_model->get_by_id($id);
    $hak_akses = $this->session->userdata('hak_akses');
    if($hak_akses<5){
      redirect(site_url('kuesioner'));
    }
    //cek apakah kaprodi
    if($hak_akses>4 && $hak_akses<10){
      $kd_prodi = $this->arr_prodi[$hak_akses];
    }
    else{
      $kd_prodi ='';
    }
    //cek apakah pk-1
    if($hak_akses>9){
      $kode_institusi = $this->arr_institusi[$hak_akses];
    }else{
      $kode_institusi = '';
    }
    //1. cek kaprodi sesuai dgn kode prodi dosen
    if($d_dosen->kode_prodi==$kd_prodi || in_array($d_dosen->kode_institusi,$kode_institusi)){
      $data_kategori = $this->kategori_kinerja_model->get_all();
      $data_kompetensi = $this->kuesioner_model->get_detail_by_id($id);
      $data = array(
        'title' => 'Update Data Kuesioner',
        'action' => site_url('kuesioner/aksi_ubah'),
        'thnAkademik' => $this->data_ta->tahunAkademik,
        'kd_semester' => $this->data_ta->kd_semester,
        'data_kategori' => $data_kategori,
        'data_kompetensi' => $data_kompetensi,
        'data_dosen' => $d_dosen,
        'penilai' => strpos($this->session->userdata('hak'),'KAPRODI')!==false?'1':'2',
      );
      $this->load->view('kuesioner/list_kuesioner',$data);
    }else{
      redirect(site_url('kuesioner'));
    }
  }

  public function aksi_ubah(){
    if(!$this->input->post('thnAkademik')){
      redirect(site_url('kuesioner'));
    }

    $thnAkademik = $this->input->post('thnAkademik');
    $kd_dosen = $this->input->post('kd_dosen');
    $penilai = $this->input->post('penilai');
    $data = array(
      'thnAkademik' => $thnAkademik,
      'kd_dosen' => $kd_dosen,
      'penilai' => $penilai,
    );
    $id = $this->kuesioner_model->get_id($data);
    //update tgl_ubah
    $ubah['tgl_ubah'] = date('Y-m-d');
    $this->kuesioner_model->update_tgl_ubah($ubah,$id);

    $kd_kompetensi = $this->input->post('kd_kompetensi');
    $skor = $this->input->post('skor');

    for ($i=0; $i < count($kd_kompetensi); $i++) {
      $data_detail =array(
        'skor' => $skor[$i],
      );
      $this->kuesioner_model->ubahDetail($data_detail,$id,$kd_kompetensi[$i]);
    }
    redirect(site_url('kuesioner'));
  }

  public function detail($id=NULL){
    if(!$id){
      redirect(site_url('kuesioner'));
    }

    $d_dosen = $this->kuesioner_model->get_by_id($id);
    $data_kategori = $this->kategori_kinerja_model->get_all();
    $data_kompetensi = $this->kuesioner_model->get_detail_by_id($id);
    $data = array(
      'title' => 'Detail Data Kuesioner',
      'thnAkademik' => $this->data_ta->tahunAkademik,
      'data_kategori' => $data_kategori,
      'data_kompetensi' => $data_kompetensi,
      'data_dosen' => $d_dosen,
      'penilai' => strpos($this->session->userdata('hak'),'KAPRODI')!==false?'1':'2',
    );
    $this->load->view('kuesioner/detail_kuesioner',$data);
  }

  public function lihat_data(){
    //cek hak akses
    //..code
    if($this->input->post('thnAkademik')){
      $thnAkademik=$this->input->post('thnAkademik');
      $kd_semester=$this->input->post('kd_semester');
    }else{
      $thnAkademik='';
      $kd_semester='';
    }
    $kd_dosen = $this->session->userdata('nik');
    $penilai = set_value('penilai','1');
    $nilai = $this->kuesioner_model->get_nilai($kd_dosen,$thnAkademik,$kd_semester,$penilai);
    $kategori = array();
    $skor = array();
    foreach ($nilai as $value) {
      $kategori[] = $value->nama_kategori;
      $skor[] = (int)$value->total_skor;
    }
    $data = array(
      'title' => 'Nilai Kuesioner',
      'action' => site_url('kuesioner/lihat_data'),
      'penilai' => $penilai,
      'dd_ta' => $this->kuesioner_model->get_dd_ta(),
      'dd_semester' => array('1'=> 'Gasal', '2'=> 'Genap'),
      'dd_ta_selected' => set_value('thnAkademik',''),
      'dd_semester_selected' => set_value('kd_semester',''),
      'data_nilai' => $nilai,
      'json_kategori'=>json_encode($kategori),
      'json_skor'=>json_encode($skor)
    );

    $this->load->view('kuesioner/report_dosen',$data);
  }


}


?>
