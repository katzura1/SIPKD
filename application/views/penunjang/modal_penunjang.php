<!-- <div class="modal fade" tabindex="-1" id="myModal" role="dialog"> -->
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title"><?="Detail Data ID:".$data_penunjang->id." (".$data_penunjang->kd_dosen." - ".$data_penunjang->nm_dosen.")"?></h4>
      </div>
      <div class="modal-body">
        <table class="table table-striped">
          <tr>
            <td>Tahun Akademik</td>
            <td>:</td>
            <td><?=$data_penunjang->thnAkademik?></td>
          </tr>
          <tr>
            <td>Semester</td>
            <td>:</td>
            <td><?=$data_penunjang->kd_semester?></td>
          </tr>
          <tr>
            <td valign="center">Jenis Kegiatan</td>
            <td valign="center">:</td>
            <td valign="center"><?=$data_penunjang->jenis_kegiatan?></td>
          </tr>
          <tr>
            <td valign="center">Nama Kegiatan</td>
            <td valign="center">:</td>
            <td valign="center"><?=$data_penunjang->nama_kegiatan?></td>
          </tr>
          <tr>
            <td valign="center">Tanggal Kegiatan</td>
            <td valign="center">:</td>
            <td valign="center"><?=$data_penunjang->tanggal?></td>
          </tr>
          <tr>
            <td valign="center">Tempat</td>
            <td valign="center">:</td>
            <td valign="center"><?=$data_penunjang->tempat?></td>
          </tr>
          <tr>
            <td valign="center">Alamat</td>
            <td valign="center">:</td>
            <td valign="center"><?=$data_penunjang->alamat?></td>
          </tr>
          <tr>
            <td valign="center">Status</td>
            <td valign="center">:</td>
            <td valign="center"><?=ucfirst($data_penunjang->status_periksa.' Validasi')?></td>
          </tr>
          <tr>
            <td valign="center">Tipe</td>
            <td valign="center">:</td>
            <td valign="center"><?=$data_penunjang->tipe_dok?></td>
          </tr>
          <tr>
            <td valign="center">Download Dokumen</td>
            <td valign="center">:</td>
            <td valign="center">
              <a download href="<?=base_url($data_penunjang->dok_path.'/'.$data_penunjang->dok_hasil)?>" class="btn btn-primary" target="_blank">
                <i class="fa fa-download"></i>
                Unduh
              </a>
            </td>
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
