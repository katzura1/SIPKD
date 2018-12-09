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
    </h1>
    <ol class="breadcrumb">
        <li><a href="<?=site_url('dashboard')?>"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="<?=site_url()?>jurusan/">Jurusan</a></li>
        <li class="active"><?=$title?> Page</li>
    </ol>
</section>

<!-- Main content -->
<section class="content">

    <!-- Default box -->
    <div class="box box-primary">
        <div class="box-body">
            <form class="form" action="<?=$action?>" method="post">
              <div class="form-group">
                <label>Kode Prodi</label>
                <input style="width:80%;" type="text" name="kode_prodi" value="<?=$kode_prodi?>" class="form-control" <?=(isset($kode_prodi_ro)?$kode_prodi_ro:'')?>>
                <?=form_error('kode_prodi')?>
              </div>
              <div class="form-group">
                <label>Nama Prodi</label>
                <input style="width:80%" type="text" name="nama_prodi" value="<?=$nama_prodi?>" class="form-control">
                <?=form_error('nama_prodi')?>
              </div>
              <div class="form-group">
                <label>Nama Institusi</label>
                <select style="width:80%" class="form-control" name="kode_institusi">
                  <!--run query institusi-->
                  <?php foreach ($data_institusi as $row): ?>
                    <option value="<?=$row->kode_institusi?>" <?=($row->kode_institusi==$kode_institusi?'selected':'')?>><?=$row->nama_institusi?></option>
                  <?php endforeach; ?>
                </select>
              </div>
              <div class="form-group">
                <button class="btn btn-secondary" type="submit" name="button"><?=$button?></button>
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
