<?php
/**
 *
 */
class Kegiatan_akademik extends CI_Controller
{

  private $data_ta;
  function __construct()
  {
    parent::__construct();
    $this->load->model('kegiatan_akademik_model');
    $this->load->model('tahun_akademik_model');
    $this->load->model('prodi_model');
    $this->data_ta = $this->tahun_akademik_model->get_status_aktif();
    //cek login
    if($this->session->userdata('logged')!=1){
      redirect(site_url().'auth');
    }

    if($this->session->userdata('hak_akses')!=2){
      redirect('dashboard');
    }
  }

  function upload_materi(){
    $kode_prodi = set_value('kode_prodi',$this->session->userdata('kode_prodi'));
    $thnAkademik = $this->data_ta->tahunAkademik;
    $kd_semester = $this->data_ta->kd_semester;
    $data = array(
      'title' => 'Nilai Ketepatan Upload Nilai',
      'kode_prodi' => $kode_prodi,
      'dd_prodi' => $this->prodi_model->get_dd_all_prodi(),
      'action' => site_url('kegiatan_akademik/upload_materi'),
      'thnAkademik' => $thnAkademik,
      'kd_semester' => $kd_semester,
      'dd_skor' => array(''=>'Pilih','0'=>'Kurang', '2'=>'Cukup', '5'=>'Lengkap'),
      'data_not_done' => $this->kegiatan_akademik_model->get_upload_materi_not_done($kode_prodi,$thnAkademik,$kd_semester),
      'data_done' => $this->kegiatan_akademik_model->get_upload_materi_done($kode_prodi,$thnAkademik,$kd_semester),
    );
    $this->load->view('kegiatan_akademik/list_isi_materi',$data);
  }

  function upload_soal(){
    $kode_prodi = set_value('kode_prodi',$this->session->userdata('kode_prodi'));
    $thnAkademik = $this->data_ta->tahunAkademik;
    $kd_semester = $this->data_ta->kd_semester;
    $data = array(
      'title' => 'Nilai Ketepatan Upload Nilai',
      'kode_prodi' => $kode_prodi,
      'dd_prodi' => $this->prodi_model->get_dd_all_prodi(),
      'action' => site_url('kegiatan_akademik/upload_soal'),
      'thnAkademik' => $thnAkademik,
      'kd_semester' => $kd_semester,
      'dd_skor' => array(''=>'Pilih','0'=>'Telat', '1'=>'Tepat Waktu'),
      'data_not_done' => $this->kegiatan_akademik_model->get_upload_soal_not_done($kode_prodi,$thnAkademik,$kd_semester),
      'data_done' => $this->kegiatan_akademik_model->get_upload_soal_done($kode_prodi,$thnAkademik,$kd_semester),
    );
    $this->load->view('kegiatan_akademik/list_isi_soal',$data);
  }

  function upload_nilai(){
    $kode_prodi = set_value('kode_prodi',$this->session->userdata('kode_prodi'));
    $thnAkademik = $this->data_ta->tahunAkademik;
    $kd_semester = $this->data_ta->kd_semester;
    $data = array(
      'title' => 'Nilai Ketepatan Upload Nilai',
      'kode_prodi' => $kode_prodi,
      'dd_prodi' => $this->prodi_model->get_dd_all_prodi(),
      'action' => site_url('kegiatan_akademik/upload_nilai'),
      'thnAkademik' => $thnAkademik,
      'kd_semester' => $kd_semester,
      'dd_skor' => array(''=>'Pilih','0'=>'Telat', '1'=>'Tepat Waktu'),
      'data_not_done' => $this->kegiatan_akademik_model->get_upload_nilai_not_done($kode_prodi,$thnAkademik,$kd_semester),
      'data_done' => $this->kegiatan_akademik_model->get_upload_nilai_done($kode_prodi,$thnAkademik,$kd_semester),
    );
    $this->load->view('kegiatan_akademik/list_isi_nilai',$data);
  }

  function aksi_isi($key = NULL){
    if($this->input->post('btnSimpan')!==null) {
      $kd_prodi = $this->input->post('kd_prodi'); //agar saat redirect tampil sesuai kode prodi terakhir
      //data untuk isi dan update
      $thnAkademik = $this->input->post('thnAkademik');
      $kd_semester = $this->input->post('kd_semester');
      $kd_dosen = $this->input->post('kd_dosen');
      $skor = $this->input->post('skor');
      //set ke array
      $data = array(
        'thnAkademik' => $thnAkademik,
        'kd_semester' => $kd_semester,
        'kd_dosen' => $kd_dosen,
        'upload_'.$key => $skor,
      );
      //cek apakah sudah ada data dengan kode dosen berikut
      $count =  $this->kegiatan_akademik_model->get_num_row($thnAkademik,$kd_semester,$kd_dosen);
      if($count>0){
        //update existing data
        $this->kegiatan_akademik_model->ubahIsiNilai($data,$thnAkademik,$kd_semester,$kd_dosen);
        $this->session->set_flashdata('message', "<div class='alert alert-success alert-dismissible' role='alert'>DATA BERHASIL DI".$this->input->post('btnSimpan')."!<button type='button' class='close' data-dismiss='alert' aria-label='close'><span aria-hidden='true'>&times;</span></button></div>");
      }else{
        //insert new record
        $this->session->set_flashdata('message', "<div class='alert alert-success alert-dismissible' role='alert'>DATA BERHASIL DI".$this->input->post('btnSimpan')."!<button type='button' class='close' data-dismiss='alert' aria-label='close'><span aria-hidden='true'>&times;</span></button></div>");
        $this->kegiatan_akademik_model->simpanIsiNilai($data);
      }
      $this->session->set_flashdata('kode_prodi',$kd_prodi);
    }
    redirect(site_url('kegiatan_akademik/upload_'.$key));
  }
}

?>
