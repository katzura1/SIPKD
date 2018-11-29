<?php
class kompetensi_model extends CI_Model
{
  private $nama_tb = 'kompetensi';
  private $nama_pk = 'kd_kompetensi';

  public function tambahData($data){
    $this->db->insert($this->nama_tb,$data);
  }

  public function ubahData($data,$id){
    $this->db->where($this->nama_pk,$id);
    $this->db->update($this->nama_tb,$data);
  }

  public function get_all(){
    $this->db->select("*, 0 as 'skor'");
    $this->db->from($this->nama_tb);
    $this->db->join('kategori_kinerja','kategori_kinerja.kd_kategori=kompetensi.kd_kategori');
    return $this->db->get()->result();
  }

  public function get_data($id){
    $this->db->from($this->nama_tb);
    $this->db->join('kategori_kinerja','kategori_kinerja.kd_kategori=kompetensi.kd_kategori');
    $this->db->where($this->nama_pk,$id);
    return $this->db->get()->row();
  }
}
?>
