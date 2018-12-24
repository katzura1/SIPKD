<?php

//https://stackoverflow.com/questions/2479132/how-can-i-load-model-to-helper
//https://stackoverflow.com/questions/11966355/codeigniter-using-helper-in-controller-doesnt-work

function get_jum($hak_akses){
    $arr_prodi = array(
      3 => '24',
      4 => '25',
      5 => '13',
      6 => '11',
      7 => '12',
      8 => '21',
      9 => '20'
    );

    $kode_prodi = $arr_prodi[$hak_akses];
    $CI = get_instance();
    $CI->load->model('penunjang_model');
    $CI->load->model('tahun_akademik_model');
    $data_ta = $CI->tahun_akademik_model->get_status_aktif();
    return $CI->penunjang_model->get_jumlah_penunjang($kode_prodi,$data_ta->tahunAkademik,$data_ta->kd_semester,'belum')->total;
}
?>
