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
        <li><a href="<?=site_url('dashboard')?>"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Penunjang Prodi</li>
    </ol>
</section>

<!-- Main content -->
<section class="content">

    <!-- Default box -->
    <div class="box">
        <div class="box-header with-border">
            <h3 class="box-title">Program Studi : <?=$program_studi?></h3>
        </div>
        <div class="box-body">
          <div class="row" style="margin-bottom:5px;">
            <form ction="<?=site_url('penunjang')?>" method="post">
              <div class="col-md-4">
                <label>Tahun Akademik</label>
                <select class="form-control" name="thnAkademik">
                  <?php foreach ($data_ta as $data): ?>
                    <option value="<?=$data->tahunAkademik?>" <?=$data->tahunAkademik==$thnAkademik?'selected':''?>><?=$data->tahunAkademik?></option>
                  <?php endforeach; ?>
                </select>
              </div>
              <div class="col-md-4">
                <label>Semester</label>
                <select class="form-control" name="semester">
                  <option value="1" <?=$semester=='1'?'selected':''?>>Ganjil</option>
                  <option value="2" <?=$semester=='2'?'selected':''?>>Genap</option>
                </select>
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
          <table id="tablePenunjang" class="table table-striped">
            <thead>
              <tr>
                <th>No.</th>
                <th>Nama Kegiatan</th>
                <th>Kode Dosen</th>
                <th>Nama Dosen</th>
                <th>Status</th>
                <th>Aksi</th>
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

var table = $("#tablePenunjang").dataTable({
    initComplete: function() {
        var api = this.api();
        $('#tablePenunjang_filter input')
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
          "data" : {kode:<?=(int)$kode?>,thn_akademik:'<?=$thnAkademik?>',kd_semester:<?=$semester?>},
          },
            columns: [
                {
                  data: "kd_dosen",
                  "orderable": false,
                  width : '4%',
                },
                {
                  data: "nama_kegiatan",
                },
                {
                  data: "kd_dosen",
                },
                {
                  data: "nm_dosen",
                },
                {
                  data: "status_periksa",
                  render : function(data,type,row){
                    var f = row.status_periksa.charAt(0).toUpperCase();
                    var s = row.status_periksa.slice(1);
                    if(row.status_periksa=='belum'){
                      return "<label class='label bg-red'>"+f+s+" Validasi"+"</label>";
                    }else{
                      return "<label class='label bg-green'>"+f+s+" Validasi"+"</label>";
                    }

                  },
                },
                {
                  data: "action_view",
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
  // $(document).ready(function() {
  //     var t = $('#tablePenunjang').DataTable( {
  //         "columnDefs": [
  //             {
  //               "targets": [ 0 ],
  //               "orderable": false
  //             },
  //             {
  //               "targets": [ 6 ],
  //               "orderable": false
  //             }
  //         ]
  //     } );
  //     t.on( 'order.dt search.dt', function () {
  //         t.column(0, {search:'applied', order:'applied'}).nodes().each( function (cell, i) {
  //             cell.innerHTML = i+1;
  //         } );
  //     } ).draw();
  // } );

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
