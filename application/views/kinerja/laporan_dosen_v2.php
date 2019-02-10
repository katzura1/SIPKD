<?php
//set time zone
date_default_timezone_set('Asia/Jakarta');

function get_predikat($skor){
  if($skor>=27 && $skor<=30){
    return "Sangat Baik";
  }else if($skor>=22 && $skor<=26){
    return "Baik";
  }else if($skor>=18 && $skor<=21){
    return "Cukup";
  }else if($skor>=00 && $skor<=17){
    return "Kurang";
  }
}
?>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Laporan Kinerja Personal Dosen</title>
    <style>
      .img-center{
        display: block;
        margin-left: auto;
        margin-right: auto;
      }
      h4{
        text-align: center;
      }
      table{
        margin-left: auto;
        margin-right: auto;
      }
      table th{
        text-align: left;
      }

      .tb-nilai{
        border-collapse: collapse;
        width: 90%;
      }

      .tb td, .tb th {
        border: 1px solid #dddddd;
        text-align: left;
        padding: 5px;
      }

      .tb-nilai tr:nth-child(even) {
        background-color: #dddddd;
      }
    </style>
  </head>
  <body onload="window.print()" onpageshow="setTimeout(function() {window.close()},0)">
    <!--<img src="<?=base_url("gambar/laporan_files/image001.png")?>" class="img-center">-->
    <h4>LAPORAN PENILAIAN KINERJA DOSEN<br>
      TAHUN AKADEMIK <?=$thn_akademik?><br>
      SEMESTER <?=$semester=='1'?'GASAL':'GENAP'?></h4>
    <table style="width:40%">
      <tr>
        <th>Kode Dosen</th>
        <th>:</th>
        <th><?=$data_dosen->kd_dosen?></th>
      </tr>
      <tr>
        <th>Nama Dosen</th>
        <th>:</th>
        <th><?=$data_dosen->nm_dosen?></th>
      </tr>
    </table>
    <br>
    <!--NILAI-->
    <table class="tb tb-nilai">
      <tr>
        <th>No</th>
        <th>Komponen</th>
        <th>Skor</th>
      </tr>
      <tr>
        <td>1</td>
        <td>Penilaian Atasan</td>
        <td><?=$data_nilai->skor_kuisoner?></td>
      </tr>
      <tr>
        <td>2</td>
        <td>Indeks Kinerja Dosen</td>
        <td><?=$data_nilai->skor_ikd?></td>
      </tr>
      <tr>
        <td>3</td>
        <td>Ketepatan Kumpul Soal/Nilai</td>
        <td><?=$data_nilai->upload_soalnilai?></td>
      </tr>
      <tr>
        <td>4</td>
        <td>Jumlah Pertemuan</td>
        <td><?=$data_nilai->skor_pertemuan?></td>
      </tr>
      <tr>
        <td>5</td>
        <td>Ketepata Upload Materi</td>
        <td><?=$data_nilai->upload_materi?></td>
      </tr>
      <tr>
        <td>6</td>
        <td>Peneltiian dan Pengabdian</td>
        <td><?=$data_nilai->lppm?></td>
      </tr>
      <tr>
        <td>7</td>
        <td>Open KM</td>
        <td><?=$data_nilai->skor_open_km?></td>
      </tr>
      <tr>
        <th colspan="2">Total Skor</th>
        <th><?=$data_nilai->total_skor?></th>
      </tr>
      <tr>
        <th colspan="2">Anda mendapatkan predikat</th>
        <th><?=get_predikat($data_nilai->total_skor)?></th>
      </tr>
    </table>
    <br>
    <table style="float:left; display:inline-block" class="tb">
      <tr>
        <th>Skor</th>
        <th>Predikat</th>
      </tr>
      <tr>
        <td>27-30</td>
        <td>Sangat Baik</td>
      </tr>
      <tr>
        <td>22-26</td>
        <td>Baik</td>
      </tr>
      <tr>
        <td>18-21</td>
        <td>Cukup</td>
      </tr>
      <tr>
        <td>00-17</td>
        <td>Kurang</td>
      </tr>
    </table>
    <span style="float:right;text-align:right">
      Palembang , <?=date('d-m-Y')?>
      <br><br>
      Pembantu Ketua 1
      <br><br><br><br><br><br><br>
      <!--nama dosen-->
      <?=$data_pk_1->gelar_depan.' '.$data_pk_1->nm_dosen.', '.$data_pk_1->gelar_belakang?>
      <br><br>
    </span>
    <div style="clear:both">
      <br><br>
      <b>Catatan:</b><br>
      Cetak dokumen ini dinyatakan sah apabila telah dilakukan validasi dengan cap dan tanda tangan yang berwenang dari pihak STMIK, AMIK atau STIE MDP.<br>
      <i>Tanggal cetak : <?=date(DATE_RFC2822)?></i>
    </div>
  </body>
</html>
