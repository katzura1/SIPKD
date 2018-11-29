<?php
  class institusi_model extends CI_Model{
    private $nama_tabel = "institusi";
    private $nama_pk = "kode_institusi";

    public function getAll(){
      $this->db->select('*');
      $this->db->from($this->nama_tabel);
      return $this->db->get()->result();
    }
  }
?>
