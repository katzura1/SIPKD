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
        <li><a href="<?=site_url('kegiatan_akademik/upload_soal_dosen')?>">Kegiatan Akademik</a></li>
        <li class="active"><?=$title?></li>
    </ol>
</section>

<!-- Main content -->
<section class="content">
    <!-- Default box -->
    <div class="box">
      <div class="box-header with-border">
        <h3 class="box-title">TA : <?=$thnAkademik?> - Semester : <?=$kd_semester?></h3>
        <div class="box-tools pull-right">
            <form action="<?=$action?>" method="post">
              <input type="hidden" name="kode_prodi" value="<?=$data_dosen->kode_prodi?>">
              <button type="submit" name="button" class="btn btn-primary">KEMBALI</button>
            </form>
        </div>
      </div>
      <div class="box-body">
        <?php
        if($this->session->userdata('message')!=''){
          echo $this->session->userdata('message');
        }
        ?>
        <div class="row">
          <div class="col-md-6">
            <table class="table table-responsive">
              <tr>
                <th colspan="3">Detail Dosen</th>
              </tr>
              <tr>
                <td>Kode Dosen</td>
                <td>:</td>
                <td><?=$data_dosen->kd_dosen?></td>
              </tr>
              <tr>
                <td>Nama Dosen</td>
                <td>:</td>
                <td><?=$data_dosen->nm_dosen?></td>
              </tr>
              <tr>
                <td>Program Studi</td>
                <td>:</td>
                <td><?=$data_dosen->nama_prodi?></td>
              </tr>
            </table>
          </div>
        </div>
        <div class="row">
          <div class="col-md-12">
            <table class="table table-striped" id="table1">
              <thead>
                <tr>
                  <th>No</th>
                  <th>Kode MK</th>
                  <th>Nama MK</th>
                  <th>Kelas</th>
                  <th>Ketepatan Upload</th>
                  <th>Aksi</th>
                </tr>
              </thead>
              <tbody>
              <!--done-->
              <?php $i=0; foreach ($data_not_done as $data): $i++;?>
                <tr>
                  <td></td>
                  <td><?=$data->kode_mk?></td>
                  <td><?=$data->keterangan?></td>
                  <td><?=$data->kelas?></td>
                  <td>
                    <?=form_dropdown('skor',$dd_skor,'',"class='form-control' id='skor$i'")?>
                  </td>
                  <td>
                    <button id="<?=$i?>" data-kd="<?=$data_dosen->kd_dosen?>" data-ta="<?=$thnAkademik?>" data-s="<?=$kd_semester?>" data-action="simpan" data-input="#skor<?=$i?>" data-kodemk="<?=$data->kode_mk?>" data-namamk="<?=$data->keterangan?>" data-kelas="<?=$data->kelas?>" type="button" name="button" class="btn btn-primary">SIMPAN</button>
                  </td>
                </tr>
              <?php endforeach; ?>
              <?php foreach ($data_done as $data): $i++; $field = "upload_".$key;?>
                <tr>
                  <td></td>
                  <td><?=$data->kode_mk?></td>
                  <td><?=$data->keterangan?></td>
                  <td><?=$data->kelas?></td>
                  <td>
                    <?=form_dropdown('skor',$dd_skor,$data->$field,"class='form-control' id='skor$i'")?>
                  </td>
                  <td>
                    <button id="<?=$i?>" data-kd="<?=$data_dosen->kd_dosen?>" data-ta="<?=$thnAkademik?>" data-s="<?=$kd_semester?>" data-action="ubah" data-input="#skor<?=$i?>" data-kodemk="<?=$data->kode_mk?>" data-namamk="<?=$data->keterangan?>" data-kelas="<?=$data->kelas?>" type="button" name="button" class="btn btn-success">UBAH</button>
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
          ],
          searching: false,
          paging: false,
      } );
      t.on( 'order.dt search.dt', function () {
          t.column(0, {search:'applied', order:'applied'}).nodes().each( function (cell, i) {
              cell.innerHTML = i+1;
          } );
      } ).draw();

      $('button').on('click', function(){
        var id = $(this).attr("id");
        var input = $(this).data('input');
        var value = $(input).val();
        //data
        var kd_dosen = $(this).data('kd');
        var thnAkademik = $(this).data('ta');
        var kd_semester = $(this).data('s');
        var kode_mk = $(this).data('kodemk');
        var kelas = $(this).data('kelas');
        var aksi = $(this).data('action');

        if(value==''){
          alert('Silahkan Pilih Nilai Ketepatan Terlebih Dahulu');
          die();
        }
        $.ajax({
          url:"<?=site_url('kegiatan_akademik/aksi_isi_nilai/'.$key)?>",
          method:"POST",
          data:{kd_dosen,thnAkademik,kd_semester,kode_mk,kelas,value},
          beforeSend: function(){
            $("#"+id).html("Loading..");
            $('#'+id).removeClass('btn-primary');
            $('#'+id).removeClass('btn-danger');
            $('#'+id).addClass('btn-warning');
          },
          success: function(data){
            setTimeout(function(){
              if(aksi=='simpan'){
                $("#"+id).html("UBAH");
                $('#'+id).data("action","ubah");
              }else{
                $("#"+id).html("UBAH");
              }
              $('#'+id).removeClass('btn-primary');
              $('#'+id).removeClass('btn-warning');
              $('#'+id).addClass('btn-success');
            },3000);
          }
        });
      });
  });
</script>
<?php
$this->load->view('template/foot');
?>
