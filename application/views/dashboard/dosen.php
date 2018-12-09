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
        Dashboard
        <small>Dosen</small>
    </h1>
    <ol class="breadcrumb">
        <li><a href="<?=site_url('dashboard')?>"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Dashboard</li>
    </ol>
</section>

<!-- Main content -->
<section class="content">
  <!-- Small boxes (Stat box) -->
  <div class="row">
      <div class="col-lg-3 col-xs-6">
          <!-- small box -->
          <div class="small-box bg-aqua">
              <div class="inner">
                  <h3><?=$thnAkdemik?></h3>
                  <p>Tahun Akademik</p>
              </div>
              <div class="icon">
                  <i class="ion ion-calendar"></i>
              </div>
          </div>
      </div><!-- ./col -->
      <div class="col-lg-3 col-xs-6">
          <!-- small box -->
          <div class="small-box bg-green">
              <div class="inner">
                  <h3><?=$kd_semester?></h3>
                  <p>Semester</p>
              </div>
              <div class="icon">
                  <i class="ion ion-code"></i>
              </div>
          </div>
      </div><!-- ./col -->
      <div class="col-lg-3 col-xs-6">
          <!-- small box -->
          <div class="small-box bg-yellow">
              <div class="inner">
                  <h3><?=$jum_penelitian?> / <?=$jum_pengabdian?></h3>
                  <p>Penelitian / Pengabdian</p>
              </div>
              <div class="icon">
                  <i class="ion ion-document"></i>
              </div>
          </div>
      </div><!-- ./col -->
      <div class="col-lg-3 col-xs-6">
          <!-- small box -->
          <div class="small-box bg-red">
              <div class="inner">
                  <h3><?=$jum_penunjang?></h3>
                  <p>Penunjang</p>
              </div>
              <div class="icon">
                  <i class="ion ion-filing"></i>
              </div>
          </div>
      </div><!-- ./col -->
  </div><!-- /.row -->
</section><!-- /.content -->

<?php
$this->load->view('template/js');
?>
<!--tambahkan custom js disini-->
<?php
$this->load->view('template/foot');
?>
