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
        Daftar Dosen
        <small>Kuesioner</small>
    </h1>
    <ol class="breadcrumb">
        <li><a href="<?=site_url('dashboard')?>"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="#">Kuesioner</a></li>
        <li class="active">Daftar Dosen</li>
    </ol>
</section>

<!-- Main content -->
<section class="content">

    <!-- Default box -->
    <div class="box">
        <div class="box-header with-border">
          <h3 class="box-title"><b>Dosen <?=$title_text?></b> : <?=$title_kode?> <b>TA</b> : <?=$thnAkademik?> <b>Semester</b> : <?=$kd_semester?></h3>
        </div>
        <div class="box-body">
          <?php
          if($this->session->userdata('message')!=''){
            echo $this->session->userdata('message');
          }
          ?>
          <table class="table table-striped" id="tableDosen">
            <thead>
              <tr>
                <th>No.</th>
                <th>Kode Dosen</th>
                <th>Nama Dosen</th>
                <th>Program Studi</th>
                <th>Status</th>
                <th>Aksi</th>
              </tr>
            </thead>
          </table>
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

  var table = $("#tableDosen").dataTable({
      initComplete: function() {
          var api = this.api();
          $('#tableDosen_filter input')
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
          responsive: true,
          ajax: {
            "type": "POST",
            "url": "<?=$url?>",
            "data" : {kode:<?=(int)$kode?>,thn_akademik:'<?=$thnAkademik?>',kd_semester:<?=$kd_semester?>,penilai:<?=$penilai?>},
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
                    data: "nama_prodi"
                  },
                  {
                    data : "status",
                    render: function (data, type, row){
                      if(row.status==0){
                        return "<label class='label bg-red'>Belum Dinilai</label>";
                      }else{
                        return "<label class='label bg-green'>Sudah Dinilai</label>";
                      }
                    },
                  },
                  {
                    data: "status, action_nilai, action_ubah",
                    render: function(data,type,row){
                      if(row.status==0){
                        return row.action_nilai;
                      }else{
                        return row.action_ubah;
                      }
                    },
                    orderable: false,
                    searchable: false,
                  }
            ],
            order: [[4, 'asc']],
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
