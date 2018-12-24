</head>
<body class="skin-blue">
    <!-- Site wrapper -->
    <div class="wrapper">

        <header class="main-header">
            <a href="#" class="logo"><b>SI</b>PKD MDP</a>
            <!-- Header Navbar: style can be found in header.less -->
            <nav class="navbar navbar-static-top" role="navigation">
                <!-- Sidebar toggle button-->
                <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </a>
                <div class="navbar-custom-menu">
                    <ul class="nav navbar-nav">
                      <?php if ($this->session->userdata('hak_akses')>=3 && $this->session->userdata('hak_akses')<=9): ?>
                        <li class="dropdown notifications-menu">
                          <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <i class="fa fa-bell-o"></i>
                            <span class="label label-warning"><?=get_jum($this->session->userdata('hak_akses'))?></span>
                          </a>
                          <ul class="dropdown-menu">
                            <li>
                              <!-- inner menu: contains the actual data -->
                              <ul class="menu">
                                <li>
                                  <a href="<?=site_url('penunjang/validasi')?>">
                                    <i class="fa fa-bookmark text-aqua"></i> <?=get_jum($this->session->userdata('hak_akses'))?> penunjang belum divalidasi
                                  </a>
                                </li>
                              </ul>
                            </li>
                          </ul>
                        </li>
                      <?php endif; ?>
                        <!-- User Account: style can be found in dropdown.less -->
                        <li class="dropdown user user-menu">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <img src="<?=$this->session->userdata('foto')?base_url('gambar/'.$this->session->userdata('foto')):base_url('gambar/avatar.png')?>" class="user-image" alt="User Image"/>
                                <span class="hidden-xs"><?=$this->session->userdata('nama')?$this->session->userdata('nama'):'User'?></span>
                            </a>
                            <ul class="dropdown-menu">
                                <!-- User image -->
                                <li class="user-header">
                                  <img src="<?=$this->session->userdata('foto')?base_url('gambar/'.$this->session->userdata('foto')):base_url('gambar/avatar.png')?>" class="img-circle" alt="User Image">
                                  <!--
                                    <img src="<?php echo base_url('assets/AdminLTE-2.0.5/dist/img/user2-160x160.jpg') ?>" class="img-circle" alt="User Image" />
                                  -->
                                    <p>
                                        <?=$this->session->userdata('nama')?$this->session->userdata('nama'):'User'?>
                                    </p>
                                </li>
                                <!-- Menu Footer-->
                                <li class="user-footer">
                                    <div class="pull-left">
                                        <a href="<?=site_url('user/profile')?>" class="btn btn-default btn-flat">Profile</a>
                                    </div>
                                    <div class="pull-right">
                                        <a href="<?php echo site_url('auth/logout') ?>" class="btn btn-default btn-flat">Sign out</a>
                                    </div>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </nav>
        </header>

        <!-- =============================================== -->
