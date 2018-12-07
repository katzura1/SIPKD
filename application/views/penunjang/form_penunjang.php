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
        <small>Penunjang</small>
    </h1>
    <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="<?=site_url('penunjang')?>">Penunjang</a></li>
        <li class="active"><?=$title?></li>
    </ol>
</section>

<!-- Main content -->
<section class="content">

    <!-- Default box -->
    <div class="box">
        <div class="box-header with-border">
          <h3 class="box-title">Form Penunjang</h3>
        </div>
        <div class="box-body">
          <?php
          if($this->session->userdata('message')!=''){
            echo $this->session->userdata('message');
          }
          ?>
          <form action="<?=$action?>" method="post" enctype="multipart/form-data">
            <div class="row">
              <div class="col-md-8" style="margin-left:10px;">
                <div class="row">
                  <div class="col-md-6">
                    <div class="form-group">
                      <label>Tahun Akademik</label>
                      <input type="text" name="thnAkademik" value="<?=$thnAkademik?>" class="form-control" readonly required>
                      <?=form_error('thnAkademik')?>
                    </div>
                  </div>
                  <div class="col-md-6">
                    <div class="form-group">
                      <label>Semester</label>
                      <input type="text" name="kd_semester" value="<?=$kd_semester?>" class="form-control" readonly required>
                      <?=form_error('kd_semester')?>
                    </div>
                  </div>
                </div>
                <div class="form-group">
                  <label>Tanggal</label>
                  <input type="date" name="tanggal" value="<?=$tanggal?>" min="2001-01-01" max="<?=$tanggal?>" class="form-control" required>
                  <?=form_error('tanggal')?>
                </div>
                <div class="form-group">
                  <label>Jenis Kegiatan</label>
                  <?=form_dropdown('id_tipe', $dd_kegiatan, $id_tipe, "class='form-control' required")?>
                </div>
                <div class="form-group">
                  <label>Nama Kegiatan</label>
                  <input type="text" name="nama_kegiatan" value="<?=$nama_kegiatan?>" class="form-control" required>
                  <?=form_error('nama_kegiatan')?>
                </div>
                <div class="form-group">
                  <label>Alamat</label>
                  <input type="text" name="alamat" value="<?=$alamat?>" class="form-control" required>
                  <?=form_error('alamat')?>
                </div>
                <div class="form-group">
                  <label>Tempat</label>
                  <input type="text" name="tempat" value="<?=$tempat?>" class="form-control" required>
                  <?=form_error('tempat')?>
                </div>
                <div class="form-group">
                  <label>Dokumen Hasil</label>
                  <input type="file" id="dok_hasil" accept=".jpeg,.jpg,.png,.pdf,.doc,.docx" onchange="validateFileType()" name="dok_hasil" class="form-control">
                  <p class="help-block">Format file : docx, pdf, doc, jpg, jpeg, png</p>
                  <?php
                  if(isset($file)){
                    echo "<p class='help-block'>Dokumen yang telah diupload : <a href='$file'>Unduh</a></p>";
                    echo "<input type='hidden' name='id' value='$id'>";
                  }
                  ?>
                  <?=form_error('dok_hasil')?>
                </div>
                <button type="submit" name="button" class="btn btn-primary"><?=$button?></button>
              </div>
            </div>
          </form>
        </div><!-- /.box-body -->
    </div><!-- /.box -->
</section><!-- /.content -->

<?php
$this->load->view('template/js');
?>
<!--tambahkan custom js disini-->
<script type="text/javascript">
    function validateFileType(){
        var fileName = document.getElementById("dok_hasil").value;
        var idxDot = fileName.lastIndexOf(".") + 1;
        var extFile = fileName.substr(idxDot, fileName.length).toLowerCase();
        if (extFile=="jpg" || extFile=="jpeg" || extFile=="png" || extFile=="doc" || extFile=="docx" || extFile=="pdf"){
            //TO DO
        }else{
            alert("Hanya file dengan ekstensi pdf, docx, jpg yang diperbolehkan!");
            document.getElementById("dok_hasil").value="";
        }
    }
</script>
<?php
$this->load->view('template/foot');
?>
