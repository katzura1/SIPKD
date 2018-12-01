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
        <small>Tahun Akademik</small>
    </h1>
    <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="<?=site_url('tahun_akademik')?>">Tahun Akademik</a></li>
        <li class="active"><?=$title?></li>
    </ol>
</section>

<!-- Main content -->
<section class="content">

    <!-- Default box -->
    <div class="box">
        <div class="box-body">
            <form action="<?=$action?>" method="post">
              <?=form_error('thnAkademik')?>
              <input type="hidden" name="key_ta" value="<?=$key_ta?>">
              <input type="hidden" name="key_semester" value="<?=$key_semester?>">
              <div class="form-group">
                <label>Tahun Akademik</label>
                <input class="form-control" type="text" name="thnAkademik" value="<?=$tahun_akademik?>" required>
              </div>
              <div class="form-group">
                <label>Kode Semester</label>
                <?=form_dropdown('kd_semester',$dd_semester,$kd_semester,"class='form-control' required")?>
              </div>
              <div class="form-group">
                <label>Status</label>
                <?=form_dropdown('status',$dd_status,$status,"class='form-control' required")?>
              </div>
              <div class="form-group">
                <button type="submit" name="button" class="btn btn-primary"><?=$button?></button>
              </div>
            </form>
        </div><!-- /.box-body -->
    </div><!-- /.box -->

</section><!-- /.content -->

<?php
$this->load->view('template/js');
?>
<!--tambahkan custom js disini-->
<?php
$this->load->view('template/foot');
?>
