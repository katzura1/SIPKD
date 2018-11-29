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
      <small>User</small>
  </h1>
  <ol class="breadcrumb">
      <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
      <li><a href="<?=site_url('user')?>">User</a></li>
      <li class="active"><?=$title?></li>
  </ol>
</section>

<!-- Main content -->
<section class="content">

    <!-- Default box -->
    <div class="box">
        <div class="box-body">
            <form action="<?=$action?>" method="post">
              <div class="form-group">
                <label>Kode Dosen</label>
                <input type="text" name="kd_dosen" id="kd_dosen" value="<?=$kd_dosen?>" class="form-control" style="width:60%;" readonly autocomplete="username">
                <?=form_error('kd_dosen')?>
              </div>
              <div class="form-group">
                <label>Nama Dosen</label><br>
                <select class="form-control select2" name="nm_dosen" id="nm_dosen" <?=$read_only?> style="width:60%;display:block;">
                  <option disabled selected>Pilih</option>
                  <?php foreach ($data_dosen as $row): ?>
                    <option class='pilih-data' value="<?=$row->kd_dosen?>" <?=$kd_dosen==$row->kd_dosen?'selected':''?>><?=($row->nm_dosen)?></option>
                  <?php endforeach; ?>
                </select>
                <?=form_error('nm_dosen')?>
              </div>
              <div class="form-group">
                <label>Hak Akses</label>
                <select class="form-control" name="hak" style="width:60%;">
                  <option value="1" <?=$hak=='1'?'selected':''?>>Dosen</option>
                  <option value="2" <?=$hak=='2'?'selected':''?>>BAA</option>
                  <option value="3" <?=$hak=='3'?'selected':''?>>KAPRODI SI</option>
                  <option value="4" <?=$hak=='4'?'selected':''?>>KAPRODI TI</option>
                  <option value="5" <?=$hak=='5'?'selected':''?>>KAPRODI KA</option>
                  <option value="6" <?=$hak=='6'?'selected':''?>>KAPRODI MI</option>
                  <option value="7" <?=$hak=='7'?'selected':''?>>KAPRODI TK</option>
                  <option value="8" <?=$hak=='8'?'selected':''?>>KAPRODI AK</option>
                  <option value="9" <?=$hak=='9'?'selected':''?>>KAPRODI MJ</option>
                  <option value="10" <?=$hak=='10'?'selected':''?>>PK-1 STMIK</option>
                  <option value="11" <?=$hak=='11'?'selected':''?>>PK-1 STIE</option>
                </select>
              </div>
              <div class="form-group">
                <button type="submit" name="button" class="btn btn-primary"><?=$button?></button>
                <a href="<?=site_url('user')?>" class="btn btn bg-navy margin">BACK</a>
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
<!--select2-->
<script type="text/javascript" src="<?=base_url('assets/select2/js/select2.full.min.js')?>"></script>
<?php
var_dump($read_only);
  if(strlen($read_only)==0){
?>
    <script>
    $(function (){
      //Initialize Select2 Elements
     $('.select2').select2();

    })
    </script>
<?php
  }
?>
<script>
  $('#nm_dosen').on('change', function() {
    var value = $(this).val();
    document.getElementById('kd_dosen').value=value;
  })
</script>

<?php
$this->load->view('template/foot');
?>
