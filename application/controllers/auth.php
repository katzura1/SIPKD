<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Auth extends CI_Controller {

	function __construct(){
		parent::__construct();
		$this->load->library('form_validation');
		$this->load->library('Recaptcha');
		$this->load->model('auth_model');
		$this->load->model('tahun_akademik_model');
	}

	public function index($error = NULL)
	{
		if($this->session->userdata('logged')==TRUE){
			redirect('dashboard');
		}
		$data = array(
			'action' => site_url().'auth/login',
			'error' => $error,
			'captcha' => $this->recaptcha->getWidget(), //menampilkan recaptcha
			'script_captcha' => $this->recaptcha->getScriptTag()
		);
		$this->load->view('login',$data);
	}

	public function __rules(){
		$this->form_validation->set_error_delimiters('<div class="text-danger">','</div>');
		$this->form_validation->set_rules('nik',"NIK","trim|required");
		$this->form_validation->set_rules('password',"Password","trim|required");
	}

	public function login()
	{
		$this->__rules();

		$recaptcha = $this->input->post('g-recaptcha-response');
		$response = $this->recaptcha->verifyResponse($recaptcha);

		if(!isset($response['success']) || $response['success'] <> true){
			$this->index("Harap isi verifikasi chaptca");
		}else if($this->form_validation->run() == FALSE){
			//apabila login gagal kembali ke index
			$this->index();
		}else{
			$nik = $this->input->post('nik');
			$pass = $this->input->post('password');
			$hasil = $this->auth_model->login($nik,$pass);

			if($hasil==1){
				$row = $this->auth_model->data_login($nik);
				if(password_verify($pass,$row->password)){
					$hak = array('Dosen','BAA','KAPRODI SI', 'KAPRODI TI','KAPRODI KA','KAPRODI MI','KAPRODI TK','KAPRODI AK','KAPRODI MJ','PK-1 STMIK','PK-1 STIE','Admin');

					$data_ta = $this->tahun_akademik_model->get_status_aktif();
					//set session
					$data_session = array(
						'logged' => TRUE,
						'nik' => $row->kd_dosen,
						'nama' => $row->gelar_depan.' '.$row->nm_dosen.', '.$row->gelar_belakang,
						'hak_akses' => $row->hak_akses,
						'hak' => $hak[ $row->hak_akses - 1],
						'foto' => $row->path_foto,
					);
					$this->session->set_userdata($data_session);
					redirect('dashboard');
				}else{
					$this->index('Password anda salah!');
				}
			}else{
				$this->index('NIK anda salah!');
			}
		}
	}

  public function logout()
	{
      $this->session->sess_destroy();

			redirect(site_url().'auth');
	}
}
