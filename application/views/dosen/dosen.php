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
    </h1>
    <ol class="breadcrumb">
        <li><a href="<?=site_url('dashboard')?>"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Dosen</li>
    </ol>
</section>

<!-- Main content -->
<section class="content">

    <!-- Default box -->
    <div class="box">
        <div class="box-body">
          <a class="btn btn-primary" href="<?=site_url('dosen/tambah')?>"><i class="fa fa-plus"></i> Tambah</a><br><br>
          <?php
          if($this->session->userdata('message')!=''){
            echo "<div class='alert alert-success' style='margin-top:5px;'>".$this->session->userdata('message')."</div>'";
          }
          ?>
            <table class="table table-striped" id="tableDosen">
              <thead>
                <tr>
                  <th>No.</th>
                  <th>Kode Dosen</th>
                  <th>Nama Dosen</th>
                  <th>Program Studi</th>
                  <th>Aksi</th>
                </tr>
              </thead>
              <tbody>
                <?php
                  foreach ($data_dosen as $data):
                ?>
                  <tr>
                    <td></td>
                    <td><?=$data->kd_dosen?></td>
                    <td><?=($data->gelar_depan." ".$data->nm_dosen." ".$data->gelar_belakang)?></td>
                    <td><?=$data->nama_prodi?></td>
                    <td>
                      <a href="<?=site_url('dosen/update/'.$data->kd_dosen)?>" class="btn btn-success">UPDATE</a>
                      <a data-toggle="modal" onclick="javascript:load_dosen('<?=$data->kd_dosen?>')" class="btn btn-primary">VIEW</a>
                    </td>
                  </tr>
                <?php endforeach; ?>
              </tbody>
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

<script>
$(document).ready(function() {
    var t = $('#tableDosen').DataTable( {
        "columnDefs": [
            {
              "targets": [ 0 ],
              "orderable": false
            },
            {
              "targets": [ 4 ],
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

function load_dosen(id){
  $.ajax({
    type:"POST",
    url: "<?=site_url('dosen/get_data_dosen')?>",
    data: 'kd_dosen='+id,
    success: function(response){
      $(".displaycontent").html(response);
      $(".displaycontent").modal('show');
    }
  });
}
</script>
<div class="modal fade displaycontent" tabindex="-1" role="dialog" id="myModal">
</div>
<?php
$this->load->view('template/foot');
?>
