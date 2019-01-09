<?php
/**
 *
 */
class Kegiatan_akademik_model extends CI_Model
{
  public function get_all_dosen($kode_prodi){
    $this->db->from('dosen as d');
    $this->db->where('d.kode_prodi',$kode_prodi);
    return $this->db->get()->result();
  }

  public function get_upload_materi_not_done($kode_prodi,$thnAkademik,$kd_semester){
    $this->db->from('dosen as d');
    $this->db->where(" NOT EXISTS (SELECT kd_dosen FROM kegiatan_akademik as ka WHERE thnAkademik='$thnAkademik' AND kd_semester='$kd_semester' AND ka.kd_dosen=d.kd_dosen AND upload_materi IS NOT NULL)");
    $this->db->where('d.kode_prodi',$kode_prodi);
    return $this->db->get()->result();
  }

  public function get_upload_materi_done($kode_prodi,$thnAkademik,$kd_semester){
    $this->db->from('kegiatan_akademik as ka');
    $this->db->join('dosen as d','d.kd_dosen=ka.kd_dosen');
    $this->db->where('thnAkademik',$thnAkademik);
    $this->db->where('kd_semester',$kd_semester);
    $this->db->where('d.kode_prodi',$kode_prodi);
    $this->db->where('upload_materi IS NOT NULL');
    // echo $this->db->get_compiled_select();
    // die();
    return $this->db->get()->result();
  }

  public function get_not_done($kode_dosen, $thnAkademik, $kd_semester, $key){
    $this->db->select('p.kd_dosen, p.kode_mk, kkm.keterangan, p.kelas');
    $this->db->from('db_polling.pertemuan as p');
    $this->db->join('kurikulummdp as kkm', 'kkm.kode_mk=p.kode_mk');
    $this->db->where(" NOT EXISTS (SELECT kd_dosen FROM kegiatan_akademik as ka INNER JOIN detail_kegiatan_akademik as dka ON ka.id=dka.id WHERE ka.thnAkademik='$thnAkademik' AND ka.kd_semester='$kd_semester' AND ka.kd_dosen=p.kd_dosen AND dka.kode_mk=p.kode_mk AND dka.kelas=p.kelas AND dka.upload_$key IS NOT NULL)");
    $this->db->where('p.kd_dosen', $kode_dosen);
    $this->db->where('thnAkademik',$thnAkademik);
    $this->db->where('kd_semester',$kd_semester);
    $this->db->group_by(array('p.kd_dosen', 'p.kode_mk','p.kelas'));
    //echo $this->db->get_compiled_select();
    return $this->db->get()->result();
  }

  public function get_done($kode_dosen,$thnAkademik,$kd_semester,$key){
    $this->db->select('ka.kd_dosen, dka.kode_mk, k.keterangan, dka.kelas, dka.upload_soal, dka.upload_nilai, dka.upload_materi');
    $this->db->from('kegiatan_akademik as ka');
    $this->db->join('detail_kegiatan_akademik as dka','dka.id=ka.id');
    $this->db->join('kurikulummdp as k', 'k.kode_mk=dka.kode_mk');
    $this->db->where('thnAkademik',$thnAkademik);
    $this->db->where('kd_semester',$kd_semester);
    $this->db->where('kd_dosen',$kode_dosen);
    $this->db->where('dka.upload_'.$key.' IS NOT NULL');
    return $this->db->get()->result();
  }

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

  public function get_id($data){
    $this->db->select('id');
    $this->db->from('kegiatan_akademik as ka');
    $this->db->where($data);
    return $this->db->get()->row()->id;
  }

