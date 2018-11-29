<?php
  class Pertemuan_model extends CI_Model{
    private $nama_tb = 'pertemuan';

    /*
    SELECT kd_dosen, KODE_MK, KELAS, count(ThnAkademik) as 'Jumlah Pertemuan' FROM `pertemuan`
    JOIN mata_kuliah ON mata_kuliah.kode_mk=pertemuan.kode_mk
    JOIN dosen ON dosen.kd_dosen=pertemuan.kd_dosen
    WHERE thnAkademik='2018/2019' AND KELAS LIKE 'AK%'
    GROUP BY KD_DOSEN, KODE_MK, kelas
    ORDER BY `pertemuan`.`KODE_MK` ASC
    */

    //menampilkan jumlah pertemuan tahun akademik yang aktif filter berdasarkan jurusan
    public function tampil_all_pertemuan($tahun,$kd_jurusan){
      $this->db->select("pertemuan.kd_dosen, dosen.nm_dosen, dosen.gelar_depan, dosen.gelar_belakang, pertemuan.kode_mk, mata_kuliah.nama_mk, kelas , count(thnAkademik) as 'jumlah_pertemuan' ");
      $this->db->from('pertemuan');
      $this->db->join('mata_kuliah','mata_kuliah.kode_mk=pertemuan.kode_mk');
      $this->db->join('dosen','dosen.kd_dosen=pertemuan.kd_dosen');
      $this->db->where('thnAkademik',$tahun);
      $this->db->like('kelas',$kd_jurusan,'after');
      $this->db->group_by(array('kd_dosen','kode_mk','kelas'));
      $this->db->order_by('kd_dosen','ASC');
      return $this->db->get()->result();
    }
  }
?>
