<!-- <div class="modal fade" tabindex="-1" id="myModal" role="dialog"> -->
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title">Detail Data Ketepatan Upload <?=ucfirst($key)?></h4>
      </div>
      <div class="modal-body">
        <h5><b>Data Dosen</b></h5>
        <table class="table table-striped">
          <tr>
            <th>Kode Dosen</th>
            <td>:</td>
            <td><?=$data_dosen->kd_dosen?></td>
          </tr>
          <tr>
            <th>Nama Dosen</th>
            <td>:</td>
            <td><?=$data_dosen->nm_dosen?></td>
          </tr>
          <tr>
            <th>Program Studi</th>
            <td>:</td>
            <td><?=$data_dosen->nama_prodi?></td>
          </tr>
        </table>
        <h5><b>Data Kurikulum <?=$thnAkademik." ".$kd_semester?></b></h5>
        <table class="table table-striped">
          <thead>
            <tr>
              <th>Kode MK</th>
              <th>Nama MK</th>
              <th>Kelas</th>
              <th>Status</th>
            </tr>
          </thead>
          <tbody>
          <?php foreach ($data_done as $data): ?>
            <tr>
              <td><?=$data->kode_mk?></td>
              <td><?=$data->keterangan?></td>
              <td><?=$data->kelas?></td>
              <td><label class="label bg-green">Sudah Dinilai</label></td>
            </tr>
          <?php endforeach; ?>
          <?php foreach ($data_not_done as $data): ?>
            <tr>
              <td><?=$data->kode_mk?></td>
              <td><?=$data->keterangan?></td>
              <td><?=$data->kelas?></td>
              <td><label class="label bg-red">Belum Dinilai</label></td>
            </tr>
          <?php endforeach; ?>
          </tbody>
        </table>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>
    <!-- /.modal-content -->
  </div>
  <!-- /.modal-dialog -->
