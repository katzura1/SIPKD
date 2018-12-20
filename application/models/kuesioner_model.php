<?php
if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Kuesioner_model extends CI_Model{

  private $tb = 'data_kuesioner';
  private $tb_d = 'data_detail_kuesioner';
  private $pk = 'id';

  //server side datatables
  public function get_all_by_prodi_json($kode_prodi,$thnAkademik,$kd_semester,$penilai){
    $this->datatables->select('kd_dosen, nm_dosen, nama_prodi');
    $this->datatables->select(" IFNULL( (SELECT COUNT(id) FROM data_kuesioner as dk WHERE thnAkademik='$thnAkademik' AND kd_semester='$kd_semester' AND penilai='$penilai' AND dk.kd_dosen=d.kd_dosen),'0') as status");
    $this->datatables->select(" IFNULL( (SELECT id FROM data_kuesioner as dk WHERE thnAkademik='$thnAkademik' AND kd_semester='$kd_semester' AND penilai='$penilai' AND dk.kd_dosen=d.kd_dosen),'0') as id");
    $this->datatables->from('dosen as d');
    $this->datatables->join('program_studi','program_studi.kode_prodi=d.kode_prodi');
    $this->datatables->where('program_studi.kode_prodi',$kode_prodi);
    $this->datatables->where('kd_dosen !=',$this->session->userdata('nik'));
    $this->datatables->add_column('action_nilai', anchor(site_url('kuesioner/isi/$1'),'NILAI','class="btn btn-success"'),'kd_dosen');
    $this->datatables->add_column('action_ubah',anchor(site_url('kuesioner/update/$2'),'UPDATE','class="btn btn-danger"')." ".anchor(site_url('kuesioner/detail/$2'),'VIEW','class="btn btn-primary"'),'kd_dosen,id');
    return $this->datatables->generate();
  }

  public function get_all_by_institusi_json($kode_institusi,$thnAkademik,$kd_semester,$penilai){
    $this->datatables->select('kd_dosen, nm_dosen, nama_prodi');
    $this->datatables->select(" IFNULL( (SELECT COUNT(id) FROM data_kuesioner as dk WHERE thnAkademik='$thnAkademik' AND kd_semester='$kd_semester' AND penilai='$penilai' AND dk.kd_dosen=d.kd_dosen),'0') as status");
    $this->datatables->select(" IFNULL( (SELECT id FROM data_kuesioner as dk WHERE thnAkademik='$thnAkademik' AND kd_semester='$kd_semester' AND penilai='$penilai' AND dk.kd_dosen=d.kd_dosen),'0') as id");
    $this->datatables->from('dosen as d');
    $this->datatables->join('program_studi','program_studi.kode_prodi=d.kode_prodi');
    $this->datatables->where_in('kode_institusi',$kode_institusi);
    $this->datatables->where('kd_dosen !=',$this->session->userdata('nik'));
    $this->datatables->add_column('action_nilai', anchor(site_url('kuesioner/isi/$1'),'NILAI','class="btn btn-success"'),'kd_dosen');
    $this->datatables->add_column('action_ubah',anchor(site_url('kuesioner/update/$2'),'UPDATE','class="btn btn-danger"')." ".anchor(site_url('kuesioner/detail/$2'),'VIEW','class="btn btn-primary"'),'kd_dosen,id');
    return $this->datatables->generate();
  }

  public function get_skor_by_prodi_json($kode_prodi,$thnAkademik,$kd_semester,$penilai){
    $this->datatables->select($this->tb.'.kd_dosen, nm_dosen, nama_prodi, '.$this->tb.'.id, SUM(skor) as total_skor');
    $this->datatables->from($this->tb);
    $this->datatables->join($this->tb_d,$this->tb_d.'.id='.$this->tb.'.id');
    $this->datatables->join('dosen','dosen.kd_dosen='.$this->tb.'.kd_dosen');
    $this->datatables->join('program_studi','program_studi.kode_prodi=dosen.kode_prodi');
    $this->datatables->where('thnAkademik',$thnAkademik);
    $this->datatables->where('kd_semester',$kd_semester);
    $this->datatables->where('dosen.kode_prodi',$kode_prodi);
    $this->datatables->where('penilai',$penilai);
    $this->datatables->group_by($this->tb.'.id');
    return $this->datatables->generate();
  }

  public function get_skor_by_institusi_json($kode_institusi,$thnAkademik,$kd_semester,$penilai){
    $this->datatables->select($this->tb.'.kd_dosen, nm_dosen, nama_prodi, '.$this->tb.'.id, SUM(skor) as total_skor');
    $this->datatables->from($this->tb);
    $this->datatables->join($this->tb_d,$this->tb_d.'.id='.$this->tb.'.id');
    $this->datatables->join('dosen','dosen.kd_dosen='.$this->tb.'.kd_dosen');
    $this->datatables->join('program_studi','program_studi.kode_prodi=dosen.kode_prodi');
    $this->datatables->where('thnAkademik',$thnAkademik);
    $this->datatables->where('kd_semester',$kd_semester);
    $this->datatables->where_in('program_studi.kode_institusi',$kode_institusi);
    $this->datatables->where('penilai',$penilai);
    $this->datatables->group_by($this->tb.'.id');
    return $this->datatables->generate();
  }
  // public function get_done_institusi_json($kode_institusi,$thnAkademik,$kd_semester,$penilai){
  //   $this->datatables->select('dosen.kd_dosen, nm_dosen, nama_prodi,id');
  //   $this->datatables->from($this->tb);
  //   $this->datatables->join('dosen','dosen.kd_dosen=data_kuesioner.kd_dosen');
  //   $this->datatables->join('program_studi','program_studi.kode_prodi=dosen.kode_prodi');
  //   $this->datatables->where('thnAkademik',$thnAkademik);
  //   $this->datatables->where('kd_semester',$kd_semester);
  //   $this->datatables->where('penilai',$penilai);
  //   $this->datatables->where_in('kode_institusi',$kode_institusi);
  //   $this->datatables->add_column('action',anchor(site_url('kuesioner/ubah/$1'),'UPDATE','class="btn btn-danger"')." ".anchor(site_url('kuesioner/detail/$2'),'VIEW','class="btn btn-primary"'),'kd_dosen,id');
  //   return $this->datatables->generate();
  // }

  // public function get_not_done_institusi_json($kode_institusi,$thnAkademik,$kd_semester,$penilai){
  //   $this->datatables->select('kd_dosen, nm_dosen, nama_prodi');
  //   $this->datatables->from('dosen');
  //   $this->datatables->join('program_studi','program_studi.kode_prodi=dosen.kode_prodi');
  //   $this->datatables->where(" NOT EXISTS (SELECT kd_dosen FROM $this->tb WHERE thnAkademik='$thnAkademik' AND kd_semester='$kd_semester' AND penilai='$penilai' AND $this->tb.kd_dosen=dosen.kd_dosen)");
  //   $this->datatables->where_in('kode_institusi',$kode_institusi);
  //   $this->datatables->add_column('action', anchor(site_url('kuesioner/isi/$1'),'NILAI','class="btn btn-success"'),'kd_dosen');
  //   return $this->datatables->generate();
  // }


  public function get_dd_ta(){
    $this->db->distinct();
    $this->db->select('thnAkademik');
    $this->db->from($this->tb);
    $result =  $this->db->get();

    $dd = array();

    if($result->num_rows()>0){
      foreach ($result->result() as $row) {
        $dd[$row->thnAkademik] = $row->thnAkademik;
      }
    }

    return $dd;
  }

  public function get_row_count($thnAkademik,$kd_semester,$kd_dosen,$penilai){
    $this->db->from('data_kuesioner');
    $this->db->where('thnAkademik',$thnAkademik);
    $this->db->where('kd_semester',$kd_semester);
    $this->db->where('kd_dosen',$kd_dosen);
    $this->db->where('penilai',$penilai);
    return $this->db->get()->num_rows();
  }

  public function get_detail_by_id($id){
    $this->db->from($this->tb_d);
    $this->db->join($this->tb, 'data_kuesioner.id=data_detail_kuesioner.id');
    $this->db->join('dosen','dosen.kd_dosen=data_kuesioner.kd_dosen');
    $this->db->join('kompetensi','kompetensi.kd_kompetensi=data_detail_kuesioner.kd_kompetensi');
    $this->db->join('kategori_kinerja','kategori_kinerja.kd_kategori=kompetensi.kd_kategori');
    $this->db->where('data_kuesioner.id',$id);
    return $this->db->get()->result();
  }

  //menampilkan data berdasarkan id
  public function get_by_id($id){
    $this->db->from($this->tb);
    $this->db->join('dosen','dosen.kd_dosen=data_kuesioner.kd_dosen');
    $this->db->join('program_studi','program_studi.kode_prodi=dosen.kode_prodi');
    $this->db->where('id',$id);
    return $this->db->get()->row();
  }

  //mengambil id dari kuesioner
  public function get_id($data){
    $this->db->select('id');
    $this->db->from($this->tb);
    $this->db->where($data);
    return $this->db->get()->row()->id;
  }

  public function get_nilai($kd_dosen,$thnAkademik,$kd_semester,$penilai){
    $this->db->select('nama_kategori');
    $this->db->select_sum('skor','total_skor');
    $this->db->from($this->tb);
    $this->db->join($this->tb_d, $this->tb_d.'.id='.$this->tb.'.id');
    $this->db->join('kompetensi','kompetensi.kd_kompetensi='.$this->tb_d.'.kd_kompetensi');
    $this->db->join('kategori_kinerja','kategori_kinerja.kd_kategori=kompetensi.kd_kategori');
    $this->db->where('kd_dosen',$kd_dosen);
    $this->db->where('thnAkademik',$thnAkademik);
    $this->db->where('kd_semester', $kd_semester);
    $this->db->where('penilai',$penilai);
    $this->db->group_by('kategori_kinerja.kd_kategori');
    $this->db->order_by($this->tb_d.'.id ASC, '.$this->tb_d.'.kd_kompetensi ASC');
    //echo $this->db->get_compiled_select();
    return $this->db->get()->result();
  }

  public function simpanKuesioner($data){
    $this->db->insert($this->tb,$data);
    return $this->db->insert_id();
  }

  public function simpanDetail($data_detail){
    $this->db->insert($this->tb_d,$data_detail);
  }

  public function ubahDetail($data,$id,$kd_kompetensi){
    $this->db->where('id',$id);
    $this->db->where('kd_kompetensi',$kd_kompetensi);
    $this->db->update($this->tb_d,$data);
  }

  public function update_tgl_ubah($data,$id){
    $this->db->where('id',$id);
    $this->db->update($this->tb,$data);
  }

  // public function get_all_not_done_by_institusi($kode_institusi,$thnAkademik,$kd_semester,$penilai){
  //   //menampilkan data dosen yang belum di isi
  //   $this->db->from('dosen');
  //   $this->db->join('program_studi','program_studi.kode_prodi=dosen.kode_prodi');
  //   $this->db->where(" NOT EXISTS (SELECT kd_dosen FROM $this->tb WHERE thnAkademik='$thnAkademik' AND kd_semester='$kd_semester' AND penilai='$penilai' AND $this->tb.kd_dosen=dosen.kd_dosen)");
  //   $this->db->where_in('kode_institusi',$kode_institusi);
  //   return $this->db->get()->result();
  // }
  //
  // public function get_all_done_by_institusi($kode_institusi,$thnAkademik,$kd_semester,$penilai){
  //   $this->db->from($this->tb);
  //   $this->db->join('dosen','dosen.kd_dosen=data_kuesioner.kd_dosen');
  //   $this->db->join('program_studi','program_studi.kode_prodi=dosen.kode_prodi');
  //   $this->db->where('thnAkademik',$thnAkademik);
  //   $this->db->where('kd_semester',$kd_semester);
  //   $this->db->where('penilai',$penilai);
  //   $this->db->where_in('kode_institusi',$kode_institusi);
  //   return $this->db->get()->result();
  // }
  //
  // public function get_all_not_done($kode_prodi,$thnAkademik,$kd_semester,$penilai){
  //   //menampilkan data dosen yang belum di isi
  //   $this->db->from('dosen');
  //   $this->db->join('program_studi','program_studi.kode_prodi=dosen.kode_prodi');
  //   $this->db->where(" NOT EXISTS (SELECT kd_dosen FROM $this->tb WHERE thnAkademik='$thnAkademik' AND kd_semester='$kd_semester' AND penilai='$penilai' AND $this->tb.kd_dosen=dosen.kd_dosen)");
  //   $this->db->where('dosen.kode_prodi',$kode_prodi);
  //   return $this->db->get()->result();
  // }
  //
  // public function get_all_done($kode_prodi,$thnAkademik,$kd_semester,$penilai){
  //   $this->db->from($this->tb);
  //   $this->db->join('dosen','dosen.kd_dosen=data_kuesioner.kd_dosen');
  //   $this->db->join('program_studi','program_studi.kode_prodi=dosen.kode_prodi');
  //   $this->db->where('thnAkademik',$thnAkademik);
  //   $this->db->where('kd_semester',$kd_semester);
  //   $this->db->where('penilai',$penilai);
  //   $this->db->where('dosen.kode_prodi',$kode_prodi);
  //   return $this->db->get()->result();
  // }
}

 ?>
