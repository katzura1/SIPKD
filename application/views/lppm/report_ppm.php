<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title><?=$title?></title>
    <!-- Bootstrap 3.3.2 -->
    <link href="<?php echo base_url('assets/AdminLTE-2.0.5/bootstrap/css/bootstrap.min.css') ?>" rel="stylesheet" type="text/css" />
    <style type="text/css">
      body{
        padding: 20px;
      }

      header{
        margin-bottom: 30px;
      }

      .title img{
        display: block;
        margin: 0 auto;
      }
      .title h4{
        text-align: center;
        font-weight: bold;
      }
    </style>
  </head>
  <body onload="window.print()" onpageshow="setTimeout(function() {window.close()},0)">
    <header>
       <div class="title">
         <img src="<?=base_url('gambar/laporan_files/image001.png')?>" alt="Logo MDP">
         <h4>LAPORAN PENELITIAN DAN PENGABDIAN DOSEN <br>TAHUN AKADEMIK : <?=$tahun_akademik?> SEMESTER <?=strtoupper($dd_s[$kd_semester])?></h4>
       </div>
    </header>

    <div class="content">
      <!--Data Pengabdian-->
      <h4>List Pengabdian Dosen</h4>
      <table class="table table-striped">
        <thead>
          <tr>
            <th>No</th>
            <th>Kode Dosen</th>
            <th>Nama Dosen</th>
            <th>Program Studi</th>
            <th>Judul</th>
          </tr>
        </thead>
        <tbody>
        <!---->
        <?php $i=0; foreach ($data_pengabdian as $data): $i++?>
          <tr>
            <td><?=$i?></td>
            <td><?=$data->kd_dosen?></td>
            <td><?=$data->nm_dosen?></td>
            <td><?=$data->nama_prodi?></td>
            <td><?=$data->judul?></td>
          </tr>
        <?php endforeach; ?>
        </tbody>
      </table>
      <!--End Data Pengabdian-->
      <!--Data Penelitian-->
      <h4>List Penelitian Dosen</h4>
      <table class="table">
        <thead>
          <tr>
            <th>No</th>
            <th>Kode Dosen</th>
            <th>Nama Dosen</th>
            <th>Program Studi</th>
            <th>Judul</th>
          </tr>
        </thead>
        <tbody>
          <!---->
          <?php $i=0; foreach ($data_penelitian as $data): $i++?>
            <tr>
              <td><?=$i?></td>
              <td><?=$data->kd_dosen?></td>
              <td><?=$data->nm_dosen?></td>
              <td><?=$data->nama_prodi?></td>
              <td><?=$data->judul?></td>
            </tr>
          <?php endforeach; ?>
        </tbody>
      </table>
      <!--End Data Penelitian-->
    </div>
  </body>
</html>
