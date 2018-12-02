<?php
/**
 *
 */
class Open_km_model extends CI_Model
{
  function get_all_by_institusi_json($kode_institusi, $thnAkademik, $kd_semester){
    $this->datatables->select('d.kd_dosen, d.nm_dosen, pd.nama_prodi');
    $this->datatables->select(" IFNULL((SELECT skor FROM open_km as okm WHERE thnAkademik='$thnAkademik' AND kd_semester='$kd_semester' AND okm.kd_dosen=d.kd_dosen),'') as skor");
    $this->datatables->select(" IFNULL((SELECT id FROM open_km as okm WHERE thnAkademik='$thnAkademik' AND kd_semester='$kd_semester' AND okm.kd_dosen=d.kd_dosen),'0') as id");
    $this->datatables->from('dosen as d');
    $this->datatables->join('program_studi as pd','pd.kode_prodi=d.kode_prodi');
    $this->datatables->where_in('kode_institusi',$kode_institusi);
    $this->datatables->add_column('action_input','<button class="btn btn-success">SIMPAN</button>');
    $this->datatables->add_column('action_update','<button class="btn btn-danger" value="$1">UPDATE</button>','id');
    return $this->datatables->generate();
  }
  function list_institusi_not_done($kode_institusi, $thnAkademik, $kd_semester){
    $this->db->from('dosen');
    $this->db->join('program_studi','program_studi.kode_prodi=dosen.kode_prodi');
    $this->db->where(" NOT EXISTS (SELECT kd_dosen FROM open_km WHERE thnAkademik='$thnAkademik' AND kd_semester='$kd_semester' AND open_km.kd_dosen=dosen.kd_dosen)");
    $this->db->where_in('kode_institusi',$kode_institusi);
    // echo $this->db->get_compiled_select();
    // die();
    return $this->db->get()->result();
  }

  function list_institusi_done($kode_institusi, $thnAkademik, $kd_semester){
    $this->db->from('open_km');
    $this->db->join('dosen','dosen.kd_dosen=open_km.kd_dosen');
    $this->db->join('program_studi','program_studi.kode_prodi=dosen.kode_prodi');
    $this->db->where('thnAkademik',$thnAkademik);
    $this->db->where('kd_semester',$kd_semester);
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
