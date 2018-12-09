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
        Penilaia Kinerja Dosen
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
            </div>
          </form>
          <div class="row">
            <div class="col-md-6">
              <table class="table table-striped">
                <thead>
                  <tr>
                    <th>Komponen</th>
                    <th>Skor</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td>Penilaian Atasan</td>
                    <td><?=$data_nilai->skor_kuisoner?></td>
                  </tr>
                  <tr>
                    <td>IKD</td>
                    <td><?=$data_nilai->skor_ikd?></td>
                  </tr>
                  <tr>
                    <td>Kumpul Soal/Nilai</td>
                    <td><?=$data_nilai->upload_soalnilai?></td>
                  </tr>
                  <tr>
                    <td>pertemuan</td>
                    <td><?=$data_nilai->skor_pertemuan?></td>
                  </tr>
                  <tr>
                    <td>Upload Materi</td>
                    <td><?=$data_nilai->upload_materi?></td>
                  </tr>
                  <tr>
                    <td>Penelitian dan Pengabdian</td>
                    <td><?=$data_nilai->lppm?></td>
                  </tr>
                  <tr>
                    <td>Upload Open KM</td>
                    <td><?=$data_nilai->skor_open_km?></td>
                  </tr>
                  <tr>
                    <th>Total</th>
                    <th><?=$data_nilai->total_skor?></th>
                  </tr>
                </tbody>
              </table>
            </div>
            <div class="col-md-6">
              <canvas id="myChart" width="400" height="300"></canvas>
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
var myChart = new Chart(ctx, {
    type: 'bar',
    data: {
        labels: ['Penilaian Atasan','IKD','Kumpul Soal/Nilai','Pertemuan','Upload Materi','PPM','Open KM'],
        datasets: [{
            label: 'Skor Penilaian Kuesioner',
            data: [<?=(int)$data_nilai->skor_kuisoner?>,<?=(int)$data_nilai->skor_ikd?>,<?=(int)$data_nilai->upload_soalnilai?>,<?=(int)$data_nilai->skor_pertemuan?>,<?=(int)$data_nilai->upload_materi?>,<?=(int)$data_nilai->lppm?>,<?=(int)$data_nilai->skor_open_km?>],
            backgroundColor: [
                'rgba(255, 99, 132, 0.2)',
                'rgba(54, 162, 235, 0.2)',
                'rgba(255, 206, 86, 0.2)',
                'rgba(75, 192, 192, 0.2)',
                'rgba(153, 102, 255, 0.2)',
                'rgba(255, 159, 64, 0.2)'
            ],
            borderColor: [
                'rgba(255,99,132,1)',
                'rgba(54, 162, 235, 1)',
                'rgba(255, 206, 86, 1)',
                'rgba(75, 192, 192, 1)',
                'rgba(153, 102, 255, 1)',
                'rgba(255, 159, 64, 1)'
            ],
            borderWidth: 1
        }]
    },
    options: {
        scales: {
            yAxes: [{
                ticks: {
                    beginAtZero:true
                }
            }]
        }
    }
});
</script>
<?php
$this->load->view('template/foot');
?>
