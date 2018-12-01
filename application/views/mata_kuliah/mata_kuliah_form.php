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
        <div class="box-body">
            <form action="<?=$action?>" method="post">
              <div class="form-group">
                <label>Kode MK</label>
                <input type="text" name="kode_mk" value="<?=$kode_mk?>" class="form-control" style="width:60%;" <?=$read_only!=''?$read_only:''?>>
              </div>
              <div class="form-group">
                <label>Nama MK</label>
                <input type="text" name="nama_mk" value="<?=$nama_mk?>" class="form-control" style="width:60%;">
              </div>
              <div class="form-group">
                <label>SKS</label>
                <select class="form-control" name="sks" style="width:60%;">
                  <option value="2" <?=$sks=='2'?'selected':''?>>2</option>
                  <option value="4" <?=$sks=='4'?'selected':''?>>4</option>
                </select>
              </div>
              <div class="form-group">
                <button type="submit" name="button" class="btn btn-primary"><?=$button?></button>
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
