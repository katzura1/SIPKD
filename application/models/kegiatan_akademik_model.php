<?php
/**
 *
 */
class Kegiatan_akademik_model extends CI_Model
{
  public function get_upload_soal_not_done($kode_prodi,$thnAkademik,$kd_semester){
    $this->db->from('dosen as d');
    $this->db->where(" NOT EXISTS (SELECT kd_dosen FROM kegiatan_akademik as ka WHERE thnAkademik='$thnAkademik' AND kd_semester='$kd_semester' AND ka.kd_dosen=d.kd_dosen AND upload_soal IS NOT NULL)");
    $this->db->where('d.kode_prodi',$kode_prodi);
    return $this->db->get()->result();
  }

  public function get_upload_soal_done($kode_prodi,$thnAkademik,$kd_semester){
    $this->db->from('kegiatan_akademik as ka');
    $this->db->join('dosen as d','d.kd_dosen=ka.kd_dosen');
    $this->db->where('thnAkademik',$thnAkademik);
    $this->db->where('kd_semester',$kd_semester);
    $this->db->where('d.kode_prodi',$kode_prodi);
    $this->db->where('upload_soal IS NOT NULL');
    return $this->db->get()->result();
  }

  public function get_upload_nilai_not_done($kode_prodi,$thnAkademik,$kd_semester){
    $this->db->from('dosen as d');
    $this->db->where(" NOT EXISTS (SELECT kd_dosen FROM kegiatan_akademik as ka WHERE thnAkademik='$thnAkademik' AND kd_semester='$kd_semester' AND ka.kd_dosen=d.kd_dosen AND upload_nilai IS NOT NULL)");
    $this->db->where('d.kode_prodi',$kode_prodi);
    return $this->db->get()->result();
  }

  public function get_upload_nilai_done($kode_prodi,$thnAkademik,$kd_semester){
    $this->db->from('kegiatan_akademik as ka');
    $this->db->join('dosen as d','d.kd_dosen=ka.kd_dosen');
    $this->db->where('thnAkademik',$thnAkademik);
    $this->db->where('kd_semester',$kd_semester);
    $this->db->where('d.kode_prodi',$kode_prodi);
    $this->db->where('upload_nilai IS NOT NULL');
    // var_dump( $this->db->get()->result());
    // die();
    return $this->db->get()->result();
  }

  public function get_num_row($thnAkademik,$kd_semester,$kd_dosen){
    $this->db->from('kegiatan_akademik as ka');
    $this->db->where('thnAkademik',$thnAkademik);
    $this->db->where('kd_semester',$kd_semester);
    $this->db->where('kd_dosen', $kd_dosen);
    return $this->db->get()->num_rows();
  }

  public function simpanIsiNilai($data){
    $this->db->insert('kegiatan_akademik',$data);
  }

  public function ubahIsiNilai($data,$id){
    $this->db->where('id',$id);
    $this->db->update('kegiatan_akademik',$data);
  }
}

?>
