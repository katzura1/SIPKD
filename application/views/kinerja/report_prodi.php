<?php
$this->load->view('template/head');
?>
<!--tambahkan custom css disini-->
<!-- DataTables -->
  <link rel="stylesheet" href="<?=base_url('assets/AdminLTE-2.0.5/plugins/datatables/dataTables.bootstrap.css')?>">
  <link rel="stylesheet" href="<?=base_url('assets/AdminLTE-2.0.5/plugins/datatables/buttons.dataTables.min.css')?>">
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
        <li><a href="#">Nilai Kinerja</a></li>
        <li class="active">Program Studi</li>
    </ol>
</section>

<!-- Main content -->
<section class="content">

    <!-- Default box -->
    <div class="box">
        <div class="box-header with-border">
            <h3 class="box-title">Dosen <?=isset($nama_prodi)?$nama_prodi:$nama_institusi?></h3>
        </div>
        <div class="box-body">
          <form method="post">
            <div class="row">
              <div class="col-md-2">
                <div class="form-group">
                  <label>Tahun Akademik</label>
                  <?=form_dropdown('thnAkademik',$dd_ta,$thnAkademik,"class='form-control'")?>
                </div>
              </div>
              <div class="col-md-2">
                <div class="form-group">
                  <label>Semester</label>
                  <?=form_dropdown('kd_semester',$dd_semester,$kd_semester,"class='form-control'")?>
                </div>
              </div>
              <?php if (isset($dd_prodi)): ?>
              <div class="col-md-2">
                <div class="form-group">
                  <label>Program Studi</label>
                  <?=form_dropdown('kode_prodi',$dd_prodi,$kode,"class='form-control'")?>
                </div>
              </div>
              <?php endif; ?>
              <div class="col-md-1">
                <div class="form-group">
                  <label style="color:white;display:block;">Semester</label>
                  <button type="submit" onclick="$('form').attr('target', '');" formaction="<?=$action?>" name="btnCetak" class="btn btn-primary"><i class="fa fa-search"></i> CARI</button>
                </div>
              </div>
              <div class="col-md-1">
                <div class="form-group">
                  <label style="color:white;display:block;">Semester</label>
                  <button type="submit" onclick="$('form').attr('target', '_blank');" formaction="<?=site_url('kinerja_dosen/cetak')?>" name="btnCetak" class="btn btn-primary"><i class="fa fa-print"></i> CETAK</button>
                </div>
              </div>
            </div>
          </form>
          <table id="table1" class="table table-striped responsive">
            <thead>
              <tr>
                <th>No.</th>
                <th>Kode Dosen</th>
                <th>Nama Dosen</th>
                <th>Penilaian Atasan</th>
                <th>IKD</th>
                <th>Kumpul Soal/Nilai</th>
                <th>Pertemuan</th>
                <th>Upload Materi</th>
                <th>PPM</th>
                <th>Upload Open KM</th>
                <th>Total</th>
              </tr>
            </thead>
          </table>
        </div><!-- /.box-body -->
    </div><!-- /.box -->

</section><!-- /.content -->

<?php
$this->load->view('template/js');
?>
<!--tambahkan custom js disini-->
<!--DataTables-->
<script type="text/javascript" src="<?=base_url('assets/AdminLTE-2.0.5/plugins/datatables/jquery.dataTables.min.js')?>"></script>
<script type="text/javascript" src="<?=base_url('assets/AdminLTE-2.0.5/plugins/datatables/dataTables.bootstrap.js')?>"></script>
<script type="text/javascript" src="<?=base_url('assets/AdminLTE-2.0.5/plugins/datatables/buttons.print.min.js')?>"></script>
<script type="text/javascript" src="<?=base_url('assets/AdminLTE-2.0.5/plugins/datatables/dataTables.buttons.min')?>"></script>
<script>
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

var table = $("#table1").dataTable({
    initComplete: function() {
        var api = this.api();
        $('#table1_filter input')
            .off('.DT')
            .on('input.DT', function() {
                api.search(this.value).draw();
        });

    },
        oLanguage: {
        sProcessing: "<i class='fa fa-refresh fa-spin'></i>"
    },
        processing: true,
        serverSide: true,
        ajax: {
          "type": "POST",
          "url": "<?=$url?>",
          "data" : {kode:<?=(int)$kode?>,thnAkademik:'<?=$thnAkademik?>',kd_semester:<?=$kd_semester?>},
          },
            columns: [
                {
                  data: "kd_dosen",
                  "orderable": false,
                },
                {
                  data: "kd_dosen",
                },
                {
                  data: "nm_dosen",
                },
                {
                  data: "skor_kuisoner",
                  className: "text-center",
                  searchable : false
                },
                {
                  data: "skor_ikd",
                  className: "text-center",
                  searchable : false
                },
                {
                  data: "upload_soalnilai",
                  className: "text-center",
                  searchable : false
                },
                {
                  data: "skor_pertemuan",
                  className: "text-center",
                  searchable : false
                },
                {
                  data: "upload_materi",
                  className: "text-center",
                  searchable : false
                },
                {
                  data: "lppm",
                  className: "text-center",
                  searchable : false
                },
                {
                  data: "skor_open_km",
                  className: "text-center",
                  searchable : false
                },
                {
                  data: "total_skor",
                  className: "text-center",
                  searchable : false
                },
          ],
          order: [[10, 'desc']],
    rowCallback: function(row, data, iDisplayIndex) {
      var info = this.fnPagingInfo();
      var page = info.iPage;
      var length = info.iLength;
      var index = page * length + (iDisplayIndex + 1);
      $('td:eq(0)', row).html(index);
    }

});
// end setup datatables
</script>
<?php
$this->load->view('template/foot');
?>
