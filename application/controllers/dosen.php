<?php
/**
 *
 */
class Dosen extends CI_Controller
{

  function __construct()
  {
    parent::__construct();
    $this->load->model('dosen_model');
    $this->load->library('form_validation');
    //check login
    if($this->session->userdata('logged')!=1){
      redirect(site_url().'auth');
    }
  }

  function index(){
    $rows = $this->dosen_model->get_all();
    $data = array(
      'title' => 'List Data Dosen',
      'data_dosen' => $rows
    );

    $this->load->view('dosen/dosen',$data);
  }

  function tambah($error = NULL){
    $this->load->model('prodi_model');
    $data = array(
      'title' => 'Input Dosen',
      'action' => site_url('dosen/aksitambah'),
      'nik' => set_value('nik',''),
      'nama_dosen' => set_value('nama_dosen',''),
      'kode_jurusan' => set_value('kode_jurusan',''),
      'jenis_kelamin' => set_value('jenis_kelamin',''),
      'email_dosen' => set_value('email_dosen',''),
      'gelar_depan' => set_value('gelar_depan',''),
      'gelar_belakang' => set_value('gelar_belakang',''),
      'data_jurusan' => $this->prodi_model->tampil()->result(),
      'read_only' => '',
      'button' => 'SIMPAN'
    );
    //print_r($data);
    $this->load->view('dosen/dosen_form',$data);
  }

  function form_valid(){
    $this->form_validation->set_error_delimiters('<div class="alert-danger" style="width:80%;padding:10px;">','</div>');
    $this->form_validation->set_rules('nama_dosen','<b>Nama Dosen</b>','required');
    $this->form_validation->set_rules('email_dosen','<b>Email</b>','required|valid_email');
    $this->form_validation->set_rules('gelar_belakang','<b>Gelar Belakang</b>','required');
  }

  function aksitambah(){

    $this->form_validation->set_rules('nik','<b>NIK</b>','required|is_unique[dosen.kd_dosen]');
    $this->form_valid();
    if (empty($_FILES['foto_dosen']['name']))
    {
        $this->form_validation->set_rules('foto_dosen', 'Foto', 'required');
    }

    if($this->form_validation->run() == FALSE){
      //jika data tidak memenuhi syarat kembali ke form tambah
      $this->tambah(NULL);
    }else{
      //upload foto
      $upload = $this->dosen_model->upload_foto();

      if($upload['result']=='success'){
        $data = array(
            'kd_dosen' => $this->input->post('nik',TRUE),
            'nm_dosen' => $this->input->post('nama_dosen',TRUE),
            'gelar_depan' => $this->input->post('gelar_depan',TRUE),
            'gelar_belakang' => $this->input->post('gelar_belakang',TRUE),
            'kode_prodi' => $this->input->post('kode_jurusan',TRUE),
            'email' => $this->input->post('email_dosen',TRUE),
            'jenis_kelamin' => $this->input->post('jenis_kelamin',TRUE),
            'path_foto' => $upload['file']['file_name']
        );

        $this->dosen_model->tambah($data);
        $this->session->set_flashdata('message', 'Data Berhasil Disimpan');
        redirect(site_url('dosen'));

      }else{
        print_r($upload);
      }
    }
  }

  function update($nik, $error = NULL){
    $data_dosen = $this->dosen_model->get_by_kd($nik);
    $this->load->model('prodi_model');

    $data = array(
      'title' => 'Ubah Dosen',
      'action' => site_url('dosen/aksiupdate'),
      'nik' => set_value('nik',$data_dosen->kd_dosen),
      'nama_dosen' => set_value('nama_dosen',$data_dosen->nm_dosen),
      'kode_jurusan' => set_value('kode_jurusan',$data_dosen->kode_prodi),
      'jenis_kelamin' => set_value('jenis_kelamin',$data_dosen->jenis_kelamin),
      'email_dosen' => set_value('email_dosen',$data_dosen->email),
      'gelar_depan' => set_value('gelar_depan',$data_dosen->gelar_depan),
      'gelar_belakang' => set_value('gelar_belakang',$data_dosen->gelar_belakang),
      'data_jurusan' => $this->prodi_model->tampil()->result(),
      'read_only' => 'readonly',
      'button' => 'UPDATE'
    );

    $this->load->view('dosen/dosen_form',$data);

  }
  function aksiupdate(){

    $this->form_valid();

    if($this->form_validation->run() == FALSE){
      //jika data tidak memenuhi syarat kembali ke form tambah
      $this->update($this->input->post('nik',TRUE),NULL);
    }else{
      if (empty($_FILES['foto_dosen']['name'])){
        $data = array(
            'nm_dosen' => $this->input->post('nama_dosen',TRUE),
            'gelar_depan' => $this->input->post('gelar_depan',TRUE),
            'gelar_belakang' => $this->input->post('gelar_belakang',TRUE),
            'kode_prodi' => $this->input->post('kode_jurusan',TRUE),
            'email' => $this->input->post('email_dosen',TRUE),
            'jenis_kelamin' => $this->input->post('jenis_kelamin',TRUE),
        );
      }else{
        //upload foto
        $upload = $this->dosen_model->upload_foto();

        if($upload['result']=='success'){
          $data = array(
              'nm_dosen' => $this->input->post('nama_dosen',TRUE),
              'gelar_depan' => $this->input->post('gelar_depan',TRUE),
              'gelar_belakang' => $this->input->post('gelar_belakang',TRUE),
              'kode_prodi' => $this->input->post('kode_jurusan',TRUE),
              'email' => $this->input->post('email_dosen',TRUE),
              'jenis_kelamin' => $this->input->post('jenis_kelamin',TRUE),
              'path_foto' => $upload['file']['file_name']
          );
          //delete foto lama
          unlink('./gambar/'.$this->dosen_model->get_foto($this->input->post('nik')));
        }else{
          print_r($upload);
        }
      }
      $this->dosen_model->update($data,$this->input->post('nik',TRUE));
      $this->session->set_flashdata('message', 'Data Berhasil Diubah');
      redirect(site_url('dosen'));
    }
  }

  public function get_data_dosen(){
    $id = $this->input->post('kd_dosen');
    $data_dosen = $this->dosen_model->get_by_kd($id);
    $data = array(
      'data_modal' => $data_dosen
    );
    $this->load->view('dosen/modal_dosen',$data);
  }

  function grafik(){
    $this->load->model('grafik_model');
    $data_jumlah = $this->grafik_model->get_data_jum_jurusan();
    $data = array(
      'data_jumlah' => $data_jumlah
    );
    $this->load->view('grafik_jumlah',$data);
  }
}

?>
