<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Penunjang extends CI_Controller {

  private $arr_prodi = array(
    3 => '24',
    4 => '25',
    5 => '13',
    6 => '11',
    7 => '12',
    8 => '21',
    9 => '20'
  );

  private $arr_institusi = array(
    10 => array('1','3'),
    11 => array('2')
  );

  private $data_ta;

  public function __construct(){
    parent::__construct();
    $this->load->library('form_validation');
    $this->load->library('datatables');
    $this->load->model('dosen_model');
    $this->load->model('penunjang_model');
    $this->load->model('tahun_akademik_model');
    $this->load->model('prodi_model');
    $this->load->model('user_model');
    //cek login
    if($this->session->userdata('logged')!=1){
      redirect(site_url().'auth');
    }
    //seleksi hak akses (cuma kaprodi yang boleh akses )
    //..kode
    $this->data_ta = $this->tahun_akademik_model->get_status_aktif();
  }

  public function form_valid(){
    $this->form_validation->set_error_delimiters('<div class="alert-danger" style="padding:10px;">','</div>');
    $this->form_validation->set_rules('thnAkademik','Tahun Akademik','required');
    $this->form_validation->set_rules('kd_semester','Semester','required');
    $this->form_validation->set_rules('nama_kegiatan','Nama Kegiatan', 'trim|required');
    $this->form_validation->set_rules('tanggal', 'Tanggal', 'required');
    $this->form_validation->set_rules('tempat', 'Tempat', 'trim|required');
    $this->form_validation->set_rules('alamat', 'Alamat', 'trim|required');
  }

  //tampilkan list penunjang user (yang login)
  public function index(){
    $hak = $this->session->userdata('hak_akses');
    if($hak>2 && $hak<10){
      $this->list_prodi();
    }else if($hak>9 && $hak<12){
      $this->list_institusi();
    }else{
      $this->list_penunjang();
    }
  }

  public function tambah(){
    $thn_akademik = $this->data_ta->tahunAkademik;
    $kd_semester = $this->data_ta->kd_semester;
    $data = array(
      'title' => 'Input Data Penunjang',
      'thnAkademik' => set_value('thnAkademik',$thn_akademik),
      'kd_semester' => set_value('kd_semester',$kd_semester),
      'nama_kegiatan' => set_value('nama_kegiatan',''),
      'tanggal' => set_value('tanggal',date('Y-m-d')),
      'tempat' => set_value('tempat',''),
      'alamat' => set_value('alamat',''),
      'button' => 'SIMPAN',
      'action' => site_url('penunjang/aksitambah'),
      'dd_kegiatan' => $this->penunjang_model->get_dd_jenis(),
      'id_tipe' => set_value('id_tipe',''),
      'tipe_dok' => set_value('tipe_dok','')
    );
    $this->load->view('penunjang/form_penunjang',$data);
  }

  public function aksitambah(){
    $this->form_valid();
    if(empty($_FILES['dok_hasil']['name'])){
      $this->form_validation->set_rules('dok_hasil', 'File Dokumen', 'required');
    }
    if($this->form_validation->run() == FALSE){
      $this->tambah();
    }else{
      //upload dokumen
      $path = "dok_penunjang";
      $upload = $this->penunjang_model->upload_dok_hasil($path);
      if($upload['result']=='success'){
         $data = array(
           'thnAkademik' => $this->input->post('thnAkademik',TRUE),
           'kd_semester' => $this->input->post('kd_semester',TRUE),
           'kd_dosen' => $this->session->userdata('nik'),
           'tanggal' => $this->input->post('tanggal',TRUE),
           'nama_kegiatan' => $this->input->post('nama_kegiatan',TRUE),
           'alamat' => $this->input->post('alamat',TRUE),
           'tempat' => $this->input->post('tempat',TRUE),
           'id_kegiatan' => $this->input->post('id_tipe',TRUE),
           'dok_path' => $path,
           'dok_hasil' => $upload['file']['file_name'],
           'status_periksa' => 'belum',
           'tipe_dok' => $this->input->post('tipe_dok')
         );
         $id = $this->penunjang_model->simpanPenunjang($data);
         $this->send_email($id);
         $this->session->set_flashdata('message', "<div class='alert alert-success alert-dismissible' role='alert'>Data Berhasil Disimpan!<button type='button' class='close' data-dismiss='alert' aria-label='close'><span aria-hidden='true'>&times;</span></button></div>");
         redirect(site_url('penunjang/list_penunjang'));
      }else{
        $this->session->set_flashdata('message', "<div class='alert alert-danger alert-dismissible' role='alert'>Gambar gagal diupload!<button type='button' class='close' data-dismiss='alert' aria-label='close'><span aria-hidden='true'>&times;</span></button></div>");
        $this->tambah();
      }
    }
  }

  public function send_email($id = null){
    $nik = $this->session->userdata('nik');
    $data_dosen = $this->dosen_model->get_by_kd($nik);
    $level_kaprodi = array_search($data_dosen->kode_prodi, $this->arr_prodi);
    $data_kaprodi = $this->user_model->get_by_lv($level_kaprodi);

    //https://masrud.com/post/kirim-email-dengan-smtp-gmail
    //konfigurasi email
    $config = [
      'mailtype'  => 'html',
      'charset'   => 'utf-8',
      'protocol'  => 'smtp',
      'smtp_host' => 'ssl://smtp.gmail.com',
      'smtp_user' => 'denny.az45@mhs.mdp.ac.id',
      'smtp_pass' => 'Daktauaku12',
      'smtp_port' => 465,
      'crlf'      => "\r\n",
      'newline'   => "\r\n"
    ];
    //load library email dengan config
    $this->load->library('email',$config);

    //Email dan Nama Pengirim
    $this->email->from('denny.az45@mhs.mdp.ac.id','SIPKD');

    // Subject email
    $this->email->subject('SIPKD | Penunjang #'.$id);

    //Email penerima
    $this->email->to($data_kaprodi->email);

    $nama = $data_kaprodi->jenis_kelamin=='L'?'Pak ':'Bu '.$data_kaprodi->nm_dosen;
    //Isi email
    $this->email->message("Halo, $nama<br>Dosen $data_dosen->nm_dosen telah menginput penunjang, silahkan divalidasi pada link berikut <a href='".site_url('penunjang/validasi')."'>klik</a><br>==========================<br><a href='".site_url('penunjang/validasi')."'>".site_url('penunjang/validasi')."</a><br>==========================<br>");

    // Tampilkan pesan sukses atau error
    if ($this->email->send()) {
        echo 'Sukses! email berhasil dikirim.';
    } else {
        echo 'Error! email tidak dapat dikirim.';
    }
  }

  public function get_data_penunjang(){
    $id = $this->input->post('id_penunjang');
    $data = array(
      'data_penunjang' => $this->penunjang_model->get_data_modal($id),
    );
    $this->load->view('penunjang/modal_penunjang',$data);
  }

  public function update($id){
    $kd_dosen = $this->session->userdata('nik');
    $data_penunjang = $this->penunjang_model->get_data_penunjang($id,$kd_dosen);
    $thnAkademik = $this->data_ta->tahunAkademik;
    //apabila data penunjang ada dan tahun akademik sama dengan yang aktif dan status belum di validasi
    if($data_penunjang && $data_penunjang->thnAkademik==$thnAkademik && $data_penunjang->status_periksa=='belum'){
      $data = array(
        'title' => 'Update Data Penunjang',
        'id' => set_value('id',$data_penunjang->id),
        'thnAkademik' => set_value('thnAkademik',$data_penunjang->thnAkademik),
        'kd_semester' => set_value('kd_semester',$data_penunjang->kd_semester),
        'nama_kegiatan' => set_value('nama_kegiatan',$data_penunjang->nama_kegiatan),
        'tanggal' => set_value('tanggal',$data_penunjang->tanggal),
        'tempat' => set_value('tempat',$data_penunjang->tempat),
        'alamat' => set_value('alamat',$data_penunjang->alamat),
        'button' => 'UPDATE',
        'action' => site_url('penunjang/aksiupdate'),
        'file' => base_url('./'.$data_penunjang->dok_path.'/'.$data_penunjang->dok_hasil),
        'dd_kegiatan' => $this->penunjang_model->get_dd_jenis(),
        'id_tipe' => set_value('id_tipe',$data_penunjang->id_kegiatan),
        'tipe_dok' => set_value('tipe_dok',$data_penunjang->tipe_dok)
      );
      $this->load->view('penunjang/form_penunjang',$data);
    }else{
      //data yang sudah divalidasi tidak dapat diupdate
      $this->session->set_flashdata('message', "<div class='alert alert-danger alert-dismissible' role='alert'>Data Gagal Diupdate!<button type='button' class='close' data-dismiss='alert' aria-label='close'><span aria-hidden='true'>&times;</span></button></div>");
      redirect(site_url('penunjang/list_penunjang'));
    }
  }

  public function aksiupdate(){
    $this->form_valid();
    if($this->form_validation->run() == FALSE){
      $this->update($this->input->post('id'));
    }else{
      if(empty($_FILES['dok_hasil']['name'])){
        $data = array(
          'thnAkademik' => $this->input->post('thnAkademik',TRUE),
          'kd_semester' => $this->input->post('kd_semester',TRUE),
          'tanggal' => $this->input->post('tanggal',TRUE),
          'nama_kegiatan' => $this->input->post('nama_kegiatan',TRUE),
          'alamat' => $this->input->post('alamat',TRUE),
          'tempat' => $this->input->post('tempat',TRUE),
          'id_kegiatan' => $this->input->post('id_tipe',TRUE),
          'tipe_dok' => $this->input->post('tipe_dok',TRUE)
        );
      }else{
        //upload dokumen
        $path = "dok_penunjang";
        $upload = $this->penunjang_model->upload_dok_hasil($path);
        if($upload['result']=='success'){
           $data = array(
             'thnAkademik' => $this->input->post('thnAkademik',TRUE),
             'kd_semester' => $this->input->post('kd_semester',TRUE),
             'tanggal' => $this->input->post('tanggal',TRUE),
             'nama_kegiatan' => $this->input->post('nama_kegiatan',TRUE),
             'alamat' => $this->input->post('alamat',TRUE),
             'tempat' => $this->input->post('tempat',TRUE),
             'id_kegiatan' => $this->input->post('id_tipe',TRUE),
             'dok_path' => $path,
             'dok_hasil' => $upload['file']['file_name'],
             'tipe_dok' => $this->input->post('tipe_dok',TRUE)
           );
           //delete file lama
           unlink('./'.$path.'/'.$this->penunjang_model->get_dok_hasil($this->input->post('id')));
        }else{
          //gagal upload foto
        }
      }
      $this->penunjang_model->updatePenunjang($data,$this->input->post('id',TRUE));
      $this->session->set_flashdata('message', "<div class='alert alert-success alert-dismissible' role='alert'>Data Berhasil Diupdate!<button type='button' class='close' data-dismiss='alert' aria-label='close'><span aria-hidden='true'>&times;</span></button></div>");
      redirect(site_url('penunjang/list_penunjang'));
    }
  }

  public function validasi(){
    //cek hak akses
    if($this->session->userdata('hak_akses')<3 || $this->session->userdata('hak_akses')>9){
      redirect('penunjang');
    }

    //menampilkan daftar penunjang yang belum di perlu di validasi sesuai dengan program studi
    $thnAkademik = $this->data_ta->tahunAkademik;
    $kd_semester = $this->data_ta->kd_semester;
    $kode_prodi = $this->arr_prodi[$this->session->userdata('hak_akses')];

    $data_penunjang = $this->penunjang_model->tampil_penunjang_prodi($thnAkademik,$kd_semester,$kode_prodi,'belum');
    $data_penunjang_validasi = $this->penunjang_model->tampil_penunjang_prodi($thnAkademik,$kd_semester,$kode_prodi,'sudah');
    $data = array(
      'title' => 'Validasi Penunjang Dosen',
      'data_penunjang' => $data_penunjang,
      'data_penunjang_validasi' => $data_penunjang_validasi,
      'thn_akademik' => $thnAkademik,
      'kd_semester' => $kd_semester,
      'program_studi' => $this->prodi_model->getByKode($kode_prodi)->nama_prodi,
    );
    $this->load->view('penunjang/list_validasi_penunjang',$data);
  }

  public function aksivalidasi($id,$status_periksa){

    $prodi_penunjang = $this->penunjang_model->get_data_modal($id)->kode_prodi;
    $kode_prodi = $this->arr_prodi[$this->session->userdata('hak_akses')];
    //seleksi kode prodi
    //apabila kode prodi sama dengan kaprodi nya maka lanjut update
    if($prodi_penunjang==$kode_prodi){
      $data['status_periksa'] = $status_periksa;
      $this->penunjang_model->updatePenunjang($data,$id);
      $status = $data['status_periksa']=='belum'?'Batal':'Berhasil';
      $this->session->set_flashdata('message', "<div class='alert alert-success alert-dismissible' role='alert'>Data $status Divalidasi!<button type='button' class='close' data-dismiss='alert' aria-label='close'><span aria-hidden='true'>&times;</span></button></div>");
      redirect(site_url('penunjang/validasi'));
    }else{
      $this->session->set_flashdata('message', "<div class='alert alert-danger alert-dismissible' role='alert'>Data Gagal Divalidasi!<button type='button' class='close' data-dismiss='alert' aria-label='close'><span aria-hidden='true'>&times;</span></button></div>");
      redirect('penunjang/validasi');
    }
  }

  public function get_list_prodi_json(){
    $kode = $this->input->post('kode');
    $thnAkademik = $this->input->post('thn_akademik');
    $kd_semester = $this->input->post('kd_semester');
    header('Content-Type: application/json');
    echo $this->penunjang_model->get_penunjang_by_prodi($thnAkademik,$kd_semester,$kode);
  }

  public function get_list_insitusi_json(){
    $kode = $this->input->post('kode');
    $kode_institusi = $this->arr_institusi[$kode];
    $thnAkademik = $this->input->post('thn_akademik');
    $kd_semester = $this->input->post('kd_semester');
    header('Content-Type: application/json');
    echo $this->penunjang_model->get_penunjang_by_institusi($thnAkademik,$kd_semester,$kode_institusi);
  }

  public function list_prodi(){
    //ambil data tahun akademik dari database
    $data_ta = $this->tahun_akademik_model->get_all_thn_akamdeik();

    //cek apakah ada data POST jika tidak tampil berdasarkan tahun yang aktif
    $thn_akademik = set_value('thnAkademik',$this->data_ta->tahunAkademik);
    $kd_semester = set_value('semester',$this->data_ta->kd_semester);
    $kode_prodi = $this->arr_prodi[$this->session->userdata('hak_akses')];

    $data = array(
      'action' => site_url('penunjang'),
      'title' => 'Data Penunjang Prodi',
      'kode' => $kode_prodi,
      'url' => site_url('penunjang/get_list_prodi_json'),
      'data_ta' => $data_ta,
      'thnAkademik' => set_value('thnAkademik', $thn_akademik),
      'semester' => set_value('semester', $kd_semester),
      'program_studi' => $this->prodi_model->getByKode($kode_prodi)->nama_prodi,
    );
    $this->load->view('penunjang/list_prodi',$data);
  }

  public function list_institusi(){
    $hak_akses = $this->session->userdata('hak_akses');
    if($hak_akses<10 || $hak_akses>11){
      redirect(site_url('kuesioner'));
    }else{
      $kode_prodi = set_value('kode_prodi','');
      $thnAkademik = set_value('thnAkademik',$this->data_ta->tahunAkademik);
      $kd_semester = set_value('semester',$this->data_ta->kd_semester);
      if($kode_prodi!=''){
        //pencarian per prodi
        $kode = $kode_prodi;
        $url = site_url('penunjang/get_list_prodi_json');
      }else{
        //pencarian per institusi
        $kode = $hak_akses;
        $url = site_url('penunjang/get_list_insitusi_json');
      }
      $data = array(
        'title' => 'List Penunjang Institusi',
        'data_ta' => $this->tahun_akademik_model->get_dd_thn_akademik(),
        'thnAkademik' => $thnAkademik,
        'kd_semester' => $kd_semester,
        'dd_prodi' => $this->prodi_model->get_dd_prodi($this->arr_institusi[$hak_akses]),
        'kode_prodi' => $kode_prodi,
        'kode' => $kode,
        'url' => $url,
      );
      $this->load->view('penunjang/list_institusi',$data);
    }
  }

  public function list_penunjang(){
    //ambil data tahun akademik dari database
    $data_ta = $this->tahun_akademik_model->get_all_thn_akamdeik();
    //isi seession data kd_dosen yang sedang login
    $kd_dosen = $this->session->userdata('nik');
    //cek apakah ada data POST jika tidak tampil berdasarkan tahun yang aktif
    if($this->input->post('thnAkademik')){
      $thn_akademik = $this->input->post('thnAkademik');
      $kd_semester = $this->input->post('semester');
    }else{
      $thn_akademik = $this->data_ta->tahunAkademik;
      $kd_semester = $this->data_ta->kd_semester;
    }
    //ambil data berdasrakan filter
    $data_penunjang = $this->penunjang_model->get_penunjang_by_dosen($kd_dosen, $thn_akademik, $kd_semester);

    $data = array(
      'action' => site_url('penunjang'),
      'title' => 'List Penunjang',
      'data_penunjang' => $data_penunjang,
      'data_ta' => $data_ta,
      'thnAkademik' => set_value('thnAkademik', $thn_akademik),
      'semester' => set_value('semester', $kd_semester)
    );
    $this->load->view('penunjang/list_penunjang',$data);
  }

  public function cetak(){
    //this->session->userdata('nik');
    $kd_dosen = $this->session->userdata('nik');
    $thnAkademik = $this->input->post('thnAkademik');
    $kd_semester = $this->input->post('semester');
    $data_dosen = $this->dosen_model->get_by_kd($kd_dosen);
    $data_penunjang = $this->penunjang_model->get_penunjang_by_dosen($kd_dosen, $thnAkademik, $kd_semester);
    $data = array(
      'thn_akademik' => $thnAkademik,
      'semester' => $kd_semester=='1'?'GASAL':'GENAP',
      'data_dosen' => $data_dosen,
      'data_penunjang' => $data_penunjang
    );
    $this->load->view('penunjang/laporan',$data);
  }
}
?>
