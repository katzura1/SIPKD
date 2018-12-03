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
        List Penelitian dan Pengabdian Dosen
        <small>LPPM</small>
    </h1>
    <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="#">LPPM</a></li>
        <li class="active">List Prodi</li>
    </ol>
</section>

<!-- Main content -->
<section class="content">

    <!-- Default box -->
    <div class="box">
        <div class="box-header with-border">
          <h3 class="box-title">Institusi : <?=$nama_institusi?></h3>
        </div>
        <div class="box-body">
          <div class="row" style="margin-bottom:10px;">
            <form action="<?=$action?>" method="post">
              <div class="col-md-2">
                <label>Tahun Akademik</label>
                <?=form_dropdown('thnAkademik',$dd_ta,$tahun_akademik,"class='form-control'")?>
              </div>
              <div class="col-md-2">
                <label>Semester</label>
                <?=form_dropdown('kd_semester',$dd_s,$kd_semester,"class='form-control'")?>
              </div>
              <div class="col-md-4">
                <label>Program Studi</label>
                <?=form_dropdown('kd_prodi',$dd_prodi,$kd_prodi,"class='form-control'")?>
              </div>
              <div class="col-md2">
                <label style="color:white;display:block;">BUTTON</label>
                <button type="submit" class="btn btn-primary">FILTER</button>
              </div>
            </form>
          </div>
          <h4>List Penelitian</h4>
          <table class="table table-striped" id="table1">
            <thead>
              <tr>
                <th>No</th>
                <th>Kode Dosen</th>
                <th>Nama Dosen</th>
                <th>Jurusan</th>
                <th>Judul</th>
                <th>Aksi</th>
              </tr>
            </thead>
          </table>
          <h4>List Pengabdian</h4>
          <table class="table table-striped" id="table2">
            <thead>
              <tr>
                <th>No</th>
                <th>Kode Dosen</th>
                <th>Nama Dosen</th>
                <th>Jurusan</th>
                <th>Judul</th>
                <th>Aksi</th>
              </tr>
            </thead>
          </table>
        </div><!-- /.box-body -->
    </div><!-- /.box -->
    <div class="box">
      <div class="box-body">

      </div>
    </div>

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
  // Setup datatables
  $.fn.dataTableExt.oApi.fnPagingInfo = function(oSettings)
  {
      return {
          "iStart": oSettings._iDisplayStart,
          "iEnd": oSettings.fnDisplayEnd(),
          "iLength": oSettings._iDisplayLength,
          "iTotal": oSettings.fnRecordsTotal(),
          "iFilteredTotal": oSettings.fnRecordsDisplay(),
          "iPage": Math.ceil(oSettings._iDisplayStart / oSettings._iDisplayLength),
          "iTotalPages": Math.ceil(oSettings.fnRecordsDisplay() / oSettings._iDisplayLength)
      };
  };

  var table1 = $("#table1").dataTable({
      initComplete: function() {
          var api = this.api();
          $('#table1_filter input')
              .off('.DT')
              .on('input.DT', function() {
                  api.search(this.value).draw();
          });
      },
          oLanguage: {
          sProcessing: "loading..."
      },
          processing: true,
          serverSide: true,
          ajax: {"url": "<?=$url1?>", "type": "POST"},
              columns: [
                  {'data': "kd_dosen","orderable": false,},
                  {"data": "kd_dosen"},
                  {"data": "nm_dosen"},
                  {"data": "nama_prodi"},
                  {"data": "judul"},
                  {"data": "view","orderable": false,}
            ],
            order: [[0, 'asc']],
      rowCallback: function(row, data, iDisplayIndex) {
        var info = this.fnPagingInfo();
        var page = info.iPage;
        var length = info.iLength;
        var index = page * length + (iDisplayIndex + 1);
        $('td:eq(0)', row).html(index);
      }

  });
  var table2 = $("#table2").dataTable({
      initComplete: function() {
          var api = this.api();
          $('#table2_filter input')
              .off('.DT')
              .on('input.DT', function() {
                  api.search(this.value).draw();
          });
      },
          oLanguage: {
          sProcessing: "loading..."
      },
          processing: true,
          serverSide: true,
          ajax: {"url": "<?=$url2?>", "type": "POST"},
              columns: [
                  {'data': "kd_dosen","orderable": false,},
                  {"data": "kd_dosen"},
                  {"data": "nm_dosen"},
                  {"data": "nama_prodi"},
                  {"data": "judul"},
                  {"data": "view","orderable": false,}
            ],
            order: [[0, 'asc']],
      rowCallback: function(row, data, iDisplayIndex) {
        var info = this.fnPagingInfo();
        var page = info.iPage;
        var length = info.iLength;
        var index = page * length + (iDisplayIndex + 1);
        $('td:eq(0)', row).html(index);
      }

  });
  // end setup datatables
});
//function load modal penelitian
function load_penelitian(id){
  $.ajax({
    type:"POST",
    url: "<?=site_url('lppm/get_data_penelitian')?>",
    data: 'id='+id,
    success: function(response){
      $(".modal-penelitian").html(response);
      $(".modal-penelitian").modal('show');
    }
  });
}
//function load modal pengabdian
function load_pengabdian(id){
  $.ajax({
    type:"POST",
    url: "<?=site_url('lppm/get_data_pengabdian')?>",
    data: 'id='+id,
    success: function(response){
      $(".modal-penelitian").html(response);
      $(".modal-penelitian").modal('show');
    }
  });
}
</script>
<div class="modal fade modal-penelitian" tabindex="-1" role="dialog" id="myModal">
</div>
<!-- /.modal -->
<?php
$this->load->view('template/foot');
?>