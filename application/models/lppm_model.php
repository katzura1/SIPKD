<?php
/**
 *
 */
class Lppm_model extends CI_Model
{
  public function get_dd_ta_penelitian(){
    $this->db->distinct();
    $this->db->select('thn_akademik');
    $this->db->from('data_penelitian');
    $result =  $this->db->get();

    $dd = array();

    if($result->num_rows()>0){
      foreach ($result->result() as $row) {
        $dd[$row->thn_akademik] = $row->thn_akademik;
      }
    }
    return $dd;
  }

  public function get_dd_ta_pengabdian(){
    $this->db->distinct();
    $this->db->select('thn_akademik');
    $this->db->from('data_proposal');
    $result =  $this->db->get();

    $dd = array();

    if($result->num_rows()>0){
      foreach ($result->result() as $row) {
        $dd[$row->thn_akademik] = $row->thn_akademik;
      }
    }
    return $dd;
  }

  public function get_jumlah_penelitian_by_dosen($kd_dosen){
    $this->db->select('*, count(id) as total');
    $this->db->from('data_penelitian as dp');
    $this->db->join('data_dosen_penelitian as ddp', 'ddp.id_penelitian=dp.id');
    $this->db->where('kd_dosen',$kd_dosen);
    return $this->db->get()->row();
  }

  public function get_jumlah_pengabdian_by_dosen($kd_dosen){
    $this->db->select('*, count(id) as total');
    $this->db->from('data_proposal as dp');
    $this->db->join('data_dosen_proposal as ddp', 'ddp.id_proposal=dp.id');
    $this->db->where('kd_dosen',$kd_dosen);
    return $this->db->get()->row();
  }

  public function get_penelitian_by_dosen($kd_dosen,$thnAkademik,$kd_semester){
    $this->db->from('data_penelitian as dp');
    $this->db->join('data_dosen_penelitian as ddp','ddp.id_penelitian=dp.id');
    $this->db->where('kd_dosen',$kd_dosen);
    $this->db->where('thn_akademik',$thnAkademik);
    $this->db->where('kd_semester',$kd_semester);
    return $this->db->get()->result();
  }

  public function get_pengabdian_by_dosen($kd_dosen,$thnAkademik,$kd_semester){
    $this->db->from('data_proposal as dp');
    $this->db->join('data_dosen_proposal as ddp','ddp.id_proposal=dp.id');
    $this->db->where('kd_dosen',$kd_dosen);
    $this->db->where('thn_akademik',$thnAkademik);
    $this->db->where('kd_semester',$kd_semester);
    return $this->db->get()->result();
  }
}

?>
