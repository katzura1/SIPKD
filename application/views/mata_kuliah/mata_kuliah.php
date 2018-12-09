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
        <li><a href="<?=site_url('dashboard')?>"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="#">Examples</a></li>
        <li class="active">Blank page</li>
    </ol>
</section>

<!-- Main content -->
<section class="content">

    <!-- Default box -->
    <div class="box">
        <div class="box-body">
          <a href="<?=site_url('mata_kuliah/tambah')?>" class="btn btn-primary">TAMBAH</a><br><br>
          <?php
          if($this->session->userdata('message')!=''){
            echo "<div class='alert alert-success' style='margin-top:5px;'>".$this->session->userdata('message')."</div>'";
          }
          ?>
          <table class="table table-striped" id="tableMK">
            <thead>
              <tr>
                <th>Kode MK</th>
                <th>Nama MK</th>
                <th>SKS</th>
                <th>Aksi</th>
              </tr>
            </thead>
            <tbody>
              <?php foreach ($mata_kuliah_data as $data): ?>
                <tr>
                  <td><?=$data->kode_mk?></td>
                  <td><?=$data->nama_mk?></td>
                  <td><?=$data->sks?></td>
                  <td>
                    <a href="<?=site_url('mata_kuliah/update/'.$data->kode_mk)?>" class="btn btn-primary">UPDATE</a>
                    <a href="<?=site_url('mata_kuliah/delete/'.$data->kode_mk)?>" class="btn btn-info">DELETE</a>
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
    $('#tableMK').DataTable( {
        "columnDefs": [
            {
              "targets": [ 3 ],
              "orderable": false
            }
        ]
    } );
} );
</script>
<?php
$this->load->view('template/foot');
?>
