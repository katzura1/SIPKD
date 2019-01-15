<?php
/**
 *
 */
class Mdp extends CI_Controller
{

  function __construct()
  {
    parent::__construct();
  }

  function index(){
    $urlGambar = '#';
    $pesan_upload="";
    if ($this->input->post('btnupload')!==null) {
      $upload = $this->upload_foto();
      $pesan_upload = $upload['result'];
      if ($pesan_upload=='success') {
        $urlGambar = base_url('gambar/'.$upload['file']['file_name']);
      }
    }

    $data = array(
      'urlGambar' => $urlGambar,
      'pesan_upload' => $pesan_upload
    );
    $this->load->view('mdp_view',$data);
  }

  //upload foto
  public function upload_foto(){
    $config = array(
      "file_name" => $_FILES['gambar']['name'],
      "upload_path" => './gambar/',
      "allowed_types" => "jpg|png|jpeg|gif",
      "max_size" => "2048",
      "remove_space" => TRUE
    );
    $this->load->library('upload',$config);
    if($this->upload->do_upload('gambar')){
      // Jika berhasil :
      $return = array('result' => 'success', 'file' => $this->upload->data(), 'error' => '');
      return $return;
    }else{
      // Jika gagal :
     $return = array('result' => 'failed', 'file' => '', 'error' => $this->upload->display_errors());
     return $return;
    }
  }
}

?>
