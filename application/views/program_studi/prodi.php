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
        <?=$title?> page
        <small>Master Data</small>
    </h1>
    <ol class="breadcrumb">
        <li><a href="<?=site_url('dashboard')?>"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Program Studi</li>
    </ol>
</section>

<!-- Main content -->
<section class="content">

    <!-- Default box -->
    <div class="box">
        <div class="box-body">
            <a href="<?=base_url('prodi/tambah')?>" class="btn btn-primary">Tambah</a><br><br>
            <table class="table table-striped" id="tableJurusan">
              <thead>
                <tr>
                  <th>No.</th>
                  <th>Kode Prodi</th>
                  <th>Nama Prodi</th>
                  <th>Aksi</th>
                </tr>
              </thead>
              <tbody>
                <?php
                $i=0;
                foreach ($data_prodi as $row):
                $i++;
                ?>
                <tr>
                  <td style="vertical-align:middle"><?=$i?></td>
                  <td style="vertical-align:middle"><?=$row->kode_prodi?></td>
                  <td style="vertical-align:middle"><?=$row->nama_prodi?></td>
                  <td style="vertical-align:middle">
                    <a class="btn btn-success" href="<?=site_url()?>prodi/update/<?=$row->kode_prodi?>">UPDATE</a>
                    <a class="btn btn-danger" href="<?=site_url()?>prodi/delete/<?=$row->kode_prodi?>" onclick="javasciprt: return confirm('Are You Sure ?')">DELETE</a>
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
<br>
<!--tambahkan custom js disini-->
<!--DataTables-->
<script type="text/javascript" src="<?=base_url('assets/AdminLTE-2.0.5/plugins/datatables/jquery.dataTables.min.js')?>"></script>
<script type="text/javascript" src="<?=base_url('assets/AdminLTE-2.0.5/plugins/datatables/dataTables.bootstrap.js')?>"></script>

<script>
$(document).ready(function() {
    $('#tableJurusan').DataTable( {
        "columnDefs": [
            {
                "targets": [ 1 ],
                "visible": true,
                "searchable": false
            },
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
