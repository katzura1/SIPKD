<?php
/**
 *
 */
class Dosen_model extends CI_Model
{

  private $nama_tb = 'dosen';
  private $pk = 'dosen.kd_dosen';

  public function get_all(){
    $this->db->from($this->nama_tb);
    $this->db->join('program_studi','program_studi.kode_prodi=dosen.kode_prodi');
    return $this->db->get()->result();
  }

  //untuk tampil nama yang belum ada user pada form user
  public function get_dosen_not_user(){
    $this->db->from($this->nama_tb);
    $this->db->where(" NOT EXISTS (SELECT * FROM user WHERE user.kd_dosen=$this->pk)");
    return $this->db->get()->result();
  }

  public function get_by_kd($nik){
    $this->db->from($this->nama_tb);
    $this->db->where($this->pk,$nik);
    $this->db->join('program_studi','program_studi.kode_prodi=dosen.kode_prodi');
    //return $this->db->get_compiled_select();
    return $this->db->get()->row();
  }

  public function get_foto($kd_dosen){
    $this->db->select('path_foto');
    $this->db->from($this->nama_tb);
    $this->db->where($this->pk,$kd_dosen);
    return $this->db->get()->row()->path_foto;
  }

  //upload foto_dosen
  public function upload_foto(){
    $config = array(
      "file_name" => date('dmYHis').$_FILES['foto_dosen']['name'],
      "upload_path" => './gambar/',
      "allowed_types" => "jpg|png|jpeg",
      "max_size" => "2048",
      "remove_space" => TRUE
    );
    $this->load->library('upload',$config);
    if($this->upload->do_upload('foto_dosen')){
      // Jika berhasil :
      $return = array('result' => 'success', 'file' => $this->upload->data(), 'error' => '');
      return $return;
    }else{
      // Jika gagal :
     $return = array('result' => 'failed', 'file' => '', 'error' => $this->upload->display_errors());
     return $return;
    }
  }

  public function tambah($data){
    $this->db->insert($this->nama_tb,$data);
  }

  public function delete($nik){
    $this->db->where($this->pk,$nik);
    $this->db->delete($this->nama_tb);
  }

  public function update($data, $nik){
    $this->db->where($this->pk,$nik);
    $this->db->update($this->nama_tb,$data);
  }
}

?>
