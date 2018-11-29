<?php
$this->load->view('template/head');
?>
<!--tambahkan custom css disini-->
<?php
foreach ($data_jumlah as $data) {
  $nama_jurusan[] = $data->nama_prodi;
  $jumlah_jurusan[] = (int) $data->jumlah;
}

$this->load->view('template/topbar');
$this->load->view('template/sidebar');
?>
<!-- Content Header (Page header) -->
<section class="content-header">
    <h1>
        Blank page
        <small>it all starts here</small>
    </h1>
    <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="#">Examples</a></li>
        <li class="active">Blank page</li>
    </ol>
</section>

<!-- Main content -->
<section class="content">

    <!-- Default box -->
    <div class="box">
        <div class="box-body">
          <canvas id="myChart" width="200" height="80"></canvas>
          <!--Load chart js-->
          <script type="text/javascript" src="<?php echo base_url().'assets/chartjs/chart.js'?>"></script>
          <script>
          var ctx = document.getElementById("myChart");
          var myChart = new Chart(ctx, {
            type: 'polarArea',
            data: {
                labels: <?=json_encode($nama_jurusan)?>,
                datasets: [{
                    label: '# of Votes',
                    data: <?=json_encode($jumlah_jurusan)?>,
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
        </div><!-- /.box-body -->
        <div class="box-footer">
            Footer
        </div><!-- /.box-footer-->
    </div><!-- /.box -->

</section><!-- /.content -->

<?php
$this->load->view('template/js');
?>
<!--tambahkan custom js disini-->
<?php
$this->load->view('template/foot');
?>
