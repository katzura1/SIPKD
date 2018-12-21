<?php
$this->load->view('template/head');
?>
<!--tambahkan custom css disini-->
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
              <div class="col-md-1">
                <div class="form-group">
                  <label style="color:white;display:block;">Semester</label>
                  <button type="submit" name="btnCetak" class="btn btn-primary"><i class="fa fa-search"></i> CARI</button>
                </div>
              </div>
              <div class="col-md-1">
                <div class="form-group">
                  <label style="color:white;display:block;">Semester</label>
                  <button type="button" name="btnCetak" class="btn btn-primary"><i class="fa fa-print"></i> CETAK</button>
                </div>
              </div>
            </div>
          </form>
          <div class="row">
            <div class="col-md-12">
              <canvas id="myChart" width="800" height="300"></canvas>
            </div>
            <div class="col-md-12">
              <table class="table table-striped">
                <thead>
                  <tr>
                    <th>No</th>
                    <th>Komponen</th>
                    <th>Skor</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td>1</td>
                    <td>Penilaian Atasan</td>
                    <td><?=$data_nilai->skor_kuisoner?></td>
                  </tr>
                  <tr>
                    <td>2</td>
                    <td>IKD</td>
                    <td><?=$data_nilai->skor_ikd?></td>
                  </tr>
                  <tr>
                    <td>3</td>
                    <td>Kumpul Soal/Nilai</td>
                    <td><?=$data_nilai->upload_soalnilai?></td>
                  </tr>
                  <tr>
                    <td>4</td>
                    <td>Pertemuan</td>
                    <td><?=$data_nilai->skor_pertemuan?></td>
                  </tr>
                  <tr>
                    <td>5</td>
                    <td>Upload Materi</td>
                    <td><?=$data_nilai->upload_materi?></td>
                  </tr>
                  <tr>
                    <td>6</td>
                    <td>Penelitian dan Pengabdian</td>
                    <td><?=$data_nilai->lppm?></td>
                  </tr>
                  <tr>
                    <td>7</td>
                    <td>Upload Open KM</td>
                    <td><?=$data_nilai->skor_open_km?></td>
                  </tr>
                  <tr>
                    <th colspan="2" style="text-align:right;">Total</th>
                    <th><?=$data_nilai->total_skor?></th>
                  </tr>
                </tbody>
              </table>
            </div>
          </div>
        </div><!-- /.box-body -->
    </div><!-- /.box -->

</section><!-- /.content -->

<?php
$this->load->view('template/js');
?>
<!--tambahkan custom js disini-->
<script type="text/javascript" src="<?=base_url('assets\chartjs\Chart.js')?>"></script>
<script>
var ctx = document.getElementById("myChart").getContext('2d');
var data_nilai = [<?=$data_nilai->skor_kuisoner?>,<?=$data_nilai->skor_ikd?>,<?=$data_nilai->upload_soalnilai?>,<?=$data_nilai->skor_pertemuan?>,<?=$data_nilai->upload_materi?>,<?=$data_nilai->lppm?>,<?=$data_nilai->skor_open_km?>];
var colors = ['rgba(255, 99, 132)',
'rgba(54, 162, 235)',
'rgba(255, 206, 86)',
'rgba(118, 192, 192)',
'rgba(153, 102, 255)',
'rgba(255, 159, 80)'];
var bcolors = ['rgba(255,99,132,1)',
'rgba(54, 162, 235, 1)',
'rgba(255, 206, 86, 1)',
'rgba(118, 192, 192, 1)',
'rgba(153, 102, 255, 1)',
'rgba(255, 159, 80, 1)'];
var keterangan = ['Penilaian Atasan','IKD','Kumpul Soal/Nilai','Pertemuan','Upload Materi','PPM','Open KM'];
var myChart = new Chart(ctx, {
    type: 'bar',

    data: {
        labels: ['Penilaian Atasan','IKD','Kumpul Soal/Nilai','Pertemuan','Upload Materi','PPM','Open KM'],
        datasets: [
          {
            data: data_nilai,
            backgroundColor: colors,
            borderColor: bcolors,
            borderWidth: 1
          },
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
        },
        legend: {
          display: false
        },
        tooltips: {
          callbacks: {
             label: function(tooltipItem) {
                    return tooltipItem.yLabel;
             }
          }
        }
    }
});
</script>
<?php
$this->load->view('template/foot');
?>
