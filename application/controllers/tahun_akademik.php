<?php

class tahun_akademik extends CI_Controller{

  function __construct()
  {
      parent::__construct();
      $this->load->model('tahun_akademik_model');
      $this->load->library('form_validation');
      //cek login
      if($this->session->userdata('logged')!=1){
        redirect(site_url().'auth');
      }
      if($this->session->userdata('hak_akses')<12){
        redirect(site_url('dashboard'));
      }
  }

  public function index(){
    $data_ta = $this->tahun_akademik_model->get_all();

    $data = array(
        'title' => 'Tahun Akademik',
        'data_ta' => $data_ta
    );

    $this->load->view('tahun_akademik/ta_list',$data);

  }

  public function tambah(){
    $data = array(
      'title' => 'Tambah Tahun Akademik',
      'action' => site_url('tahun_akademik/aksitambah'),
      'button' => 'SIMPAN',
      'tahun_akademik' => set_value('thnAkademik',''),
      'kd_semester' => set_value('kd_semester',''),
      'key_ta' => '',
      'key_semester' => '',
      'status' => set_value('status',''),
      'dd_semester' => array('1'=>'Gasal', '2'=>'Genap'),
      'dd_status' => array('aktif'=>'Aktif','tidak aktif'=>'Tidak Aktif'),
    );

    $this->load->view('tahun_akademik/ta_form',$data);
  }

  //membuat validasi custom untuk mengecek apakah tahun dan semester unik
  public function cek_ta(){
    $tahun_akademik = $this->input->post('thnAkademik');
    $kode_semester = $this->input->post('kd_semester');
    //key data lama (sebelum ubah)
    $key_ta = $this->input->post('key_ta');
    $key_semester = $this->input->post('key_semester');
    //kalau data tidak berubah tidak usah cek unik
    if($tahun_akademik==$key_ta && $kode_semester==$key_semester){
      return TRUE;
    }else if($this->tahun_akademik_model->get_row_by_kode($tahun_akademik,$kode_semester)>0){
      $this->form_validation->set_message('cek_ta', '{field} dan Semester telah ada');
      return FALSE;
    }else{
      return TRUE;
    }
  }

  public function _rules()
  {
    $this->form_validation->set_rules('thnAkademik', 'Tahun Akademik', 'required|trim|callback_cek_ta');
    $this->form_validation->set_error_delimiters('<div class="alert alert-danger">', '</div>');
  }

  public function aksitambah(){
    $this->_rules();

    if($this->form_validation->run() == FALSE){
      $this->tambah();
    }else{
      $data = array(
        'tahunAkademik' => $this->input->post('thnAkademik',TRUE),
        'kd_semester' => $this->input->post('kd_semester',TRUE),
        'status' => $this->input->post('status',TRUE)
      );

      $hasil = $this->tahun_akademik_model->simpanTA($data);
      if($hasil){
        $this->session->set_flashdata('message', 'Data Berhasil Disimpan');
        redirect(site_url('tahun_akademik'));
      }else{
        //gagal simpan
      }
    }
  }

  public function aktif($t1,$t2,$s){
    $this->tahun_akademik_model->update_all_tidak_aktif();
    $this->tahun_akademik_model->update_aktif($t1.'/'.$t2,$s);
    $this->session->set_flashdata('message', 'Data Berhasil Diubah');
    //update session
    $data_sess_ta = array(
      'thn_akademik' => $t1.'/'.$t2,
      'kd_semester' => $s,
    );
    $this->session->set_userdata($data_sess_ta);
    redirect(site_url('tahun_akademik'));
  }

  public function update($t1,$t2,$s){
    $thnAkademik = $t1.'/'.$t2;
    $kd_semester = $s;
    if($this->tahun_akademik_model->get_row_by_kode($thnAkademik,$kd_semester)>0){
      $data_ta = $this->tahun_akademik_model->get_by_kode($thnAkademik,$kd_semester);
      $data = array(
        'title' => 'Update Tahun Akademik',
        'action' => site_url('tahun_akademik/aksiubah'),
        'button' => 'UPDATE',
        'tahun_akademik' => set_value('thnAkademik',$data_ta->tahunAkademik),
        'kd_semester' => set_value('kd_semester',$data_ta->kd_semester),
        'key_ta' => set_value('key_ta',$data_ta->tahunAkademik),
        'key_semester' => set_value('key_semester',$data_ta->kd_semester),
        'status' => set_value('status',$data_ta->status),
        'dd_semester' => array('1'=>'Gasal', '2'=>'Genap'),
        'dd_status' => array('aktif'=>'Aktif','tidak aktif'=>'Tidak Aktif'),
      );
      $this->load->view('tahun_akademik/ta_form',$data);
    }else{
      redirect(site_url('tahun_akademik'));
    }
  }

  public function aksiubah(){
    $this->_rules();
    //2014/2015
    //012345678
    if ($this->form_validation->run() == FALSE) {
      $thnAkademik = $this->input->post('key_ta');
      $kd_semester = $this->input->post('key_semester');
      $this->update(substr($thnAkademik,0,4),substr($thnAkademik,5,4),$kd_semester);
    }else{
      $data = array(
        'tahunAkademik' => $this->input->post('thnAkademik'),
        'kd_semester' => $this->input->post('kd_semester'),
        'status' => $this->input->post('status')
      );
      $ta = $this->input->post('key_ta');
      $s = $this->input->post('key_semester');
      $this->tahun_akademik_model->updateTA($data,$ta,$s);
      $this->session->set_flashdata('message', 'Data Berhasil Diubah');
      redirect(site_url('tahun_akademik'));
    }
  }
}

 ?>
