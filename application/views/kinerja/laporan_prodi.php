<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="UTF-8">
    <title></title>
    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
    <!-- Bootstrap 3.3.2 -->
    <link href="<?php echo base_url('assets/AdminLTE-2.0.5/bootstrap/css/bootstrap.min.css') ?>" rel="stylesheet" type="text/css" />
    <!-- Font Awesome Icons -->
    <link href="<?php echo base_url('assets/font-awesome-4.3.0/css/font-awesome.min.css') ?>" rel="stylesheet" type="text/css" />
    <!-- Theme style -->
    <link href="<?php echo base_url('assets/AdminLTE-2.0.5/dist/css/AdminLTE.min.css') ?>" rel="stylesheet" type="text/css" />
    <!-- iCheck -->
    <link href="<?php echo base_url('assets/AdminLTE-2.0.5/plugins/iCheck/square/blue.css') ?>" rel="stylesheet" type="text/css" />
    <style>
      @page {
        size: auto;
        margin: 0;
      }
      body{
        padding: 40px;
      }
      tbody td, thead th{
        text-align: center;
      }
    </style>
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
  </head>
  <body onload="window.print()" onpageshow="setTimeout(function() {window.close()},0)">
    <h3 style="text-align:center;">LAPORAN KINERJA PRODI <?=strtoupper($nama_prodi)?> TAHUN AKADEMIK <?=$thnAkademik?> SEMESTER <?=$kd_semester?></h3>
    <table class="table">
      <thead>
        <tr>
          <th>No.</th>
          <th>Kode Dosen</th>
          <th>Nama Dosen</th>
          <th>Penilaian Atasan</th>
          <th>IKD</th>
          <th>Kumpul Soal/Nilai</th>
          <th>Pertemuan</th>
          <th>Upload Materi</th>
          <th>PPM</th>
          <th>Upload Open KM</th>
          <th>Total</th>
        </tr>
      </thead>
      <tbody>
        <?php $i=0; foreach ($report as $data): $i++;?>
          <tr>
            <td><?=$i?></td>
            <td><?=$data->kd_dosen?></td>
            <td><?=$data->nm_dosen?></td>
            <td><?=$data->skor_kuisoner?></td>
            <td><?=$data->skor_ikd?></td>
            <td><?=$data->lppm?></td>
            <td><?=$data->skor_pertemuan?></td>
            <td><?=$data->upload_materi?></td>
            <td><?=$data->upload_soalnilai?></td>
            <td><?=$data->skor_open_km?></td>
            <td><?=$data->total_skor?></td>
          </tr>
        <?php endforeach; ?>
      </tbody>
    </table>
  </body>
</html>
