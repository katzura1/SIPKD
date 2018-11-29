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
            <form action="<?=$action?>" method="post">
              <input type="hidden" name="key_ta" value="<?=$key_ta?>">
              <input type="hidden" name="key_semester" value="<?=$key_semester?>">
              <div class="form-group">
                <label>Tahun Akademik</label>
                <input class="form-control" type="text" name="thnAkademik" value="<?=$tahun_akademik?>">
                <?=form_error('thnAkademik')?>
              </div>
              <div class="form-group">
                <label>Kode Semester</label>
                <?=form_dropdown('kd_semester',$dd_semester,$kd_semester,"class='form-control'")?>
              </div>
              <div class="form-group">
                <label>Status</label>
                <?=form_dropdown('status',$dd_status,$status,"class='form-control'")?>
              </div>
              <div class="form-group">
                <button type="submit" name="button" class="btn btn-primary"><?=$button?></button>
                <a href="<?=site_url('tahun_akademik')?>" class="btn bg-maroon">BACK</a>
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
