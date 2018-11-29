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
        Daftar
        <small>Tahun Akademik</small>
    </h1>
    <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Tahun Akademik</li>
    </ol>
</section>

<!-- Main content -->
<section class="content">

    <!-- Default box -->
    <div class="box">
        <div class="box-header with-border">
            <h3 class="box-title"><?='List Data '.$title?></h3>
        </div>
        <div class="box-body">
          <a href="<?=site_url('tahun_akademik/tambah')?>" class="btn btn-primary" style="margin-bottom:5px;"><i class="fa fa-plus"></i> TAMBAH</a>
          <?php
          if($this->session->userdata('message')!=''){
            echo "<div class='alert alert-success' style='margin-top:5px;margin-bottom:-15px'>".$this->session->userdata('message')."</div>'";
          }
          ?>
           <table class="table table-striped" id="table_ta">
             <thead>
               <tr>
                 <th>No.</th>
                 <th>Tahun Akademik</th>
                 <th>Kode Semester</th>
                 <th>Status</th>
                 <th>Aksi</th>
               </tr>
             </thead>
             <tbody>
               <?php foreach ($data_ta as $data): ?>
                 <tr>
                   <td></td>
                   <td><?=$data->tahunAkademik?></td>
                   <td><?=$data->kd_semester?></td>
                   <td><?=ucwords($data->status)?></td>
                   <td>
                     <a href="<?=site_url('tahun_akademik/update/'.$data->tahunAkademik.'/'.$data->kd_semester)?>" class="btn btn-info">UPDATE</a>
                     <a href="<?=site_url('tahun_akademik/aktif/'.$data->tahunAkademik.'/'.$data->kd_semester)?>" class="btn <?=$data->status=='aktif'?'bg-navy disabled':'bg-maroon'?>">AKTIF</a>
                   </td>
                 </tr>
               <?php endforeach; ?>
             </tbody>
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
      var t = $('#table_ta').DataTable( {
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
</script>
<?php
$this->load->view('template/foot');
?>
