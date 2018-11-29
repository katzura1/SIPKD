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

    public function tambahData($data){
      $this->db->insert($this->nama_tb,$data);
    }

    public function updateData($data,$id){
      $this->db->where('id',$id);
      $this->db->update($this->nama_tb,$data);
    }

    public function tampil_penunjang(){
      $this->db->select('id, nama_kegiatan, data_penunjang.kd_dosen, nm_dosen, nama_kegiatan, tanggal, tempat, alamat, dok_path, dok_hasil, status_periksa');
      $this->db->from($this->nama_tb);
      $this->db->join('dosen','dosen.kd_dosen=data_penunjang.kd_dosen');
      $this->db->order_by('thnAkademik','DESC');
      $this->db->order_by('kd_semester','ASC');
      return $this->db->get()->result();
    }

    public function tampil_penunjang_institusi($thnAkademik, $kd_semester, $kode_institusi){
      $this->db->from($this->nama_tb);
      $this->db->join('dosen','dosen.kd_dosen='.$this->nama_tb.'.kd_dosen');
      $this->db->join('program_studi','program_studi.kode_prodi=dosen.kode_prodi');
      $this->db->where('thnAkademik',$thnAkademik);
      $this->db->where('kd_semester',$kd_semester);
      $this->db->where_in('kode_institusi',$kode_institusi);
      return $this->db->get()->result();
    }

    public function tampil_penunjang_prodi($thnAkademik,$kd_semester,$kode_prodi,$status){
      //$this->db->select('id, nama_kegiatan, data_penunjang.kd_dosen, nm_dosen, nama_kegiatan, tanggal, tempat, alamat, dok_path, dok_hasil, status_periksa');
      $this->db->from($this->nama_tb);
      $this->db->join('dosen','dosen.kd_dosen=data_penunjang.kd_dosen');
      $this->db->join('program_studi','program_studi.kode_prodi=dosen.kode_prodi');
      $this->db->where('thnAkademik',$thnAkademik);
      $this->db->where('kd_semester',$kd_semester);
      $this->db->where('dosen.kode_prodi',$kode_prodi);
      $this->db->like('status_periksa',$status);
      $this->db->order_by('status_periksa','ASC');
      return $this->db->get()->result();
    }

    public function tampil_penunjang_dosen($kd_dosen, $thnAkademik, $kd_semester){
      $this->db->select('id, nama_kegiatan, data_penunjang.kd_dosen, nm_dosen, nama_kegiatan, tanggal, tempat, alamat, dok_path, dok_hasil, status_periksa');
      $this->db->from($this->nama_tb);
      $this->db->join('dosen','dosen.kd_dosen=data_penunjang.kd_dosen');
      $this->db->where('data_penunjang.kd_dosen',$kd_dosen);
      $this->db->where('thnAkademik',$thnAkademik);
      $this->db->where('kd_semester', $kd_semester);
      $this->db->order_by('thnAkademik','DESC');
      $this->db->order_by('kd_semester','ASC');
      return $this->db->get()->result();
    }

    public function get_data_modal($id){
      $this->db->from($this->nama_tb);
      $this->db->join('dosen','dosen.kd_dosen=data_penunjang.kd_dosen');
      $this->db->join('program_studi','program_studi.kode_prodi=dosen.kode_prodi');
      $this->db->where('id',$id);
      return $this->db->get()->row();
    }

    public function get_jumlah_penunjang_by_dosen($kd_dosen){
      $this->db->select('count(id) as total');
      $this->db->from($this->nama_tb);
      $this->db->where('kd_dosen',$kd_dosen);
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
  }
?>
