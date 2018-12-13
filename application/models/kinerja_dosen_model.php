<?php
/**
 *
 */
class Kinerja_dosen_model extends CI_Model
{
  function get_nilai_by_dosen($kd_dosen,$thnAkademik,$kd_semester){
    $this->db->select('pd.nama_prodi');
    $this->db->select("
    CASE
      WHEN (SELECT SUM(skor) FROM data_detail_kuesioner as ddk JOIN data_kuesioner dk ON ddk.id=dk.id WHERE dk.kd_dosen=d.kd_dosen AND thnAkademik='$thnAkademik' AND kd_semester='$kd_semester')/2 BETWEEN 140 AND 155 THEN 5
      WHEN (SELECT SUM(skor) FROM data_detail_kuesioner as ddk JOIN data_kuesioner dk ON ddk.id=dk.id WHERE dk.kd_dosen=d.kd_dosen AND thnAkademik='$thnAkademik' AND kd_semester='$kd_semester')/2 BETWEEN 125 AND 139 THEN '4'
      WHEN (SELECT SUM(skor) FROM data_detail_kuesioner as ddk JOIN data_kuesioner dk ON ddk.id=dk.id WHERE dk.kd_dosen=d.kd_dosen AND thnAkademik='$thnAkademik' AND kd_semester='$kd_semester')/2 BETWEEN 110 AND 124 THEN '3'
      ELSE 2
    END as skor_kuisoner
    ");
    $this->db->select("
    CASE
      WHEN (SELECT AVG(ikd) FROM rekapitulasi_polling rp WHERE rp.kd_dosen=d.kd_dosen AND tahunAkademik='$thnAkademik' AND kd_semester='$kd_semester')>3.5 THEN 5
      WHEN (SELECT AVG(ikd) FROM rekapitulasi_polling rp WHERE rp.kd_dosen=d.kd_dosen AND tahunAkademik='$thnAkademik' AND kd_semester='$kd_semester') BETWEEN 3 AND 3.49 THEN 2
      ELSE 0
    END as skor_ikd
    ");
    $this->db->select("
    CASE
      WHEN(
          (SELECT COUNT(id) FROM data_penelitian as dp JOIN data_dosen_penelitian as ddp ON dp.id=ddp.id_penelitian WHERE ddp.kd_dosen=d.kd_dosen AND dp.thn_akademik='$thnAkademik' AND kd_semester='$kd_semester')>0
        and
          (SELECT COUNT(id) FROM data_proposal as dp JOIN data_dosen_proposal as ddp ON dp.id=ddp.id_proposal WHERE ddp.kd_dosen=d.kd_dosen AND dp.thn_akademik='$thnAkademik' AND kd_semester='$kd_semester')>0
          )
        THEN 5
      WHEN(
          (SELECT COUNT(id) FROM data_penelitian as dp JOIN data_dosen_penelitian as ddp ON dp.id=ddp.id_penelitian WHERE ddp.kd_dosen=d.kd_dosen AND dp.thn_akademik='$thnAkademik' AND kd_semester='$kd_semester')>0
        or
          (SELECT COUNT(id) FROM data_proposal as dp JOIN data_dosen_proposal as ddp ON dp.id=ddp.id_proposal WHERE ddp.kd_dosen=d.kd_dosen AND dp.thn_akademik='$thnAkademik' AND kd_semester='$kd_semester')>0
          )
        THEN 2
      ELSE 0
    END as 'lppm'
    ");
    $this->db->select("
    (SELECT
    CASE
      WHEN AVG(
      (SELECT pertemuan FROM pertemuan as p1 WHERE p1.KD_DOSEN=p.KD_DOSEN AND p1.KODE_MK=p.KODE_MK AND p1.KELAS=p.KELAS ORDER BY pertemuan DESC LIMIT 1)
      /
      CASE WHEN (Praktek='y' AND sks>2) THEN 28 WHEN (Praktek='y' AND sks=1) THEN 14 ELSE sks*7 END
      )*100>90 THEN 5
      WHEN AVG(
      (SELECT pertemuan FROM pertemuan as p1 WHERE p1.KD_DOSEN=p.KD_DOSEN AND p1.KODE_MK=p.KODE_MK AND p1.KELAS=p.KELAS ORDER BY pertemuan DESC LIMIT 1)
      /
      CASE WHEN (Praktek='y' AND sks>2) THEN 28 WHEN (Praktek='y' AND sks=1) THEN 14 ELSE sks*7 END
      )*100>80 THEN 2
      ELSE 0
    END
    FROM pertemuan as p JOIN kurikulummdp as k ON k.Kode_MK=p.KODE_MK WHERE p.KD_DOSEN=d.kd_dosen AND thnAkademik='$thnAkademik' AND kd_semester='$kd_semester'
    )as skor_pertemuan
    ");
    $this->db->select("IFNULL((SELECT upload_materi FROM kegiatan_akademik as ka WHERE ka.kd_dosen=d.kd_dosen AND thnAkademik='$thnAkademik' AND kd_semester='$kd_semester'),0) as upload_materi");
    $this->db->select("IFNULL((SELECT (upload_nilai+upload_soal)/2 FROM kegiatan_akademik as ka WHERE ka.kd_dosen=d.kd_dosen AND thnAkademik='$thnAkademik' AND kd_semester='$kd_semester'),0) as upload_soalnilai");
    $this->db->select("IFNULL((SELECT skor FROM open_km as ok WHERE ok.kd_dosen=d.kd_dosen AND thnAkademik='$thnAkademik' AND kd_semester='$kd_semester'),0) as skor_open_km");
    $this->db->select("
    (
      (CASE
        WHEN (SELECT SUM(skor) FROM data_detail_kuesioner as ddk JOIN data_kuesioner dk ON ddk.id=dk.id WHERE dk.kd_dosen=d.kd_dosen AND thnAkademik='$thnAkademik' AND kd_semester='$kd_semester')/2 BETWEEN 140 AND 155 THEN 5
        WHEN (SELECT SUM(skor) FROM data_detail_kuesioner as ddk JOIN data_kuesioner dk ON ddk.id=dk.id WHERE dk.kd_dosen=d.kd_dosen AND thnAkademik='$thnAkademik' AND kd_semester='$kd_semester')/2 BETWEEN 125 AND 139 THEN '4'
        WHEN (SELECT SUM(skor) FROM data_detail_kuesioner as ddk JOIN data_kuesioner dk ON ddk.id=dk.id WHERE dk.kd_dosen=d.kd_dosen AND thnAkademik='$thnAkademik' AND kd_semester='$kd_semester')/2 BETWEEN 110 AND 124 THEN '3'
        ELSE 2
      END)
      +
      (CASE
        WHEN (SELECT AVG(ikd) FROM rekapitulasi_polling rp WHERE rp.kd_dosen=d.kd_dosen AND tahunAkademik='$thnAkademik' AND kd_semester='$kd_semester')>3.5 THEN 5
        WHEN (SELECT AVG(ikd) FROM rekapitulasi_polling rp WHERE rp.kd_dosen=d.kd_dosen AND tahunAkademik='$thnAkademik' AND kd_semester='$kd_semester') BETWEEN 3 AND 3.49 THEN 2
        ELSE 0
      END)
      +
      (CASE
        WHEN(
            (SELECT COUNT(id) FROM data_penelitian as dp JOIN data_dosen_penelitian as ddp ON dp.id=ddp.id_penelitian WHERE ddp.kd_dosen=d.kd_dosen AND dp.thn_akademik='$thnAkademik' AND kd_semester='$kd_semester')>0
          and
            (SELECT COUNT(id) FROM data_proposal as dp JOIN data_dosen_proposal as ddp ON dp.id=ddp.id_proposal WHERE ddp.kd_dosen=d.kd_dosen AND dp.thn_akademik='$thnAkademik' AND kd_semester='$kd_semester')>0
            )
          THEN 5
        WHEN(
            (SELECT COUNT(id) FROM data_penelitian as dp JOIN data_dosen_penelitian as ddp ON dp.id=ddp.id_penelitian WHERE ddp.kd_dosen=d.kd_dosen AND dp.thn_akademik='$thnAkademik' AND kd_semester='$kd_semester')>0
          or
            (SELECT COUNT(id) FROM data_proposal as dp JOIN data_dosen_proposal as ddp ON dp.id=ddp.id_proposal WHERE ddp.kd_dosen=d.kd_dosen AND dp.thn_akademik='$thnAkademik' AND kd_semester='$kd_semester')>0
            )
          THEN 2
        ELSE 0
      END)
      +
      (SELECT
      CASE
        WHEN AVG(
        (SELECT pertemuan FROM pertemuan as p1 WHERE p1.KD_DOSEN=p.KD_DOSEN AND p1.KODE_MK=p.KODE_MK AND p1.KELAS=p.KELAS ORDER BY pertemuan DESC LIMIT 1)
        /
        CASE WHEN (Praktek='y' AND sks>2) THEN 28 WHEN (Praktek='y' AND sks=1) THEN 14 ELSE sks*7 END
        )*100>90 THEN 5
        WHEN AVG(
        (SELECT pertemuan FROM pertemuan as p1 WHERE p1.KD_DOSEN=p.KD_DOSEN AND p1.KODE_MK=p.KODE_MK AND p1.KELAS=p.KELAS ORDER BY pertemuan DESC LIMIT 1)
        /
        CASE WHEN (Praktek='y' AND sks>2) THEN 28 WHEN (Praktek='y' AND sks=1) THEN 14 ELSE sks*7 END
        )*100>80 THEN 2
        ELSE 0
      END
      FROM pertemuan as p JOIN kurikulummdp as k ON k.Kode_MK=p.KODE_MK WHERE p.KD_DOSEN=d.kd_dosen AND thnAkademik='$thnAkademik' AND kd_semester='$kd_semester'
      )
      +
      IFNULL((SELECT upload_materi FROM kegiatan_akademik as ka WHERE ka.kd_dosen=d.kd_dosen AND thnAkademik='$thnAkademik' AND kd_semester='$kd_semester'),0)
      +
      IFNULL((SELECT (upload_nilai+upload_soal)/2 FROM kegiatan_akademik as ka WHERE ka.kd_dosen=d.kd_dosen AND thnAkademik='$thnAkademik' AND kd_semester='$kd_semester'),0)
      +
      IFNULL((SELECT skor FROM open_km as ok WHERE ok.kd_dosen=d.kd_dosen AND thnAkademik='$thnAkademik' AND kd_semester='$kd_semester'),0)
    ) as 'total_skor'
    ");
    $this->db->from('dosen as d');
    $this->db->join('program_studi as pd','pd.kode_prodi=d.kode_prodi');
    $this->db->where('d.kd_dosen',$kd_dosen);
    //echo $this->db->get_compiled_select();
    // die();
    //echo json_encode($this->db->get()->row());
    return $this->db->get()->row();
  }

  function get_nilai_per_institusi($kode_institusi,$thnAkademik,$kd_semester){
    $this->db->select('pd.nama_prodi');
    $this->db->select("
    CASE WHEN (SELECT SUM(skor) FROM data_detail_kuesioner as ddk JOIN data_kuesioner as dk ON ddk.id=dk.id JOIN dosen as d ON dk.kd_dosen=d.kd_dosen WHERE d.kode_prodi=pd.kode_prodi AND thnAkademik='$thnAkademik' AND kd_semester='$kd_semester')/(SELECT COUNT(kd_dosen) FROM dosen as d WHERE d.kode_prodi=pd.kode_prodi) BETWEEN 140 AND 155 THEN 5
    WHEN (SELECT SUM(skor) FROM data_detail_kuesioner as ddk JOIN data_kuesioner as dk ON ddk.id=dk.id JOIN dosen as d ON dk.kd_dosen=d.kd_dosen WHERE d.kode_prodi=pd.kode_prodi AND thnAkademik='$thnAkademik' AND kd_semester='$kd_semester')/(SELECT COUNT(kd_dosen) FROM dosen as d WHERE d.kode_prodi=pd.kode_prodi) BETWEEN 125 AND 139 THEN 4
    WHEN (SELECT SUM(skor) FROM data_detail_kuesioner as ddk JOIN data_kuesioner as dk ON ddk.id=dk.id JOIN dosen as d ON dk.kd_dosen=d.kd_dosen WHERE d.kode_prodi=pd.kode_prodi AND thnAkademik='$thnAkademik' AND kd_semester='$kd_semester')/(SELECT COUNT(kd_dosen) FROM dosen as d WHERE d.kode_prodi=pd.kode_prodi) BETWEEN 110 AND 124 THEN 3
    ELSE 2 END as mean_kuesioner");
    $this->db->select("
    CASE WHEN (SELECT AVG(ikd) FROM `rekapitulasi_polling` as rp JOIN dosen as d ON rp.kd_dosen=d.kd_dosen WHERE d.kode_prodi=pd.kode_prodi AND tahunAkademik='$thnAkademik' AND kd_semester='$kd_semester') > 3.5 THEN 5
    WHEN (SELECT AVG(ikd) FROM `rekapitulasi_polling` as rp JOIN dosen as d ON rp.kd_dosen=d.kd_dosen WHERE d.kode_prodi=pd.kode_prodi AND tahunAkademik='$thnAkademik' AND kd_semester='$kd_semester') BETWEEN 3 AND 3.49 THEN 2
    ELSE 0 END as mean_ikd");
    $this->db->select("
    ROUND(IFNULL((SELECT AVG(
      CASE WHEN( (SELECT COUNT(id) FROM data_penelitian as dp JOIN data_dosen_penelitian as ddp ON dp.id=ddp.id_penelitian WHERE ddp.kd_dosen=d.kd_dosen AND dp.thn_akademik='$thnAkademik' AND kd_semester='$kd_semester')>0 and (SELECT COUNT(id) FROM data_proposal as dp JOIN data_dosen_proposal as ddp ON dp.id=ddp.id_proposal WHERE ddp.kd_dosen=d.kd_dosen AND dp.thn_akademik='$thnAkademik' AND kd_semester='$kd_semester')>0) THEN 5
      WHEN( (SELECT COUNT(id) FROM data_penelitian as dp JOIN data_dosen_penelitian as ddp ON dp.id=ddp.id_penelitian WHERE ddp.kd_dosen=d.kd_dosen AND dp.thn_akademik='$thnAkademik' AND kd_semester='$kd_semester')>0 or (SELECT COUNT(id) FROM data_proposal as dp JOIN data_dosen_proposal as ddp ON dp.id=ddp.id_proposal WHERE ddp.kd_dosen=d.kd_dosen AND dp.thn_akademik='$thnAkademik' AND kd_semester='$kd_semester')>0 ) THEN 2
      ELSE 0 END) FROM `dosen` as `d` WHERE d.kode_prodi=pd.kode_prodi),0),2) as mean_lppm");
    $this->db->select("
    ROUND(IFNULL((SELECT AVG((SELECT
      CASE WHEN AVG((SELECT pertemuan FROM pertemuan as p1 WHERE p1.KD_DOSEN=p.KD_DOSEN AND p1.KODE_MK=p.KODE_MK AND p1.KELAS=p.KELAS ORDER BY pertemuan DESC LIMIT 1)/
      CASE WHEN (Praktek='y' AND sks>2) THEN 28 WHEN (Praktek='y' AND sks=1) THEN 14 ELSE sks*7 END)*100>90 THEN 5
      WHEN AVG((SELECT pertemuan FROM pertemuan as p1 WHERE p1.KD_DOSEN=p.KD_DOSEN AND p1.KODE_MK=p.KODE_MK AND p1.KELAS=p.KELAS ORDER BY pertemuan DESC LIMIT 1)/CASE WHEN (Praktek='y' AND sks>2) THEN 28 WHEN (Praktek='y' AND sks=1) THEN 14 ELSE sks*7 END)*100>80 THEN 2
      ELSE 0 END
      FROM pertemuan as p JOIN kurikulummdp as k ON k.Kode_MK=p.KODE_MK WHERE p.KD_DOSEN=d.kd_dosen AND thnAkademik='$thnAkademik' AND kd_semester='$kd_semester')) FROM `dosen` as `d` WHERE d.kode_prodi=pd.kode_prodi),0),2) as mean_pertemuan");
    $this->db->select("
    (SELECT ROUND(IFNULL(AVG((SELECT upload_materi FROM kegiatan_akademik as ka WHERE ka.kd_dosen=d.kd_dosen AND thnAkademik='$thnAkademik' AND kd_semester='$kd_semester')),0),2) as upload_materi FROM `dosen` as `d` WHERE d.kode_prodi=pd.kode_prodi) as mean_upload_materi");
    $this->db->select("
    (SELECT ROUND(IFNULL(AVG((SELECT (upload_nilai+upload_soal)/2 FROM kegiatan_akademik as ka WHERE ka.kd_dosen=d.kd_dosen AND thnAkademik='$thnAkademik' AND kd_semester='$kd_semester')),0),2) as upload_soalnilai FROM `dosen` as `d` WHERE d.kode_prodi=pd.kode_prodi) as mean_soalnilai");
    $this->db->select("
    (SELECT ROUND(IFNULL(AVG((SELECT skor FROM open_km as ok WHERE ok.kd_dosen=d.kd_dosen AND thnAkademik='$thnAkademik' AND kd_semester='$kd_semester')),0),2) FROM dosen as d WHERE d.kode_prodi=pd.kode_prodi) as mean_ok");
    $this->db->select("
    (CASE WHEN (SELECT SUM(skor) FROM data_detail_kuesioner as ddk JOIN data_kuesioner as dk ON ddk.id=dk.id JOIN dosen as d ON dk.kd_dosen=d.kd_dosen WHERE d.kode_prodi=pd.kode_prodi AND thnAkademik='$thnAkademik' AND kd_semester='$kd_semester')/(SELECT COUNT(kd_dosen) FROM dosen as d WHERE d.kode_prodi=pd.kode_prodi) BETWEEN 140 AND 155 THEN 5
    WHEN (SELECT SUM(skor) FROM data_detail_kuesioner as ddk JOIN data_kuesioner as dk ON ddk.id=dk.id JOIN dosen as d ON dk.kd_dosen=d.kd_dosen WHERE d.kode_prodi=pd.kode_prodi AND thnAkademik='$thnAkademik' AND kd_semester='$kd_semester')/(SELECT COUNT(kd_dosen) FROM dosen as d WHERE d.kode_prodi=pd.kode_prodi) BETWEEN 125 AND 139 THEN 4
    WHEN (SELECT SUM(skor) FROM data_detail_kuesioner as ddk JOIN data_kuesioner as dk ON ddk.id=dk.id JOIN dosen as d ON dk.kd_dosen=d.kd_dosen WHERE d.kode_prodi=pd.kode_prodi AND thnAkademik='$thnAkademik' AND kd_semester='$kd_semester')/(SELECT COUNT(kd_dosen) FROM dosen as d WHERE d.kode_prodi=pd.kode_prodi) BETWEEN 110 AND 124 THEN 3
    ELSE 2 END)
    +
    (CASE WHEN (SELECT AVG(ikd) FROM `rekapitulasi_polling` as rp JOIN dosen as d ON rp.kd_dosen=d.kd_dosen WHERE d.kode_prodi=pd.kode_prodi AND tahunAkademik='$thnAkademik' AND kd_semester='$kd_semester') > 3.5 THEN 5
    WHEN (SELECT AVG(ikd) FROM `rekapitulasi_polling` as rp JOIN dosen as d ON rp.kd_dosen=d.kd_dosen WHERE d.kode_prodi=pd.kode_prodi AND tahunAkademik='$thnAkademik' AND kd_semester='$kd_semester') BETWEEN 3 AND 3.49 THEN 2
    ELSE 0 END)
    +
    (ROUND(IFNULL((SELECT AVG(
      CASE WHEN( (SELECT COUNT(id) FROM data_penelitian as dp JOIN data_dosen_penelitian as ddp ON dp.id=ddp.id_penelitian WHERE ddp.kd_dosen=d.kd_dosen AND dp.thn_akademik='$thnAkademik' AND kd_semester='$kd_semester')>0 and (SELECT COUNT(id) FROM data_proposal as dp JOIN data_dosen_proposal as ddp ON dp.id=ddp.id_proposal WHERE ddp.kd_dosen=d.kd_dosen AND dp.thn_akademik='$thnAkademik' AND kd_semester='$kd_semester')>0) THEN 5
      WHEN( (SELECT COUNT(id) FROM data_penelitian as dp JOIN data_dosen_penelitian as ddp ON dp.id=ddp.id_penelitian WHERE ddp.kd_dosen=d.kd_dosen AND dp.thn_akademik='$thnAkademik' AND kd_semester='$kd_semester')>0 or (SELECT COUNT(id) FROM data_proposal as dp JOIN data_dosen_proposal as ddp ON dp.id=ddp.id_proposal WHERE ddp.kd_dosen=d.kd_dosen AND dp.thn_akademik='$thnAkademik' AND kd_semester='$kd_semester')>0 ) THEN 2
      ELSE 0 END) FROM `dosen` as `d` WHERE d.kode_prodi=pd.kode_prodi),0),2))
    +
    (ROUND(IFNULL((SELECT AVG((SELECT
      CASE WHEN AVG((SELECT pertemuan FROM pertemuan as p1 WHERE p1.KD_DOSEN=p.KD_DOSEN AND p1.KODE_MK=p.KODE_MK AND p1.KELAS=p.KELAS ORDER BY pertemuan DESC LIMIT 1)/
      CASE WHEN (Praktek='y' AND sks>2) THEN 28 WHEN (Praktek='y' AND sks=1) THEN 14 ELSE sks*7 END)*100>90 THEN 5
      WHEN AVG((SELECT pertemuan FROM pertemuan as p1 WHERE p1.KD_DOSEN=p.KD_DOSEN AND p1.KODE_MK=p.KODE_MK AND p1.KELAS=p.KELAS ORDER BY pertemuan DESC LIMIT 1)/CASE WHEN (Praktek='y' AND sks>2) THEN 28 WHEN (Praktek='y' AND sks=1) THEN 14 ELSE sks*7 END)*100>80 THEN 2
      ELSE 0 END
      FROM pertemuan as p JOIN kurikulummdp as k ON k.Kode_MK=p.KODE_MK WHERE p.KD_DOSEN=d.kd_dosen AND thnAkademik='$thnAkademik' AND kd_semester='$kd_semester')) FROM `dosen` as `d` WHERE d.kode_prodi=pd.kode_prodi),0),2))
    +
    (SELECT ROUND(IFNULL(AVG((SELECT upload_materi FROM kegiatan_akademik as ka WHERE ka.kd_dosen=d.kd_dosen AND thnAkademik='$thnAkademik' AND kd_semester='$kd_semester')),0),2) as upload_materi FROM `dosen` as `d` WHERE d.kode_prodi=pd.kode_prodi)
    +
    (SELECT ROUND(IFNULL(AVG((SELECT (upload_nilai+upload_soal)/2 FROM kegiatan_akademik as ka WHERE ka.kd_dosen=d.kd_dosen AND thnAkademik='$thnAkademik' AND kd_semester='$kd_semester')),0),2) as upload_soalnilai FROM `dosen` as `d` WHERE d.kode_prodi=pd.kode_prodi)
    +
    (SELECT ROUND(IFNULL(AVG((SELECT skor FROM open_km as ok WHERE ok.kd_dosen=d.kd_dosen AND thnAkademik='$thnAkademik' AND kd_semester='$kd_semester')),0),2) FROM dosen as d WHERE d.kode_prodi=pd.kode_prodi) as mean_total
    ");
    $this->db->from('program_studi as pd');
    $this->db->where_in('pd.kode_institusi',$kode_institusi);
    return $this->db->get()->result();
  }

  function get_nilai_by_prodi($kode_prodi,$thnAkademik,$kd_semester){
    $this->datatables->select('d.kd_dosen, d.nm_dosen');
    $this->datatables->select("
    CASE
      WHEN (SELECT SUM(skor) FROM data_detail_kuesioner as ddk JOIN data_kuesioner dk ON ddk.id=dk.id WHERE dk.kd_dosen=d.kd_dosen AND thnAkademik='$thnAkademik' AND kd_semester='$kd_semester')/2 BETWEEN 140 AND 155 THEN 5
      WHEN (SELECT SUM(skor) FROM data_detail_kuesioner as ddk JOIN data_kuesioner dk ON ddk.id=dk.id WHERE dk.kd_dosen=d.kd_dosen AND thnAkademik='$thnAkademik' AND kd_semester='$kd_semester')/2 BETWEEN 125 AND 139 THEN '4'
      WHEN (SELECT SUM(skor) FROM data_detail_kuesioner as ddk JOIN data_kuesioner dk ON ddk.id=dk.id WHERE dk.kd_dosen=d.kd_dosen AND thnAkademik='$thnAkademik' AND kd_semester='$kd_semester')/2 BETWEEN 110 AND 124 THEN '3'
      ELSE 2
    END as skor_kuisoner
    ");
    $this->datatables->select("
    CASE
      WHEN (SELECT AVG(ikd) FROM rekapitulasi_polling rp WHERE rp.kd_dosen=d.kd_dosen AND tahunAkademik='$thnAkademik' AND kd_semester='$kd_semester')>3.5 THEN 5
      WHEN (SELECT AVG(ikd) FROM rekapitulasi_polling rp WHERE rp.kd_dosen=d.kd_dosen AND tahunAkademik='$thnAkademik' AND kd_semester='$kd_semester') BETWEEN 3 AND 3.49 THEN 2
      ELSE 0
    END as skor_ikd
    ");
    $this->datatables->select("
    CASE
      WHEN(
          (SELECT COUNT(id) FROM data_penelitian as dp JOIN data_dosen_penelitian as ddp ON dp.id=ddp.id_penelitian WHERE ddp.kd_dosen=d.kd_dosen AND dp.thn_akademik='$thnAkademik' AND kd_semester='$kd_semester')>0
        and
          (SELECT COUNT(id) FROM data_proposal as dp JOIN data_dosen_proposal as ddp ON dp.id=ddp.id_proposal WHERE ddp.kd_dosen=d.kd_dosen AND dp.thn_akademik='$thnAkademik' AND kd_semester='$kd_semester')>0
          )
        THEN 5
      WHEN(
          (SELECT COUNT(id) FROM data_penelitian as dp JOIN data_dosen_penelitian as ddp ON dp.id=ddp.id_penelitian WHERE ddp.kd_dosen=d.kd_dosen AND dp.thn_akademik='$thnAkademik' AND kd_semester='$kd_semester')>0
        or
          (SELECT COUNT(id) FROM data_proposal as dp JOIN data_dosen_proposal as ddp ON dp.id=ddp.id_proposal WHERE ddp.kd_dosen=d.kd_dosen AND dp.thn_akademik='$thnAkademik' AND kd_semester='$kd_semester')>0
          )
        THEN 2
      ELSE 0
    END as 'lppm'
    ");
    $this->datatables->select("
    (SELECT
    CASE
      WHEN AVG(
      (SELECT pertemuan FROM pertemuan as p1 WHERE p1.KD_DOSEN=p.KD_DOSEN AND p1.KODE_MK=p.KODE_MK AND p1.KELAS=p.KELAS ORDER BY pertemuan DESC LIMIT 1)
      /
      CASE WHEN (Praktek='y' AND sks>2) THEN 28  ELSE sks*7 END
      )*100>90 THEN 5
      WHEN AVG(
      (SELECT pertemuan FROM pertemuan as p1 WHERE p1.KD_DOSEN=p.KD_DOSEN AND p1.KODE_MK=p.KODE_MK AND p1.KELAS=p.KELAS ORDER BY pertemuan DESC LIMIT 1)
      /
      CASE WHEN (Praktek='y' AND sks>2) THEN 28 ELSE sks*7 END
      )*100>80 THEN 2
      ELSE 0
    END
    FROM pertemuan as p JOIN kurikulummdp as k ON k.Kode_MK=p.KODE_MK WHERE p.KD_DOSEN=d.kd_dosen AND thnAkademik='$thnAkademik' AND kd_semester='$kd_semester'
    )as skor_pertemuan
    ");
    $this->datatables->select("IFNULL((SELECT upload_materi FROM kegiatan_akademik as ka WHERE ka.kd_dosen=d.kd_dosen AND thnAkademik='$thnAkademik' AND kd_semester='$kd_semester'),0) as upload_materi");
    $this->datatables->select("IFNULL((SELECT (upload_nilai+upload_soal)/2 FROM kegiatan_akademik as ka WHERE ka.kd_dosen=d.kd_dosen AND thnAkademik='$thnAkademik' AND kd_semester='$kd_semester'),0) as upload_soalnilai");
    $this->datatables->select("IFNULL((SELECT skor FROM open_km as ok WHERE ok.kd_dosen=d.kd_dosen AND thnAkademik='$thnAkademik' AND kd_semester='$kd_semester'),0) as skor_open_km");
    $this->datatables->select("
    (
      (CASE
        WHEN (SELECT SUM(skor) FROM data_detail_kuesioner as ddk JOIN data_kuesioner dk ON ddk.id=dk.id WHERE dk.kd_dosen=d.kd_dosen AND thnAkademik='$thnAkademik' AND kd_semester='$kd_semester')/2 BETWEEN 140 AND 155 THEN 5
        WHEN (SELECT SUM(skor) FROM data_detail_kuesioner as ddk JOIN data_kuesioner dk ON ddk.id=dk.id WHERE dk.kd_dosen=d.kd_dosen AND thnAkademik='$thnAkademik' AND kd_semester='$kd_semester')/2 BETWEEN 125 AND 139 THEN '4'
        WHEN (SELECT SUM(skor) FROM data_detail_kuesioner as ddk JOIN data_kuesioner dk ON ddk.id=dk.id WHERE dk.kd_dosen=d.kd_dosen AND thnAkademik='$thnAkademik' AND kd_semester='$kd_semester')/2 BETWEEN 110 AND 124 THEN '3'
        ELSE 2
      END)
      +
      (CASE
        WHEN (SELECT AVG(ikd) FROM rekapitulasi_polling rp WHERE rp.kd_dosen=d.kd_dosen AND tahunAkademik='$thnAkademik' AND kd_semester='$kd_semester')>3.5 THEN 5
        WHEN (SELECT AVG(ikd) FROM rekapitulasi_polling rp WHERE rp.kd_dosen=d.kd_dosen AND tahunAkademik='$thnAkademik' AND kd_semester='$kd_semester') BETWEEN 3 AND 3.49 THEN 2
        ELSE 0
      END)
      +
      (CASE
        WHEN(
            (SELECT COUNT(id) FROM data_penelitian as dp JOIN data_dosen_penelitian as ddp ON dp.id=ddp.id_penelitian WHERE ddp.kd_dosen=d.kd_dosen AND dp.thn_akademik='$thnAkademik' AND kd_semester='$kd_semester')>0
          and
            (SELECT COUNT(id) FROM data_proposal as dp JOIN data_dosen_proposal as ddp ON dp.id=ddp.id_proposal WHERE ddp.kd_dosen=d.kd_dosen AND dp.thn_akademik='$thnAkademik' AND kd_semester='$kd_semester')>0
            )
          THEN 5
        WHEN(
            (SELECT COUNT(id) FROM data_penelitian as dp JOIN data_dosen_penelitian as ddp ON dp.id=ddp.id_penelitian WHERE ddp.kd_dosen=d.kd_dosen AND dp.thn_akademik='$thnAkademik' AND kd_semester='$kd_semester')>0
          or
            (SELECT COUNT(id) FROM data_proposal as dp JOIN data_dosen_proposal as ddp ON dp.id=ddp.id_proposal WHERE ddp.kd_dosen=d.kd_dosen AND dp.thn_akademik='$thnAkademik' AND kd_semester='$kd_semester')>0
            )
          THEN 2
        ELSE 0
      END)
      +
      (SELECT
      CASE
        WHEN AVG(
        (SELECT pertemuan FROM pertemuan as p1 WHERE p1.KD_DOSEN=p.KD_DOSEN AND p1.KODE_MK=p.KODE_MK AND p1.KELAS=p.KELAS ORDER BY pertemuan DESC LIMIT 1)
        /
        CASE WHEN (Praktek='y' AND sks>2) THEN 28  ELSE sks*7 END
        )*100>90 THEN 5
        WHEN AVG(
        (SELECT pertemuan FROM pertemuan as p1 WHERE p1.KD_DOSEN=p.KD_DOSEN AND p1.KODE_MK=p.KODE_MK AND p1.KELAS=p.KELAS ORDER BY pertemuan DESC LIMIT 1)
        /
        CASE WHEN (Praktek='y' AND sks>2) THEN 28 ELSE sks*7 END
        )*100>80 THEN 2
        ELSE 0
      END
      FROM pertemuan as p JOIN kurikulummdp as k ON k.Kode_MK=p.KODE_MK WHERE p.KD_DOSEN=d.kd_dosen AND thnAkademik='$thnAkademik' AND kd_semester='$kd_semester'
      )
      +
      IFNULL((SELECT upload_materi FROM kegiatan_akademik as ka WHERE ka.kd_dosen=d.kd_dosen AND thnAkademik='$thnAkademik' AND kd_semester='$kd_semester'),0)
      +
      IFNULL((SELECT (upload_nilai+upload_soal)/2 FROM kegiatan_akademik as ka WHERE ka.kd_dosen=d.kd_dosen AND thnAkademik='$thnAkademik' AND kd_semester='$kd_semester'),0)
      +
      IFNULL((SELECT skor FROM open_km as ok WHERE ok.kd_dosen=d.kd_dosen AND thnAkademik='$thnAkademik' AND kd_semester='$kd_semester'),0)
    ) as total_skor
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
}

?>
