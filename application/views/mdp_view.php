<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title></title>
  </head>
  <body>
    <form action="<?=site_url('mdp')?>" method="post" enctype="multipart/form-data">
      <label>Gambar</label>
      <input type="file" name="gambar">
      <button type="submit" name="btnupload">UPLOAD</button>
    </form>
    <?php
    echo $pesan_upload;
    if ($urlGambar!='#'):
    ?>
    <img src="<?=$urlGambar?>" style="width:400px;height:400px">
    <?php endif; ?>

  </body>
</html>
