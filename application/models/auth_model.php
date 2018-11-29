<?php
/**
 *
 */
class Auth_model extends CI_Model
{

  private $nama_tb = 'user';
  private $nama_pk = 'user.kd_dosen';

  public function login($nik,$pass){
    $this->db->where('kd_dosen',$nik);
    $this->db->from($this->nama_tb);
    return $this->db->get()->num_rows();
  }

  public function data_login($kd_dosen){
    $this->db->where($this->nama_pk,$kd_dosen);
    $this->db->from($this->nama_tb);
    $this->db->join('dosen','dosen.kd_dosen=user.kd_dosen');
    return $this->db->get()->row();
  }
}

?>
