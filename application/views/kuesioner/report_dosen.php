<?php
$this->load->view('template/head');
function get_poin($total){
  if($total<110){
    return 2;
  }else if($total>=110 && $total<=124){
    return 3;
  }else if($total>=125 && $total<=139){
    return 4;
  }else if($total>=140 && $total<=155){
    return 5;
  }else{
    return 0;
  }
}
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
        <small>Kuesioner</small>
    </h1>
    <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="<?=site_url('kuesioner')?>">Kuesioner</a></li>
        <li class="active"><?=$title?></li>
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
                <?=form_dropdown('thnAkademik',$dd_ta,$dd_ta_selected,"class='form-control'")?>
              </div>
            </div>
            <div class="col-md-2">
              <div class="form-group">
                <label>Semester</label>
                <?=form_dropdown('kd_semester',$dd_semester,$dd_semester_selected,"class='form-control'")?>
              </div>
            </div>
            <div class="col-md-2">
              <div class="form-group">
                <label>Penilai</label>
                <?=form_dropdown('penilai',array('1'=>'Kaprodi','2'=>'PK-1'),$penilai,"class='form-control'")?>
              </div>
            </div>
          </div>
          <button type="submit" class="btn btn-primary">TAMPILKAN</button>
        </form>
      </div>
      <div class="box-body">
        <canvas id="myChart" width="400" height="100"></canvas>
        <table class="table table-striped table-responsive" id="tableNilai" style="margin-top:10px;">
          <thead>
            <tr>
              <th>Nama Kategori</th>
              <th>Skor</th>
            </tr>
          </thead>
          <tbody>
          <?php
          if(count($data_nilai)==0){
            echo "<tr><td colspan='2' style='text-align:center;'></td></tr>";
          }else{
          $total=0;
          foreach ($data_nilai as $data):
          ?>
            <tr>
              <td><?=$data->nama_kategori?></td>
              <td><?=$data->total_skor?></td>
            </tr>
          <?php
          $total+=$data->total_skor;
          endforeach;
          ?>
            <tr>
              <th>Total Skor</th>
              <td><?=$total?></td>
            </tr>
            <!--
            <tr>
              <th>Poin</th>
              <td><?=get_poin($total)?></td>
            </tr>
            -->
          <?php
          }
          ?>
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
var ctx = document.getElementById("myChart").getContext('2d');
var myChart = new Chart(ctx, {
    type: 'bar',
    data: {
        labels: <?=$json_kategori?>,
        datasets: [{
            label: 'Skor Penilaian Kuesioner',
            data: <?=$json_skor?>,
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
