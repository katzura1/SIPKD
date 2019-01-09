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

      .tb-nilai td, .tb-nilai th {
        border: 1px solid #dddddd;
        text-align: left;
        padding: 8px;
      }

      .tb-nilai tr:nth-child(even) {
        background-color: #dddddd;
      }
    </style>
  </head>
  <body onload="window.print()" onpageshow="setTimeout(function() {window.close()},0)">
    <img src="<?=base_url("gambar/laporan_files/image001.png")?>" class="img-center">
    <h4>LAPORAN PENILAIAN KINERJA DOSEN TAHUN AKADEMIK <?=$thn_akademik?> SEMESTER <?=$semester=='1'?'GASAL':'GENAP'?></h4>
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
      <tr>
        <th>Program Studi</th>
        <th>:</th>
        <th><?=$data_dosen->nama_prodi?></th>
      </tr>
    </table>
    <br>
    <!--NILAI-->
    <table class="tb-nilai">
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
        <td colspan="2">Total Skor</td>
        <td><?=$data_nilai->total_skor?></td>
      </tr>
    </table>
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
      <i>Tanggal cetak : <?=date('D, d-m-Y, H:i')?></i>
    </div>
  </body>
</html>
