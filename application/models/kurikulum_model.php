<?php
/**
 *
 */
class Kurikulum_model extends CI_Model
{

  function get_all(){
    $this->db->select('kode_mk, keterangan, sks, praktek');
    $this->db->from('kurikulummdp');
    return $this->db->get()->result();
  }
}

?>
