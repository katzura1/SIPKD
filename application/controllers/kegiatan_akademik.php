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
    $this->load->model('dosen_model');
    $this->data_ta = $this->tahun_akademik_model->get_status_aktif();
    //cek login
    if($this->session->userdata('logged')!=1){
      redirect(site_url().'auth');
    }

    if($this->session->userdata('hak_akses')!=2){
      redirect('dashboard');
    }
  }

  function upload_soal(){
    $kode_prodi = set_value('kode_prodi',$this->session->userdata('kode_prodi'));
    $thnAkademik = $this->data_ta->tahunAkademik;
    $kd_semester = $this->data_ta->kd_semester;
    $data = array(
      'title' => 'Ketepatan Upload Soal',
      'kode_prodi' => $kode_prodi,
      'dd_prodi' => $this->prodi_model->get_dd_all_prodi(),
      'action' => site_url('kegiatan_akademik/upload_soal'),
      'url_action' => site_url('kegiatan_akademik/detail/soal/'),
      'thnAkademik' => $thnAkademik,
      'kd_semester' => $kd_semester,
      'data_dosen' => $this->kegiatan_akademik_model->get_all_dosen($kode_prodi)
    );
    $this->load->view('kegiatan_akademik/list_dosen',$data);
  }

  function upload_materi(){
    $kode_prodi = set_value('kode_prodi',$this->session->userdata('kode_prodi'));
    $thnAkademik = $this->data_ta->tahunAkademik;
    $kd_semester = $this->data_ta->kd_semester;
    $data = array(
      'title' => 'Ketepatan Upload Materi',
      'kode_prodi' => $kode_prodi,
      'dd_prodi' => $this->prodi_model->get_dd_all_prodi(),
      'action' => site_url('kegiatan_akademik/upload_materi'),
      'url_action' => site_url('kegiatan_akademik/detail/materi/'),
      'thnAkademik' => $thnAkademik,
      'kd_semester' => $kd_semester,
      'data_dosen' => $this->kegiatan_akademik_model->get_all_dosen($kode_prodi)
    );
    $this->load->view('kegiatan_akademik/list_dosen',$data);
  }

  function upload_nilai(){
    $kode_prodi = set_value('kode_prodi',$this->session->userdata('kode_prodi'));
    $thnAkademik = $this->data_ta->tahunAkademik;
    $kd_semester = $this->data_ta->kd_semester;
    $data = array(
      'title' => 'Ketepatan Upload Nilai',
      'kode_prodi' => $kode_prodi,
      'dd_prodi' => $this->prodi_model->get_dd_all_prodi(),
      'action' => site_url('kegiatan_akademik/upload_nilai'),
      'url_action' => site_url('kegiatan_akademik/detail/nilai/'),
      'thnAkademik' => $thnAkademik,
      'kd_semester' => $kd_semester,
      'data_dosen' => $this->kegiatan_akademik_model->get_all_dosen($kode_prodi)
    );
    $this->load->view('kegiatan_akademik/list_dosen',$data);
  }

  function detail($key, $kode_dosen){
    $thnAkademik = $this->data_ta->tahunAkademik;
    $kd_semester = $this->data_ta->kd_semester;
    // $method1 = 'get_'.$key.'_not_done';
    // $method2 = 'get_'.$key.'_done';
    $data = array(
      'title' => 'Nilai Ketepatan Upload '.ucfirst($key),
      'action' => site_url('kegiatan_akademik/upload_'.$key),
      'thnAkademik' => $thnAkademik,
      'kd_semester' => $kd_semester,
      'url_aksi' => site_url('kegiatan_akademik/aksi_nilai/'.$key.'/'.$kode_dosen),
      'data_not_done' => $this->kegiatan_akademik_model->get_not_done($kode_dosen, $thnAkademik, $kd_semester, $key),
      'data_done' => $this->kegiatan_akademik_model->get_done($kode_dosen, $thnAkademik, $kd_semester, $key),
      'dd_skor' => $key=='materi'?array(''=>'Pilih','0'=>'Kurang', '2'=>'Cukup','5'=>'Lengkap'):array(''=>'Pilih','0'=>'Telat', '1'=>'Tepat Waktu'),
      'data_dosen' => $this->dosen_model->get_by_kd($kode_dosen),
      'key'=>$key
    );

    $this->load->view('kegiatan_akademik/detail',$data);
  }

  function aksi_isi_nilai($key = NULL){
    $thnAkademik = $this->input->post('thnAkademik');
    $kd_semester = $this->input->post('kd_semester');
    $kd_dosen = $this->input->post('kd_dosen');
    $kode_mk = $this->input->post('kode_mk');
    $kelas = $this->input->post('kelas');
    $skor = $this->input->post('value');
    //set ke array
    $data = array(
      'thnAkademik' => $thnAkademik,
      'kd_semester' => $kd_semester,
      'kd_dosen' => $kd_dosen
    );
    $jum = $this->kegiatan_akademik_model->get_nums_row($data);
    if($jum==0){
      //insert new record
      $this->kegiatan_akademik_model->simpanIsiNilai($data);
    }
    $id = $this->kegiatan_akademik_model->get_id($data); // get id
    //cek apakah udah ada detail
    $data_detail = array('kd_dosen' => $kd_dosen, 'kode_mk' => $kode_mk,'kelas' => $kelas,'thnAkademik' => $thnAkademik,'kd_semester' => $kd_semester,);
    $jum_data = $this->kegiatan_akademik_model->get_nums_row_detail($data_detail);
    if($jum_data==0){
      //insert record detail
      $data_detail = array('id' => $id,'kode_mk' => $kode_mk,'kelas' => $kelas,'upload_'.$key => $skor);
      $this->kegiatan_akademik_model->simpanDetail($data_detail);
      echo "INSERT";
    }else{
      //update record detail
      $data_where = array('id' => $id,'kode_mk' => $kode_mk,'kelas' => $kelas,);
      $data_detail = array('upload_'.$key => $skor);
      $this->kegiatan_akademik_model->updateDetail($data_detail,$data_where);
      echo "UPDATE";
    }
    //update mean
    $data_detail = array('kd_dosen' => $kd_dosen,'thnAkademik' => $thnAkademik,'kd_semester' => $kd_semester);
    $mean = $this->kegiatan_akademik_model->get_mean($data_detail,$key);
    echo $mean;
    $data = array('mean_u'.$key => $mean);
    $this->kegiatan_akademik_model->ubahIsiNilai($data,$data_detail);
  }

  // function aksi_isi($key = NULL){
  //   if($this->input->post('btnSimpan')!==null) {
  //     $kd_prodi = $this->input->post('kd_prodi'); //agar saat redirect tampil sesuai kode prodi terakhir
  //     //data untuk isi dan update
  //     $thnAkademik = $this->input->post('thnAkademik');
  //     $kd_semester = $this->input->post('kd_semester');
  //     $kd_dosen = $this->input->post('kd_dosen');
  //     $skor = $this->input->post('skor');
  //     //set ke array
  //     $data = array(
  //       'thnAkademik' => $thnAkademik,
  //       'kd_semester' => $kd_semester,
  //       'kd_dosen' => $kd_dosen,
  //       'upload_'.$key => $skor,
  //     );
  //     //cek apakah sudah ada data dengan kode dosen berikut
  //     $count =  $this->kegiatan_akademik_model->get_num_row($thnAkademik,$kd_semester,$kd_dosen);
  //     if($count>0){
  //       //update existing data
  //       $this->kegiatan_akademik_model->ubahIsiNilai($data,$thnAkademik,$kd_semester,$kd_dosen);
  //       $this->session->set_flashdata('message', "<div class='alert alert-success alert-dismissible' role='alert'>DATA BERHASIL DI".$this->input->post('btnSimpan')."!<button type='button' class='close' data-dismiss='alert' aria-label='close'><span aria-hidden='true'>&times;</span></button></div>");
  //     }else{
  //       //insert new record
  //       $this->session->set_flashdata('message', "<div class='alert alert-success alert-dismissible' role='alert'>DATA BERHASIL DI".$this->input->post('btnSimpan')."!<button type='button' class='close' data-dismiss='alert' aria-label='close'><span aria-hidden='true'>&times;</span></button></div>");
  //       $this->kegiatan_akademik_model->simpanIsiNilai($data);
  //     }
  //     $this->session->set_flashdata('kode_prodi',$kd_prodi);
  //   }
  //   redirect(site_url('kegiatan_akademik/upload_'.$key));
  // }
}

?>
