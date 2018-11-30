<!-- <div class="modal fade" tabindex="-1" id="myModal" role="dialog"> -->
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title">Detail Data</h4>
      </div>
      <div class="modal-body">
        <table class="table table-striped">
          <tr>
            <td>No Registrasi</td>
            <td>:</td>
            <td><?=$data_penelitian->no_registrasi?></td>
          </tr>
          <tr>
            <td>Judul</td>
            <td>:</td>
            <td><?=$data_penelitian->judul?></td>
          </tr>
          <tr>
            <td valign="center">Tahun</td>
            <td valign="center">:</td>
            <td valign="center"><?=$data_penelitian->tahun?></td>
          </tr>
          <tr>
            <td valign="center">Edisi</td>
            <td valign="center">:</td>
            <td valign="center"><?=$data_penelitian->edisi?></td>
          </tr>
          <tr>
            <td valign="center">Volume</td>
            <td valign="center">:</td>
            <td valign="center"><?=$data_penelitian->volume?></td>
          </tr>
          <tr>
            <td valign="center">Tanggal Buat</td>
            <td valign="center">:</td>
            <td valign="center"><?=$data_penelitian->tgl_buat?></td>
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
