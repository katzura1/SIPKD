<?php
/**
 *
 */
class Kinerja_dosen_model extends CI_Model
{
  public function __construct(){
    parent::__construct();
    $this->db2 = $this->load->database('sipenamas', TRUE);
    $this->db3 = $this->load->database('polling', TRUE);
  }

  function get_nilai_by_dosen($kd_dosen,$thnAkademik,$kd_semester){
    $this->db->select('pd.nama_prodi');
    $this->db->select("
    CASE
      WHEN (SELECT SUM(total)/2 FROM data_kuesioner dk WHERE dk.kd_dosen=d.kd_dosen AND thnAkademik='$thnAkademik' AND kd_semester='$kd_semester') BETWEEN 140 AND 155 THEN 5
      WHEN (SELECT SUM(total)/2 FROM data_kuesioner dk WHERE dk.kd_dosen=d.kd_dosen AND thnAkademik='$thnAkademik' AND kd_semester='$kd_semester') BETWEEN 125 AND 139 THEN 4
      WHEN (SELECT SUM(total)/2 FROM data_kuesioner dk WHERE dk.kd_dosen=d.kd_dosen AND thnAkademik='$thnAkademik' AND kd_semester='$kd_semester') BETWEEN 110 AND 124 THEN 3
      ELSE 2
    END as skor_kuisoner
    ");
    $this->db->select("
    CASE
      WHEN (SELECT AVG(ikd) FROM db_polling.rekapitulasi_polling rp WHERE rp.kd_dosen=d.kd_dosen AND tahunAkademik='$thnAkademik' AND kd_semester='$kd_semester')>=3.5 THEN 5
      WHEN (SELECT AVG(ikd) FROM db_polling.rekapitulasi_polling rp WHERE rp.kd_dosen=d.kd_dosen AND tahunAkademik='$thnAkademik' AND kd_semester='$kd_semester') BETWEEN 3 AND 3.49 THEN 2
      ELSE 0
    END as skor_ikd
    ");
    $this->db->select("
    CASE
      WHEN(
          (SELECT COUNT(id) FROM db_sipenamas.data_proposal_penelitian as dp JOIN db_sipenamas.data_dosen_penelitian as ddp ON dp.id=ddp.id_penelitian WHERE ddp.kd_dosen=d.kd_dosen AND dp.thn_akademik='$thnAkademik' AND semester='$kd_semester')>0
        and
          (SELECT COUNT(id) FROM db_sipenamas.data_proposal as dp JOIN db_sipenamas.data_dosen_proposal as ddp ON dp.id=ddp.id_proposal WHERE ddp.kd_dosen=d.kd_dosen AND dp.thn_akademik='$thnAkademik' AND semester='$kd_semester')>0
          )
        THEN 5
      WHEN(
          (SELECT COUNT(id) FROM db_sipenamas.data_proposal_penelitian as dp JOIN db_sipenamas.data_dosen_penelitian as ddp ON dp.id=ddp.id_penelitian WHERE ddp.kd_dosen=d.kd_dosen AND dp.thn_akademik='$thnAkademik' AND semester='$kd_semester')>0
        or
          (SELECT COUNT(id) FROM db_sipenamas.data_proposal as dp JOIN db_sipenamas.data_dosen_proposal as ddp ON dp.id=ddp.id_proposal WHERE ddp.kd_dosen=d.kd_dosen AND dp.thn_akademik='$thnAkademik' AND semester='$kd_semester')>0
          )
        THEN 2
      ELSE 0
    END as 'lppm'
    ");
    $this->db->select("
    (CASE
      WHEN (SELECT SUM((SELECT pertemuan FROM db_polling.pertemuan as p1 WHERE tb.kd_dosen=p1.kd_dosen AND tb.kode_mk=p1.kode_mk AND tb.kelas=p1.kelas ORDER BY pertemuan DESC limit 1))/SUM(tb.jum_pert) FROM dosen as d1 JOIN (SELECT DISTINCT p.kode_mk, p.kelas, p.kd_dosen, CASE WHEN (Praktek='y' AND sks>=2) THEN 28 WHEN (Praktek='y' AND sks=1) THEN 14 WHEN (Praktek='t' AND (sks=3 or sks=1)) THEN 14 ELSE sks*7 END as 'jum_pert' FROM db_polling.pertemuan as p JOIN kurikulummdp as k ON k.Kode_MK=p.KODE_MK WHERE thnAkademik='$thnAkademik' AND kd_semester='$kd_semester') as tb ON d1.kd_dosen=tb.kd_dosen WHERE d1.kd_dosen=d.kd_dosen)*100>90 THEN 5
      WHEN (SELECT SUM((SELECT pertemuan FROM db_polling.pertemuan as p1 WHERE tb.kd_dosen=p1.kd_dosen AND tb.kode_mk=p1.kode_mk AND tb.kelas=p1.kelas ORDER BY pertemuan DESC limit 1))/SUM(tb.jum_pert) FROM dosen as d1 JOIN (SELECT DISTINCT p.kode_mk, p.kelas, p.kd_dosen, CASE WHEN (Praktek='y' AND sks>=2) THEN 28 WHEN (Praktek='y' AND sks=1) THEN 14 WHEN (Praktek='t' AND (sks=3 or sks=1)) THEN 14 ELSE sks*7 END as 'jum_pert' FROM db_polling.pertemuan as p JOIN kurikulummdp as k ON k.Kode_MK=p.KODE_MK WHERE thnAkademik='$thnAkademik' AND kd_semester='$kd_semester') as tb ON d1.kd_dosen=tb.kd_dosen WHERE d1.kd_dosen=d.kd_dosen)*100>80 THEN 2
      ELSE 0
    END
    )as skor_pertemuan
    ");
    $this->db->select("IFNULL((SELECT FORMAT(mean_umateri,2) FROM kegiatan_akademik as ka WHERE ka.kd_dosen=d.kd_dosen AND thnAkademik='$thnAkademik' AND kd_semester='$kd_semester'),0) as upload_materi");
    $this->db->select("IFNULL((SELECT FORMAT((mean_unilai+mean_usoal)/2,2) FROM kegiatan_akademik as ka WHERE ka.kd_dosen=d.kd_dosen AND thnAkademik='$thnAkademik' AND kd_semester='$kd_semester'),0) as upload_soalnilai");
    $this->db->select("IFNULL((SELECT skor FROM open_km as ok WHERE ok.kd_dosen=d.kd_dosen AND thnAkademik='$thnAkademik' AND kd_semester='$kd_semester'),0) as skor_open_km");
    $this->db->select("
    FORMAT((
      (CASE
        WHEN (SELECT SUM(total)/2 FROM data_kuesioner dk WHERE dk.kd_dosen=d.kd_dosen AND thnAkademik='$thnAkademik' AND kd_semester='$kd_semester') BETWEEN 140 AND 155 THEN 5
        WHEN (SELECT SUM(total)/2 FROM data_kuesioner dk WHERE dk.kd_dosen=d.kd_dosen AND thnAkademik='$thnAkademik' AND kd_semester='$kd_semester') BETWEEN 125 AND 139 THEN 4
        WHEN (SELECT SUM(total)/2 FROM data_kuesioner dk WHERE dk.kd_dosen=d.kd_dosen AND thnAkademik='$thnAkademik' AND kd_semester='$kd_semester') BETWEEN 110 AND 124 THEN 3
        ELSE 2
      END)
      +
      (CASE
        WHEN (SELECT AVG(ikd) FROM db_polling.rekapitulasi_polling rp WHERE rp.kd_dosen=d.kd_dosen AND tahunAkademik='$thnAkademik' AND kd_semester='$kd_semester')>=3.5 THEN 5
        WHEN (SELECT AVG(ikd) FROM db_polling.rekapitulasi_polling rp WHERE rp.kd_dosen=d.kd_dosen AND tahunAkademik='$thnAkademik' AND kd_semester='$kd_semester') BETWEEN 3 AND 3.49 THEN 2
        ELSE 0
      END)
      +
      (CASE
        WHEN(
            (SELECT COUNT(id) FROM db_sipenamas.data_proposal_penelitian as dp JOIN db_sipenamas.data_dosen_penelitian as ddp ON dp.id=ddp.id_penelitian WHERE ddp.kd_dosen=d.kd_dosen AND dp.thn_akademik='$thnAkademik' AND semester='$kd_semester')>0
          and
            (SELECT COUNT(id) FROM db_sipenamas.data_proposal as dp JOIN db_sipenamas.data_dosen_proposal as ddp ON dp.id=ddp.id_proposal WHERE ddp.kd_dosen=d.kd_dosen AND dp.thn_akademik='$thnAkademik' AND semester='$kd_semester')>0
            )
          THEN 5
        WHEN(
            (SELECT COUNT(id) FROM db_sipenamas.data_proposal_penelitian as dp JOIN db_sipenamas.data_dosen_penelitian as ddp ON dp.id=ddp.id_penelitian WHERE ddp.kd_dosen=d.kd_dosen AND dp.thn_akademik='$thnAkademik' AND semester='$kd_semester')>0
          or
            (SELECT COUNT(id) FROM db_sipenamas.data_proposal as dp JOIN db_sipenamas.data_dosen_proposal as ddp ON dp.id=ddp.id_proposal WHERE ddp.kd_dosen=d.kd_dosen AND dp.thn_akademik='$thnAkademik' AND semester='$kd_semester')>0
            )
          THEN 2
        ELSE 0
      END)
      +
      (
      CASE
        WHEN (SELECT SUM((SELECT pertemuan FROM db_polling.pertemuan as p1 WHERE tb.kd_dosen=p1.kd_dosen AND tb.kode_mk=p1.kode_mk AND tb.kelas=p1.kelas AND p1.thnAkademik='$thnAkademik' AND p1.kd_semester='$kd_semester' ORDER BY pertemuan DESC limit 1))/SUM(tb.jum_pert) FROM dosen as d1 JOIN (SELECT DISTINCT p.kode_mk, p.kelas, p.kd_dosen, CASE WHEN (Praktek='y' AND sks>=2) THEN 28 WHEN (Praktek='y' AND sks=1) THEN 14 WHEN (Praktek='t' AND (sks=3 or sks=1)) THEN 14 ELSE sks*7 END as 'jum_pert' FROM db_polling.pertemuan as p JOIN kurikulummdp as k ON k.Kode_MK=p.KODE_MK WHERE thnAkademik='$thnAkademik' AND kd_semester='$kd_semester') as tb ON d1.kd_dosen=tb.kd_dosen WHERE d1.kd_dosen=d.kd_dosen)*100>90 THEN 5
        WHEN (SELECT SUM((SELECT pertemuan FROM db_polling.pertemuan as p1 WHERE tb.kd_dosen=p1.kd_dosen AND tb.kode_mk=p1.kode_mk AND tb.kelas=p1.kelas AND p1.thnAkademik='$thnAkademik' AND p1.kd_semester='$kd_semester' ORDER BY pertemuan DESC limit 1))/SUM(tb.jum_pert) FROM dosen as d1 JOIN (SELECT DISTINCT p.kode_mk, p.kelas, p.kd_dosen, CASE WHEN (Praktek='y' AND sks>=2) THEN 28 WHEN (Praktek='y' AND sks=1) THEN 14 WHEN (Praktek='t' AND (sks=3 or sks=1)) THEN 14 ELSE sks*7 END as 'jum_pert' FROM db_polling.pertemuan as p JOIN kurikulummdp as k ON k.Kode_MK=p.KODE_MK WHERE thnAkademik='$thnAkademik' AND kd_semester='$kd_semester') as tb ON d1.kd_dosen=tb.kd_dosen WHERE d1.kd_dosen=d.kd_dosen)*100>80 THEN 2
        ELSE 0
      END
      )
      +
      IFNULL((SELECT FORMAT(mean_umateri,2) FROM kegiatan_akademik as ka WHERE ka.kd_dosen=d.kd_dosen AND thnAkademik='$thnAkademik' AND kd_semester='$kd_semester'),0)
      +
      IFNULL((SELECT FORMAT((mean_unilai+mean_usoal)/2,2) FROM kegiatan_akademik as ka WHERE ka.kd_dosen=d.kd_dosen AND thnAkademik='$thnAkademik' AND kd_semester='$kd_semester'),0)
      +
      IFNULL((SELECT skor FROM open_km as ok WHERE ok.kd_dosen=d.kd_dosen AND thnAkademik='$thnAkademik' AND kd_semester='$kd_semester'),0)
    ),2) as 'total_skor'
    ");
    $this->db->from('dosen as d');
    $this->db->join('program_studi as pd','pd.kode_prodi=d.kode_prodi');
    $this->db->where('d.kd_dosen',$kd_dosen);
    // echo $this->db->get_compiled_select();
    // die();
    //echo json_encode($this->db->get()->row());
    return $this->db->get()->row();
  }

  function get_nilai_per_institusi($kode_institusi,$thnAkademik,$kd_semester){
    $this->db->select('pd.nama_prodi');
    $this->db->select("
    CASE WHEN (SELECT SUM(total) FROM data_kuesioner as dk JOIN dosen as d ON dk.kd_dosen=d.kd_dosen WHERE d.kode_prodi=pd.kode_prodi AND thnAkademik='$thnAkademik' AND kd_semester='$kd_semester')/(SELECT COUNT(kd_dosen)*2 FROM dosen as d WHERE d.kode_prodi=pd.kode_prodi) BETWEEN 140 AND 155 THEN 5
    WHEN (SELECT SUM(total) FROM data_kuesioner as dk JOIN dosen as d ON dk.kd_dosen=d.kd_dosen WHERE d.kode_prodi=pd.kode_prodi AND thnAkademik='$thnAkademik' AND kd_semester='$kd_semester')/(SELECT COUNT(kd_dosen)*2 FROM dosen as d WHERE d.kode_prodi=pd.kode_prodi) BETWEEN 125 AND 139 THEN 4
    WHEN (SELECT SUM(total) FROM data_kuesioner as dk JOIN dosen as d ON dk.kd_dosen=d.kd_dosen WHERE d.kode_prodi=pd.kode_prodi AND thnAkademik='$thnAkademik' AND kd_semester='$kd_semester')/(SELECT COUNT(kd_dosen)*2 FROM dosen as d WHERE d.kode_prodi=pd.kode_prodi) BETWEEN 110 AND 124 THEN 3
    ELSE 2 END as mean_kuesioner");
    $this->db->select("
    CASE WHEN (SELECT AVG(ikd) FROM db_polling.rekapitulasi_polling as rp JOIN dosen as d ON rp.kd_dosen=d.kd_dosen WHERE d.kode_prodi=pd.kode_prodi AND tahunAkademik='$thnAkademik' AND kd_semester='$kd_semester') >=3.5 THEN 5
    WHEN (SELECT AVG(ikd) FROM db_polling.rekapitulasi_polling as rp JOIN dosen as d ON rp.kd_dosen=d.kd_dosen WHERE d.kode_prodi=pd.kode_prodi AND tahunAkademik='$thnAkademik' AND kd_semester='$kd_semester') BETWEEN 3 AND 3.49 THEN 2
    ELSE 0 END as mean_ikd");
    $this->db->select("
    ROUND(IFNULL((SELECT AVG(
      CASE WHEN( (SELECT COUNT(id) FROM db_sipenamas.data_proposal_penelitian as dp JOIN db_sipenamas.data_dosen_penelitian as ddp ON dp.id=ddp.id_penelitian WHERE ddp.kd_dosen=d.kd_dosen AND dp.thn_akademik='$thnAkademik' AND semester='$kd_semester')>0 and (SELECT COUNT(id) FROM db_sipenamas.data_proposal as dp JOIN db_sipenamas.data_dosen_proposal as ddp ON dp.id=ddp.id_proposal WHERE ddp.kd_dosen=d.kd_dosen AND dp.thn_akademik='$thnAkademik' AND semester='$kd_semester')>0) THEN 5
      WHEN( (SELECT COUNT(id) FROM db_sipenamas.data_proposal_penelitian as dp JOIN db_sipenamas.data_dosen_penelitian as ddp ON dp.id=ddp.id_penelitian WHERE ddp.kd_dosen=d.kd_dosen AND dp.thn_akademik='$thnAkademik' AND semester='$kd_semester')>0 or (SELECT COUNT(id) FROM db_sipenamas.data_proposal as dp JOIN db_sipenamas.data_dosen_proposal as ddp ON dp.id=ddp.id_proposal WHERE ddp.kd_dosen=d.kd_dosen AND dp.thn_akademik='$thnAkademik' AND semester='$kd_semester')>0 ) THEN 2
      ELSE 0 END) FROM `dosen` as `d` WHERE d.kode_prodi=pd.kode_prodi),0),2)
    as mean_lppm");
    $this->db->select("
    CASE
    WHEN (IFNULL((SELECT SUM((SELECT SUM((SELECT pertemuan FROM db_polling.pertemuan as p1 WHERE tb.kd_dosen=p1.kd_dosen AND tb.kode_mk=p1.kode_mk AND tb.kelas=p1.kelas AND thnAkademik='$thnAkademik' AND kd_semester='$kd_semester' ORDER BY pertemuan DESC limit 1))/SUM(tb.jum_pert) FROM dosen as d1 JOIN (SELECT DISTINCT p.kode_mk, p.kelas, p.kd_dosen, CASE WHEN (Praktek='y' AND sks>=2) THEN 28 WHEN (Praktek='y' AND sks=1) THEN 14 WHEN (Praktek='t' AND (sks=3 or sks=1)) THEN 14 ELSE sks*7 END as jum_pert FROM db_polling.pertemuan as p JOIN kurikulummdp as k ON k.Kode_MK=p.KODE_MK WHERE thnAkademik='$thnAkademik' AND kd_semester='$kd_semester') as tb ON d1.kd_dosen=tb.kd_dosen WHERE d1.kd_dosen=d.kd_dosen)*100)/COUNT(kd_dosen) FROM db_skripsi.dosen as d WHERE d.kode_prodi=pd.kode_prodi),0))>90 THEN 5

    WHEN (IFNULL((SELECT SUM((SELECT SUM((SELECT pertemuan FROM db_polling.pertemuan as p1 WHERE tb.kd_dosen=p1.kd_dosen AND tb.kode_mk=p1.kode_mk AND tb.kelas=p1.kelas AND thnAkademik='$thnAkademik' AND kd_semester='$kd_semester' ORDER BY pertemuan DESC limit 1))/SUM(tb.jum_pert) FROM dosen as d1 JOIN (SELECT DISTINCT p.kode_mk, p.kelas, p.kd_dosen, CASE WHEN (Praktek='y' AND sks>=2) THEN 28 WHEN (Praktek='y' AND sks=1) THEN 14 WHEN (Praktek='t' AND (sks=3 or sks=1)) THEN 14 ELSE sks*7 END as jum_pert FROM db_polling.pertemuan as p JOIN kurikulummdp as k ON k.Kode_MK=p.KODE_MK WHERE thnAkademik='$thnAkademik' AND kd_semester='$kd_semester') as tb ON d1.kd_dosen=tb.kd_dosen WHERE d1.kd_dosen=d.kd_dosen)*100)/COUNT(kd_dosen) FROM db_skripsi.dosen as d WHERE d.kode_prodi=pd.kode_prodi),0)) BETWEEN 80 AND 90 THEN 2

    ELSE 0
    END
    as mean_pertemuan");
    //$this->db->select("
    //FORMAT(IFNULL((SELECT SUM(mean_umateri) FROM kegiatan_akademik as ka JOIN dosen as d ON ka.kd_dosen=d.kd_dosen WHERE thnAkademik='$thnAkademik' AND kd_semester='$kd_semester' AND d.kode_prodi=pd.kode_prodi)/(SELECT COUNT(kd_dosen) FROM dosen as d WHERE d.kode_prodi=pd.kode_prodi),0),2) as mean_upload_materi");
    $this->db->select("
    IFNULL((SELECT FORMAT(AVG(IFNULL((SELECT mean_umateri FROM kegiatan_akademik as ka WHERE ka.kd_dosen=d.kd_dosen AND thnAkademik='$thnAkademik' AND kd_semester='$kd_semester'),0)),2) as upload_materi FROM `dosen` as `d` WHERE d.kode_prodi=pd.kode_prodi),0.00) as mean_upload_materi");
    $this->db->select("
    IFNULL((SELECT FORMAT(AVG(IFNULL((SELECT (mean_unilai+mean_usoal)/2 FROM kegiatan_akademik as ka WHERE ka.kd_dosen=d.kd_dosen AND thnAkademik='$thnAkademik' AND kd_semester='$kd_semester'),0)),2) as upload_soalnilai FROM `dosen` as `d` WHERE d.kode_prodi=pd.kode_prodi),0.00) as mean_soalnilai");
    $this->db->select("
    IFNULL((SELECT ROUND(IFNULL(SUM((SELECT skor FROM open_km as ok WHERE ok.kd_dosen=d.kd_dosen AND thnAkademik='$thnAkademik' AND kd_semester='$kd_semester')),0)/COUNT(d.kd_dosen),2) FROM dosen as d WHERE d.kode_prodi=pd.kode_prodi),0) as mean_ok");
    $this->db->select("
    FORMAT((CASE WHEN (SELECT SUM(total) FROM data_kuesioner as dk JOIN dosen as d ON dk.kd_dosen=d.kd_dosen WHERE d.kode_prodi=pd.kode_prodi AND thnAkademik='$thnAkademik' AND kd_semester='$kd_semester')/(SELECT COUNT(kd_dosen)*2 FROM dosen as d WHERE d.kode_prodi=pd.kode_prodi) BETWEEN 140 AND 155 THEN 5
    WHEN (SELECT SUM(total) FROM data_kuesioner as dk JOIN dosen as d ON dk.kd_dosen=d.kd_dosen WHERE d.kode_prodi=pd.kode_prodi AND thnAkademik='$thnAkademik' AND kd_semester='$kd_semester')/(SELECT COUNT(kd_dosen)*2 FROM dosen as d WHERE d.kode_prodi=pd.kode_prodi) BETWEEN 125 AND 139 THEN 4
    WHEN (SELECT SUM(total) FROM data_kuesioner as dk JOIN dosen as d ON dk.kd_dosen=d.kd_dosen WHERE d.kode_prodi=pd.kode_prodi AND thnAkademik='$thnAkademik' AND kd_semester='$kd_semester')/(SELECT COUNT(kd_dosen)*2 FROM dosen as d WHERE d.kode_prodi=pd.kode_prodi) BETWEEN 110 AND 124 THEN 3
    ELSE 2 END)
    +
    (CASE WHEN (SELECT AVG(ikd) FROM db_polling.rekapitulasi_polling as rp JOIN dosen as d ON rp.kd_dosen=d.kd_dosen WHERE d.kode_prodi=pd.kode_prodi AND tahunAkademik='$thnAkademik' AND kd_semester='$kd_semester') >=3.5 THEN 5
    WHEN (SELECT AVG(ikd) FROM db_polling.rekapitulasi_polling as rp JOIN dosen as d ON rp.kd_dosen=d.kd_dosen WHERE d.kode_prodi=pd.kode_prodi AND tahunAkademik='$thnAkademik' AND kd_semester='$kd_semester') BETWEEN 3 AND 3.49 THEN 2
    ELSE 0 END)
    +
    (ROUND(IFNULL((SELECT AVG(
      CASE WHEN( (SELECT COUNT(id) FROM db_sipenamas.data_proposal_penelitian as dp JOIN db_sipenamas.data_dosen_penelitian as ddp ON dp.id=ddp.id_penelitian WHERE ddp.kd_dosen=d.kd_dosen AND dp.thn_akademik='$thnAkademik' AND semester='$kd_semester')>0 and (SELECT COUNT(id) FROM db_sipenamas.data_proposal as dp JOIN db_sipenamas.data_dosen_proposal as ddp ON dp.id=ddp.id_proposal WHERE ddp.kd_dosen=d.kd_dosen AND dp.thn_akademik='$thnAkademik' AND semester='$kd_semester')>0) THEN 5
      WHEN( (SELECT COUNT(id) FROM db_sipenamas.data_proposal_penelitian as dp JOIN db_sipenamas.data_dosen_penelitian as ddp ON dp.id=ddp.id_penelitian WHERE ddp.kd_dosen=d.kd_dosen AND dp.thn_akademik='$thnAkademik' AND semester='$kd_semester')>0 or (SELECT COUNT(id) FROM db_sipenamas.data_proposal as dp JOIN db_sipenamas.data_dosen_proposal as ddp ON dp.id=ddp.id_proposal WHERE ddp.kd_dosen=d.kd_dosen AND dp.thn_akademik='$thnAkademik' AND semester='$kd_semester')>0 ) THEN 2
      ELSE 0 END) FROM `dosen` as `d` WHERE d.kode_prodi=pd.kode_prodi),0),2))
    +
    (
      CASE
      WHEN (IFNULL((SELECT SUM((SELECT SUM((SELECT pertemuan FROM db_polling.pertemuan as p1 WHERE tb.kd_dosen=p1.kd_dosen AND tb.kode_mk=p1.kode_mk AND tb.kelas=p1.kelas AND thnAkademik='$thnAkademik' AND kd_semester='$kd_semester' ORDER BY pertemuan DESC limit 1))/SUM(tb.jum_pert) FROM dosen as d1 JOIN (SELECT DISTINCT p.kode_mk, p.kelas, p.kd_dosen, CASE WHEN (Praktek='y' AND sks>=2) THEN 28 WHEN (Praktek='y' AND sks=1) THEN 14 WHEN (Praktek='t' AND (sks=3 or sks=1)) THEN 14 ELSE sks*7 END as jum_pert FROM db_polling.pertemuan as p JOIN kurikulummdp as k ON k.Kode_MK=p.KODE_MK WHERE thnAkademik='$thnAkademik' AND kd_semester='$kd_semester') as tb ON d1.kd_dosen=tb.kd_dosen WHERE d1.kd_dosen=d.kd_dosen)*100)/COUNT(kd_dosen) FROM db_skripsi.dosen as d WHERE d.kode_prodi=pd.kode_prodi),0))>90 THEN 5

      WHEN (IFNULL((SELECT SUM((SELECT SUM((SELECT pertemuan FROM db_polling.pertemuan as p1 WHERE tb.kd_dosen=p1.kd_dosen AND tb.kode_mk=p1.kode_mk AND tb.kelas=p1.kelas AND thnAkademik='$thnAkademik' AND kd_semester='$kd_semester' ORDER BY pertemuan DESC limit 1))/SUM(tb.jum_pert) FROM dosen as d1 JOIN (SELECT DISTINCT p.kode_mk, p.kelas, p.kd_dosen, CASE WHEN (Praktek='y' AND sks>=2) THEN 28 WHEN (Praktek='y' AND sks=1) THEN 14 WHEN (Praktek='t' AND (sks=3 or sks=1)) THEN 14 ELSE sks*7 END as jum_pert FROM db_polling.pertemuan as p JOIN kurikulummdp as k ON k.Kode_MK=p.KODE_MK WHERE thnAkademik='$thnAkademik' AND kd_semester='$kd_semester') as tb ON d1.kd_dosen=tb.kd_dosen WHERE d1.kd_dosen=d.kd_dosen)*100)/COUNT(kd_dosen) FROM db_skripsi.dosen as d WHERE d.kode_prodi=pd.kode_prodi),0)) BETWEEN 80 AND 90 THEN 2

      ELSE 0
      END
    )
    +
    (
      FORMAT(IFNULL((SELECT SUM(mean_umateri) FROM kegiatan_akademik as ka JOIN dosen as d ON ka.kd_dosen=d.kd_dosen WHERE thnAkademik='$thnAkademik' AND kd_semester='$kd_semester' AND d.kode_prodi=pd.kode_prodi)/(SELECT COUNT(kd_dosen) FROM dosen as d WHERE d.kode_prodi=pd.kode_prodi),0),2)
    )
    +
    (
      IFNULL((SELECT FORMAT(AVG(IFNULL((SELECT (mean_unilai+mean_usoal)/2 FROM kegiatan_akademik as ka WHERE ka.kd_dosen=d.kd_dosen AND thnAkademik='$thnAkademik' AND kd_semester='$kd_semester'),0)),2) as upload_soalnilai FROM `dosen` as `d` WHERE d.kode_prodi=pd.kode_prodi),0.00)
    )
    +
    IFNULL((SELECT ROUND(IFNULL(SUM((SELECT skor FROM open_km as ok WHERE ok.kd_dosen=d.kd_dosen AND thnAkademik='$thnAkademik' AND kd_semester='$kd_semester')),0)/COUNT(d.kd_dosen),2) FROM dosen as d WHERE d.kode_prodi=pd.kode_prodi),0),2) as mean_total
    ");
    $this->db->from('program_studi as pd');
    $this->db->where_in('pd.kode_institusi',$kode_institusi);
    return $this->db->get()->result();
  }

  function get_nilai_by_prodi($kode_prodi,$thnAkademik,$kd_semester){
    $this->datatables->select('d.kd_dosen, d.nm_dosen');
    $this->datatables->select("
    CASE
      WHEN (SELECT SUM(total)/2 FROM data_kuesioner dk WHERE dk.kd_dosen=d.kd_dosen AND thnAkademik='$thnAkademik' AND kd_semester='$kd_semester') BETWEEN 140 AND 155 THEN 5
      WHEN (SELECT SUM(total)/2 FROM data_kuesioner dk WHERE dk.kd_dosen=d.kd_dosen AND thnAkademik='$thnAkademik' AND kd_semester='$kd_semester') BETWEEN 125 AND 139 THEN 4
      WHEN (SELECT SUM(total)/2 FROM data_kuesioner dk WHERE dk.kd_dosen=d.kd_dosen AND thnAkademik='$thnAkademik' AND kd_semester='$kd_semester') BETWEEN 110 AND 124 THEN 3
      ELSE 2
    END as skor_kuisoner
    ");
    $this->datatables->select("
    CASE
      WHEN (SELECT AVG(ikd) FROM db_polling.rekapitulasi_polling rp WHERE rp.kd_dosen=d.kd_dosen AND tahunAkademik='$thnAkademik' AND kd_semester='$kd_semester')>=3.5 THEN 5
      WHEN (SELECT AVG(ikd) FROM db_polling.rekapitulasi_polling rp WHERE rp.kd_dosen=d.kd_dosen AND tahunAkademik='$thnAkademik' AND kd_semester='$kd_semester') BETWEEN 3 AND 3.49 THEN 2
      ELSE 0
    END as skor_ikd
    ");
    $this->datatables->select("
    CASE
      WHEN(
          (SELECT COUNT(id) FROM db_sipenamas.data_proposal_penelitian as dp JOIN db_sipenamas.data_dosen_penelitian as ddp ON dp.id=ddp.id_penelitian WHERE ddp.kd_dosen=d.kd_dosen AND dp.thn_akademik='$thnAkademik' AND semester='$kd_semester')>0
        and
          (SELECT COUNT(id) FROM db_sipenamas.data_proposal as dp JOIN db_sipenamas.data_dosen_proposal as ddp ON dp.id=ddp.id_proposal WHERE ddp.kd_dosen=d.kd_dosen AND dp.thn_akademik='$thnAkademik' AND semester='$kd_semester')>0
          )
        THEN 5
      WHEN(
          (SELECT COUNT(id) FROM db_sipenamas.data_proposal_penelitian as dp JOIN db_sipenamas.data_dosen_penelitian as ddp ON dp.id=ddp.id_penelitian WHERE ddp.kd_dosen=d.kd_dosen AND dp.thn_akademik='$thnAkademik' AND semester='$kd_semester')>0
        or
          (SELECT COUNT(id) FROM db_sipenamas.data_proposal as dp JOIN db_sipenamas.data_dosen_proposal as ddp ON dp.id=ddp.id_proposal WHERE ddp.kd_dosen=d.kd_dosen AND dp.thn_akademik='$thnAkademik' AND semester='$kd_semester')>0
          )
        THEN 2
      ELSE 0
    END as 'lppm'
    ");
    $this->datatables->select("
    (
    CASE
      WHEN (SELECT SUM((SELECT pertemuan FROM db_polling.pertemuan as p1 WHERE tb.kd_dosen=p1.kd_dosen AND tb.kode_mk=p1.kode_mk AND tb.kelas=p1.kelas AND p1.thnAkademik='$thnAkademik' AND p1.kd_semester='$kd_semester' ORDER BY pertemuan DESC limit 1))/SUM(tb.jum_pert) FROM dosen as d1 JOIN (SELECT DISTINCT p.kode_mk, p.kelas, p.kd_dosen, CASE WHEN (Praktek='y' AND sks>=2) THEN 28 WHEN (Praktek='y' AND sks=1) THEN 14 WHEN (Praktek='t' AND (sks=3 or sks=1)) THEN 14 ELSE sks*7 END as 'jum_pert' FROM db_polling.pertemuan as p JOIN kurikulummdp as k ON k.Kode_MK=p.KODE_MK WHERE thnAkademik='$thnAkademik' AND kd_semester='$kd_semester') as tb ON d1.kd_dosen=tb.kd_dosen WHERE d1.kd_dosen=d.kd_dosen)*100>90 THEN 5
      WHEN (SELECT SUM((SELECT pertemuan FROM db_polling.pertemuan as p1 WHERE tb.kd_dosen=p1.kd_dosen AND tb.kode_mk=p1.kode_mk AND tb.kelas=p1.kelas AND p1.thnAkademik='$thnAkademik' AND p1.kd_semester='$kd_semester' ORDER BY pertemuan DESC limit 1))/SUM(tb.jum_pert) FROM dosen as d1 JOIN (SELECT DISTINCT p.kode_mk, p.kelas, p.kd_dosen, CASE WHEN (Praktek='y' AND sks>=2) THEN 28 WHEN (Praktek='y' AND sks=1) THEN 14 WHEN (Praktek='t' AND (sks=3 or sks=1)) THEN 14 ELSE sks*7 END as 'jum_pert' FROM db_polling.pertemuan as p JOIN kurikulummdp as k ON k.Kode_MK=p.KODE_MK WHERE thnAkademik='$thnAkademik' AND kd_semester='$kd_semester') as tb ON d1.kd_dosen=tb.kd_dosen WHERE d1.kd_dosen=d.kd_dosen)*100>80 THEN 2
      ELSE 0
    END
    )as skor_pertemuan
    ");
    $this->datatables->select("IFNULL((SELECT mean_umateri FROM kegiatan_akademik as ka WHERE ka.kd_dosen=d.kd_dosen AND thnAkademik='$thnAkademik' AND kd_semester='$kd_semester'),0) as upload_materi");
    $this->datatables->select("FORMAT(IFNULL((SELECT (mean_usoal+mean_unilai)/2 FROM kegiatan_akademik as ka WHERE ka.kd_dosen=d.kd_dosen AND thnAkademik='$thnAkademik' AND kd_semester='$kd_semester'),0),2) as upload_soalnilai");
    $this->datatables->select("IFNULL((SELECT skor FROM open_km as ok WHERE ok.kd_dosen=d.kd_dosen AND thnAkademik='$thnAkademik' AND kd_semester='$kd_semester'),0) as skor_open_km");
    $this->datatables->select("
    FORMAT((
      (CASE
        WHEN (SELECT SUM(total)/2 FROM data_kuesioner dk WHERE dk.kd_dosen=d.kd_dosen AND thnAkademik='$thnAkademik' AND kd_semester='$kd_semester') BETWEEN 140 AND 155 THEN 5
        WHEN (SELECT SUM(total)/2 FROM data_kuesioner dk WHERE dk.kd_dosen=d.kd_dosen AND thnAkademik='$thnAkademik' AND kd_semester='$kd_semester') BETWEEN 125 AND 139 THEN 4
        WHEN (SELECT SUM(total)/2 FROM data_kuesioner dk WHERE dk.kd_dosen=d.kd_dosen AND thnAkademik='$thnAkademik' AND kd_semester='$kd_semester') BETWEEN 110 AND 124 THEN 3
        ELSE 2
      END)
      +
      (CASE
        WHEN (SELECT AVG(ikd) FROM db_polling.rekapitulasi_polling rp WHERE rp.kd_dosen=d.kd_dosen AND tahunAkademik='$thnAkademik' AND kd_semester='$kd_semester')>=3.5 THEN 5
        WHEN (SELECT AVG(ikd) FROM db_polling.rekapitulasi_polling rp WHERE rp.kd_dosen=d.kd_dosen AND tahunAkademik='$thnAkademik' AND kd_semester='$kd_semester') BETWEEN 3 AND 3.49 THEN 2
        ELSE 0
      END)
      +
      (CASE
        WHEN(
            (SELECT COUNT(id) FROM db_sipenamas.data_proposal_penelitian as dp JOIN db_sipenamas.data_dosen_penelitian as ddp ON dp.id=ddp.id_penelitian WHERE ddp.kd_dosen=d.kd_dosen AND dp.thn_akademik='$thnAkademik' AND semester='$kd_semester')>0
          and
            (SELECT COUNT(id) FROM db_sipenamas.data_proposal as dp JOIN db_sipenamas.data_dosen_proposal as ddp ON dp.id=ddp.id_proposal WHERE ddp.kd_dosen=d.kd_dosen AND dp.thn_akademik='$thnAkademik' AND semester='$kd_semester')>0
            )
          THEN 5
        WHEN(
            (SELECT COUNT(id) FROM db_sipenamas.data_proposal_penelitian as dp JOIN db_sipenamas.data_dosen_penelitian as ddp ON dp.id=ddp.id_penelitian WHERE ddp.kd_dosen=d.kd_dosen AND dp.thn_akademik='$thnAkademik' AND semester='$kd_semester')>0
          or
            (SELECT COUNT(id) FROM db_sipenamas.data_proposal as dp JOIN db_sipenamas.data_dosen_proposal as ddp ON dp.id=ddp.id_proposal WHERE ddp.kd_dosen=d.kd_dosen AND dp.thn_akademik='$thnAkademik' AND semester='$kd_semester')>0
            )
          THEN 2
        ELSE 0
      END)
      +
      (
      CASE
        WHEN (SELECT SUM((SELECT pertemuan FROM db_polling.pertemuan as p1 WHERE tb.kd_dosen=p1.kd_dosen AND tb.kode_mk=p1.kode_mk AND tb.kelas=p1.kelas AND p1.thnAkademik='$thnAkademik' AND p1.kd_semester='$kd_semester' ORDER BY pertemuan DESC limit 1))/SUM(tb.jum_pert) FROM dosen as d1 JOIN (SELECT DISTINCT p.kode_mk, p.kelas, p.kd_dosen, CASE WHEN (Praktek='y' AND sks>=2) THEN 28 WHEN (Praktek='y' AND sks=1) THEN 14 WHEN (Praktek='t' AND (sks=3 or sks=1)) THEN 14 ELSE sks*7 END as 'jum_pert' FROM db_polling.pertemuan as p JOIN kurikulummdp as k ON k.Kode_MK=p.KODE_MK WHERE thnAkademik='$thnAkademik' AND kd_semester='$kd_semester') as tb ON d1.kd_dosen=tb.kd_dosen WHERE d1.kd_dosen=d.kd_dosen)*100>90 THEN 5
        WHEN (SELECT SUM((SELECT pertemuan FROM db_polling.pertemuan as p1 WHERE tb.kd_dosen=p1.kd_dosen AND tb.kode_mk=p1.kode_mk AND tb.kelas=p1.kelas AND p1.thnAkademik='$thnAkademik' AND p1.kd_semester='$kd_semester' ORDER BY pertemuan DESC limit 1))/SUM(tb.jum_pert) FROM dosen as d1 JOIN (SELECT DISTINCT p.kode_mk, p.kelas, p.kd_dosen, CASE WHEN (Praktek='y' AND sks>=2) THEN 28 WHEN (Praktek='y' AND sks=1) THEN 14 WHEN (Praktek='t' AND (sks=3 or sks=1)) THEN 14 ELSE sks*7 END as 'jum_pert' FROM db_polling.pertemuan as p JOIN kurikulummdp as k ON k.Kode_MK=p.KODE_MK WHERE thnAkademik='$thnAkademik' AND kd_semester='$kd_semester') as tb ON d1.kd_dosen=tb.kd_dosen WHERE d1.kd_dosen=d.kd_dosen)*100>80 THEN 2
        ELSE 0
      END
      )
      +
      IFNULL((SELECT mean_umateri FROM kegiatan_akademik as ka WHERE ka.kd_dosen=d.kd_dosen AND thnAkademik='$thnAkademik' AND kd_semester='$kd_semester'),0)
      +
      FORMAT(IFNULL((SELECT (mean_usoal+mean_unilai)/2 FROM kegiatan_akademik as ka WHERE ka.kd_dosen=d.kd_dosen AND thnAkademik='$thnAkademik' AND kd_semester='$kd_semester'),0),2)
      +
      IFNULL((SELECT skor FROM open_km as ok WHERE ok.kd_dosen=d.kd_dosen AND thnAkademik='$thnAkademik' AND kd_semester='$kd_semester'),0)
    ),2)*1 as total_skor
    ");
    $this->datatables->from('dosen as d');
    $this->datatables->join('program_studi as pd','pd.kode_prodi=d.kode_prodi');
    if (is_array($kode_prodi)) {
      $this->datatables->where_in('pd.kode_institusi',$kode_prodi);
    }else{
      $this->datatables->where('d.kode_prodi',$kode_prodi);
    }
    return $this->datatables->generate();
  }

  //cetak laporan
  function report_prodi($kode_prodi,$thnAkademik,$kd_semester){
    $this->db->select('d.kd_dosen, d.nm_dosen');
    $this->db->select("
    CASE
      WHEN (SELECT SUM(total)/2 FROM data_kuesioner dk WHERE dk.kd_dosen=d.kd_dosen AND thnAkademik='$thnAkademik' AND kd_semester='$kd_semester') BETWEEN 140 AND 155 THEN 5
      WHEN (SELECT SUM(total)/2 FROM data_kuesioner dk WHERE dk.kd_dosen=d.kd_dosen AND thnAkademik='$thnAkademik' AND kd_semester='$kd_semester') BETWEEN 125 AND 139 THEN 4
      WHEN (SELECT SUM(total)/2 FROM data_kuesioner dk WHERE dk.kd_dosen=d.kd_dosen AND thnAkademik='$thnAkademik' AND kd_semester='$kd_semester') BETWEEN 110 AND 124 THEN 3
      ELSE 2
    END as skor_kuisoner
    ");
    $this->db->select("
    CASE
      WHEN (SELECT AVG(ikd) FROM db_polling.rekapitulasi_polling rp WHERE rp.kd_dosen=d.kd_dosen AND tahunAkademik='$thnAkademik' AND kd_semester='$kd_semester')>=3.5 THEN 5
      WHEN (SELECT AVG(ikd) FROM db_polling.rekapitulasi_polling rp WHERE rp.kd_dosen=d.kd_dosen AND tahunAkademik='$thnAkademik' AND kd_semester='$kd_semester') BETWEEN 3 AND 3.49 THEN 2
      ELSE 0
    END as skor_ikd
    ");
    $this->db->select("
    CASE
      WHEN(
          (SELECT COUNT(id) FROM db_sipenamas.data_proposal_penelitian as dp JOIN db_sipenamas.data_dosen_penelitian as ddp ON dp.id=ddp.id_penelitian WHERE ddp.kd_dosen=d.kd_dosen AND dp.thn_akademik='$thnAkademik' AND semester='$kd_semester')>0
        and
          (SELECT COUNT(id) FROM db_sipenamas.data_proposal as dp JOIN db_sipenamas.data_dosen_proposal as ddp ON dp.id=ddp.id_proposal WHERE ddp.kd_dosen=d.kd_dosen AND dp.thn_akademik='$thnAkademik' AND semester='$kd_semester')>0
          )
        THEN 5
      WHEN(
          (SELECT COUNT(id) FROM db_sipenamas.data_proposal_penelitian as dp JOIN db_sipenamas.data_dosen_penelitian as ddp ON dp.id=ddp.id_penelitian WHERE ddp.kd_dosen=d.kd_dosen AND dp.thn_akademik='$thnAkademik' AND semester='$kd_semester')>0
        or
          (SELECT COUNT(id) FROM db_sipenamas.data_proposal as dp JOIN db_sipenamas.data_dosen_proposal as ddp ON dp.id=ddp.id_proposal WHERE ddp.kd_dosen=d.kd_dosen AND dp.thn_akademik='$thnAkademik' AND semester='$kd_semester')>0
          )
        THEN 2
      ELSE 0
    END as 'lppm'
    ");
    $this->db->select("
    (
    CASE
      WHEN (SELECT SUM((SELECT pertemuan FROM db_polling.pertemuan as p1 WHERE tb.kd_dosen=p1.kd_dosen AND tb.kode_mk=p1.kode_mk AND tb.kelas=p1.kelas AND p1.thnAkademik='$thnAkademik' AND p1.kd_semester='$kd_semester' ORDER BY pertemuan DESC limit 1))/SUM(tb.jum_pert) FROM dosen as d1 JOIN (SELECT DISTINCT p.kode_mk, p.kelas, p.kd_dosen, CASE WHEN (Praktek='y' AND sks>=2) THEN 28 WHEN (Praktek='y' AND sks=1) THEN 14 WHEN (Praktek='t' AND (sks=3 or sks=1)) THEN 14 ELSE sks*7 END as 'jum_pert' FROM db_polling.pertemuan as p JOIN kurikulummdp as k ON k.Kode_MK=p.KODE_MK WHERE thnAkademik='$thnAkademik' AND kd_semester='$kd_semester') as tb ON d1.kd_dosen=tb.kd_dosen WHERE d1.kd_dosen=d.kd_dosen)*100>90 THEN 5
      WHEN (SELECT SUM((SELECT pertemuan FROM db_polling.pertemuan as p1 WHERE tb.kd_dosen=p1.kd_dosen AND tb.kode_mk=p1.kode_mk AND tb.kelas=p1.kelas AND p1.thnAkademik='$thnAkademik' AND p1.kd_semester='$kd_semester' ORDER BY pertemuan DESC limit 1))/SUM(tb.jum_pert) FROM dosen as d1 JOIN (SELECT DISTINCT p.kode_mk, p.kelas, p.kd_dosen, CASE WHEN (Praktek='y' AND sks>=2) THEN 28 WHEN (Praktek='y' AND sks=1) THEN 14 WHEN (Praktek='t' AND (sks=3 or sks=1)) THEN 14 ELSE sks*7 END as 'jum_pert' FROM db_polling.pertemuan as p JOIN kurikulummdp as k ON k.Kode_MK=p.KODE_MK WHERE thnAkademik='$thnAkademik' AND kd_semester='$kd_semester') as tb ON d1.kd_dosen=tb.kd_dosen WHERE d1.kd_dosen=d.kd_dosen)*100>80 THEN 2
      ELSE 0
    END
    )as skor_pertemuan
    ");
    $this->db->select("IFNULL((SELECT mean_umateri FROM kegiatan_akademik as ka WHERE ka.kd_dosen=d.kd_dosen AND thnAkademik='$thnAkademik' AND kd_semester='$kd_semester'),0) as upload_materi");
    $this->db->select("FORMAT(IFNULL((SELECT (mean_usoal+mean_unilai)/2 FROM kegiatan_akademik as ka WHERE ka.kd_dosen=d.kd_dosen AND thnAkademik='$thnAkademik' AND kd_semester='$kd_semester'),0),2) as upload_soalnilai");
    $this->db->select("IFNULL((SELECT skor FROM open_km as ok WHERE ok.kd_dosen=d.kd_dosen AND thnAkademik='$thnAkademik' AND kd_semester='$kd_semester'),0) as skor_open_km");
    $this->db->select("
    FORMAT((
      (CASE
        WHEN (SELECT SUM(total)/2 FROM data_kuesioner dk WHERE dk.kd_dosen=d.kd_dosen AND thnAkademik='$thnAkademik' AND kd_semester='$kd_semester') BETWEEN 140 AND 155 THEN 5
        WHEN (SELECT SUM(total)/2 FROM data_kuesioner dk WHERE dk.kd_dosen=d.kd_dosen AND thnAkademik='$thnAkademik' AND kd_semester='$kd_semester') BETWEEN 125 AND 139 THEN 4
        WHEN (SELECT SUM(total)/2 FROM data_kuesioner dk WHERE dk.kd_dosen=d.kd_dosen AND thnAkademik='$thnAkademik' AND kd_semester='$kd_semester') BETWEEN 110 AND 124 THEN 3
        ELSE 2
      END)
      +
      (CASE
        WHEN (SELECT AVG(ikd) FROM db_polling.rekapitulasi_polling rp WHERE rp.kd_dosen=d.kd_dosen AND tahunAkademik='$thnAkademik' AND kd_semester='$kd_semester')>=3.5 THEN 5
        WHEN (SELECT AVG(ikd) FROM db_polling.rekapitulasi_polling rp WHERE rp.kd_dosen=d.kd_dosen AND tahunAkademik='$thnAkademik' AND kd_semester='$kd_semester') BETWEEN 3 AND 3.49 THEN 2
        ELSE 0
      END)
      +
      (CASE
        WHEN(
            (SELECT COUNT(id) FROM db_sipenamas.data_proposal_penelitian as dp JOIN db_sipenamas.data_dosen_penelitian as ddp ON dp.id=ddp.id_penelitian WHERE ddp.kd_dosen=d.kd_dosen AND dp.thn_akademik='$thnAkademik' AND semester='$kd_semester')>0
          and
            (SELECT COUNT(id) FROM db_sipenamas.data_proposal as dp JOIN db_sipenamas.data_dosen_proposal as ddp ON dp.id=ddp.id_proposal WHERE ddp.kd_dosen=d.kd_dosen AND dp.thn_akademik='$thnAkademik' AND semester='$kd_semester')>0
            )
          THEN 5
        WHEN(
            (SELECT COUNT(id) FROM db_sipenamas.data_proposal_penelitian as dp JOIN db_sipenamas.data_dosen_penelitian as ddp ON dp.id=ddp.id_penelitian WHERE ddp.kd_dosen=d.kd_dosen AND dp.thn_akademik='$thnAkademik' AND semester='$kd_semester')>0
          or
            (SELECT COUNT(id) FROM db_sipenamas.data_proposal as dp JOIN db_sipenamas.data_dosen_proposal as ddp ON dp.id=ddp.id_proposal WHERE ddp.kd_dosen=d.kd_dosen AND dp.thn_akademik='$thnAkademik' AND semester='$kd_semester')>0
            )
          THEN 2
        ELSE 0
      END)
      +
      (
      CASE
        WHEN (SELECT SUM((SELECT pertemuan FROM db_polling.pertemuan as p1 WHERE tb.kd_dosen=p1.kd_dosen AND tb.kode_mk=p1.kode_mk AND tb.kelas=p1.kelas AND p1.thnAkademik='$thnAkademik' AND p1.kd_semester='$kd_semester' ORDER BY pertemuan DESC limit 1))/SUM(tb.jum_pert) FROM dosen as d1 JOIN (SELECT DISTINCT p.kode_mk, p.kelas, p.kd_dosen, CASE WHEN (Praktek='y' AND sks>=2) THEN 28 WHEN (Praktek='y' AND sks=1) THEN 14 WHEN (Praktek='t' AND (sks=3 or sks=1)) THEN 14 ELSE sks*7 END as 'jum_pert' FROM db_polling.pertemuan as p JOIN kurikulummdp as k ON k.Kode_MK=p.KODE_MK WHERE thnAkademik='$thnAkademik' AND kd_semester='$kd_semester') as tb ON d1.kd_dosen=tb.kd_dosen WHERE d1.kd_dosen=d.kd_dosen)*100>90 THEN 5
        WHEN (SELECT SUM((SELECT pertemuan FROM db_polling.pertemuan as p1 WHERE tb.kd_dosen=p1.kd_dosen AND tb.kode_mk=p1.kode_mk AND tb.kelas=p1.kelas AND p1.thnAkademik='$thnAkademik' AND p1.kd_semester='$kd_semester' ORDER BY pertemuan DESC limit 1))/SUM(tb.jum_pert) FROM dosen as d1 JOIN (SELECT DISTINCT p.kode_mk, p.kelas, p.kd_dosen, CASE WHEN (Praktek='y' AND sks>=2) THEN 28 WHEN (Praktek='y' AND sks=1) THEN 14 WHEN (Praktek='t' AND (sks=3 or sks=1)) THEN 14 ELSE sks*7 END as 'jum_pert' FROM db_polling.pertemuan as p JOIN kurikulummdp as k ON k.Kode_MK=p.KODE_MK WHERE thnAkademik='$thnAkademik' AND kd_semester='$kd_semester') as tb ON d1.kd_dosen=tb.kd_dosen WHERE d1.kd_dosen=d.kd_dosen)*100>80 THEN 2
        ELSE 0
      END
      )
      +
      IFNULL((SELECT mean_umateri FROM kegiatan_akademik as ka WHERE ka.kd_dosen=d.kd_dosen AND thnAkademik='$thnAkademik' AND kd_semester='$kd_semester'),0)
      +
      IFNULL((SELECT (mean_usoal+mean_unilai)/2 FROM kegiatan_akademik as ka WHERE ka.kd_dosen=d.kd_dosen AND thnAkademik='$thnAkademik' AND kd_semester='$kd_semester'),0)
      +
      IFNULL((SELECT skor FROM open_km as ok WHERE ok.kd_dosen=d.kd_dosen AND thnAkademik='$thnAkademik' AND kd_semester='$kd_semester'),0)
    ),1)*1 as total_skor
    ");
    $this->db->from('dosen as d');
    $this->db->join('program_studi as pd','pd.kode_prodi=d.kode_prodi');
    if (is_array($kode_prodi)) {
      $this->db->where_in('pd.kode_institusi',$kode_prodi);
    }else{
      $this->db->where('d.kode_prodi',$kode_prodi);
    }
    $this->db->order_by('total_skor','desc');
    return $this->db->get()->result();
    // echo $this->db->get_compiled_select();
    // die();
  }
}

?>
