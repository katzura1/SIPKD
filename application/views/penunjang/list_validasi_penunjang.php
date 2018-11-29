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
        Blank page
        <small>it all starts here</small>
    </h1>
    <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="<?=site_url('penunjang/')?>">Penunjang Prodi</a></li>
        <li class="active"><?=$title?></li>
    </ol>
</section>

<!-- Main content -->
<section class="content">
    <!-- Default box -->
    <div class="box">
        <div class="box-header with-border">
            <h3 class="box-title">Data Penunjang <b><?=$thn_akademik.'</b> Semester <b>'.($kd_semester==1?'Gasal':'Genap')?></b> Program Studi : <b><?=$program_studi?></b></h3>
        </div>
        <div class="box-body">
          <?php
          if($this->session->userdata('message')!=''){
            echo $this->session->userdata('message');
          }
          ?>
          <div class="nav-tabs-custom">
            <ul class="nav nav-tabs">
              <li class="active"><a href="#tab_1" data-toggle="tab" aria-expanded="true">Belum Validasi</a></li>
              <li class=""><a href="#tab_2" data-toggle="tab" aria-expanded="false">Sudah Validasi</a></li>
            </ul>
            <div class="tab-content">
              <div class="tab-pane active" id="tab_1">
                <table id="table_validasi" class="table table-striped">
                  <thead>
                    <tr>
                      <th>No.</th>
                      <th>Kode Dosen</th>
                      <th>Nama Dosen</th>
                      <th>Nama Kegiatan</th>
                      <th>Dokumen Hasil</th>
                      <th>Aksi</th>
                    </tr>
                  </thead>
                  <tbody>
                    <?php foreach ($data_penunjang as $data): ?>
                      <tr>
                        <td></td>
                        <td><?=$data->kd_dosen?></td>
                        <td><?=($data->gelar_depan." ".$data->nm_dosen.", ".$data->gelar_belakang)?></td>
                        <td><?=$data->nama_kegiatan?></td>
                        <td>
                          <a href="<?=base_url($data->dok_path.'/'.$data->dok_hasil)?>" target="_blank" class="btn btn-default">Unduh</a>
                        </td>
                        <td>
                          <a data-toggle="modal" onclick="javascript:load_penunjang(<?=$data->id?>)" class="btn btn-primary">View</a>
                          <a href="<?=site_url('penunjang/aksivalidasi/'.$data->id.'/sudah')?>" class="btn btn-success">Validasi</a>
                        </td>
                      </tr>
                    <?php endforeach; ?>
                  </tbody>
                </table>
              </div>
              <!-- /.tab-pane -->
              <div class="tab-pane" id="tab_2">
                <table id="table_penunjang_validasi" class="table table-striped">
                  <thead>
                    <tr>
                      <th>No.</th>
                      <th>Kode Dosen</th>
                      <th>Nama Dosen</th>
                      <th>Nama Kegiatan</th>
                      <th>Dokumen Hasil</th>
                      <th>Aksi</th>
                    </tr>
                  </thead>
                  <tbody>
                    <?php foreach ($data_penunjang_validasi as $data): ?>
                      <tr>
                        <td></td>
                        <td><?=$data->kd_dosen?></td>
                        <td><?=($data->gelar_depan." ".$data->nm_dosen." ".$data->gelar_belakang)?></td>
                        <td><?=$data->nama_kegiatan?></td>
                        <td>
                          <a href="<?=base_url($data->dok_path.'/'.$data->dok_hasil)?>" target="_blank" class="btn btn-default">Unduh</a>
                        </td>
                        <td>
                          <a data-toggle="modal" onclick="javascript:load_penunjang(<?=$data->id?>)" class="btn btn-primary">View</a>
                          <a href="<?=site_url('penunjang/aksivalidasi/'.$data->id.'/belum')?>" class="btn btn-danger">Batal Validasi</a>
                        </td>
                      </tr>
                    <?php endforeach; ?>
                  </tbody>
                </table>
              </div>
              <!-- /.tab-pane -->
            </div>
            <!-- /.tab-content -->
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
      var t = $('#table_validasi').DataTable( {
          "columnDefs": [
              {
                "targets": [ 0 ],
                "orderable": false
              },
              {
                "targets": [ 5 ],
                "orderable": false
              }
          ]
      } );
      t.on( 'order.dt search.dt', function () {
          t.column(0, {search:'applied', order:'applied'}).nodes().each( function (cell, i) {
              cell.innerHTML = i+1;
          } );
      } ).draw();

      var ta = $('#table_penunjang_validasi').DataTable( {
          "columnDefs": [
              {
                "targets": [ 0 ],
                "orderable": false
              },
              {
                "targets": [ 5 ],
                "orderable": false
              }
          ]
      } );
      ta.on( 'order.dt search.dt', function () {
          ta.column(0, {search:'applied', order:'applied'}).nodes().each( function (cell, i) {
              cell.innerHTML = i+1;
          } );
      } ).draw();
  } );
  function load_penunjang(id){
    $.ajax({
      type:"POST",
      url: "<?=site_url('penunjang/get_data_penunjang')?>",
      data: 'id_penunjang='+id,
      success: function(response){
        $(".displaycontent").html(response);
        $(".displaycontent").modal('show');
      }
    });
  }
</script>
<div class="modal fade displaycontent" tabindex="-1" role="dialog" id="myModal">
</div>
<?php
$this->load->view('template/foot');
?>
