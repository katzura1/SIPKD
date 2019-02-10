<?php

class tahun_akademik_model extends CI_Model{
  private $nama_tabel = 'tahun_akademik';

  public function get_all(){
    return $this->db->get($this->nama_tabel)->result();
  }

  public function get_all_thn_akamdeik(){
    $this->db->distinct();
    $this->db->select('tahunAkademik');
    $this->db->from($this->nama_tabel);
    return $this->db->get()->result();
  }

  public function get_dd_thn_akademik(){
    $this->db->distinct();
    $this->db->select('tahunAkademik');
    $this->db->from($this->nama_tabel);
    $result = $this->db->get();

    $dd = array();

    if($result->num_rows()>0){
      foreach ($result->result() as $data) {
        $dd[$data->tahunAkademik] = $data->tahunAkademik;
      }
    }
    return $dd;
  }

  public function get_row_by_kode($tahun_akademik,$kd_semester){
    $this->db->where('tahunAkademik',$tahun_akademik);
    $this->db->where('kd_semester',$kd_semester);
    $this->db->from($this->nama_tabel);
    return $this->db->get()->num_rows();
  }

  public function get_by_kode($tahun_akademik,$kd_semester){
    $this->db->where('tahunAkademik',$tahun_akademik);
    $this->db->where('kd_semester',$kd_semester);
    $this->db->from($this->nama_tabel);
    return $this->db->get()->row();
  }

  public function simpanTA($data){
    if($data['status']=='aktif'){
      $this->update_all_tidak_aktif();

      $data_sess_ta = array(
        'thn_akademik' => $data['tahunAkademik'],
        'kd_semester' => $data['kd_semester'],
      );
      $this->session->set_userdata($data_sess_ta);
    }

    //insert after update
    $this->db->insert($this->nama_tabel,$data);

    if($this->db->affected_rows()>0){
      return TRUE;
    }else{
      return FALSE;
    }
  }

  public function updateTA($data,$ta,$s){
    if($data['status']=='aktif'){
      $this->update_all_tidak_aktif();

      $data_sess_ta = array(
        'thn_akademik' => $data['tahunAkademik'],
        'kd_semester' => $data['kd_semester'],
      );
      $this->session->set_userdata($data_sess_ta);
    }
    $this->db->where('tahunAkademik',$ta);
    $this->db->where('kd_semester',$s);
    $this->db->update($this->nama_tabel,$data);
  }

  public function update_all_tidak_aktif(){
    $data_update = array(
      'status' => 'tidak aktif'
    );
    $this->db->update($this->nama_tabel,$data_update);
  }

  public function update_aktif($ta,$s){
    $this->db->where('tahunAkademik',$ta);
    $this->db->where('kd_semester',$s);
    $data = array(
      'status' => 'aktif'
    );
    $this->db->update($this->nama_tabel,$data);
  }

  public function get_status_aktif(){
    $this->db->where('status','aktif');
    $this->db->from($this->nama_tabel);
    return $this->db->get()->row();
  }
}
 ?>
