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
        Blank page
        <small>it all starts here</small>
    </h1>
    <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Kinerja Penunjang</li>
    </ol>
</section>

<!-- Main content -->
<section class="content">

    <!-- Default box -->
    <div class="box">
        <div class="box-header with-border">
            <h3 class="box-title">Title</h3>
        </div>
        <div class="box-body">
          <a href="<?=site_url('kompetensi/tambah')?>" class="btn btn-primary" style="margin-bottom:5px;"><i class="fa fa-plus"></i> TAMBAH</a>
          <?php
          if($this->session->userdata('message')!=''){
            echo $this->session->userdata('message');
          }
          ?>
           <table class="table table-striped" id="table_kompetensi">
             <thead>
               <tr>
                 <th>No.</th>
                 <th>Nama Kompetensi</th>
                 <th>Kategori Kinerja</th>
                 <th>Aksi</th>
               </tr>
             </thead>
             <tbody>
               <?php foreach ($data_kompetensi as $data): ?>
                 <tr>
                   <td></td>
                   <td><?=$data->nama_kompetensi?></td>
                   <td><?=$data->nama_kategori?></td>
                   <td>
                     <a href="<?=site_url('kompetensi/update/'.$data->kd_kompetensi)?>" class="btn btn-success"><i class="fa fa-pencil"></i> UPDATE</a>
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
      var t = $('#table_kompetensi').DataTable( {
          "columnDefs": [
              {
                "targets": [ 0 ],
                "orderable": false
              },
              {
                "targets": [ 3 ],
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
