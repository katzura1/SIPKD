<!-- Left side column. contains the sidebar -->
<aside class="main-sidebar">
  <!-- sidebar: style can be found in sidebar.less -->
  <section class="sidebar">
      <!-- Sidebar user panel -->
      <div class="user-panel">
          <div class="pull-left image">
              <img src="<?=base_url('gambar/'.$this->session->userdata('foto'))?>" class="img-circle" alt="User Image" />
          </div>
          <div class="pull-left info">
              <p><?=$this->session->userdata('nama')?></p>
              <p>Level : <?=$this->session->userdata('hak')?></p>
          </div>
      </div>
      <!-- sidebar menu: : style can be found in sidebar.less -->
      <ul class="sidebar-menu">
        <li class="header">MENU DASHBOARD</li>
        <li><a href="<?=site_url('dashboard')?>"><i class="fa fa-dashboard"></i> <span>Dashboard</span></a></li>
        <?php
        //cek level user
        if($this->session->userdata('hak_akses')==2){
          $this->load->view('template/sidebar-baa');
        }else if($this->session->userdata('hak_akses')>9 && $this->session->userdata('hak_akses')<12){
          $this->load->view('template/sidebar-pk1');
        }else if($this->session->userdata('hak_akses')>=3 && $this->session->userdata('hak_akses')<=9){
          $this->load->view('template/sidebar-kaprodi');
        }else if($this->session->userdata('hak_akses')>11){
          $this->load->view('template/sidebar-admin');
        }
        $this->load->view('template/sidebar-dosen');
        ?>
      </ul>
    </section>
    <!-- /.sidebar -->
</aside>

<!-- =============================================== -->

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
