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
        <?=$title?> Page
    </h1>
    <ol class="breadcrumb">
        <li><a href="<?=site_url('dashboard')?>"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Jumlah Pertemuan Dosen</li>
    </ol>
</section>

<!-- Main content -->
<section class="content">
    <!-- Default box -->
    <div class="box">
        <div class="row" style="padding:10px;">
          <form action="<?=$action?>" method="post">
            <div class="col-lg-3">
                <label>Jurusan</label>
                  <select name="kd_jurusan" class="form-control">
                    <option value="01">Semua Prodi</option>
                    <?php foreach ($data_jurusan as $data): ?>
                      <option value="<?=$data->kode_prodi?>" <?=$data->kode_prodi==$kd_prodi?'selected':''?>><?=$data->nama_prodi?></option>
                    <?php endforeach; ?>
                  </select>
            </div>
            <!-- /.col-lg-6 -->
            <div class="col-lg-1">
              <label style="color:white;">CARI</label>
              <button type="submit" class="btn btn-primary" style="display:block;">CARI</button>
            </div>
            <!-- /.col-lg-6 -->
          </form>
        </div>
        <div class="box-body">
          <table class="table table-striped" id="tableUser">
            <thead>
              <tr>
                <th>No.</th>
                <th>Kode Dosen</th>
                <th>Nama Dosen</th>
                <th>Kode MK</th>
                <th>Nama MK</th>
                <th>Kelas</th>
                <th>Jumlah Pertemuan</th>
              </tr>
            </thead>
            <tbody>
              <?php foreach ($data_pertemuan as $data): ?>
                <tr>
                  <td></td>
                  <td><?=$data->kd_dosen?></td>
                  <td><?=$data->gelar_depan.' '.$data->nm_dosen.' '.$data->gelar_belakang?></td>
                  <td><?=$data->kode_mk?></td>
                  <td><?=$data->nama_mk?></td>
                  <td><?=$data->kelas?></td>
                  <td><?=$data->jumlah_pertemuan?></td>
                </tr>
              <?php endforeach; ?>
            </tbody>
          </table>
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
    var t = $('#tableUser').DataTable( {
        "columnDefs": [
            {
              "targets": [ 0 ],
              "orderable": false
            }
        ]
    } );
    t.on( 'order.dt search.dt', function () {
        t.column(0, {search:'applied', order:'applied'}).nodes().each( function (cell, i) {
            cell.innerHTML = i+1;
        } );
    } ).draw();
} );
</script>
<?php
$this->load->view('template/foot');
?>
