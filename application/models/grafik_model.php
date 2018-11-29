<?php
/**
 *
 */
class Grafik_model extends CI_Model
{

  function __construct()
  {
    parent::__construct();
    // code...
  }

  function get_data_jum_jurusan(){
    $this->db->select('nama_prodi, COUNT(dosen.kode_prodi) as jumlah');
    $this->db->group_by('dosen.kode_prodi');
    $this->db->join('program_studi','program_studi.kode_prodi=dosen.kode_prodi');

    $query = $this->db->get('dosen');
    if($query->num_rows() > 0){
      foreach ($query->result() as $data) {
        $hasil[] = $data;
      }
      return $hasil;
    }
  }
}

?>
