<?php
$this->load->view('template/head');
?>
<!--tambahkan custom css disini-->
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
        List Penelitian dan Pengabdian Dosen
        <small>LPPM</small>
    </h1>
    <ol class="breadcrumb">
        <li><a href="<?=site_url('dashboard')?>"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="#">LPPM</a></li>
        <li class="active"><?=$title?></li>
    </ol>
</section>

<!-- Main content -->
<section class="content">

    <!-- Default box -->
    <div class="box">
        <div class="box-header with-border">
          <h3 class="box-title">Program Studi : <?=$nama_prodi?></h3>
        </div>
        <div class="box-body">
          <div class="row" style="margin-bottom:10px;">
            <form method="post">
              <div class="col-md-2">
                <label>Tahun Akademik</label>
                <?=form_dropdown('thnAkademik',$dd_ta,$tahun_akademik,"class='form-control'")?>
              </div>
              <div class="col-md-6">
                <label>Semester</label>
                <div class="row">
                  <div class="col-md-3">
                    <?=form_dropdown('kd_semester',$dd_s,$kd_semester,"class='form-control'")?>
                  </div>
                  <div class="col-md-2">
                    <button type="submit" formaction="<?=$action?>" onclick="$('form').attr('target', '_self');" class="btn btn-primary" name="btn-cari"><i class="fa fa-search"></i> CARI</button>
                  </div>
                  <div class="col-md-2">
                    <button type="submit" formaction="<?=$action?>" onclick="$('form').attr('target', '_blank');" class="btn btn-primary" name="btn-print"><i class="fa fa-print"></i> CETAK</button>
                  </div>
                </div>
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
                <th>Program Studi</th>
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
                <th>Program Studi</th>
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
<script type="text/javascript" src="<?=base_url('assets/AdminLTE-2.0.5/plugins/datatables/dataTables.responsive.min.js')?>"></script>
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
          responsive: true,
          ajax: {"url": "<?php echo site_url('lppm/get_penelitian_prodi_json/'.$tahun_akademik.'/'.$kd_semester.'/'.$kode_prodi)?>", "type": "POST"},
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
          responsive: true,
          ajax: {"url": "<?php echo site_url('lppm/get_pengabdian_prodi_json/'.$tahun_akademik.'/'.$kd_semester.'/'.$kode_prodi)?>", "type": "POST"},
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