  public function get_mean($data,$key){
    $this->db->select("
    IFNULL((SELECT upload_$key FROM kegiatan_akademik as ka JOIN detail_kegiatan_akademik as dka ON ka.id=dka.id WHERE ka.kd_dosen=p.kd_dosen AND ka.thnAkademik=p.thnAkademik AND ka.kd_semester=p.kd_semester AND dka.kode_mk=p.kode_mk AND dka.kelas=p.kelas),0) as total
    ");
    $this->db->from('db_polling.pertemuan as p');
    $this->db->where('p.kd_dosen',$data['kd_dosen']);
    $this->db->where('p.thnAkademik',$data['thnAkademik']);
    $this->db->where('p.kd_semester',$data['kd_semester']);
    $this->db->group_by(array('p.kd_dosen', 'p.kode_mk','p.kelas'));
    $arr = $this->db->get()->result();
    $temp = 0;
    foreach ($arr as $data) {
      $temp+=$data->total;
    }
    return ($temp/count($arr));
  }

  public function get_nums_row($array){
    $this->db->from('kegiatan_akademik as ka');
    $this->db->where($array);
    return $this->db->get()->num_rows();
  }

  public function get_nums_row_detail($array){
    $this->db->from('kegiatan_akademik as ka');
    $this->db->from('detail_kegiatan_akademik as dka','dka.id=ka.id');
    $this->db->where($array);
    return $this->db->get()->num_rows();
  }

  public function simpanKA($data){
    $this->db->insert('kegiatan_akademik',$data);
  }

  public function simpanDetail($data){
    $this->db->insert('detail_kegiatan_akademik',$data);
  }

  public function updateDetail($data, $array){
    $this->db->where($array);
    $this->db->update('detail_kegiatan_akademik',$data);
  }

  public function updateKA($data,$array){
    $this->db->where($array);
    $this->db->update('kegiatan_akademik',$data);
  }

  /* FUNCTION TAMPIL LAMA
  public function get_soal_not_done($kode_dosen, $thnAkademik, $kd_semester){
    $this->db->select('p.kd_dosen, p.kode_mk, kkm.keterangan, p.kelas');
    $this->db->from('pertemuan as p');
    $this->db->join('kurikulummdp as kkm', 'kkm.kode_mk=p.kode_mk');
    $this->db->where(" NOT EXISTS (SELECT kd_dosen FROM kegiatan_akademik as ka INNER JOIN detail_kegiatan_akademik as dka ON ka.id=dka.id WHERE ka.thnAkademik='$thnAkademik' AND ka.kd_semester='$kd_semester' AND ka.kd_dosen=p.kd_dosen AND dka.kode_mk=p.kode_mk AND dka.kelas=p.kelas AND dka.upload_soal IS NOT NULL)");
    $this->db->where('p.kd_dosen', $kode_dosen);
    $this->db->where('thnAkademik',$thnAkademik);
    $this->db->where('kd_semester',$kd_semester);
    $this->db->group_by(array('p.kd_dosen', 'p.kode_mk','p.kelas'));
    //echo $this->db->get_compiled_select();
    return $this->db->get()->result();
  }

  public function get_nilai_not_done($kode_dosen, $thnAkademik, $kd_semester){
    $this->db->select('p.kd_dosen, p.kode_mk, kkm.keterangan, p.kelas');
    $this->db->from('pertemuan as p');
    $this->db->join('kurikulummdp as kkm', 'kkm.kode_mk=p.kode_mk');
    $this->db->where(" NOT EXISTS (SELECT kd_dosen FROM kegiatan_akademik as ka INNER JOIN detail_kegiatan_akademik as dka ON ka.id=dka.id WHERE ka.thnAkademik='$thnAkademik' AND ka.kd_semester='$kd_semester' AND ka.kd_dosen=p.kd_dosen AND dka.kode_mk=p.kode_mk AND dka.kelas=p.kelas AND dka.upload_nilai IS NOT NULL)");
    $this->db->where('p.kd_dosen', $kode_dosen);
    $this->db->where('thnAkademik',$thnAkademik);
    $this->db->where('kd_semester',$kd_semester);
    $this->db->group_by(array('p.kd_dosen', 'p.kode_mk','p.kelas'));
    //echo $this->db->get_compiled_select();
    return $this->db->get()->result();
  }

  public function get_soal_done($kode_dosen,$thnAkademik,$kd_semester){
    $this->db->select('ka.kd_dosen, dka.kode_mk, k.keterangan, dka.kelas, dka.upload_soal, dka.upload_nilai, dka.upload_materi');
    $this->db->from('kegiatan_akademik as ka');
    $this->db->join('detail_kegiatan_akademik as dka','dka.id=ka.id');
    $this->db->join('kurikulummdp as k', 'k.kode_mk=dka.kode_mk');
    $this->db->where('thnAkademik',$thnAkademik);
    $this->db->where('kd_semester',$kd_semester);
    $this->db->where('kd_dosen',$kode_dosen);
    $this->db->where('dka.upload_soal IS NOT NULL');
    return $this->db->get()->result();
  }

  public function get_nilai_done($kode_dosen,$thnAkademik,$kd_semester){
    $this->db->select('ka.kd_dosen, dka.kode_mk, k.keterangan, dka.kelas, dka.upload_soal, dka.upload_nilai, dka.upload_materi');
    $this->db->from('kegiatan_akademik as ka');
    $this->db->join('detail_kegiatan_akademik as dka','dka.id=ka.id');
    $this->db->join('kurikulummdp as k', 'k.kode_mk=dka.kode_mk');
    $this->db->where('thnAkademik',$thnAkademik);
    $this->db->where('kd_semester',$kd_semester);
    $this->db->where('kd_dosen',$kode_dosen);
    $this->db->where('dka.upload_nilai IS NOT NULL');
    return $this->db->get()->result();
  }
  */
}

?>
