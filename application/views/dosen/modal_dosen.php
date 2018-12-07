<!-- <div class="modal fade" tabindex="-1" id="myModal" role="dialog"> -->
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title"><?="Detail Data $data_modal->nm_dosen"?></h4>
      </div>
      <div class="modal-body">
        <table class="table table-striped">
          <tr>
            <td valign="center">Kode Dosen</td>
            <td valign="center">:</td>
            <td valign="center"><?=$data_modal->kd_dosen?></td>
          </tr>
          <tr>
            <td valign="center">Nama Dosen</td>
            <td valign="center">:</td>
            <td valign="center"><?=$data_modal->gelar_depan." ".$data_modal->nm_dosen." ".$data_modal->gelar_belakang?></td>
          </tr>
          <tr>
            <td valign="center">Program Studi</td>
            <td valign="center">:</td>
            <td valign="center"><?=$data_modal->nama_prodi?></td>
          </tr>
          <tr>
            <td valign="center">Email</td>
            <td valign="center">:</td>
            <td valign="center"><?=$data_modal->email?></td>
          </tr>
          <tr>
            <td valign="center">Jenis Kelamin</td>
            <td valign="center">:</td>
            <td valign="center"><?=$data_modal->jenis_kelamin?></td>
          </tr>
          <tr>
            <td valign="center">Foto</td>
            <td valign="center">:</td>
            <td valign="center"><img class="img-thumbnail" src="<?=base_url('gambar/'.$data_modal->path_foto)?>" style="width:160px;"></td>
          </tr>
        </table>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>
    <!-- /.modal-content -->
  </div>
  <!-- /.modal-dialog -->
