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

  //server side datatable
  public function get_penelitian_prodi($ta,$s,$kd_prodi){
    $this->datatables->select('ddp.kd_dosen, d.nm_dosen, p.nama_prodi, dp.judul, id');
    $this->datatables->from('data_penelitian as dp');
    $this->datatables->join('data_dosen_penelitian as ddp','ddp.id_penelitian=dp.id');
    $this->datatables->join('dosen as d','d.kd_dosen=ddp.kd_dosen');
    $this->datatables->join('program_studi as p','p.kode_prodi=d.kode_prodi');
    $this->datatables->where('dp.thn_akademik',$ta);
    $this->datatables->where('dp.kd_semester',$s);
    $this->datatables->where('d.kode_prodi',$kd_prodi);
    $this->datatables->add_column('view','<a data-toggle="modal" onclick="javascript:load_penelitian($1)" class="btn btn-success"><i class="fa fa-eye"></i> View</a>','id');
    return $this->datatables->generate();
  }

  public function get_pengabdian_prodi($ta,$s,$kd_prodi){
    $this->datatables->select('ddp.kd_dosen, d.nm_dosen, p.nama_prodi, dp.judul, id');
    $this->datatables->from('data_proposal as dp');
    $this->datatables->join('data_dosen_proposal as ddp','ddp.id_proposal=dp.id');
    $this->datatables->join('dosen as d','d.kd_dosen=ddp.kd_dosen');
    $this->datatables->join('program_studi as p','p.kode_prodi=d.kode_prodi');
    $this->datatables->where('dp.thn_akademik',$ta);
    $this->datatables->where('dp.kd_semester',$s);
    $this->datatables->where('d.kode_prodi',$kd_prodi);
    $this->datatables->add_column('view','<a data-toggle="modal" onclick="javascript:load_pengabdian($1)" class="btn btn-success"><i class="fa fa-eye"></i> View</a>','id');
    return $this->datatables->generate();
  }

  public function get_data_modal($id,$tb){
    $this->db->from($tb);
    $this->db->where('id',$id);
    return $this->db->get()->row();
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
