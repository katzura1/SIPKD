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
      <?=$title;?>
    </h1>
    <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="<?=site_url('kategori_kinerja')?>">Kategori Kinerja</a></li>
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
                <div class="col-md-6">
                  <div class="form-group">
                    <input type="hidden" name="kd_kategori" value="<?=$kd_kategori?>">
                  </div>
                  <div class="form-group">
                    <label>Nama Kategori Kinerja</label>
                    <input type="text" name="nama_kategori" value="<?=$nama_kategori?>" class="form-control">
                    <?=form_error('nama_kategori')?>
                  </div>
                  <div class="form-group">
                    <button type="submit" name="button" class="btn btn-primary"><?=$button?></button>
                  </div>
                </div>
              </div>
            </form>
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
