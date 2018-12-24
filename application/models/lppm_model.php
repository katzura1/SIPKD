<?php
/**
 *
 */
class Lppm_model extends CI_Model
{
  public function __construct(){
    parent::__construct();
    $this->db2 = $this->load->database('sipenamas', TRUE);
  }
  public function get_dd_ta_penelitian(){
    $this->db2->distinct();
    $this->db2->select('thn_akademik');
    $this->db2->from('data_proposal_penelitian');
    $result =  $this->db2->get();

    $dd = array();

    if($result->num_rows()>0){
      foreach ($result->result() as $row) {
        $dd[$row->thn_akademik] = $row->thn_akademik;
      }
    }
    return $dd;
  }

  public function get_dd_ta_pengabdian(){
    $this->db2->distinct();
    $this->db2->select('thn_akademik');
    $this->db2->from('data_proposal');
    $result =  $this->db2->get();

    $dd = array();

    if($result->num_rows()>0){
      foreach ($result->result() as $row) {
        $dd[$row->thn_akademik] = $row->thn_akademik;
      }
    }
    return $dd;
  }

  //server side datatable
  public function get_penelitian_institusi($ta,$s,$kode_institusi){
    $this->datatables->select('ddp.kd_dosen, d.nm_dosen, p.nama_prodi, dp.judul, id');
    $this->datatables->from('db_sipenamas.data_proposal_penelitian as dp');
    $this->datatables->join('db_sipenamas.data_dosen_penelitian as ddp','ddp.id_penelitian=dp.id');
    $this->datatables->join('dosen as d','d.kd_dosen=ddp.kd_dosen');
    $this->datatables->join('program_studi as p','p.kode_prodi=d.kode_prodi');
    $this->datatables->where('dp.thn_akademik',$ta);
    $this->datatables->where('dp.semester',$s);
    $this->datatables->where_in('p.kode_institusi',$kode_institusi);
    $this->datatables->add_column('view','<a data-toggle="modal" onclick="javascript:load_penelitian($1)" class="btn btn-success"><i class="fa fa-eye"></i> View</a>','id');
    return $this->datatables->generate();
  }

  public function get_penelitian_prodi($ta,$s,$kd_prodi){
    $this->datatables->select('ddp.kd_dosen, d.nm_dosen, p.nama_prodi, dp.judul, id');
    $this->datatables->from('db_sipenamas.data_proposal_penelitian as dp');
    $this->datatables->join('db_sipenamas.data_dosen_penelitian as ddp','ddp.id_penelitian=dp.id');
    $this->datatables->join('dosen as d','d.kd_dosen=ddp.kd_dosen');
    $this->datatables->join('program_studi as p','p.kode_prodi=d.kode_prodi');
    $this->datatables->where('dp.thn_akademik',$ta);
    $this->datatables->where('dp.semester',$s);
    $this->datatables->where('d.kode_prodi',$kd_prodi);
    $this->datatables->add_column('view','<a data-toggle="modal" onclick="javascript:load_penelitian($1)" class="btn btn-success"><i class="fa fa-eye"></i> View</a>','id');
    return $this->datatables->generate();
  }

  public function get_pengabdian_institusi($ta,$s,$kode_institusi){
    $this->datatables->select('ddp.kd_dosen, d.nm_dosen, p.nama_prodi, dp.judul, id');
    $this->datatables->from('db_sipenamas.data_proposal as dp');
    $this->datatables->join('db_sipenamas.data_dosen_proposal as ddp','ddp.id_proposal=dp.id');
    $this->datatables->join('dosen as d','d.kd_dosen=ddp.kd_dosen');
    $this->datatables->join('program_studi as p','p.kode_prodi=d.kode_prodi');
    $this->datatables->where('dp.thn_akademik',$ta);
    $this->datatables->where('dp.semester',$s);
    $this->datatables->where_in('p.kode_institusi',$kode_institusi);
    $this->datatables->add_column('view','<a data-toggle="modal" onclick="javascript:load_pengabdian($1)" class="btn btn-success"><i class="fa fa-eye"></i> View</a>','id');
    return $this->datatables->generate();
  }

