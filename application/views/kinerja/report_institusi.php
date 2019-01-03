<?php
$this->load->view('template/head');
?>
<!--tambahkan custom css disini-->
<!-- DataTables -->
  <link rel="stylesheet" href="<?=base_url('assets/AdminLTE-2.0.5/plugins/datatables/dataTables.bootstrap.css')?>">
  <style>
  @media print {
    canvas {
        min-height: 100%;
        max-width: 100%;
        max-height: 100%;
        height: auto!important;
        width: auto!important;
    }
  }

  @media screen and (max-width: 600px){
    .canvas-print div:first-child{
       max-width: 70%;
    }
  }

  .canvas-print{
    margin-bottom: 20px;
  }
  </style>
<?php
$this->load->view('template/topbar');
$this->load->view('template/sidebar');
?>
<!-- Content Header (Page header) -->
<section class="content-header">
    <h1>
        <?=$title?>
        <small>Nilai Kinerja</small>
    </h1>
    <ol class="breadcrumb">
        <li><a href="<?=site_url('dashboard')?>"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="#">Nilai Kinerja</a></li>
        <li class="active">Dosen</li>
    </ol>
</section>

<!-- Main content -->
<section class="content">

    <!-- Default box -->
    <div class="box">
        <div class="box-body">
          <form action="<?=$action?>" method="post">
            <div class="row">
              <div class="col-md-2">
                <div class="form-group">
                  <label>Tahun Akademik</label>
                  <?=form_dropdown('thnAkademik',$dd_ta,$thnAkademik,"class='form-control'")?>
                </div>
              </div>
              <div class="col-md-2">
                <div class="form-group">
                  <label>Semester</label>
                  <?=form_dropdown('kd_semester',$dd_semester,$kd_semester,"class='form-control'")?>
                </div>
              </div>
              <div class="col-md-1 no-print">
                <div class="form-group">
                  <label style="color:white;display:block;">Semester</label>
                  <button type="submit" name="btnCetak" class="btn btn-primary"><i class="fa fa-search"></i> CARI</button>
                </div>
              </div>
              <div class="col-md-1 no-print">
                <div class="form-group">
                  <label style="color:white;display:block;">Semester</label>
                  <button type="button" name="btnCetak" class="btn btn-primary" onclick="window.print()"><i class="fa fa-print" ></i> CETAK</button>
                </div>
              </div>
            </div>
          </form>
          <div class="canvas-print">
            <div>
              <canvas id="areaChart" width="600" height="180"></canvas>
            </div>
          </div>
          <table id="table1" class="table table-striped">
            <thead>
              <tr>
                <th>No</th>
                <th>Nama Prodi</th>
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
            <?php $i=0; foreach ($data_kinerja as $data): $i++;?>
              <tr>
                <td><?=$i?></td>
                <td><?=$data->nama_prodi?></td>
                <td><?=$data->mean_kuesioner?></td>
                <td><?=$data->mean_ikd?></td>
                <td><?=$data->mean_soalnilai?></td>
                <td><?=$data->mean_pertemuan?></td>
                <td><?=$data->mean_upload_materi?></td>
                <td><?=$data->mean_lppm?></td>
                <td><?=$data->mean_ok?></td>
                <td><?=$data->mean_total?></td>
              </tr>
            <?php endforeach; ?>
            </tbody>
          </table>
        </div><!-- /.box-body -->
    </div><!-- /.box -->

</section><!-- /.content -->

<?php
$this->load->view('template/js');
?>
<!--tambahkan custom js disini-->
<script type="text/javascript" src="<?=base_url('assets\chartjs\Chart.js')?>"></script>
<script>
var ctx = document.getElementById("areaChart").getContext('2d');
var colors = ['rgba(255, 99, 132)',
'rgba(54, 162, 235)',
'rgba(255, 206, 86)',
'rgba(118, 192, 192)',
'rgba(153, 102, 255)',
'rgba(255, 159, 64)'];
var bcolors = ['rgba(255,99,132,1)',
'rgba(54, 162, 235, 1)',
'rgba(255, 206, 86, 1)',
'rgba(118, 192, 192, 1)',
'rgba(153, 102, 255, 1)',
'rgba(255, 159, 64, 1)'];
var myChart = new Chart(ctx, {
    type: 'bar',
    data: {
        labels: ['Penilaian Atasan','IKD','Kumpul Soal/Nilai','Pertemuan','Upload Materi','PPM','Open KM'],
        datasets: [
          <?php for($i=0;$i<count($arr_nm_prodi);$i++):?>
          {
            label: '<?=$arr_nm_prodi[$i]?>',
            data: [<?=$arr_kuesioner[$i]?>,<?=$arr_ikd[$i]?>,<?=$arr_soalnilai[$i]?>,<?=$arr_pertemuan[$i]?>,<?=$arr_materi[$i]?>,<?=$arr_lppm[$i]?>,<?=$arr_open_km[$i]?>],
            backgroundColor: colors[<?=$i?>],
            borderColor: bcolors[<?=$i?>],
            borderWidth: 1
        },
          <?php endfor;?>
      ]
    },
    options: {
        scales: {
            yAxes: [{
                ticks: {
                    beginAtZero:true
                }
            }],
            xAxes: [{
                ticks: {
                  autoSkip: false
                }
            }]
        }
    }
});
</script>
<!--DataTables-->
<script type="text/javascript" src="<?=base_url('assets/AdminLTE-2.0.5/plugins/datatables/jquery.dataTables.min.js')?>"></script>
<script type="text/javascript" src="<?=base_url('assets/AdminLTE-2.0.5/plugins/datatables/dataTables.bootstrap.js')?>"></script>
<script>
  // $(document).ready(function() {
  //     var t = $('#table1').DataTable( {
  //         "columnDefs": [
  //             {
  //               "targets": [ 0 ],
  //               "orderable": false
  //             },
  //         ],
  //         "order" : [[9,'desc']]
  //     } );
  //     t.on( 'order.dt search.dt', function () {
  //         t.column(0, {search:'applied', order:'applied'}).nodes().each( function (cell, i) {
  //             cell.innerHTML = i+1;
  //         } );
  //     } ).draw();
  // } );
</script>
<?php
$this->load->view('template/foot');
?>
