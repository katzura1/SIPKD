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
        <li><a href="#">Examples</a></li>
        <li class="active">Blank page</li>
    </ol>
</section>

<!-- Main content -->
<section class="content">

    <!-- Default box -->
    <div class="box">
        <div class="box-header with-border">
            <h3 class="box-title">Open KM Dosen</h3>
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
                  <tbody>
                    <?php //https://goo.gl/TXwZC6 ?>
                    <?php $i=0; foreach ($list_blm_selesai as $data): $i++?>
                        <tr>
                          <td></td>
                          <td>
                            <form id=<?="'form$i'"?> action=<?=$action?> method="post">
                              <input type="hidden" name="kd_dosen" value="<?=$data->kd_dosen?>">
                            </form>
                            <?=$data->kd_dosen?>
                          </td>
                          <td><?=$data->gelar_depan.' '.$data->nm_dosen.', '.$data->gelar_belakang?></td>
                          <td><?=$data->nama_prodi?></td>
                          <td><?=form_dropdown('skor',$dd_option,'',"class='form-control' form='form$i' required")?></td>
                          <td><button form=<?="'form$i'"?> class="btn btn-success" type="submit">SIMPAN</button></td>
                        </tr>
                    <?php endforeach; ?>
                    <?php foreach ($list_selesai as $data): ?>
                      <tr>
                        <td></td>
                        <td><?=$data->kd_dosen?></td>
                        <td><?=$data->gelar_depan.' '.$data->nm_dosen.', '.$data->gelar_belakang?></td>
                        <td><?=$data->nama_prodi?></td>
                        <!--
                        https://html.com/attributes/select-disabled/
                        -->
                        <td><?=form_dropdown('skor',$dd_option,$data->skor,"class='form-control' disabled required")?></td>
                        <td><a href="<?=site_url('open_km/ubah/'.$data->id)?>" class="btn btn-danger">UBAH</a></td>
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
      var t = $('#tableOpenKm').DataTable( {
          "columnDefs": [
              {
                "targets": [ 0 ],
                "orderable": false
              },
              {
                "targets" : [ 4 ],
                "orderable": false
              },
              {
                "targets" : [ 5 ],
                "orderable": false
              },
          ]
      } );
      t.on( 'order.dt search.dt', function () {
          t.column(0, {search:'applied', order:'applied'}).nodes().each( function (cell, i) {
              cell.innerHTML = i+1;
          } );
      } ).draw();

      var u = $('#tableOpenKm2').DataTable( {
          "columnDefs": [
              {
                "targets": [ 0 ],
                "orderable": false
              },
              {
                "targets" : [ 4 ],
                "orderable": false
              },
              {
                "targets" : [ 5 ],
                "orderable": false
              },
          ]
      } );
      u.on( 'order.dt search.dt', function () {
          u.column(0, {search:'applied', order:'applied'}).nodes().each( function (cell, i) {
              cell.innerHTML = i+1;
          } );
      } ).draw();
  } );
</script>
<?php
$this->load->view('template/foot');
?>
