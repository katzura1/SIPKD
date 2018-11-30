            <li class="header">MENU PK1</li>
            <li class="treeview">
                <a href="#">
                    <i class="fa fa-dashboard"></i> <span>Kelola Penunjang</span> <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                    <li><a href="<?php echo site_url('penunjang/') ?>"><i class="fa fa-circle-o"></i>List Penunjang Dosen</a></li>
                </ul>
            </li>
            <!--ini menu dari pk-1-->
            <li class="treeview">
              <a href="#">
                  <i class="fa fa-check-circle"></i> <span>Kelola Kuesioner</span> <i class="fa fa-angle-left pull-right"></i>
              </a>
              <ul class="treeview-menu">
                  <li class="treeview">
                    <a href="#"><i class="fa fa-circle-o"></i> Kategori Kinerja
                      <span class="pull-right-container">
                        <i class="fa fa-angle-left pull-right"></i>
                      </span>
                    </a>
                    <ul class="treeview-menu">
                      <li><a href="<?=site_url('kategori_kinerja/tambah')?>"><i class="fa fa-circle-o"></i> Input Kateogri Kinerja</a></li>
                      <li><a href="<?=site_url('kategori_kinerja')?>"><i class="fa fa-circle-o"></i> List Kategori Kinerja</a></li>
                    </ul>
                  </li>
                  <li class="treeview">
                    <a href="#"><i class="fa fa-circle-o"></i> Kompetensi
                      <span class="pull-right-container">
                        <i class="fa fa-angle-left pull-right"></i>
                      </span>
                    </a>
                    <ul class="treeview-menu">
                      <li><a href="<?=site_url('kompetensi/tambah')?>"><i class="fa fa-circle-o"></i> Input Kompetensi</a></li>
                      <li><a href="<?=site_url('kompetensi')?>"><i class="fa fa-circle-o"></i> List Kompetensi</a></li>
                    </ul>
                  </li>
                  <li><a href="<?=site_url('kuesioner')?>"><i class="fa fa-circle-o"></i> Kuesioner</a></li>
              </ul>
            </li>
            <li class="treeview">
                <a href="#">
                    <i class="fa fa-dashboard"></i> <span>Kelola Open KM</span> <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                    <li><a href="<?php echo site_url('open_km') ?>"><i class="fa fa-circle-o"></i>Open KM</a></li>
                </ul>
            </li>
