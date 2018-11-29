<?php
$this->load->view('template/head');
?>
<!--tambahkan custom css disini-->
<?php
$this->load->view('template/topbar');
$this->load->view('template/sidebar');
?>
<!-- Content Header (Page header) -->
<section class="content-header">
    <h1>
        User Profile
        <small>Change Password</small>
    </h1>
    <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="#">User</a></li>
        <li class="active">Profile</li>
    </ol>
</section>

<!-- Main content -->
<section class="content">
  <div class="row">
    <div class="col-md-3">
    <!-- Profile Image -->
      <div class="box box-primary">
        <div class="box-body box-profile">
          <img class="profile-user-img img-responsive img-circle" src="<?=base_url('gambar/'.$this->session->userdata('foto'))?>" alt="User profile picture">
          <h3 class="profile-username text-center"><?=$this->session->userdata('nama')?></h3>
          <p class="text-muted text-center"><?=$this->session->userdata('hak')?></p>
        </div>
        <!-- /.box-body -->
      </div>
    <!-- /.box -->
    </div>
    <div class="col-md-9">
      <div class="box box-primary">
        <div class="box-header">
          <h4>Change Password</h4>
          <?php
          if($this->session->userdata('message')!=''){
            echo $this->session->userdata('message');
          }
          ?>
        </div>
        <div class="box-body">
          <form action="<?=$action?>" method="post">
            <div class="form-group">
              <label>Password Lama</label>
              <input type="password" name="old_pass" class="form-control" placeholder="Your Current Password">
              <?=form_error('old_pass')?>
            </div>
            <div class="form-group">
              <label>Password Baru</label>
              <input type="password" name="new_pass" class="form-control" placeholder="New Password">
              <?=form_error('new_pass')?>
            </div>
            <div class="form-group">
              <label>Konfirmasi Password Baru</label>
              <input type="password" name="c_new_pass" class="form-control" placeholder="Repeat Yout New Password">
              <?=form_error('c_new_pass')?>
            </div>
            <button type="submit" class="btn btn-primary">SIMPAN</button>
          </form>
        </div><!--box-body-->
      </div><!--box-->
    </div><!--col-md-9-->
    <!-- /.row -->
  </div><!--row-->
</section><!-- /.content -->

<?php
$this->load->view('template/js');
?>
<!--tambahkan custom js disini-->
<?php
$this->load->view('template/foot');
?>
