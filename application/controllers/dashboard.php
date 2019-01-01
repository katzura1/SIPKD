<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Dashboard extends CI_Controller {
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

	public function __construct(){
		parent::__construct();
		$this->load->model('tahun_akademik_model');
		$this->load->model('lppm_model');
		$this->load->model('penunjang_model');
		if($this->session->userdata('logged')!=1){
      redirect(site_url().'auth');
    }
	}

	public function index()
	{
		$hak_akses = $this->session->userdata('hak_akses');
		$kd_dosen = $this->session->userdata('nik');
		$data_ta = $this->tahun_akademik_model->get_status_aktif();
		$view='';
		$data = array();
		//sementara semua dashbarod ssama
		if($hak_akses>=3 && $hak_akses<=9){
			//kaprodi
			$view = 'dosen';
			$kode_prodi = $this->arr_prodi[$hak_akses];
			$data = array(
				'title' => 'Dashboard Dosen',
				'small' => 'Dosen',
				'thnAkdemik' => $data_ta->tahunAkademik,
				'kd_semester' => $data_ta->kd_semester,
				'jum_penelitian' => $this->lppm_model->get_jumlah_penelitian($kode_prodi,$data_ta->tahunAkademik,$data_ta->kd_semester)->total,
				'jum_pengabdian' => $this->lppm_model->get_jumlah_pengabdian($kode_prodi,$data_ta->tahunAkademik,$data_ta->kd_semester)->total,
				'jum_penunjang' => $this->penunjang_model->get_jumlah_penunjang($kode_prodi,$data_ta->tahunAkademik,$data_ta->kd_semester,'')->total,
			);
		}else if($hak_akses>=10 && $hak_akses<=11){
			//pk-1
			$view = 'dosen';
			$kode_institusi = $this->arr_institusi[$hak_akses];
			$data = array(
				'title' => 'Dashboard PK-1',
				'small' => 'PK-1',
				'thnAkdemik' => $data_ta->tahunAkademik,
				'kd_semester' => $data_ta->kd_semester,
				'jum_penelitian' => $this->lppm_model->get_jumlah_penelitian($kode_institusi,$data_ta->tahunAkademik,$data_ta->kd_semester)->total,
				'jum_pengabdian' => $this->lppm_model->get_jumlah_pengabdian($kode_institusi,$data_ta->tahunAkademik,$data_ta->kd_semester)->total,
				'jum_penunjang' => $this->penunjang_model->get_jumlah_penunjang($kode_institusi,$data_ta->tahunAkademik,$data_ta->kd_semester,'')->total,
			);
		}else{
			$view = 'dosen';
			$data = array(
				'title' => 'Dashboard Kaprodi',
				'small' => 'Kaprodi',
				'thnAkdemik' => $data_ta->tahunAkademik,
				'kd_semester' => $data_ta->kd_semester,
				'jum_penelitian' => $this->lppm_model->get_jumlah_penelitian_by_dosen($kd_dosen,$data_ta->tahunAkademik,$data_ta->kd_semester)->total,
				'jum_pengabdian' => $this->lppm_model->get_jumlah_pengabdian_by_dosen($kd_dosen,$data_ta->tahunAkademik,$data_ta->kd_semester)->total,
				'jum_penunjang' => $this->penunjang_model->get_jumlah_penunjang_by_dosen($kd_dosen,$data_ta->tahunAkademik,$data_ta->kd_semester)->total,
			);
		}
		$this->load->view('dashboard/'.$view,$data);
	}
}
