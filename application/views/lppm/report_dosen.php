<?php
$this->load->view('template/head');
?>
<!--tambahkan custom css disini-->
<!-- DataTables -->
  <link rel="stylesheet" href="<?=base_url('assets/AdminLTE-2.0.5/plugins/datatables/dataTables.bootstrap.css')?>">
<?php
$this->load->view('template/topbar');
$this->load->view('template/sidebar');
?>
<!-- Content Header (Page header) -->
<section class="content-header">
    <h1>
        Data Penelitian dan Pengabdian Maysarakat Dosen
        <small>LPPM</small>
    </h1>
    <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="#">LPPM</a></li>
        <li class="active">Data Dosen</li>
    </ol>
</section>

<!-- Main content -->
<section class="content">

    <!-- Default box -->
    <div class="box">
        <div class="box-header with-border">
            <h3 class="box-title">Penelitian</h3>
            <div class="box-tools pull-right">
                <button class="btn btn-box-tool" data-widget="collapse" data-toggle="tooltip" title="Collapse"><i class="fa fa-minus"></i></button>
            </div>
        </div>
        <div class="box-body">
          <div class="row">
            <form id="form1" action="<?=site_url('lppm/lihat_data')?>" method="post">
              <div class="col-md-2">
                <label>Tahun Akademik</label>
                <?=form_dropdown('ta_penelitian',$dd_ta_penelitian,$ta_penelitian,"class='form-control'")?>
              </div>
              <div class="col-md-2">
                <label>Semester</label>
                <?=form_dropdown('s_penelitian',array('1'=>'Gasal','2'=>'Genap'),$s_penelitian,"class='form-control'")?>
              </div>
              <div class="col-md-2">
                <label style="color:white">Button</label>
                <button type="submit" class='btn btn-primary' style="display:block">FILTER</button>
              </div>
            </form>
          </div>
          <div style="margin-top:15px;">
            <table class="table table-striped" id="table1">
              <thead>
                <tr>
                  <th>No.</th>
                  <th>No Registrasi</th>
                  <th>Judul</th>
                  <th>Tahun</th>
                  <th>Edisi</th>
                  <th>Volume</th>
                  <th>Tanggal Buat</th>
                </tr>
              </thead>
              <tbody>
              <?php foreach ($data_penelitian as $data): ?>
                <tr>
                  <td></td>
                  <td><?=$data->no_registrasi?></td>
                  <td><?=$data->judul?></td>
                  <td><?=$data->tahun?></td>
                  <td><?=$data->edisi?></td>
                  <td><?=$data->volume?></td>
                  <td><?=$data->tgl_buat?></td>
                </tr>
              <?php endforeach; ?>
              </tbody>
            </table>
          </div>
        </div><!-- /.box-body -->
        <div class="box-footer">
            Footer
        </div><!-- /.box-footer-->
    </div><!-- /.box -->
    <!-- Default box -->
    <div class="box">
        <div class="box-header with-border">
            <h3 class="box-title">Pengabdian</h3>
            <div class="box-tools pull-right">
                <button class="btn btn-box-tool" data-widget="collapse" data-toggle="tooltip" title="Collapse"><i class="fa fa-minus"></i></button>
            </div>
        </div>
        <div class="box-body">
          <div class="row">
              <div class="col-md-2">
                <label>Tahun Akademik</label>
                <?=form_dropdown('ta_pengabdian',$dd_ta_pengabdian,$ta_pengabdian,"class='form-control' form='form1'")?>
              </div>
              <div class="col-md-2">
                <label>Semester</label>
                <?=form_dropdown('s_pengabdian',array('1'=>'Gasal','2'=>'Genap'),$s_pengabdian,"class='form-control' form='form1'")?>
              </div>
              <div class="col-md-2">
                <label style="color:white">Button</label>
                <button type="submit" form="form1" class='btn btn-primary' style="display:block">FILTER</button>
              </div>
          </div>
          <div style="margin-top:15px;">
            <table class="table table-striped table-responsive" id="table2">
              <thead>
                <tr>
                  <th>No.</th>
                  <th>No Registrasi</th>
                  <th>Judul</th>
                  <th>Dari</th>
                  <th>Sampai</th>
                  <th>Tempat</th>
                  <th>Tgl Buat</th>
                </tr>
              </thead>
              <tbody>
              <?php foreach ($data_pengabdian as $data): ?>
                <tr>
                  <td></td>
                  <td><?=$data->no_registrasi;?></td>
                  <td><?=$data->judul;?></td>
                  <td><?=$data->periode_dari?></td>
                  <td><?=$data->periode_sampai?></td>
                  <td><?=$data->tempat?></td>
                  <td><?=$data->tgl_buat?></td>
                </tr>
              <?php endforeach; ?>
              </tbody>
            </table>
          </div>
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
<!--DataTables-->
<script type="text/javascript" src="<?=base_url('assets/AdminLTE-2.0.5/plugins/datatables/jquery.dataTables.min.js')?>"></script>
<script type="text/javascript" src="<?=base_url('assets/AdminLTE-2.0.5/plugins/datatables/dataTables.bootstrap.js')?>"></script>
<script>
  $(document).ready(function() {
      var t = $('#table1').DataTable( {
          "columnDefs": [
              {
                "targets": [ 0 ],
                "orderable": false
              },
          ]
      } );
      t.on( 'order.dt search.dt', function () {
          t.column(0, {search:'applied', order:'applied'}).nodes().each( function (cell, i) {
              cell.innerHTML = i+1;
          } );
      } ).draw();

      var u = $('#table2').DataTable( {
          "columnDefs": [
              {
                "targets": [ 0 ],
                "orderable": false
              },
          ]
      } );
      u.on( 'order.dt search.dt', function () {
          u.column(0, {search:'applied', order:'applied'}).nodes().each( function (cell, i) {
              cell.innerHTML = i+1;
          } );
      } ).draw();
  } );
</script>
<?php
$this->load->view('template/foot');
?>
