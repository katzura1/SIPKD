<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class user extends CI_Controller{

  function __construct()
  {
    parent::__construct();
    $this->load->library('Datatables');
    $this->load->library('form_validation');
    $this->load->model('user_model');
    $this->load->model('dosen_model');
    //cek login
    if($this->session->userdata('logged')!=1){
      redirect(site_url().'auth');
    }
  }

  function index(){
    $rows = $this->user_model->tampil();
    $data = array(
      'title' => 'List Pengguna',
      'data_user' => $rows
    );
    $this->load->view('user/user_list',$data);
  }

  function get_user_json(){
    header('Content-Type: application/json');
    echo $this->user_model->get_all_user();
  }

  function tambah(){

    $data = array(
      'title' => 'Tambah Pengguna',
      'action' => site_url('user/aksitambah'),
      'kd_dosen' => set_value('kd_dosen',''),
      'hak' => set_value('hak',''),
      'pass_dosen' => set_value('pass_dosen',''),
      'data_dosen' => $this->dosen_model->get_dosen_not_user(),
      'read_only' => '',
      'button' => 'SIMPAN',
    );

    $this->load->view('user/user_form',$data);
  }

  public function _rules()
  {
  	$this->form_validation->set_rules('nm_dosen', 'Nama Dosen', 'trim|required');
  	$this->form_validation->set_rules('hak', 'Hak Akses', 'trim|required');
  	$this->form_validation->set_error_delimiters('<span class="text-danger">', '</span>');
  }

  function aksitambah(){
    $this->form_validation->set_rules('kd_dosen', 'Kode Dosen', 'trim|required|is_unique[user.kd_dosen]');
    $this->form_validation->set_rules('pass_dosen', 'Password', 'trim|required');
    $this->_rules();

    if($this->form_validation->run() == FALSE){
      $this->tambah();
    }else{

      $data = array(
        'kd_dosen' => $this->input->post('kd_dosen',TRUE),
        'hak_akses' => $this->input->post('hak',TRUE),
        'password' => password_hash($this->input->post('pass_dosen',TRUE), PASSWORD_DEFAULT),
      );

      $this->user_model->tambah($data);
      $this->session->set_flashdata('message','Data berhasil Disimpan!');
      redirect(site_url('user'));
    }
  }

  function update($kd_dosen){
    $data_dosen = $this->user_model->get_by_kd($kd_dosen);
    $arr_dosen = array();
    array_push($arr_dosen,$data_dosen);
    $data = array(
      'title' => 'Update User',
      'action' => site_url('user/aksiubah'),
      'kd_dosen' => set_value('kd_dosen',$data_dosen->kd_dosen),
      'hak' => set_value('hak',$data_dosen->hak_akses),
      'data_dosen' => $arr_dosen,
      'read_only' => 'readonly',
      'button' => 'UPDATE',
    );
    $this->load->view('user/user_form_update',$data);
  }

  function aksiubah(){
    $this->_rules();

    if($this->form_validation->run() == FALSE){
      $this->update($this->input->post('kd_dosen',TRUE));
    }else{
      $data = array(
        'hak_akses' => $this->input->post('hak',TRUE),
      );
      $this->user_model->update($data,$this->input->post('kd_dosen',TRUE));
      $this->session->set_flashdata('message','Data berhasil Diupdate!');
      redirect(site_url('user'));
    }
  }

  // function delete($kd_dosen){
  //   $this->user_model->delete($kd_dosen);
  //   $this->session->set_flashdata('message','Data berhasil dihapus!');
  //   redirect(site_url('user'));
  // }

  function profile(){
    $data = array(
      'title' => 'User Profile',
      'action' => site_url('user/ubah_pass'),
    );
    $this->load->view('user/user_profile',$data);
  }

  function ubah_pass(){
    $this->__rules_pass();
    if($this->form_validation->run() == FALSE){
      $this->profile();
    }else{
      $kd_dosen = $this->session->userdata('nik');
      $password = password_hash($this->input->post('new_pass'), PASSWORD_DEFAULT);
      $data = array(
        'password'=>$password
      );
      $this->user_model->update($data,$kd_dosen);
      $this->session->set_flashdata('message', "<div class='alert alert-success alert-dismissible' role='alert'>Password Berhasil Diupdate!<button type='button' class='close' data-dismiss='alert' aria-label='close'><span aria-hidden='true'>&times;</span></button></div>");
      redirect(site_url('user/profile'));
    }
  }

  function __rules_pass(){
    $this->form_validation->set_error_delimiters('<span class="text-danger">', '</span>');
    $this->form_validation->set_rules('old_pass','Old Password','trim|required|callback_cek_old_pw');
    $this->form_validation->set_rules('new_pass','New Password','trim|required|callback_cek_new_pw');
    $this->form_validation->set_rules('c_new_pass','Verification Password','trim|required|callback_cek_new_pw');
  }

  function cek_old_pw(){
    $kd_dosen = $this->session->userdata('nik');
    $password = $this->input->post('old_pass');
    $data_dosen = $this->user_model->get_by_kd($kd_dosen);
    if(!password_verify($password,$data_dosen->password)){
      $this->form_validation->set_message('cek_old_pw','{field} not match on database record!');
      return FALSE;
    }else{
      return TRUE;
    }
  }

  function cek_new_pw(){
    $new_pass = $this->input->post('new_pass');
    $c_new_pass = $this->input->post('c_new_pass');
    if($new_pass!=$c_new_pass){
      $this->form_validation->set_message('cek_new_pw','{field} not equal!');
      return FALSE;
    }else{
      return TRUE;
    }
  }
}
?>
