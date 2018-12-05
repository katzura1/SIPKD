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
        <?=$title?>
        <small>Penunjang</small>
    </h1>
    <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Penunjang Institusi</li>
    </ol>
</section>

<!-- Main content -->
<section class="content">

    <!-- Default box -->
    <div class="box">
        <div class="box-body">
          <div class="row">
            <form ction="<?=site_url('penunjang')?>" method="post">
              <div class="col-md-2">
                <label>Tahun Akademik</label>
                <?=form_dropdown('thnAkademik',$data_ta,$thnAkademik,"class='form-control'")?>
              </div>
              <div class="col-md-2">
                <label>Semester</label>
                <?=form_dropdown('kd_semester',array('1'=>'1','2'=>'2'),$kd_semester,"class='form-control'")?>
              </div>
              <div class="col-md-4">
                <label>Program Studi</label>
                <?=form_dropdown('kode_prodi',$data_prodi,$kode_prodi,"class='form-control'")?>
              </div>
              <div class="col-md-4">
                <label style="color:white;">CARI</label>
                <button type="submit" name="button" class="btn btn-success" style="display:block;">
                  <i class="fa fa-search"></i>
                  CARI
                </button>
              </div>
            </form>
          </div>
        </div>
        <div class="box-body">
          <table id="tablePenunjang" class="table table-striped">
            <thead>
              <tr>
                <th>No.</th>
                <th>Nama Kegiatan</th>
                <th>Kode Dosen</th>
                <th>Nama Dosen</th>
                <th>Progam Studi</th>
                <th>Status</th>
                <th>Aksi</th>
              </tr>
            </thead>
            <tbody>
              <?php foreach ($data_penunjang as $data): ?>
                <tr>
                  <td></td>
                  <td><?=$data->nama_kegiatan?></td>
                  <td><?=$data->kd_dosen?></td>
                  <td><?=($data->gelar_depan." ".$data->nm_dosen.", ".$data->gelar_belakang)?></td>
                  <td><?=$data->nama_prodi?></td>
                  <td><?=$data->status_periksa=='belum'?"<span class='label label-danger'>".ucfirst($data->status_periksa.' Validasi')."</span>":"<span class='label label-success'>".ucfirst($data->status_periksa.' Validasi')."</span>"?></td>
                  <td>
                    <a data-toggle="modal" onclick="javascript:load_penunjang(<?=$data->id?>)" class="btn btn-success">
                      <i class="fa fa-eye"></i>
                      View
                    </a>
                  </td>
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
      var t = $('#tablePenunjang').DataTable( {
          "columnDefs": [
              {
                "targets": [ 0 ],
                "orderable": false
              },
              {
                "targets": [ 6 ],
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
<!-- /.modal -->
<?php
$this->load->view('template/foot');
?>
