<?php
$this->load->view('template/head');
?>
<!--tambahkan custom css disini-->
<style>
.table th {
text-align: center;
}

</style>
<!-- DataTables -->
  <link rel="stylesheet" href="<?=base_url('assets/AdminLTE-2.0.5/plugins/datatables/dataTables.bootstrap.css')?>">
  <link rel="stylesheet" href="<?=base_url('assets/AdminLTE-2.0.5/plugins/datatables/responsive.dataTables.min.css')?>">
<?php
$this->load->view('template/topbar');
$this->load->view('template/sidebar');
?>
<!-- Content Header (Page header) -->
<section class="content-header">
    <h1>
        List Penunjang
        <small>Dosen</small>
    </h1>
    <ol class="breadcrumb">
        <li><a href="<?=site_url('dashboard')?>"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Penunjang</li>
    </ol>
</section>

<!-- Main content -->
<section class="content">

    <!-- Default box -->
    <div class="box">
        <div class="box-header with-border">
            <h3 class="box-title">List Penunjang Tahun <?=$thnAkademik.' - '.$semester?></h3>
        </div>
        <div class="box-body">
          <a href="<?=site_url('penunjang/tambah')?>" class="btn btn-primary" style="margin-bottom:10px;"><i class="fa fa-plus"></i> Tambah</a>
          <?php
          if($this->session->userdata('message')!=''){
            echo $this->session->userdata('message');
          }
          ?>
          <div class="row" style="margin-bottom:5px;">
            <form method="post">
              <div class="col-md-2">
                <label>Tahun Akademik</label>
                <select class="form-control" name="thnAkademik">
                  <?php foreach ($data_ta as $data): ?>
                    <option value="<?=$data->tahunAkademik?>" <?=$data->tahunAkademik==$thnAkademik?'selected':''?>><?=$data->tahunAkademik?></option>
                  <?php endforeach; ?>
                </select>
              </div>
              <div class="col-md-10">
                <label>Semester</label>
                <div class="row">
                  <div class="col-md-2">
                    <select class="form-control" name="semester">
                      <option value="1" <?=$semester=='1'?'selected':''?>>Ganjil</option>
                      <option value="2" <?=$semester=='2'?'selected':''?>>Genap</option>
                    </select>
                  </div>
                  <div class="col-md-1">
                    <button type="submit" formaction="<?=site_url('penunjang/list_penunjang')?>" onclick="$('form').attr('target', '_self');" name="button" class="btn btn-success" style="display:block;">
                      <i class="fa fa-search"></i>
                      CARI
                    </button>
                  </div>
                  <div class="col-md-1">
                    <button type="submit" formaction="<?=site_url('penunjang/cetak')?>" name="button" class="btn btn-success" style="display:block;" onclick="$('form').attr('target', '_blank');">
                      <i class="fa fa-print"></i>
                      CETAK
                    </button>
                  </div>
                </div>
              </div>
            </form>
          </div>
          <table id="tablePenunjang" class="table table-striped">
            <thead>
              <tr>
                <th>No.</th>
                <th>Jenis Kegiatan</th>
                <th>Nama Kegiatan</th>
                <th>Tempat</th>
                <th>Dokumen</th>
                <th>Status</th>
                <th>Aksi</th>
              </tr>
            </thead>
            <tbody>
              <?php foreach ($data_penunjang as $data): ?>
                <tr>
                  <td></td>
                  <td><?=$data->jenis_kegiatan?></td>
                  <td><?=$data->nama_kegiatan?></td>
                  <td><?=$data->tempat?></td>
                  <td><?=$data->tipe_dok?></td>
                  <td><?=$data->status_periksa=='belum'?"<span class='label label-danger'>".ucfirst($data->status_periksa.' Validasi')."</span>":"<span class='label label-success'>".ucfirst($data->status_periksa.' Validasi')."</span>"?></td>
                  <td>
                    <center>
                    <a href="<?=site_url('penunjang/update/'.$data->id)?>" class="btn  <?=$data->status_periksa=='belum'?'btn-primary':'btn-default disabled'?>"><i class="fa fa-pencil"></i> Update</a>
                    <a data-toggle="modal" onclick="javascript:load_penunjang(<?=$data->id?>)" class="btn btn-success">
                      <i class="fa fa-eye"></i>
                      View
                    </a>
                    </center>
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
<script type="text/javascript" src="<?=base_url('assets/AdminLTE-2.0.5/plugins/datatables/dataTables.responsive.min.js')?>"></script>
<script>
  $(document).ready(function() {
      var t = $('#tablePenunjang').DataTable( {
          "columnDefs": [
              {
                "targets": [ 0 ],
                "orderable": false
              },
              {
                "targets" : [ 3 ],
              },
              {
                "targets": [ 5 ],
                "orderable": false,
              }
          ],
          responsive: true,
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
