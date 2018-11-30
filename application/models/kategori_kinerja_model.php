<?php
/**
 *
 */
class Kategori_kinerja_model extends CI_Model
{
  private $nama_tb = 'kategori_kinerja';
  private $nama_pk = 'kd_kategori';

  function tambahData($data){
    $this->db->insert($this->nama_tb, $data);
  }

  function get_all(){
    return $this->db->get($this->nama_tb)->result();
  }

  function dd_kategori_kinerja(){
    //ambil data dari database
    $this->db->order_by('nama_kategori','asc');
    $result = $this->db->get($this->nama_tb);

    //array untuk menampung data
    $dd[''] = 'Pilih';
    if ($result->num_rows() > 0) {
      foreach ($result->result() as $row) {
        $dd[$row->kd_kategori] = $row->nama_kategori;
      }
    }
    return $dd;
  }

  function get_row_by_nama($nama_kategori){
    $this->db->from($this->nama_tb);
    $this->db->where('nama_kategori',$nama_kategori);
    return $this->db->get()->num_rows();
  }

  function get_data($kd_kategori){
    $this->db->where($this->nama_pk,$kd_kategori);
    $this->db->from($this->nama_tb);
    return $this->db->get()->row();
  }

  function ubahData($data,$kd_kategori){
    $this->db->where($this->nama_pk,$kd_kategori);
    $this->db->update($this->nama_tb,$data);
  }
}


?>
