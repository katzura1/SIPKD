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
        List Open KM
        <small>Open KM</small>
    </h1>
    <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="<?=site_url('open_km')?>">Open KM</a></li>
        <li class="active">List Open KM</li>
    </ol>
</section>

<!-- Main content -->
<section class="content">

    <!-- Default box -->
    <div class="box">
        <div class="box-header with-border">
            <h3 class="box-title">Open KM Dosen - TA : <?=$thnAkademik?> - Semester : <?=$kd_semester?></h3>
        </div>
        <div class="box-body">
          <?php
          if($this->session->userdata('message')!=''){
            echo $this->session->userdata('message');
          }
          ?>
          <table class="table table-striped" id='tableOpenKm'>
                  <thead>
                    <tr>
                      <th>No</th>
                      <th>Kode Dosen</th>
                      <th>Nama Dosen</th>
                      <th>Program Studi</th>
                      <th>Open KM</th>
                      <th>Aksi</th>
                    </tr>
                  </thead>
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

    var obj = {
      "" : "Pilih",
      "0": "Tidak Ada Sama Sekali",
      "2": "Ada dan Tidak Lengkap",
      "5": "Lengkap"
    };

    var table = $("#tableOpenKm").dataTable({
        initComplete: function() {
            var api = this.api();
            $('#tableOpenKm_filter input')
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
              "data" : {kode:<?=(int)$kode?>,thn_akademik:'<?=$thnAkademik?>',kd_semester:<?=$kd_semester?>},
              },
                columns: [
                    {
                      data: "kd_dosen",
                      orderable: false,
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
                      data: "skor",
                      render: function (data,type,row){
                        var select = $("<select class='form-control' style='width:80%'></select>",
                          {
                            "value":data
                          });
                        $.each(obj, function(key, value,row){
                          var option = $("<option></option>",{
                            "text":value,
                            "value":key
                          });
                          if(data==key){
                            option.attr("selected","selected");
                          }
                          select.append(option);
                        });
                        return select.prop("outerHTML");
                      },
                      orderable:false,
                      searchable:false
                    },
                    {
                      data : "skor, action_input, action_update",
                      render: function (data, type, row){
                        if(row.skor==''){
                          return row.action_input;
                        }else{
                          return row.action_update;
                        }
                      },
                      orderable:false,
                      searchable:false
                    },
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

    $('#tableOpenKm tbody').on( 'click', '.btn-success', function () {
        //var data = table.row( $(this).parents('tr') ).data();
        //$(this).parents('tr').attr('data-id')
        //$(this).parents('tr').find('td:eq(4) select').val()
        var kd_dosen = $(this).parents('tr').find('td:eq(1)').text();
        var skor = $(this).parents('tr').find('td:eq(4) select').val();
        if(skor==''){
          alert('Harap Isi Pilihan Open KM');
        }else{
          $.ajax({
            url:"<?=$action?>",
            type:"POST",
            data:{kd_dosen:kd_dosen,skor:skor,id:0},
            success: function(data){
              location.reload();
            }
          });
        }
    } );

    $('#tableOpenKm tbody').on( 'click', '.btn-danger', function () {
        //var data = table.row( $(this).parents('tr') ).data();
        //$(this).parents('tr').attr('data-id')
        //$(this).parents('tr').find('td:eq(4) select').val()
        var kd_dosen = $(this).parents('tr').find('td:eq(1)').text();
        var skor = $(this).parents('tr').find('td:eq(4) select').val();
        var id = $(this).val();
        if(skor==''){
          alert('Harap Isi Pilihan Open KM');
        }else{
          $.ajax({
            url:"<?=$action?>",
            type:"POST",
            data:{kd_dosen:kd_dosen,skor:skor,id:id},
            success: function(data){
              location.reload();
            }
          });
        }
    } );

    $('#tableOpenKm tbody').on( 'click', '.btn-success', function () {
        //var data = table.row( $(this).parents('tr') ).data();
        //$(this).parents('tr').attr('data-id')
        //$(this).parents('tr').find('td:eq(4) select').val()
        var kd_dosen = $(this).parents('tr').find('td:eq(1)').text();
        var skor = $(this).parents('tr').find('td:eq(4) select').val();
        if(skor==''){
          alert('Harap Isi Pilihan Open KM');
        }else{
          $.ajax({
            url:"<?=$action?>",
            type:"POST",
            data:{kd_dosen:kd_dosen,skor:skor},
            success: function(data){
              location.reload();
            }
          });
        }
    } );
    // end setup datatables
  } );
</script>
<?php
$this->load->view('template/foot');
?>