  public function get_pengabdian_prodi($ta,$s,$kd_prodi){
    $this->datatables->select('ddp.kd_dosen, d.nm_dosen, p.nama_prodi, dp.judul, id');
    $this->datatables->from('db_sipenamas.data_proposal as dp');
    $this->datatables->join('db_sipenamas.data_dosen_proposal as ddp','ddp.id_proposal=dp.id');
    $this->datatables->join('dosen as d','d.kd_dosen=ddp.kd_dosen');
    $this->datatables->join('program_studi as p','p.kode_prodi=d.kode_prodi');
    $this->datatables->where('dp.thn_akademik',$ta);
    $this->datatables->where('dp.semester',$s);
    $this->datatables->where('d.kode_prodi',$kd_prodi);
    $this->datatables->add_column('view','<a data-toggle="modal" onclick="javascript:load_pengabdian($1)" class="btn btn-success"><i class="fa fa-eye"></i> View</a>','id');
    return $this->datatables->generate();
  }

  public function get_data_modal($id,$tb){
    $this->db2->from($tb);
    $this->db2->where('id',$id);
    return $this->db2->get()->row();
  }

  public function get_jumlah_penelitian($kode_prodi,$thnAkademik,$kd_semester){
    $this->db2->select('*, count(id) as total');
    $this->db2->from('data_proposal_penelitian as dp');
    $this->db2->join('data_dosen_penelitian as ddp', 'ddp.id_penelitian=dp.id');
    $this->db2->join('db_skripsi.dosen as d', 'd.kd_dosen=ddp.kd_dosen');
    $this->db2->join('db_skripsi.program_studi as pd','pd.kode_prodi=d.kode_prodi');
    if (is_array($kode_prodi)) {
      $this->db2->where_in('pd.kode_institusi',$kode_prodi);
    }else{
      $this->db2->where('d.kode_prodi',$kode_prodi);
    }
    $this->db2->where('dp.thn_akademik',$thnAkademik);
    $this->db2->where('dp.semester',$kd_semester);
    return $this->db2->get()->row();
  }

  public function get_jumlah_pengabdian($kode_prodi,$thnAkademik,$kd_semester){
    $this->db2->select('*, count(id) as total');
    $this->db2->from('data_proposal as dp');
    $this->db2->join('data_dosen_proposal as ddp', 'ddp.id_proposal=dp.id');
    $this->db2->join('db_skripsi.dosen as d', 'd.kd_dosen=ddp.kd_dosen');
    $this->db2->join('db_skripsi.program_studi as pd','pd.kode_prodi=d.kode_prodi');
    if (is_array($kode_prodi)) {
      $this->db2->where_in('pd.kode_institusi',$kode_prodi);
    }else{
      $this->db2->where('d.kode_prodi',$kode_prodi);
    }
    $this->db2->where('thn_akademik',$thnAkademik);
    $this->db2->where('semester',$kd_semester);
    return $this->db2->get()->row();
  }

  public function get_jumlah_penelitian_by_dosen($kd_dosen,$thnAkademik,$kd_semester){
    $this->db2->select('*, count(id) as total');
    $this->db2->from('data_proposal_penelitian as dp');
    $this->db2->join('data_dosen_penelitian as ddp', 'ddp.id_penelitian=dp.id');
    $this->db2->where('kd_dosen',$kd_dosen);
    $this->db2->where('thn_akademik',$thnAkademik);
    $this->db2->where('semester',$kd_semester);
    return $this->db2->get()->row();
  }

  public function get_jumlah_pengabdian_by_dosen($kd_dosen,$thnAkademik,$kd_semester){
    $this->db2->select('*, count(id) as total');
    $this->db2->from('data_proposal as dp');
    $this->db2->join('data_dosen_proposal as ddp', 'ddp.id_proposal=dp.id');
    $this->db2->where('kd_dosen',$kd_dosen);
    $this->db2->where('thn_akademik',$thnAkademik);
    $this->db2->where('semester',$kd_semester);
    return $this->db2->get()->row();
  }

  public function get_penelitian_by_dosen($kd_dosen,$thnAkademik,$kd_semester){
    $this->db2->from('data_proposal_penelitian as dp');
    $this->db2->join('data_dosen_penelitian as ddp','ddp.id_penelitian=dp.id');
    $this->db2->where('kd_dosen',$kd_dosen);
    $this->db2->where('thn_akademik',$thnAkademik);
    $this->db2->where('semester',$kd_semester);
    return $this->db2->get()->result();
  }

  public function get_pengabdian_by_dosen($kd_dosen,$thnAkademik,$kd_semester){
    $this->db2->from('data_proposal as dp');
    $this->db2->join('data_dosen_proposal as ddp','ddp.id_proposal=dp.id');
    $this->db2->where('kd_dosen',$kd_dosen);
    $this->db2->where('thn_akademik',$thnAkademik);
    $this->db2->where('semester',$kd_semester);
    return $this->db2->get()->result();
  }
}

?>
