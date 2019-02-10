<?php
date_default_timezone_set('Asia/Jakarta');
?>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Laporan Penunjan Dosen - SIPKD</title>
    <style>
      .img-center{
        display: block;
        margin-left: auto;
        margin-right: auto;
      }
      h4{
        text-align: center;
      }

      .tb-penunjang{
        border-collapse: collapse;
        margin-left: auto;
        margin-right: auto;
      }

      .tb-penunjang td, .tb-penunjang th {
        border: 1px solid #dddddd;
        text-align: left;
        padding: 8px;
      }

      .tb-penunjang tr:nth-child(even) {
        background-color: #dddddd;
      }
    </style>
  </head>
  <body onload="window.print()" onpageshow="setTimeout(function() {window.close()},0)">
    <img src="<?=base_url("gambar/laporan_files/image001.png")?>" class="img-center">
    <h4>SURAT PERNYATAAN MELAKSANAKAN PENUNJANG <br> TAHUN AKADEMIK <?=$thn_akademik?> SEMESTER <?=$semester?></h4>
    <div style="padding:10px">
      Dengan ini menyatakan bahwa:<br><br>
      <table>
        <tr>
          <td>NIK</td>
          <td>:</td>
          <td><?=$data_dosen->kd_dosen?></td>
        </tr>
        <tr>
          <td>Nama</td>
          <td>:</td>
          <td><?=$data_dosen->nm_dosen?></td>
        </tr>
        <tr>
          <td>Program Studi</td>
          <td>:</td>
          <td><?=$data_dosen->nama_prodi?></td>
        </tr>
      </table>
      <br>
      Telah melaksanakan kegiatan penunjang sebagai berikut:
      <br><br>
      <table class="tb-penunjang">
        <tr>
          <th>No</th>
          <th>Judul</th>
          <th>Tanggal</th>
          <th>Tempat</th>
          <th>Dokumen Lampiran</th>
        </tr>
        <?php $i=0; foreach ($data_penunjang as $data): ?>
        <?php if ($data->status_periksa=='sudah'): $i++ ?>
        <tr>
          <td><?=$i?></td>
          <td><?=$data->nama_kegiatan?></td>
          <td><?=$data->tanggal?></td>
          <td><?=$data->tempat.', '.$data->alamat?></td>
          <td><?=$data->tipe_dok?></td>
        </tr>
        <?php endif; ?>
        <?php endforeach; ?>
      </table>
    </div>
    <br>
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
      <b>Catatan:</b><br>
      Cetak dokumen ini dinyatakan sah apabila telah dilakukan validasi dengan cap dan tanda tangan yang berwenang dari pihak STMIK, AMIK atau STIE MDP.<br>
      <i>Tanggal cetak : <?=date(DATE_RFC2822)?></i>
    </div>
  </body>
</html>
