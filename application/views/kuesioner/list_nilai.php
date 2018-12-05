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
        List Nilai Kuesioner
        <small>Kuesioner</small>
    </h1>
    <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="#">Kuesioner</a></li>
        <li class="active">List Nilai</li>
    </ol>
</section>

<!-- Main content -->
<section class="content">

    <!-- Default box -->
    <div class="box">
        <div class="box-header with-border">
          <h3 class="box-title"><?=$title.' '.$nama_header.' TA : '.$thnAkademik.'-'.$kd_semester?></h3>
        </div>
        <div class="box-body">
          <div class="row" style="margin-bottom:12px;">
            <form action="<?=site_url('kuesioner/list_nilai')?>" method="post">
              <div class="col-md-2">
                <label>Tahun Akademik</label>
                <?=form_dropdown('thnAkademik',$dd_ta,$thnAkademik,"class='form-control'")?>
              </div>
              <div class="col-md-2">
                <label>Semester</label>
                <?=form_dropdown('kd_semester',$dd_s,$kd_semester,"class='form-control'")?>
              </div>
              <?php if (isset($dd_prodi)): ?>
              <div class="col-md-2">
                <label>Program Studi</label>
                <?=form_dropdown('kode_prodi',$dd_prodi,$kode,"class='form-control'")?>
              </div>
              <div class="col-md-2">
                <label>Penilai</label>
                <?=form_dropdown('penilai',array('1'=>'Kaprodi','2'=>'PK-1'),$penilai,"class='form-control'")?>
              </div>
              <?php endif; ?>
              <div class="col-md-2">
                <label style="color:white;display:block">BUTTON</label>
                <button class="btn btn-primary" type="submit" name="btnFilter">CARI</button>
              </div>
            </form>
          </div>
          <table id="table1" class="table table-striped">
            <thead>
              <tr>
                <th>No</th>
                <th>Kode Dosen</th>
                <th>Nama Dosen</th>
                <th>Program Studi</th>
                <th>Total Skor</th>
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
<script type="text/javascript">
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
            "data" : {kode:<?=(int)$kode?>,thn_akademik:'<?=$thnAkademik?>',kd_semester:<?=$kd_semester?>,penilai:<?=$penilai?>},
            },
              columns: [
                  {
                    data: "kd_dosen",
                    "orderable": false,
                    width : '4%',
                  },
                  {
                    data: "kd_dosen",
                  },
                  {
                    data: "nm_dosen",
                  },
                  {
                    data: "nama_prodi"
                  },
                  {
                    data: "total_skor",
                    searchable: false
                  }
            ],
            order: [[4, 'desc']],
      rowCallback: function(row, data, iDisplayIndex) {
        var info = this.fnPagingInfo();
        var page = info.iPage;
        var length = info.iLength;
        var index = page * length + (iDisplayIndex + 1);
        $('td:eq(0)', row).html(index);
      }

  });
  // end setup datatables
} );
</script>
<?php
$this->load->view('template/foot');
?>
