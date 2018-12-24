<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Kurikulum extends CI_Controller {

  public function __construct(){
    parent::__construct();
    $this->load->model('kurikulum_model');
  }

	public function index()
	{
    $data = array(
      'title' => 'Kurikulum MDP',
      'data_kurikulum' => $this->kurikulum_model->get_all(),
    );
		$this->load->view('kurikulum\list',$data);
	}
}
