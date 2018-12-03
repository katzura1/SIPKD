<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Dashboard extends CI_Controller {

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
		if ($hak_akses>0) {
			$view = 'dosen';
			$data = array(
				'title' => 'Dashboard Dosen',
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
