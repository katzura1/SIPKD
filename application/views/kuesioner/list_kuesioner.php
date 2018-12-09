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
        <small>it all starts here</small>
    </h1>
    <ol class="breadcrumb">
        <li><a href="<?=site_url('dashboard')?>"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="<?=site_url('kuesioner')?>">Kuesioner</a></li>
        <li class="active"><?=$title?></li>
    </ol>
</section>

<!-- Main content -->
<section class="content">

    <!-- Default box -->
    <div class="box">
      <form action="<?=$action?>" method="post">
        <div class="box-header with-border">
          <div class="row">
            <div class="col-md-6">
              <div class="form-group">
                <label>Kode Dosen</label>
                <input type="text" name="kd_dosen" value="<?=$data_dosen->kd_dosen?>" class="form-control" readonly>
              </div>
              <div class="form-group">
                <label>Nama Dosen</label>
                <input type="text" name="nm_dosen" value="<?=$data_dosen->gelar_depan.' '.$data_dosen->nm_dosen.', '.$data_dosen->gelar_belakang?>" class="form-control" readonly>
              </div>
            </div>
            <div class="col-md-6">
              <div class="form-group">
                <div class="form-group">
                  <label>Tahun Akademik dan Semester</label>
                  <input type="text" readonly class="form-control" value="<?=$thnAkademik.' - '.$kd_semester;?>">
                  <input type="hidden" name="thnAkademik" value="<?=$thnAkademik?>" class="form-control" >
                  <input type="hidden" name="kd_semester" value="<?=$kd_semester?>" class="form-control" >
                </div>
                <div class="form-group">
                  <label>Program Studi</label>
                  <input type="text" name="prodi" value="<?=$data_dosen->nama_prodi?>" class="form-control" readonly>
                  <input type="hidden" name="penilai" value="<?=$penilai?>">
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="box-body">
          <?php $i=0; foreach ($data_kategori as $dk): ?>
            <h4><?="Kategori : ".$dk->nama_kategori?></h4>
            <table class="table table-striped">
              <thead>
                <tr>
                  <th style="width:4%;">No.</th>
                  <th>Nama Kompetensi</th>
                  <th style="width:10%;">Nilai</th>
                </tr>
              </thead>
              <tbody>
                <?php
                foreach ($data_kompetensi as $dko):
                  if($dk->kd_kategori==$dko->kd_kategori){
                    $i++;
                ?>
                  <tr>
                    <td><?=$i;?></td>
                    <td><?=$dko->nama_kompetensi?></td>
                    <td>
                      <input type="hidden" name="kd_kompetensi[]" value="<?=$dko->kd_kompetensi?>" >
                      <input type="number" name="skor[]" onkeyup="javascript:handleChange(this)" min="1" max="5" maxlength="1" class="form-control" value="<?=$dko->skor?$dko->skor:'3'?>" required>
                    </td>
                  </tr>
                <?php
                  }
                endforeach;
                ?>
              </tbody>
            </table>
          <?php endforeach; ?>
        </div><!-- /.box-body -->
        <div class="box-footer">
          <a href="<?=site_url('kuesioner')?>" class="btn btn-default">Cancel</a>
          <button type="submit" class="btn btn-primary pull-right">SUBMIT</button>
        </div><!-- /.box-footer-->
      </form>
    </div><!-- /.box -->
</section><!-- /.content -->

<?php
$this->load->view('template/js');
?>
<!--tambahkan custom js disini-->
<script type="text/javascript">
  function handleChange(input){
    if(input.value<1){
      input.value=1;
    }else if(input.value>5){
      input.value=5;
    }
  }
</script>
<?php
$this->load->view('template/foot');
?>
