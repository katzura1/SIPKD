<?php
  class Penunjang_model extends CI_Model{
    private $nama_tb = 'data_penunjang';

    //upload dokumen
    public function upload_dok_hasil($path){
      $config = array(
        "file_name" => 'doc_'.date('dmYHis').$_FILES['dok_hasil']['name'],
        "upload_path" => './'.$path.'/',
        "allowed_types" => "jpg|png|jpeg|pdf|docx|doc",
        "max_size" => "8192",
        "remove_space" => TRUE
      );

      $this->load->library('upload',$config);
      if($this->upload->do_upload('dok_hasil')){
        // Jika berhasil :
        $return = array('result' => 'success', 'file' => $this->upload->data(), 'error' => '');
        return $return;
      }else{
        // Jika gagal :
       $return = array('result' => 'failed', 'file' => '', 'error' => $this->upload->display_errors());
       return $return;
      }
    }

    public function simpanPenunjang($data){
      $this->db->insert($this->nama_tb,$data);
      return $this->db->insert_id();
    }

    public function updatePenunjang($data,$id){
      $this->db->where('id',$id);
      $this->db->update($this->nama_tb,$data);
    }

    public function tampil_penunjang(){
      $this->db->select('id, jenis_kegiatan, nama_kegiatan, data_penunjang.kd_dosen, nm_dosen, nama_kegiatan, tanggal, tempat, alamat, dok_path, dok_hasil, status_periksa');
      $this->db->from($this->nama_tb);
      $this->db->join('dosen','dosen.kd_dosen=data_penunjang.kd_dosen');
      $this->db->join('tipe_kegiatan','tipe_kegiatan.id_kegiatan=data_penunjang.id_kegiatan');
      $this->db->order_by('thnAkademik','DESC');
      $this->db->order_by('kd_semester','ASC');
      return $this->db->get()->result();
    }

    //server side datatables
    public function get_penunjang_by_institusi($thnAkademik,$kd_semester,$kode_institusi){
      $this->datatables->select('p.id, p.nama_kegiatan, p.kd_dosen, d.nm_dosen, pd.nama_prodi, p.status_periksa, tp.jenis_kegiatan, p.tipe_dok');
      $this->datatables->from('data_penunjang as p');
      $this->datatables->join('dosen as d', 'd.kd_dosen=p.kd_dosen');
      $this->datatables->join('program_studi as pd','pd.kode_prodi=d.kode_prodi');
      $this->datatables->join('tipe_kegiatan as tp ','tp.id_kegiatan=p.id_kegiatan');
      $this->datatables->where('thnAkademik',$thnAkademik);
      $this->datatables->where('kd_semester',$kd_semester);
      $this->datatables->where_in('kode_institusi',$kode_institusi);
      $this->datatables->add_column('action_view','<a data-toggle="modal" onclick="javascript:load_penunjang($1)" class="btn btn-primary"><i class="fa fa-eye"></i> View</a>','id');
      return $this->datatables->generate();
    }

    public function get_penunjang_by_prodi($thnAkademik,$kd_semester,$kode_prodi){
      $this->datatables->select('p.id, p.nama_kegiatan, p.kd_dosen, d.nm_dosen, pd.nama_prodi, p.status_periksa, tp.jenis_kegiatan, p.tipe_dok');
      $this->datatables->from('data_penunjang as p');
      $this->datatables->join('dosen as d', 'd.kd_dosen=p.kd_dosen');
      $this->datatables->join('program_studi as pd','pd.kode_prodi=d.kode_prodi');
      $this->datatables->join('tipe_kegiatan as tp ','tp.id_kegiatan=p.id_kegiatan');
      $this->datatables->where('thnAkademik',$thnAkademik);
      $this->datatables->where('kd_semester',$kd_semester);
      $this->datatables->where('d.kode_prodi',$kode_prodi);
      $this->datatables->add_column('action_view','<a data-toggle="modal" onclick="javascript:load_penunjang($1)" class="btn btn-primary"><i class="fa fa-eye"></i> View</a>','id');
      return $this->datatables->generate();
    }

    public function get_penunjang_by_dosen($kd_dosen, $thnAkademik, $kd_semester){
      //$this->db->select('id, jenis_kegiatan, nama_kegiatan, data_penunjang.kd_dosen, nm_dosen, nama_kegiatan, tanggal, tempat, alamat, dok_path, dok_hasil, status_periksa');
      $this->db->from($this->nama_tb);
      $this->db->join('dosen','dosen.kd_dosen=data_penunjang.kd_dosen');
      $this->db->join('tipe_kegiatan','tipe_kegiatan.id_kegiatan=data_penunjang.id_kegiatan');
      $this->db->where('data_penunjang.kd_dosen',$kd_dosen);
      $this->db->where('thnAkademik',$thnAkademik);
      $this->db->where('kd_semester', $kd_semester);
      $this->db->order_by('thnAkademik','DESC');
      $this->db->order_by('kd_semester','ASC');
      return $this->db->get()->result();
    }

    public function get_dd_jenis(){
      $this->db->from('tipe_kegiatan as tp');
      $result = $this->db->get();

      $dd[''] = 'Pilih';
      if ($result->num_rows()>0) {
        foreach ($result->result() as $data) {
          $dd[$data->id_kegiatan] = $data->jenis_kegiatan;
        }
      }
      return $dd;
    }

    public function get_data_modal($id){
      $this->db->from($this->nama_tb);
      $this->db->join('dosen','dosen.kd_dosen=data_penunjang.kd_dosen');
      $this->db->join('program_studi','program_studi.kode_prodi=dosen.kode_prodi');
      $this->db->join('tipe_kegiatan','tipe_kegiatan.id_kegiatan=data_penunjang.id_kegiatan');
      $this->db->where('id',$id);
      return $this->db->get()->row();
    }

    public function get_jumlah_penunjang_by_dosen($kd_dosen,$thnAkademik,$kd_semester){
      $this->db->select('count(id) as total');
      $this->db->from($this->nama_tb);
      $this->db->where('kd_dosen',$kd_dosen);
      $this->db->where('thnAkademik',$thnAkademik);
      $this->db->where('kd_semester',$kd_semester);
      return $this->db->get()->row();
    }

    public function get_jumlah_penunjang($kode,$thnAkademik,$kd_semester,$status){
      $this->db->select('count(id) as total');
      $this->db->from($this->nama_tb);
      $this->db->join('dosen as d','d.kd_dosen=data_penunjang.kd_dosen');
      $this->db->join('program_studi as pd ','pd.kode_prodi=d.kode_prodi');
      if (is_array($kode)) {
        $this->db->where_in('pd.kode_institusi',$kode);
      }else{
        $this->db->where('d.kode_prodi',$kode);
      }
      if ($status!='') {
        $this->db->where('status_periksa',$status);
      }
      $this->db->where('thnAkademik',$thnAkademik);
      $this->db->where('kd_semester',$kd_semester);
      return $this->db->get()->row();
    }

    public function get_data_penunjang($id,$kd_dosen){
      $this->db->from($this->nama_tb);
      $this->db->where('id',$id);
      $this->db->where('kd_dosen',$kd_dosen);
      return $this->db->get()->row();
    }

    public function get_dok_hasil($id){
      $this->db->select('dok_hasil');
      $this->db->from($this->nama_tb);
      $this->db->where('id',$id);
      return $this->db->get()->row()->dok_hasil;
    }

    // public function tampil_penunjang_institusi($thnAkademik, $kd_semester, $kode_institusi){
    //   $this->db->from($this->nama_tb);
    //   $this->db->join('dosen','dosen.kd_dosen='.$this->nama_tb.'.kd_dosen');
    //   $this->db->join('program_studi','program_studi.kode_prodi=dosen.kode_prodi');
    //   $this->db->where('thnAkademik',$thnAkademik);
    //   $this->db->where('kd_semester',$kd_semester);
    //   $this->db->where_in('kode_institusi',$kode_institusi);
    //   $this->db->order_by('status_periksa','DESC');
    //   return $this->db->get()->result();
    // }
    //
    public function tampil_penunjang_prodi($thnAkademik,$kd_semester,$kode_prodi,$status_periksa){
      //$this->db->select('id, nama_kegiatan, data_penunjang.kd_dosen, nm_dosen, nama_kegiatan, tanggal, tempat, alamat, dok_path, dok_hasil, status_periksa');
      $this->db->from($this->nama_tb);
      $this->db->join('dosen','dosen.kd_dosen=data_penunjang.kd_dosen');
      $this->db->join('program_studi','program_studi.kode_prodi=dosen.kode_prodi');
      $this->db->join('tipe_kegiatan','tipe_kegiatan.id_kegiatan=data_penunjang.id_kegiatan');
      $this->db->where('thnAkademik',$thnAkademik);
      $this->db->where('kd_semester',$kd_semester);
      $this->db->where('dosen.kode_prodi',$kode_prodi);
      $this->db->like('status_periksa',$status_periksa);
      $this->db->order_by('status_periksa','ASC');
      return $this->db->get()->result();
    }
  }
?>
