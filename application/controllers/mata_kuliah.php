<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class mata_kuliah extends CI_Controller
{
    function __construct()
    {
        parent::__construct();
        $this->load->model('mata_kuliah_model');
        $this->load->library('form_validation');
        if($this->session->userdata('logged')!=1){
          redirect(site_url().'auth');
        }
    }

    public function index()
    {
      $mata_kuliah = $this->mata_kuliah_model->get_all();
      $data = array(
          'title' => 'Daftar Mata Kuliah',
          'mata_kuliah_data' => $mata_kuliah,

      );
      $this->load->view('mata_kuliah/mata_kuliah', $data);
    }

    public function read($id)
    {
        $row = $this->mata_kuliah_model->get_by_id($id);
        if ($row) {
            $data = array(
		'kode_matkul' => $row->kode_matkul,
		'nama_matkul' => $row->nama_matkul,
		'sks' => $row->sks,
	    );
            $this->load->view('mata_kuliah/mata_kuliah_read', $data);
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('mata_kuliah'));
        }
    }

    public function tambah()
    {
        $data = array(
            'title' => 'Tambah Mata Kuliah',
            'button' => 'SUBMIT',
            'action' => site_url('mata_kuliah/create_action'),
      	    'kode_mk' => set_value('kode_mk'),
      	    'nama_mk' => set_value('nama_mk'),
            'read_only' => '',
      	    'sks' => set_value('sks'),
	);
        $this->load->view('mata_kuliah/mata_kuliah_form', $data);
    }

    public function create_action()
    {
        $this->_rules();

        if ($this->form_validation->run() == FALSE) {
            $this->tambah();
        } else {
            $data = array(
              'kode_mk' => $this->input->post('kode_mk',TRUE),
          		'nama_mk' => $this->input->post('nama_mk',TRUE),
          		'sks' => $this->input->post('sks',TRUE),
	          );

            $this->mata_kuliah_model->insert($data);
            $this->session->set_flashdata('message', 'Data Berhasil Disimpan');
            redirect(site_url('mata_kuliah'));
        }
    }

    public function update($id)
    {
        $row = $this->mata_kuliah_model->get_by_id($id);

        if ($row) {
            $data = array(
                'title' => 'Update Mata Kuliah',
                'button' => 'UPDATE',
                'action' => site_url('mata_kuliah/update_action'),
              	'kode_mk' => set_value('kode_mk', $row->kode_mk),
              	'nama_mk' => set_value('nama_mk', $row->nama_mk),
              	'sks' => set_value('sks', $row->sks),
                'read_only' => 'readonly',
	    );
            $this->load->view('mata_kuliah/mata_kuliah_form', $data);
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('mata_kuliah'));
        }
    }

    public function update_action()
    {
        $this->_rules();

        if ($this->form_validation->run() == FALSE) {
            $this->update($this->input->post('kode_matkul', TRUE));
        } else {
            $data = array(
          		'nama_mk' => $this->input->post('nama_mk',TRUE),
          		'sks' => $this->input->post('sks',TRUE),
	    );

            $this->mata_kuliah_model->update($this->input->post('kode_mk', TRUE), $data);
            $this->session->set_flashdata('message', 'Update Record Success');
            redirect(site_url('mata_kuliah'));
        }
    }

    public function delete($id)
    {
        $row = $this->mata_kuliah_model->get_by_id($id);

        if ($row) {
            $this->mata_kuliah_model->delete($id);
            $this->session->set_flashdata('message', 'Delete Record Success');
            redirect(site_url('mata_kuliah'));
        } else {
            $this->session->set_flashdata('message', 'Record Not Found');
            redirect(site_url('mata_kuliah'));
        }
    }

    public function _rules()
    {
    	$this->form_validation->set_rules('nama_mk', 'nama matkul', 'trim|required');
    	$this->form_validation->set_rules('sks', 'sks', 'trim|required');

    	$this->form_validation->set_rules('kode_mk', 'kode_matkul', 'trim|required');
    	$this->form_validation->set_error_delimiters('<span class="text-danger">', '</span>');
    }

    public function excel()
    {
        $this->load->helper('exportexcel');
        $namaFile = "mata_kuliah.xls";
        $judul = "mata_kuliah";
        $tablehead = 0;
        $tablebody = 1;
        $nourut = 1;
        //penulisan header
        header("Pragma: public");
        header("Expires: 0");
        header("Cache-Control: must-revalidate, post-check=0,pre-check=0");
        header("Content-Type: application/force-download");
        header("Content-Type: application/octet-stream");
        header("Content-Type: application/download");
        header("Content-Disposition: attachment;filename=" . $namaFile . "");
        header("Content-Transfer-Encoding: binary ");

        xlsBOF();

        $kolomhead = 0;
        xlsWriteLabel($tablehead, $kolomhead++, "No");
      	xlsWriteLabel($tablehead, $kolomhead++, "Nama Matkul");
      	xlsWriteLabel($tablehead, $kolomhead++, "Sks");

	     foreach ($this->mata_kuliah_model->get_all() as $data) {
            $kolombody = 0;

            //ubah xlsWriteLabel menjadi xlsWriteNumber untuk kolom numeric
            xlsWriteNumber($tablebody, $kolombody++, $nourut);
      	    xlsWriteLabel($tablebody, $kolombody++, $data->nama_matkul);
      	    xlsWriteLabel($tablebody, $kolombody++, $data->sks);

      	    $tablebody++;
            $nourut++;
        }

        xlsEOF();
        exit();
    }

    public function word()
    {
        header("Content-type: application/vnd.ms-word");
        header("Content-Disposition: attachment;Filename=mata_kuliah.doc");

        $data = array(
            'mata_kuliah_data' => $this->mata_kuliah_model->get_all(),
            'start' => 0
        );

        $this->load->view('mata_kuliah/mata_kuliah_doc',$data);
    }

}
/*BUAT UPLOAD DOKUMEN PENUNJANG*/
/* End of file mata_kuliah.php */
/* Location: ./application/controllers/mata_kuliah.php */
/* Please DO NOT modify this information : */
/* Generated by Harviacode Codeigniter CRUD Generator 2018-10-11 05:01:43 */
/* http://harviacode.com */
