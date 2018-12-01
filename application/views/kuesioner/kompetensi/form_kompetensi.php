<?php
$this->load->view('template/head');
?>
<!--tambahkan custom css disini-->
<!-- Select2 style -->
<link href="<?php echo base_url('assets/select2/css/select2.min.css') ?>" rel="stylesheet" type="text/css" />
<?php
$this->load->view('template/topbar');
$this->load->view('template/sidebar');
?>
<!-- Content Header (Page header) -->
<section class="content-header">
    <h1>
        <?=$title?>
        <small>Kompetensi</small>
    </h1>
    <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="<?=site_url('kompetensi')?>">Kompetensi</a></li>
        <li class="active"><?=$title?></li>
    </ol>
</section>

<!-- Main content -->
<section class="content">

    <!-- Default box -->
    <div class="box">
      <form action="<?=$action?>" method="post">
        <div class="box-body">
            <div class="row">
              <div class="col-md-6">
                <div class="form-group">
                  <label>Kategori Kinerja</label>
                  <?=form_dropdown('kategori_kinerja',$dd_kategori_kinerja,$kategori_selected,"class='form-control select2'")?>
                  <?php echo form_error('kategori_kinerja') ?>
                </div>
                <div class="form-group">
                  <label>Kompetensi</label>
                  <input type="hidden" name="key_nama" value="<?=$key_nama?>">
                  <input type="text" name="kompetensi" value="<?=$kompetensi?>" class="form-control">
                  <?php echo form_error('kompetensi') ?>
                </div>
                <div class="form-group">
                  <input type="hidden" name="id" value="<?=$id?>">
                </div>
              </div>
            </div>
        </div><!-- /.box-body -->
        <div class="box-footer">
            <button type="submit" name="button" class="btn btn-primary"><?=$button?></button>
        </div><!-- /.box-footer-->
      </form>
    </div><!-- /.box -->

</section><!-- /.content -->

<?php
$this->load->view('template/js');
?>
<!--tambahkan custom js disini-->
<!--select2-->
<script type="text/javascript" src="<?=base_url('assets/select2/js/select2.full.min.js')?>"></script>
<script>
$(function (){
  //Initialize Select2 Elements
 $('.select2').select2();

})
</script>
<?php
$this->load->view('template/foot');
?>
