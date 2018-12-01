<?php
class Prodi_model extends CI_Model{
  private $nama_tabel = "program_studi";
  private $primary_key = "kode_prodi";

  public function tampil(){
    return $this->db->get($this->nama_tabel);
  }

  public function get_institusi($kode_institusi){
    $this->db->from('institusi');
    $this->db->where_in('kode_institusi',$kode_institusi);
    $result = $this->db->get();

    $nama_institusi='';
    $i=1;
    foreach ($result->result() as $data) {
      if($i==1){
        $nama_institusi.=$data->nama_institusi;
      }else{
        $nama_institusi.=', '.$data->nama_institusi;
      }
      $i++;
    }
    return $nama_institusi;
  }

  public function get_dd_prodi($kode_institusi){
    $this->db->from($this->nama_tabel);
    $this->db->where_in('kode_institusi',$kode_institusi);
    $result = $this->db->get();

    $dd[''] = 'Semua Prodi';
    if($result->num_rows()>0){
      foreach ($result->result() as $data) {
        $dd[$data->kode_prodi] = $data->nama_prodi;
      }
    }
    return $dd;
  }

  public function get_dd_all_prodi(){
    $this->db->from($this->nama_tabel);
    $result = $this->db->get();
    $dd[''] = 'Pilih Prodi';
    if($result->num_rows()>0){
      foreach ($result->result() as $data) {
        $dd[$data->kode_prodi] = $data->nama_prodi;
      }
    }
    return $dd;
  }

  public function getByKode($kode_prodi){
    $this->db->where($this->primary_key,$kode_prodi);
    return $this->db->get($this->nama_tabel)->row();
  }

  public function tambahData($data){
    if($this->db->insert($this->nama_tabel,$data)){
      return true;
    }else{
      return false;
    }
  }

  public function update($data,$kode_prodi){
    $this->db->where($this->primary_key,$kode_prodi);
    $this->db->update($this->nama_tabel,$data);
  }
}
?>
