<?php
/**
 *
 */
class Open_km_model extends CI_Model
{
  function list_institusi_not_done($kode_institusi, $thnAkademik){
    $this->db->from('dosen');
    $this->db->join('program_studi','program_studi.kode_prodi=dosen.kode_prodi');
    $this->db->where(" NOT EXISTS (SELECT kd_dosen FROM open_km WHERE thnAkademik='$thnAkademik' AND open_km.kd_dosen=dosen.kd_dosen)");
    $this->db->where_in('kode_institusi',$kode_institusi);
    // echo $this->db->get_compiled_select();
    // die();
    return $this->db->get()->result();
  }

  function list_institusi_done($kode_institusi, $thnAkademik){
    $this->db->from('open_km');
    $this->db->join('dosen','dosen.kd_dosen=open_km.kd_dosen');
    $this->db->join('program_studi','program_studi.kode_prodi=dosen.kode_prodi');
    $this->db->where('thnAkademik',$thnAkademik);
    $this->db->where_in('kode_institusi',$kode_institusi);
    return $this->db->get()->result();
  }

  function get_by_id($id){
    $this->db->from('open_km');
    $this->db->join('dosen','dosen.kd_dosen=open_km.kd_dosen');
    $this->db->where('id',$id);
    $result = $this->db->get();
    if($result->num_rows()==1){
      return $result->row();
    }else{
      return array();
    }
  }

  function simpanOpenKM($data){
    $this->db->insert('open_km',$data);
  }

  function ubahOpenKM($data,$id){
    $this->db->where('id',$id);
    $this->db->update('open_km',$data);
  }
}

?>
