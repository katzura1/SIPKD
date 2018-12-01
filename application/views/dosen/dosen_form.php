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
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="<?=site_url('dosen')?>">Dosen</a></li>
        <li class="active"><?=$title?> Page</li>
    </ol>
</section>

<!-- Main content -->
<section class="content">

    <!-- Default box -->
    <div class="box box-primary">
      <form action="<?=$action?>" method="post" enctype="multipart/form-data">
        <div class="box-body">
              <div class="row">
                <div class="col-md-6">
                  <div class="form-group">
                    <label>Kode Dosen</label>
                    <input type="text" name="nik" value="<?=$nik?>" class="form-control" <?=$read_only?>>
                    <?=form_error('nik')?>
                  </div>
                  <div class="form-group">
                    <label>Nama Dosen</label>
                    <input type="text" name="nama_dosen" value="<?=$nama_dosen?>" class="form-control">
                    <?=form_error('nama_dosen')?>
                  </div>
                  <div class="form-group">
                    <label>Gelar Depan</label>
                    <input type="text" name="gelar_depan" class="form-control" value="<?=$gelar_depan?>">
                  </div>
                  <div class="form-group">
                    <label>Gelar Belakang</label>
                    <input type="text" name="gelar_belakang" class="form-control" value="<?=$gelar_belakang?>">
                    <?=form_error('gelar_belakang')?>
                  </div>
                  <div class="form-group">
                    <label>Program Studi</label>
                    <select class="form-control" name="kode_jurusan">
                      <?php foreach ($data_jurusan as $row): ?>
                        <option value="<?=$row->kode_prodi?>" <?=$kode_jurusan==$row->kode_prodi?'selected':''?>><?=$row->nama_prodi?></option>
                      <?php endforeach; ?>
                    </select>
                  </div>
                  <div class="form-group">
                    <label>Email</label>
                    <input type="email" name="email_dosen" class="form-control" value="<?=$email_dosen?>">
                    <?=form_error('email_dosen')?>
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="form-group">
                    <label>Pendidikan S1</label>
                    <input type="text" name="s1" class="form-control" value="<?=$s1?>">
                    <?=form_error('s1')?>
                  </div>
                  <div class="form-group">
                    <label>Pendidikan S2</label>
                    <input type="text" name="s2" class="form-control" value="<?=$s2?>">
                    <?=form_error('s2')?>
                  </div>
                  <div class="form-group">
                    <label>Pendidikan S3</label>
                    <input type="text" name="s3" class="form-control" value="<?=$s3?>">
                  </div>
                  <div class="form-group">
                    <label>Jenis Kelamin</label>
                    <select class="form-control" name="jenis_kelamin">
                      <option value="L" <?=$jenis_kelamin=='L'?'selected':''?>>Laki-Laki</option>
                      <option value="P" <?=$jenis_kelamin=='P'?'selected':''?>>Perempuan</option>
                    </select>
                  </div>
                  <div class="form-group">
                    <label>Tanggal Lahir</label>
                    <input type="date" name="tgl_lahir" class="form-control" value="<?=$tgl_lahir?>">
                    <?=form_error('tgl_lahir')?>
                  </div>
                  <div class="form-group">
                    <label>Foto</label>
                    <input type="file" name="foto_dosen" class="form-control">
                    <?=form_error('foto_dosen')?>
                  </div>
                </div>
              </div>

        </div><!-- /.box-body -->
        <div class="box-footer">
          <button class="btn btn-secondary" type="submit" name="button"><?=$button?></button>
        </div><!-- /.box-footer-->
      </form>
    </div><!-- /.box -->

</section><!-- /.content -->

<?php
$this->load->view('template/js');
?>
<!--tambahkan custom js disini-->
<?php
$this->load->view('template/foot');
?>
