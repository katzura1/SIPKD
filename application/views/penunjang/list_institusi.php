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
        <?=$title?>
        <small>Penunjang</small>
    </h1>
    <ol class="breadcrumb">
        <li><a href="<?=site_url('dashboard')?>"><i class="fa fa-dashboard"></i> Home</a></li>
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
                <?=form_dropdown('kode_prodi',$dd_prodi,$kode_prodi,"class='form-control'")?>
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
                <th>Jenis Kegiatan</th>
                <th>Nama Kegiatan</th>
                <th>Kode Dosen</th>
                <th>Nama Dosen</th>
                <th>Progam Studi</th>
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
<script type="text/javascript" src="<?=base_url('assets/AdminLTE-2.0.5/plugins/datatables/dataTables.responsive.min.js')?>"></script>
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
          responsive: true,
          ajax: {
            "type": "POST",
            "url": "<?=$url?>",
            "data" : {kode:<?=(int)$kode?>,thn_akademik:'<?=$thnAkademik?>',kd_semester:<?=$kd_semester?>},
            },
              columns: [
                  {
                    data: "kd_dosen",
                    "orderable": false,
                    width : '4%',
                  },
                  {
                    data: "jenis_kegiatan",
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
                    data: "nama_prodi"
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
            order: [[5, 'desc']],
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
