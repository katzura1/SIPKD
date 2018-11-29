<!doctype html>
<html>
    <head>
        <title>harviacode.com - codeigniter crud generator</title>
        <link rel="stylesheet" href="<?php echo base_url('assets/bootstrap/css/bootstrap.min.css') ?>"/>
        <style>
            body{
                padding: 15px;
            }
        </style>
    </head>
    <body>
        <h2 style="margin-top:0px">User <?php echo $button ?></h2>
        <form action="<?php echo $action; ?>" method="post">
	    <div class="form-group">
            <label for="password">Password <?php echo form_error('password') ?></label>
            <textarea class="form-control" rows="3" name="password" id="password" placeholder="Password"><?php echo $password; ?></textarea>
        </div>
	    <div class="form-group">
            <label for="varchar">Hak Akses <?php echo form_error('hak_akses') ?></label>
            <input type="text" class="form-control" name="hak_akses" id="hak_akses" placeholder="Hak Akses" value="<?php echo $hak_akses; ?>" />
        </div>
	    <input type="hidden" name="kd_dosen" value="<?php echo $kd_dosen; ?>" /> 
	    <button type="submit" class="btn btn-primary"><?php echo $button ?></button> 
	    <a href="<?php echo site_url('user_tes') ?>" class="btn btn-default">Cancel</a>
	</form>
    </body>
</html>