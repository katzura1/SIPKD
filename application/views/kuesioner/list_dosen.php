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
        Daftar Dosen
        <small>Kuesioner</small>
    </h1>
    <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="#">Kuesioner</a></li>
        <li class="active">Daftar Dosen</li>
    </ol>
</section>

<!-- Main content -->
<section class="content">

    <!-- Default box -->
    <div class="box">
        <div class="box-header with-border">
          <h3 class="box-title">Dosen <?=$title_text?> : <?=$title_kode?></h3>
        </div>
        <div class="box-body">
          <div class="nav-tabs-custom">
            <ul class="nav nav-tabs">
              <li class="active">
                <a href="#tab_1" data-toggle="tab">Belum Dinilai</a>
              </li>
              <li>
                <a href="#tab_2" data-toggle="tab">Sudah Dinilai</a>
              </li>
            </ul>
            <div class="tab-content">
              <div class="tab-pane active" id="tab_1">
                <table class="table table-striped" id="tableDosen">
                  <thead>
                    <tr>
                      <th>No.</th>
                      <th>Kode Dosen</th>
                      <th>Nama Dosen</th>
                      <th>Program Studi</th>
                      <th>Aksi</th>
                    </tr>
                  </thead>
                  <tbody>
                    <?php foreach ($data_dosen as $data): ?>
                      <tr>
                        <td></td>
                        <td><?=$data->kd_dosen?></td>
                        <td><?=($data->gelar_depan." ".$data->nm_dosen." ".$data->gelar_belakang)?></td>
                        <td><?=$data->nama_prodi?></td>
                        <td>
                          <a href="<?=site_url('kuesioner/isi/'.$data->kd_dosen)?>" class="btn btn-success"> NILAI</a>
                        </td>
                      </tr>
                    <?php endforeach; ?>
                  </tbody>
                </table>
              </div><!--tab pane-->
              <div class="tab-pane" id="tab_2">
                <table class="table table-striped" id="tableDosens">
                  <thead>
                    <tr>
                      <th>No.</th>
                      <th>Kode Dosen</th>
                      <th>Nama Dosen</th>
                      <th>Aksi</th>
                    </tr>
                  </thead>
                  <tbody>
                    <?php foreach ($data_dosen_s as $data): ?>
                      <tr>
                        <td></td>
                        <td><?=$data->kd_dosen?></td>
                        <td><?=($data->gelar_depan." ".$data->nm_dosen." ".$data->gelar_belakang)?></td>
                        <td>
                          <a href="<?=site_url('kuesioner/ubah/'.$data->id)?>" class="btn btn-danger"> UBAH</a>
                          <a href="<?=site_url('kuesioner/detail/'.$data->id)?>" class="btn btn-primary"> VIEW</a>
                        </td>
                      </tr>
                    <?php endforeach; ?>
                  </tbody>
                </table>
              </div><!--tab pane-->
            </div>
          </div>
        </div><!-- /.box-body -->
        <div class="box-footer">

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
    var t = $('#tableDosen').DataTable( {
        "columnDefs": [
            {
              "targets": [ 0 ],
              "orderable": false
            },
            {
              "targets": [ 4 ],
              "orderable": false
            }
        ]
    } );
    t.on( 'order.dt search.dt', function () {
        t.column(0, {search:'applied', order:'applied'}).nodes().each( function (cell, i) {
            cell.innerHTML = i+1;
        } );
    } ).draw();

    var u = $('#tableDosens').DataTable( {
        "columnDefs": [
            {
              "targets": [ 0 ],
              "orderable": false
            },
            {
              "targets": [ 4 ],
              "orderable": false
            }
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
