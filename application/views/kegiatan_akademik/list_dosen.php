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
        List Dosen
        <small>Kegiatan Akademik</small>
    </h1>
    <ol class="breadcrumb">
        <li><a href="<?=site_url('dashboard')?>"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="#">Kegiatan Akademik</a></li>
        <li class="active"><?=$title?></li>
    </ol>
</section>

<!-- Main content -->
<section class="content">
    <!-- Default box -->
    <div class="box">
      <div class="box-header with-border">
        <h3 class="box-title">TA : <?=$thnAkademik?> - Semester : <?=$kd_semester?></h3>
      </div>
      <div class="box-body">
        <?php
        if($this->session->userdata('message')!=''){
          echo $this->session->userdata('message');
        }
        ?>
        <div class="row" style="margin-bottom:10px">
          <form action="<?=$action?>" method="post">
            <div class="col-md-3">
              <label>Program Studi</label>
              <?=form_dropdown('kode_prodi',$dd_prodi,$kode_prodi,"class='form-control' required")?>
            </div>
            <div class="col-md2">
              <label style="color:white;display:block">BUTTON</label>
              <button type="submit" class="btn btn-primary">CARI</button>
            </div>
          </form>
        </div>
        <div class="row">
          <div class="col-md-12">
            <table class="table table-striped" id="table1">
              <thead>
                <tr>
                  <th>No</th>
                  <th>Kode Dosen</th>
                  <th>Nama Dosen</th>
                  <th>Aksi</th>
                </tr>
              </thead>
              <tbody>
              <!--done-->
              <?php $i=1; foreach ($data_dosen as $data): $i++;?>
                <tr>
                  <td></td>
                  <td><?=$data->kd_dosen?></td>
                  <td><?=$data->gelar_depan.' '.$data->nm_dosen.', '.$data->gelar_belakang?></td>
                  <td>
                    <a href="<?=$url_action.$data->kd_dosen?>" class="btn btn-success" value="INPUT">INPUT</a>
                    <a data-toggle="modal" onclick="load_modal('<?=$key?>','<?=$data->kd_dosen?>')" class="btn btn-primary" value="LIHAT">LIHAT</a>
                  </td>
                </tr>
              <?php endforeach; ?>
              </tbody>
            </table>
          </div>
        </div>
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
  $(document).ready(function() {
      var t = $('#table1').DataTable( {
          "columnDefs": [
              {
                "targets": [ 0 ],
                "orderable": false
              },
              {
                "targets": [ 3 ],
                "orderable": false
              },
          ]
      } );
      t.on( 'order.dt search.dt', function () {
          t.column(0, {search:'applied', order:'applied'}).nodes().each( function (cell, i) {
              cell.innerHTML = i+1;
          } );
      } ).draw();
  } );

  function load_modal(key, kd_dosen){
    $.ajax({
      type:"POST",
      url:"<?=site_url('kegiatan_akademik/get_data_modal')?>",
      data:{key,kd_dosen},
      success: function(response){
        $(".displaycontent").html(response);
        $(".displaycontent").modal('show');
      }
    });
  }
</script>
<!-- .modal -->
<div class="modal fade displaycontent" tabindex="-1" role="dialog" id="myModal">
</div>
<!-- /.modal -->
<?php
$this->load->view('template/foot');
?>
