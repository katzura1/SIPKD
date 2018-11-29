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
        <div class="box-header with-border">
            <h3 class="box-title">Title</h3>
            <div class="box-tools pull-right">
                <button class="btn btn-box-tool" data-widget="collapse" data-toggle="tooltip" title="Collapse"><i class="fa fa-minus"></i></button>
                <button class="btn btn-box-tool" data-widget="remove" data-toggle="tooltip" title="Remove"><i class="fa fa-times"></i></button>
            </div>
        </div>
        <div class="box-body">
          <div class="row">
            <div class="col-md-6">
              <form action="<?=$action?>" method="post">
                <input type="hidden" name="id" value="<?=$data_okm->id?>">
                <div class="form-group">
                  <label>Tahun Akademik</label>
                  <input class="form-control" type="text" name="thnAkademik" value="<?=$data_okm->thnAkademik?>" readonly>
                </div>
                <div class="form-group">
                  <label>Kode Dosen</label>
                  <input class="form-control" type="text" name="kd_dosen" value="<?=$data_okm->kd_dosen?>" readonly>
                </div>
                <div class="form-group">
                  <label>Nama Dosen</label>
                  <input class="form-control" type="text" name="nm_dosen" value="<?=$data_okm->gelar_depan.' '.$data_okm->nm_dosen.', '.$data_okm->gelar_belakang?>" readonly>
                </div>
                <div class="form-group">
                  <label>Open KM</label>
                  <?=form_dropdown('skor',$dd_option,$data_okm->skor,"class='form-control' required")?>
                </div>
                <div class="form-group">
                  <button type="submit" class="btn btn-primary">SIMPAN</button>
                  <a href="<?=site_url('open_km')?>" class="btn btn-success">BACK</a>
                </div>
              </form>
            </div>
          </div>
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
