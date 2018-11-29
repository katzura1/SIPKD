-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 06, 2018 at 03:46 AM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_skripsi`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_dosen_penelitian`
--

CREATE TABLE `data_dosen_penelitian` (
  `id_penelitian` int(11) NOT NULL,
  `kd_dosen` varchar(6) NOT NULL,
  `dosen_ke` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_dosen_penelitian`
--

INSERT INTO `data_dosen_penelitian` (`id_penelitian`, `kd_dosen`, `dosen_ke`) VALUES
(1, '21312', 1),
(2, '111062', 2);

-- --------------------------------------------------------

--
-- Table structure for table `data_dosen_proposal`
--

CREATE TABLE `data_dosen_proposal` (
  `id_proposal` int(11) NOT NULL,
  `kd_dosen` varchar(6) NOT NULL,
  `dosen_ke` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `data_penelitian`
--

CREATE TABLE `data_penelitian` (
  `id` int(11) NOT NULL,
  `no_registrasi` varchar(6) NOT NULL,
  `thn_akademik` varchar(9) NOT NULL,
  `kd_semester` varchar(1) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `abstrak` longtext NOT NULL,
  `jenis` varchar(50) NOT NULL,
  `tahun` varchar(4) NOT NULL,
  `dana` varchar(20) NOT NULL,
  `tgl_buat` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `sumber_dana` varchar(200) NOT NULL,
  `no_kontrak` varchar(125) NOT NULL,
  `path_dok` varchar(125) NOT NULL,
  `dok_hasil` varchar(125) NOT NULL,
  `publikasi` int(10) NOT NULL,
  `jurnal` varchar(150) NOT NULL,
  `issn` varchar(150) NOT NULL,
  `institusi` int(1) NOT NULL,
  `terbit` int(10) NOT NULL,
  `edisi` varchar(25) NOT NULL,
  `volume` varchar(25) NOT NULL,
  `tahun_publikasi` varchar(50) NOT NULL,
  `halaman` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_penelitian`
--

INSERT INTO `data_penelitian` (`id`, `no_registrasi`, `thn_akademik`, `kd_semester`, `judul`, `abstrak`, `jenis`, `tahun`, `dana`, `tgl_buat`, `sumber_dana`, `no_kontrak`, `path_dok`, `dok_hasil`, `publikasi`, `jurnal`, `issn`, `institusi`, `terbit`, `edisi`, `volume`, `tahun_publikasi`, `halaman`) VALUES
(1, '123456', '2018/2019', '1', 'Pengaruh ABC terhadap DEF', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\r\n\r\n', 'penelitian', '2018', '100000000', '2018-11-05 16:32:50', 'Akademik', '1234521321312321', 'dokumen_penelitian', 'dok_hasil_123.docx', 25, 'Pengaruh ABC terhadap DEF', '123456789123', 1, 2018, '01', '01', '2018', '500'),
(2, '123457', '2018/2019', '1', 'Pengaruh ABC terhadap DEF 2', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\r\n\r\n', 'penelitian', '2018', '100000000', '2018-11-05 16:32:50', 'Akademik', '1234521321312321', 'dokumen_penelitian', 'dok_hasil_123.docx', 25, 'Pengaruh ABC terhadap DEF', '123456789123', 1, 2018, '01', '01', '2018', '500');

-- --------------------------------------------------------

--
-- Table structure for table `data_proposal`
--

CREATE TABLE `data_proposal` (
  `id` int(11) NOT NULL,
  `no_registrasi` varchar(6) NOT NULL,
  `thn_akademik` varchar(9) NOT NULL,
  `kd_semester` varchar(1) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `deskripsi` longtext NOT NULL,
  `penyelenggara` int(11) NOT NULL,
  `jenis` int(11) NOT NULL,
  `periode_dari` date NOT NULL,
  `periode_sampai` date NOT NULL,
  `tempat` varchar(150) NOT NULL,
  `alamat` text NOT NULL,
  `dana` varchar(20) NOT NULL,
  `dok_jadwal` varchar(255) NOT NULL,
  `path_jadwal` varchar(255) NOT NULL,
  `dok_proposal` varchar(255) NOT NULL,
  `path_proposal` varchar(255) NOT NULL,
  `dok_hasil` int(255) NOT NULL,
  `kode_alur` int(11) NOT NULL,
  `tgl_buat` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `tgl_lppm` datetime NOT NULL,
  `tgl_ketua` datetime NOT NULL,
  `tgl_bau` datetime NOT NULL,
  `tgl_dosen_terima` datetime NOT NULL,
  `tgl_dosen_laporan` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dosen`
--

CREATE TABLE `dosen` (
  `kd_dosen` varchar(6) NOT NULL,
  `nm_dosen` varchar(40) NOT NULL,
  `gelar_depan` varchar(10) NOT NULL,
  `gelar_belakang` varchar(20) NOT NULL,
  `email` text NOT NULL,
  `S1` varchar(50) NOT NULL,
  `S2` varchar(50) NOT NULL,
  `S3` varchar(50) NOT NULL,
  `jenis_kelamin` varchar(10) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `path_foto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dosen`
--

INSERT INTO `dosen` (`kd_dosen`, `nm_dosen`, `gelar_depan`, `gelar_belakang`, `email`, `S1`, `S2`, `S3`, `jenis_kelamin`, `tgl_lahir`, `path_foto`) VALUES
('021018', 'SITI MAWADDAH', '', ' S.Pd, M. Pd', 'SITI@siti.com', ' S.Pd, ', 'M. Pd', '', 'P', '1992-02-02', '21102018171856jamaliah.jpg'),
('041032', 'Ade Kumalasari', '', 'S.Pd, M.Pd', 'Ade@Ade.com', 'S.Pd,', 'M.Pd', '', 'L', '1993-03-03', '21102018172115handoko.jpg'),
('051039', 'Adhe Saputra', '', 'S.Pd., M.Pd,', 'Adhe@gmail.com', 'S.Pd.', ' M.Pd,', '', 'L', '1994-04-04', '21102018172207handoko.jpg'),
('071046', 'Adi Fitri', 'Drs', 'M.Pd,', 'Fitri@Fitri.com', 'Drs', 'M.Pd,', '', 'P', '1993-05-05', '21102018172311jamaliah.jpg'),
('081050', 'Admizal', 'Drs', ' M.Pd,', 'Admizal@Admizal.com', 'Drs', ' M.Pd,', '', 'L', '1196-06-06', '21102018172359handoko.jpg'),
('091052', 'Adrefiza', 'Drs. ', 'M.A, Ph.D', 'Adrefiza@Adrefiza.com', 'M.A,', 'Ph.D', 'Drs. ', 'L', '1996-04-04', '21102018172442handoko.jpg'),
('101058', 'Afreni Hamidah', 'DR.', 'S.Pt., M.Si,', 'Hamidah@Hamidah.com', 'S.Pt', 'M.Si,', 'DR.', 'P', '1994-07-07', '21102018172745jamaliah.jpg'),
('111062', 'Agung Rimba Kurniawan', 'Drs', 'M.Pd', 'Kurniawan@Kurniawan.com', 'Drs', 'M.Pd', '', 'L', '1994-04-04', '21102018172826handoko.jpg'),
('162257', 'Jordyn Marvin', '', 'S.Pd., M.Pd.', 'Jordyn@gmail.com', 'S.Pd', 'M.Pd.', '', 'L', '1991-01-01', '21102018171719handoko.jpg'),
('21312', 'Handoko Parlindungan', 'Dr.', 'S.T., M.T.I', 'handoko@gmail.com', 'Sarjana Teknologi Informasi', 'Magister Teknologi Informasi', 'Proffesor Sistem Informasi', 'L', '1901-01-01', 'handoko.jpg'),
('I3106', ' Jamalia Samiah Halimah', 'Ir.', 'S.I., S.E', 'jamalia@gmail.com', 'Sarjana Sistem Informasi', 'Sarjana Ekonomi', '', 'P', '1983-05-13', 'jamaliah.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `institusi`
--

CREATE TABLE `institusi` (
  `kode_institusi` varchar(1) NOT NULL,
  `nama_institusi` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `institusi`
--

INSERT INTO `institusi` (`kode_institusi`, `nama_institusi`) VALUES
('1', 'STMIK'),
('2', 'STIE'),
('3', 'AMIK');

-- --------------------------------------------------------

--
-- Table structure for table `mata_kuliah`
--

CREATE TABLE `mata_kuliah` (
  `kode_mk` varchar(5) NOT NULL,
  `nama_mk` varchar(50) NOT NULL,
  `sks` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mata_kuliah`
--

INSERT INTO `mata_kuliah` (`kode_mk`, `nama_mk`, `sks`) VALUES
('13108', 'Perpajakan', 2),
('A1101', 'Bahasa Inggris 1', 2),
('A1102', 'Matematika Diskrit', 4),
('A1103', 'Ekonomi', 2),
('A1104', 'Perpajakan', 2),
('A1105', 'Fungsi Bisnis', 2),
('A1106', 'Manajemen', 2),
('A2102', 'Manajemen Biaya', 2),
('A2103', 'Perpajakan', 4),
('A2107', 'Pengenalan Sistem Informasi', 2),
('A3103', 'Manajemen Investasi', 2),
('A3105', 'Manajemen Strategi', 2),
('A3108', 'Akuntansi Pajak', 2),
('I1107', 'Pemograman Beroientasi Ob', 2),
('I2102', 'Bahasa Inggris 2', 2),
('I2103', 'Pemograman Website', 4),
('I3101', 'Metode Penelitian Ilmiah', 2),
('I3105', 'Pemograman Aplikasi Bergerak', 4),
('J1103', 'Sistem Komputer', 2),
('J1108', 'Manajemen Umum', 2),
('J2105', 'Basis Data Terapan', 2),
('J3102', 'Kontrol Sistem Informasi', 2),
('K3103', 'Perpajakan', 2),
('K3109', 'Audit Sistem Informasi', 2),
('M1101', 'Bahasa Inggris 2', 2),
('M1103', 'Ekonomi Dasar', 2),
('M1106', 'Manajemen Biaya', 2),
('M2303', 'Manajemen Proyek', 2),
('M2305', 'Manajemen SDM', 2),
('M2307', 'Dasar Komputer', 2),
('M3502', 'E- Commerece', 2),
('M3506', 'Motivasi', 2),
('M3509', 'Manajemen Hubungan Pelanggan', 2),
('M3511', 'Manajemen Resiko', 2),
('M3512', 'Manajemen Inovasi', 2),
('M4704', 'Manajemen SCM', 2),
('S1105', 'Pemograman Dasar', 4),
('S2107', 'Pemograman Berorientasi Obyek', 4),
('S3104', 'Pemgoraman Website', 4),
('S4102', 'Audit Sistem Informasi', 2);

-- --------------------------------------------------------

--
-- Table structure for table `pertemuan`
--

CREATE TABLE `pertemuan` (
  `ThnAkademik` varchar(9) CHARACTER SET utf8 DEFAULT NULL,
  `KD_DOSEN` varchar(6) CHARACTER SET utf8 DEFAULT NULL,
  `KODE_MK` varchar(5) CHARACTER SET utf8 DEFAULT NULL,
  `KELAS` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `TANGGAL` datetime DEFAULT NULL,
  `WAKTU` varchar(3) CHARACTER SET utf8 DEFAULT NULL,
  `PERTEMUAN` smallint(6) DEFAULT NULL,
  `MATERI` varchar(150) CHARACTER SET utf8 DEFAULT NULL,
  `Hadir` smallint(6) DEFAULT NULL,
  `Ijin` smallint(6) DEFAULT NULL,
  `Kd_Semester` varchar(1) DEFAULT NULL,
  `Jam_Masuk` varchar(5) DEFAULT NULL,
  `Jam_Keluar` varchar(5) DEFAULT NULL,
  `Lama` int(11) DEFAULT NULL,
  `Keterangan` varchar(50) DEFAULT NULL,
  `SELESAI` varchar(1) DEFAULT NULL,
  `GBPP` varchar(150) DEFAULT NULL,
  `JAM_DIATUR` varchar(8) DEFAULT NULL,
  `CATATAN_KAPRODI` varchar(150) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pertemuan`
--

INSERT INTO `pertemuan` (`ThnAkademik`, `KD_DOSEN`, `KODE_MK`, `KELAS`, `TANGGAL`, `WAKTU`, `PERTEMUAN`, `MATERI`, `Hadir`, `Ijin`, `Kd_Semester`, `Jam_Masuk`, `Jam_Keluar`, `Lama`, `Keterangan`, `SELESAI`, `GBPP`, `JAM_DIATUR`, `CATATAN_KAPRODI`) VALUES
('2018/2019', '021013', 'I3101', 'TI5B', '2018-09-10 00:00:00', '1A2', 1, 'pengantar metopen             ', 0, 0, '1', '07:49', '09:26', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '021013', 'I3106', 'TI5A', '2018-09-10 00:00:00', '1B2', 1, 'pengantar IB 2', 0, 0, '1', '09:41', '11:15', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '021017', 'J2106', 'MI3A', '2018-09-10 00:00:00', '1B2', 1, 'Silabus, aturan-aturan, Konteks metode analisis dan perancangan ', 0, 0, '1', '09:36', '11:20', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '021018', 'I3101', 'TI5A', '2018-09-10 00:00:00', '1A2', 1, 'Pendahuluan', 25, 1, '1', '07:48', '09:27', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '021018', 'S3101', 'SI5B', '2018-09-10 00:00:00', '1B2', 1, 'Pendahuluan', 32, 1, '1', '09:36', '11:17', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '041032', 'S3104', 'SI5C', '2018-09-10 00:00:00', '1B2', 1, 'Pengatar Web', 0, 0, '1', '09:44', '11:19', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '051039', 'S1105', 'SI1B', '2018-09-10 00:00:00', '1A2', 1, 'Penjelasan Silabus dan pengenalan Python (Idle)', 27, 0, '1', '07:33', '09:30', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '071046', 'S3106', 'SI5A', '2018-09-10 00:00:00', '1B2', 1, 'GBI-017 introduction to SAP', 14, 0, '1', '09:48', '11:21', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '081050', 'S2101', 'SI3A', '2018-09-10 00:00:00', '1A2', 1, 'Silabus ', 23, 1, '1', '07:50', '09:27', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '081050', 'S2101', 'SI3B', '2018-09-10 00:00:00', '1B2', 1, 'Silabus', 23, 0, '1', '09:41', '11:16', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '091052', 'J1101', 'MI1A', '2018-09-10 00:00:00', '1A2', 1, 'Penjelasan silabus, masalah ekonomi', 10, 0, '1', '07:51', '09:28', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '101058', 'I2102', 'TI3A', '2018-09-10 00:00:00', '1A2', 1, 'Pengenalan Silabus dan Chapter Introduction', 32, 1, '1', '07:49', '09:29', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '101058', 'I2102', 'TI3B', '2018-09-10 00:00:00', '1B2', 1, 'Silabus dan Chapter 1', 13, 0, '1', '09:41', '11:19', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '111061', 'T3102', 'TK5A', '2018-09-10 00:00:00', '1B2', 2, 'cx one omron', 4, 0, '1', '09:42', '11:21', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '111061', 'T3102', 'TK5A', '2018-09-10 00:00:00', '1A2', 1, 'intro plc', 4, 0, '1', '07:48', '09:27', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '111062', 'S4102', 'SI7B', '2018-09-10 00:00:00', '1B2', 1, 'Pendahuluan dan PEngantar Audi SI ', 17, 1, '1', '09:52', '11:20', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '111067', 'J1108', 'MI1A', '2018-09-10 00:00:00', '1B2', 1, 'Silabus + Manajemen, Manager dan Kegiatannya', 10, 0, '1', '10:13', '11:16', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '111067', 'J2111', 'MI3A', '2018-09-10 00:00:00', '1A2', 1, 'Penjelasan SIlabus + Apa itu perilaku organisasi', 6, 0, '1', '07:54', '09:28', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '121077', 'S1103', 'SI1B', '2018-09-10 00:00:00', '1B2', 1, 'Penjelasan Umum dan Pengenalan GAFE (buat Email, Buat Sugnature dan Label serta Filetering)', 27, 0, '1', '09:45', '11:25', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '121078', 'S2103', 'SI3B', '2018-09-10 00:00:00', '1A2', 1, 'Penjelasan Silabus', 28, 0, '1', '07:55', '09:28', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '121079', 'S1103', 'SI1C', '2018-09-10 00:00:00', '1B2', 1, 'Pengantar dan silabus', 32, 0, '1', '09:44', '11:12', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '121079', 'S1105', 'SI1A', '2018-09-10 00:00:00', '1A2', 1, 'Pengenalan', 29, 0, '1', '07:48', '09:27', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '121080', 'I1103', 'TI1B', '2018-09-10 00:00:00', '1B2', 1, 'Penjelasan umum dan pengetahuan dasar komputer.\r\n', 29, 1, '1', '09:37', '11:20', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '121082', 'S1105', 'SI1C', '2018-09-10 00:00:00', '1A2', 1, 'perkenalan, kontrak, bahas silabus, & pengantar dasar pemrograman, python', 32, 0, '1', '07:52', '09:31', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '121083', 'I1106', 'TI1B', '2018-09-10 00:00:00', '1A2', 1, 'Penjelasan GBPP dan SAP', 30, 0, '1', '07:53', '09:30', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '131088', 'S4101', 'SI7C', '2018-09-10 00:00:00', '1B2', 1, 'dasar-dasar perpajakan', 8, 0, '1', '09:43', '11:11', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '131091', 'I2106', 'TI3B', '2018-09-10 00:00:00', '1A2', 1, 'Pengantar Silabus', 9, 0, '1', '07:50', '09:21', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '151103', 'I2101', 'TI3A', '2018-09-10 00:00:00', '1B2', 1, 'Review ASD 1', 28, 1, '1', '09:39', '11:17', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '151106', 'I3102', 'TI5B', '2018-09-10 00:00:00', '1B2', 1, 'Penjelasan Umum', 10, 0, '1', '09:40', '11:16', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '151109', 'I1103', 'TI1A', '2018-09-10 00:00:00', '1B2', 1, 'Penjelasan Umum & Pengetahuan Dasar Komputer', 30, 0, '1', '09:37', '11:19', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '151118', 'I1106', 'TI1A', '2018-09-10 00:00:00', '1A2', 1, 'Penjelasan Umum (SAP GBPP)	', 30, 0, '1', '07:46', '09:25', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '001001', 'I3110', 'TI51', '2018-09-10 00:00:00', '1E2', 1, 'Pengenalan Pengantar Teknologi Game', 4, 0, '1', '15:50', '16:56', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '021014', 'S4111', 'SI51', '2018-09-10 00:00:00', '1E2', 1, 'Penjelasan Umum', 8, 0, '1', '15:26', '16:57', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '101058', 'I2102', 'TI3A', '2018-09-10 00:00:00', '1C2', 2, 'Chapter 1 Network Media', 32, 1, '1', '11:26', '13:11', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '111062', 'K3109', 'KA5A', '2018-09-10 00:00:00', '5C2', 1, 'Pendahuluan dan Pengantar Audit SI', 1, 0, '1', '11', '12', NULL, NULL, NULL, '', NULL, NULL),
('2018/2019', '112198', 'S3107', 'SI5A', '2018-09-10 00:00:00', '1D2', 1, 'Silabus dan  Tugas', 21, 1, '1', '13:46', '15:26', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '121076', 'S4103', 'SI7C', '2018-09-10 00:00:00', '1C2', 1, 'Penjelasan Umum - Konsep SI', 25, 1, '1', '11:31', '13:03', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '121078', 'S3106', 'SI5B', '2018-09-10 00:00:00', '1C2', 1, 'Penjelasan Umum dan GBPP SAP', 32, 2, '1', '11:43', '13:04', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '121080', 'S1103', 'SI1A', '2018-09-10 00:00:00', '1C2', 1, 'Penjelasan Umum dan GAFE', 0, 0, '1', '11:40', '13:10', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '121082', 'S1105', 'SI1C', '2018-09-10 00:00:00', '1D2', 2, 'variabel, tipe data, print, string literally, %d/%s...', 29, 2, '1', '13:20', '15:18', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '131089', 'S4114', 'SI7A', '2018-09-10 00:00:00', '1D2', 1, 'Pengantar PAB Lanjutan', 24, 3, '1', '13:34', '15:09', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '141096', 'I3110', 'TI5A', '2018-09-10 00:00:00', '1C2', 1, 'Pengenalan Game dan Sejarah Game', 13, 2, '1', '11:33', '13:03', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '141097', 'S4101', 'SI7A', '2018-09-10 00:00:00', '1C2', 1, 'dasar-dasar perpajakan', 30, 0, '1', '11:45', '13:03', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '151106', 'S4102', 'SI7A', '2018-09-10 00:00:00', '1G2', 1, 'Penjelasan umum', 30, 1, '1', '11', '12', NULL, NULL, NULL, '', NULL, NULL),
('2018/2019', '151110', 'I4111', 'TI7A', '2018-09-10 00:00:00', '1D2', 1, '7 OSI Layer', 26, 0, '1', '13:27', '15:06', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '151110', 'S2103', 'SI3A', '2018-09-10 00:00:00', '1C2', 1, 'Penjelasan Umum Skema Dasar Sistem\r\nKomputer', 21, 2, '1', '11:28', '13:09', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '151118', 'J2102', 'MI3A', '2018-09-10 00:00:00', '1C2', 1, ' Pendahuluan dan Dasar Komunikasi Data', 0, 0, '1', '11:30', '13:03', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '162266', 'I4102', 'TI7B', '2018-09-10 00:00:00', '1C2', 1, 'Pengantar Materi', 14, 1, '1', '11:32', '13:11', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '021005', 'I2105', 'TI3A', '2018-09-12 00:00:00', '3C2', 1, 'Aturan Pembulatan dan Angka Signifikan', 31, 0, '1', '11:23', '12:54', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '021005', 'I2107', 'TI3A', '2018-09-12 00:00:00', '3B2', 1, 'Pendahuluan', 32, 1, '1', '09:18', '11:21', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '021014', 'S4114', 'SI7C', '2018-09-12 00:00:00', '3C2', 1, 'Penjelasan umum; Broadcast Receiver', 25, 0, '1', '11:32', '12:54', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '021016', 'I4104', 'TI71', '2018-09-10 00:00:00', '1G2', 1, 'silabus, sap,pendahuluan', 18, 0, '1', '19:04', '20:35', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '021016', 'I4104', 'TI7A', '2018-09-12 00:00:00', '3A2', 1, 'silabus,pengantar mikroprosesor', 11, 0, '1', '07:44', '09:26', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '021016', 'I4104', 'TI7B', '2018-09-12 00:00:00', '3B2', 1, 'silabus,pengantar mikroprosesor\r\n', 18, 0, '1', '09:32', '11:19', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '021017', 'J2106', 'MI3A', '2018-09-12 00:00:00', '3A2', 2, 'Lanjutan Konteks metode analisis', 4, 0, '1', '07:47', '09:30', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '021017', 'S3102', 'SI52', '2018-09-10 00:00:00', '1F2', 1, 'Silabus, aturan, materi', 24, 3, '1', '17:04', '18:40', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '021018', 'I4103', 'TI7A', '2018-09-12 00:00:00', '3B2', 1, 'Pendahuluan', 10, 0, '1', '09:41', '11:20', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '021018', 'S3109', 'SI5A', '2018-09-12 00:00:00', '3C2', 1, 'Pendahuluan', 13, 0, '1', '11:30', '13:10', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '041035', 'S4112', 'SI71', '2018-09-10 00:00:00', '1G2', 1, 'Pengenalan Data Warehouse', 33, 1, '1', '19:03', '20:37', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '051038', 'I1104', 'TI1A', '2018-09-12 00:00:00', '3A2', 1, 'Penjelasan Umum/Sistem Bilangan', 29, 0, '1', '07:45', '09:25', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '051038', 'S1106', 'SI11', '2018-09-10 00:00:00', '1F2', 1, 'Pengantar Matematika Diskrit', 28, 0, '1', '17:08', '18:43', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '051039', 'S1105', 'SI1B', '2018-09-12 00:00:00', '3C2', 2, 'Identifier, variabel dan tipe data', 27, 0, '1', '11:34', '13:13', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '051039', 'S3105', 'SI51', '2018-09-10 00:00:00', '1G2', 1, 'Penjelasan Umum dan Pengantar Software Testing', 0, 0, '1', '19:06', '20:38', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '051039', 'S3109', 'SI51', '2018-09-10 00:00:00', '1F2', 1, 'Penjelasan Silabus dan Paradoks Produktivitas TI', 17, 0, '1', '17:10', '18:39', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '051039', 'S4113', 'SI7A', '2018-09-12 00:00:00', '3B2', 1, 'Penjelasan SIlabus dan Pengantar Administrasi dan Keamanan Basis Data', 0, 0, '1', '09:37', '11:21', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '051040', 'S3102', 'SI5C', '2018-09-12 00:00:00', '3B2', 1, 'Preview Sistem informasi', 40, 0, '1', '09:45', '11:17', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '071045', 'I2104', 'TI3B', '2018-09-12 00:00:00', '3B2', 1, 'penjelasan silabus, pengenalan SQL Server', 0, 0, '1', '09:44', '11:24', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '071046', 'S4115', 'SI7A', '2018-09-12 00:00:00', '3A2', 1, 'GBI-098 introduction, pembagian username,  masuk SAP FI Exercise. ', 0, 0, '1', '08:10', '09:25', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '082164', 'S3104', 'SI52', '2018-09-10 00:00:00', '1G2', 1, 'Struktur Dasar HTML', 15, 1, '1', '19:05', '20:45', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '091053', 'K3103', 'KA5A', '2018-09-12 00:00:00', '3A2', 1, 'Dasar-dasar Perpajakan', 5, 0, '1', '07:56', '09:27', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '101057', 'S1105', 'SI12', '2018-09-10 00:00:00', '1G2', 1, 'pengenalan python', 30, 0, '1', '19:01', '20:43', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '101057', 'S2107', 'SI3A', '2018-09-12 00:00:00', '3B2', 1, 'pengantar pemrograman orientasi objek', 24, 0, '1', '09:43', '11:22', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '101058', 'S4108', 'SI7B', '2018-09-12 00:00:00', '3D2', 1, 'Silabus', 26, 0, '1', '13:25', '15:07', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '101058', 'T3104', 'TK5A', '2018-09-12 00:00:00', '3B2', 2, 'Pengenalan Robotika', 4, 0, '1', '09:42', '11:24', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '101058', 'T3104', 'TK5A', '2018-09-12 00:00:00', '3A2', 1, 'Pengenalan Silabus', 4, 0, '1', '08:06', '09:36', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '101060', 'S2101', 'SI31', '2018-09-10 00:00:00', '1F2', 1, 'Pengantar Statistika', 15, 0, '1', '17:02', '18:30', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '101060', 'S2101', 'SI32', '2018-09-10 00:00:00', '1G2', 1, 'Pengantar Statistika', 15, 1, '1', '19:04', '20:26', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '111061', 'I2106', 'TI31', '2018-09-10 00:00:00', '1F2', 1, 'intro fisika dasar', 23, 2, '1', '17:08', '18:39', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '111061', 'I3113', 'TI5B', '2018-09-12 00:00:00', '3C2', 1, 'intro program jaringan', 20, 1, '1', '11:31', '07:50', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '111062', 'S2108', 'SI3A', '2018-09-12 00:00:00', '3A2', 1, 'Penhelasan RPS, aturan dan pengantar komunikasi bisnis', 22, 1, '1', '07:52', '08:52', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '111062', 'S3103', 'SI5B', '2018-09-12 00:00:00', '3C2', 1, 'Pendahuluan', 41, 1, '1', '11:36', '12:00', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '111063', 'S1108', 'SI1C', '2018-09-12 00:00:00', '3B2', 1, 'Pengenalan Silabus', 32, 0, '1', '09:39', '11:20', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '111063', 'S4106', 'SI7A', '2018-09-12 00:00:00', '3C2', 1, 'Pengenalan Silabus dan Konsep Dasar Manajemen Hubungan Pelanggan', 20, 1, '1', '11:30', '13:09', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '111066', 'S1108', 'SI1A', '2018-09-12 00:00:00', '3B2', 1, 'Penjelasan Silabus & SAP\r\n', 29, 0, '1', '09:48', '11:29', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '111066', 'S1108', 'SI1B', '2018-09-12 00:00:00', '3A2', 1, 'Penjelsan Silabus & SAP', 26, 0, '1', '07:59', '09:35', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '111067', 'K3102', 'KA5A', '2018-09-12 00:00:00', '3D2', 1, 'Pendahuluan', 5, 0, '1', '13:38', '15:08', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '111069', 'I1104', 'TI1B', '2018-09-12 00:00:00', '3A2', 1, 'Sistem Bilangan', 33, 3, '1', '07:58', '09:31', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '111069', 'I1105', 'TI11', '2018-09-10 00:00:00', '1F2', 1, 'Matriks', 34, 0, '1', '17:10', '18:37', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '111070', 'J2105', 'MI3A', '2018-09-12 00:00:00', '3D2', 1, 'Review Basis Data dan Pengenalan Microsoft\r\nSQL Server ', 7, 0, '1', '13:34', '15:07', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '111070', 'J3102', 'MI5A', '2018-09-12 00:00:00', '3B2', 2, 'Review Kontrol Standar (Aplikasi Tiket Pesawat)', 14, 1, '1', '09:44', '11:18', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '111070', 'J3102', 'MI5A', '2018-09-12 00:00:00', '3A2', 1, 'Penjelasan Umum Silabus dan Review Pemrograman Visual I (Project Nilai Akhir)', 12, 1, '1', '07:47', '09:29', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '111070', 'S4113', 'SI71', '2018-09-12 00:00:00', '3E2', 1, 'Pengantar Administrasi dan Keamanan Basis\r\nData (Pembuatan Database di Drive Tertentu)', 19, 0, '1', '15:32', '16:58', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '121076', 'S4104', 'SI7D', '2018-09-12 00:00:00', '3D2', 1, 'Penjelasan Umum, Silabus, Materi: Pengantar Analisis Bisnis', 34, 0, '1', '13:35', '15:12', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '121078', 'K3106', 'KA5A', '2018-09-12 00:00:00', '3B2', 1, 'Pengenalan Silabus', 5, 0, '1', '09:42', '10:59', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '121079', 'S1105', 'SI1A', '2018-09-12 00:00:00', '3C2', 2, 'Identifier, Variabel dan Tipe Data', 0, 0, '1', '11:35', '13:13', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '121080', 'S3102', 'SI5B', '2018-09-12 00:00:00', '3B2', 1, 'Review ANSI dan Pengembangan SI', 16, 3, '1', '09:41', '11:20', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '121082', 'J1102', 'MI1A', '2018-09-12 00:00:00', '3B2', 1, 'perkenalan, pembahsan kontrak perkuliahan, pembahasan silabus, kesepakatan kelas, pembahsan materi dan tugas di simponi, pengantar pemrograman dasar', 10, 0, '1', '09:44', '11:18', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '121084', 'I4105', 'TI73', '2018-09-12 00:00:00', '3E2', 1, 'Pengantar Teknologi Multimedia', 7, 0, '1', '15:18', '17:07', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '121084', 'I4105', 'TI7B', '2018-09-12 00:00:00', '3A2', 1, 'pengantar teknologi multimedia', 11, 1, '1', '07:50', '09:38', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '121084', 'I4105', 'TI7C', '2018-09-12 00:00:00', '3D2', 1, 'pengantar teknologi multimedia', 5, 0, '1', '13:24', '15:15', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '121086', 'I4105', 'TI71', '2018-09-10 00:00:00', '1F2', 1, 'Multimedia Fundamental', 13, 0, '1', '17:23', '14:32', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '121086', 'I4105', 'TI72', '2018-09-10 00:00:00', '1E2', 1, 'Multimedia Fundamental', 16, 0, '1', '17:21', '17:21', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '131089', 'S1105', 'SI11', '2018-09-10 00:00:00', '1G2', 1, 'Pengantar Dasar Pemrograman', 27, 0, '1', '19:09', '20:43', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '131091', 'J1105', 'MI1A', '2018-09-12 00:00:00', '3C2', 1, 'Pengantar Sliabus', 10, 0, '1', '11:38', '13:10', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '131092', 'I3106', 'TI51', '2018-09-10 00:00:00', '1G2', 2, 'Pengenalan Matlab (Praktikum)', 20, 0, '1', '19:08', '20:36', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '131092', 'I3106', 'TI51', '2018-09-10 00:00:00', '1F2', 1, 'Pengenalan Soft Computing', 20, 0, '1', '17:13', '18:29', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '131092', 'I3106', 'TI5B', '2018-09-12 00:00:00', '3A2', 1, 'Pengenalan Soft Computing', 14, 0, '1', '07:48', '09:20', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '141096', 'I3105', 'TI5A', '2018-09-12 00:00:00', '3A2', 1, 'Introduction to Android', 26, 4, '1', '07:48', '09:34', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '141096', 'I3105', 'TI5B', '2018-09-12 00:00:00', '3D2', 2, 'Using Layout', 18, 1, '1', '13:34', '15:15', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '141096', 'I3105', 'TI5B', '2018-09-12 00:00:00', '3B2', 1, 'Introduction to Android', 18, 1, '1', '09:39', '11:22', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '141101', 'I3103', 'TI5A', '2018-09-12 00:00:00', '3B2', 1, 'Penjelasan keamanan komputer', 7, 0, '1', '09:44', '11:20', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '141102', 'I2102', 'TI31', '2018-09-10 00:00:00', '1G2', 1, 'Perkenalan, penyampaian Silabus Mata Kuliah', 0, 0, '1', '19:06', '20:44', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '151103', 'I1105', 'TI1A', '2018-09-12 00:00:00', '3B2', 1, 'Matriks (1)', 0, 0, '1', '09:40', '11:19', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '151103', 'S1106', 'SI12', '2018-09-10 00:00:00', '1F2', 1, 'Logika (1)', 31, 0, '1', '17:10', '18:40', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '151106', 'S4102', 'SI71', '2018-09-10 00:00:00', '1F2', 1, 'Pengenalan Audit Dan Audit SI/TI', 32, 4, '1', '17:14', '18:37', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '151106', 'S4102', 'SI72', '2018-09-10 00:00:00', '1G2', 1, 'Pengenalan Audit Dan Audit SI/TI', 4, 2, '1', '19:02', '20:34', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '151109', 'I1103', 'TI11', '2018-09-10 00:00:00', '1G2', 1, 'Penjelasan Umum & Pengetahuan Dasar Komputer', 34, 0, '1', '19:06', '20:37', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '151118', 'S2103', 'SI31', '2018-09-10 00:00:00', '1G2', 1, 'Penjelasan Umum Skema Dasar Sistem\r\nKomputer', 0, 0, '1', '19:02', '20:24', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '151118', 'S2103', 'SI32', '2018-09-10 00:00:00', '1F2', 1, 'Penjelasan Umum Skema Dasar Sistem\r\nKomputer', 15, 1, '1', '17:01', '18:36', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '162265', 'I1102', 'TI1B', '2018-09-12 00:00:00', '3C2', 1, 'Pemaparan Silabus', 31, 0, '1', '11:45', '13:11', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '162265', 'S1101', 'SI1C', '2018-09-12 00:00:00', '3D2', 1, 'Pemaparan Silabus', 34, 0, '1', '13:34', '15:10', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '172267', 'I4102', 'TI72', '2018-09-12 00:00:00', '3E2', 1, 'Pendidikan Pancasila Membangkitkan Semangat ESQ (Kuliah Pembukaan)', 18, 0, '1', '15:37', '17:01', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '172275', 'J2101', 'MI3A', '2018-09-12 00:00:00', '3B2', 1, 'Pendahuluan penjelasan GBPP-SAP Getting to know you', 4, 0, '1', '09:41', '11:21', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '172275', 'S1102', 'SI1A', '2018-09-12 00:00:00', '3A2', 1, 'Pendahuluan penjelasan GBPP-SAP Getting to know you', 28, 0, '1', '07:45', '09:30', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '021005', 'S1106', 'SI1A', '2018-09-14 00:00:00', '5A2', 1, 'Logika Proposisional', 9, 0, '1', '07:49', '09:29', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '021013', 'I2101', 'TI31', '2018-09-12 00:00:00', '3G2', 1, 'pengantar', 0, 0, '1', '19:05', '20:35', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '021013', 'I3101', 'TI51', '2018-09-12 00:00:00', '3F2', 1, 'pengantar metode penulisan ilmiah', 0, 0, '1', '17:02', '18:36', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '021013', 'I3104', 'TI5A', '2018-09-13 00:00:00', '4A2', 1, 'pengantar PCD', 0, 0, '1', '07:51', '09:28', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '021013', 'I3104', 'TI5B', '2018-09-14 00:00:00', '5A2', 1, 'pengantar PCD', 0, 0, '1', '07:45', '09:27', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '021013', 'I3106', 'TI5A', '2018-09-13 00:00:00', '4B2', 2, 'fuzzy', 0, 0, '1', '09:47', '11:25', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '021016', 'I4104', 'TI71', '2018-09-12 00:00:00', '3G2', 2, 'pengenalan bahasa rakitan emu8086', 19, 0, '1', '19:03', '20:36', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '021016', 'I4104', 'TI7A', '2018-09-14 00:00:00', '5A2', 2, 'Pengantar bahasa rakitan', 10, 1, '1', '07:42', '09:27', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '021017', 'S3102', 'SI51', '2018-09-12 00:00:00', '3G2', 1, 'Silabus, aturan-aturan, Preview Sistem informasi', 25, 0, '1', '18:55', '20:39', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '021017', 'S3103', 'SI51', '2018-09-12 00:00:00', '3F2', 1, 'Silabus, materi, Penjelasan umum', 28, 1, '1', '17:03', '18:39', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '021018', 'S3109', 'SI5B', '2018-09-13 00:00:00', '4A2', 1, 'Pendahuluan', 27, 1, '1', '07:53', '09:27', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '041032', 'J2103', 'MI3A', '2018-09-13 00:00:00', '4A2', 2, 'CMS', 4, 0, '1', '11', '12', NULL, NULL, NULL, '', NULL, NULL),
('2018/2019', '041032', 'J2103', 'MI3A', '2018-09-13 00:00:00', '4A2', 1, 'Pengantar Web', 4, 0, '1', '11', '12', NULL, NULL, NULL, '', NULL, NULL),
('2018/2019', '041032', 'K1208', 'KA3A', '2018-09-13 00:00:00', '4A2', 2, 'CMS', 1, 0, '1', '11', '12', NULL, NULL, NULL, '', NULL, NULL),
('2018/2019', '041032', 'K1208', 'KA3A', '2018-09-13 00:00:00', '4B2', 1, 'Pengantar Web', 1, 0, '1', '11', '12', NULL, NULL, NULL, '', NULL, NULL),
('2018/2019', '041032', 'S3104', 'SI51', '2018-09-13 00:00:00', '4G2', 2, 'CMS', 0, 0, '1', '20:11', '20:22', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '041032', 'S3104', 'SI51', '2018-09-13 00:00:00', '4F2', 1, 'pengantar web', 36, 0, '1', '17:15', '18:43', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '041032', 'S3104', 'SI5C', '2018-09-13 00:00:00', '4C2', 2, 'CMS', 11, 0, '1', '11:40', '13:10', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '041032', 'T2202', 'TK5A', '2018-09-13 00:00:00', '4B2', 2, 'CMS', 0, 0, '1', '09:55', '11:20', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '041032', 'T2202', 'TK5A', '2018-09-13 00:00:00', '4A2', 1, 'Pengantar Web', 1, 0, '1', '07:54', '09:33', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '041034', 'I2107', 'TI31', '2018-09-12 00:00:00', '3F2', 1, 'Silabus, Konsep Bahasa.', 20, 0, '1', '17:09', '18:37', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '041034', 'I4109', 'TI7A', '2018-09-13 00:00:00', '4D2', 1, 'Silabus, Teknik Simulasi.', 13, 0, '1', '13:36', '15:07', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '041034', 'S1106', 'SI1B', '2018-09-14 00:00:00', '5A2', 1, 'Silabus, Logika.', 27, 0, '1', '07:50', '09:30', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '041034', 'S1107', 'SI1A', '2018-09-13 00:00:00', '4B2', 1, 'Silabus, Pengantar Teknologi Informasi, Konsep Komputer.', 29, 0, '1', '09:42', '11:17', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '041035', 'S4112', 'SI7A', '2018-09-13 00:00:00', '4A2', 1, 'Pengenalan Data Warehouse', 20, 1, '1', '07:56', '09:28', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '051038', 'I1104', 'TI1A', '2018-09-14 00:00:00', '5A2', 2, 'Sistem Bilangan (lanjutan 1): Pertaksamaan', 29, 1, '1', '07:49', '09:30', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '051038', 'I2105', 'TI31', '2018-09-13 00:00:00', '4F2', 1, 'Penjelasan Umum / Pendahuluan', 18, 0, '1', '17:06', '18:41', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '051038', 'S1106', 'SI11', '2018-09-12 00:00:00', '3G2', 2, 'Logika (1)', 0, 0, '1', '18:58', '20:38', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '051040', 'J3105', 'MI5A', '2018-09-13 00:00:00', '4A2', 1, 'Silabus', 13, 3, '1', '07:58', '09:31', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '051040', 'S3102', 'SI5C', '2018-09-13 00:00:00', '4B2', 2, 'Review Sistem Informasi (Lanjutan)', 41, 0, '1', '09:48', '11:19', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '051040', 'S4106', 'SI72', '2018-09-12 00:00:00', '3F2', 1, 'Ruang Lingkup Materi Manajemen Hubungan Pelanggan', 30, 1, '1', '17:12', '18:30', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '051040', 'S4106', 'SI7C', '2018-09-14 00:00:00', '5B2', 1, 'Ruang Lingkup Materi Manajemen Hubungan\r\nPelanggan ', 34, 1, '1', '09:45', '11:19', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '051041', 'I3102', 'TI51', '2018-09-12 00:00:00', '3G2', 1, 'Penjelasan Silabus\r\nPengantar RPL', 0, 0, '1', '19:06', '20:39', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '051041', 'I4101', 'TI7B', '2018-09-13 00:00:00', '4C2', 1, 'Penjelasan Silabus\r\nPengantar Proyek', 0, 0, '1', '11:33', '13:11', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '071045', 'I4101', 'TI71', '2018-09-13 00:00:00', '4F2', 1, 'Pengenalan Proyek', 3, 0, '1', '17:17', '18:41', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '071045', 'S3104', 'SI5A', '2018-09-13 00:00:00', '4D2', 1, 'Silabus dan Pengenalan HTML', 0, 0, '1', '13:42', '15:12', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '071046', 'I2104', 'TI3A', '2018-09-13 00:00:00', '4B2', 1, 'sekilas sbd, navigasi pada SQL Server ', 30, 0, '1', '09:40', '11:22', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '081050', 'S1106', 'SI1C', '2018-09-14 00:00:00', '5A2', 1, 'Silabus', 39, 0, '1', '07:52', '09:30', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '081050', 'S2101', 'SI3B', '2018-09-13 00:00:00', '4C2', 2, 'Bab 1', 23, 1, '1', '11:34', '12:59', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '081050', 'S4109', 'SI71', '2018-09-13 00:00:00', '4E2', 1, 'silabus dan penjelasan umum', 7, 1, '1', '15:22', '16:55', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '081050', 'S4109', 'SI7A', '2018-09-13 00:00:00', '4B2', 1, 'Silabus dan penjelasan Umum', 35, 1, '1', '09:43', '11:15', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '082164', 'S2107', 'SI31', '2018-09-12 00:00:00', '3G2', 2, 'Operator Aritmatika bahasa java', 15, 0, '1', '19:05', '20:42', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '082164', 'S2107', 'SI31', '2018-09-12 00:00:00', '3F2', 1, 'Pengenalan bahasa Java', 16, 0, '1', '17:10', '18:40', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '082164', 'S3104', 'SI52', '2018-09-13 00:00:00', '4F2', 2, 'HTML 4 vs HTML 5, format teks', 16, 0, '1', '17:16', '18:40', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '101055', 'S3110', 'SI52', '2018-09-13 00:00:00', '4G2', 1, 'SAP dan GBPP. Closed lebih cepat karena jadwal mengajar tabrakan dengan di STIE MDP.', 17, 0, '1', '18:58', '19:18', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '101057', 'I2103', 'TI3B', '2018-09-13 00:00:00', '4B2', 1, 'pengantar teknologi web', 14, 0, '1', '09:43', '11:20', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '101057', 'I2104', 'TI31', '2018-09-13 00:00:00', '4G2', 1, 'pengantar basis data', 23, 0, '1', '19:04', '20:34', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '101057', 'S1105', 'SI12', '2018-09-12 00:00:00', '1G2', 2, 'Variabel', 31, 0, '1', '11', '12', NULL, NULL, NULL, '', NULL, NULL),
('2018/2019', '101057', 'S2107', 'SI3A', '2018-09-13 00:00:00', '4C2', 2, 'variable in java', 27, 0, '1', '12:28', '12:40', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '101058', 'I2102', 'TI3B', '2018-09-13 00:00:00', '4A2', 2, 'Chapter 1 Topology Diagram', 15, 0, '1', '07:55', '09:29', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '101058', 'S4108', 'SI71', '2018-09-13 00:00:00', '4F2', 1, 'Silabus dan Pengenalan SIG', 28, 1, '1', '17:08', '18:41', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '101058', 'S4108', 'SI7A', '2018-09-14 00:00:00', '5B2', 1, 'Silabus dan Representasi GIS', 15, 1, '1', '09:37', '11:10', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '101060', 'S2101', 'SI31', '2018-09-13 00:00:00', '4G2', 2, 'Pengumpulan, Pengolahan, dan Penyajian Data', 15, 0, '1', '18:51', '20:21', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '101060', 'S2101', 'SI32', '2018-09-12 00:00:00', '3F2', 2, 'Pengumpulan, Pengolahan, dan Penyajian Data', 16, 0, '1', '16:53', '18:27', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '111061', 'I3113', 'TI5B', '2018-09-13 00:00:00', '4A2', 2, 'delphi install', 21, 0, '1', '07:59', '09:31', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '111061', 'S3104', 'SI5B', '2018-09-14 00:00:00', '5A2', 1, 'intro web programming', 17, 4, '1', '07:43', '09:27', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '111062', 'S4109', 'SI7B', '2018-09-14 00:00:00', '5B2', 1, 'Penjelasan Umum dan Pengenalan Manajemen Pengetahuan Teori + Praktek', 10, 0, '1', '09:48', '11:22', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '111063', 'S1107', 'SI1C', '2018-09-13 00:00:00', '4B2', 1, 'Pengantar Teknologi Informasi', 30, 1, '1', '09:41', '11:23', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '111063', 'T3103', 'TK5A', '2018-09-14 00:00:00', '5B2', 1, 'Penjelasan Silabus', 2, 1, '1', '09:44', '11:15', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '111066', 'S2108', 'SI31', '2018-09-13 00:00:00', '4F2', 1, 'Penjelasan SAP dan Pengantar Komunikasi Bisnis', 18, 0, '1', '17:09', '18:42', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '111066', 'S2108', 'SI3B', '2018-09-13 00:00:00', '4A2', 1, 'Penjelasan SAP & Pengantar Komunikasi Bisnis', 0, 0, '1', '08:06', '09:33', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '111069', 'I1104', 'TI1B', '2018-09-14 00:00:00', '5A2', 2, 'Pertaksamaan', 33, 1, '1', '07:50', '09:30', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '111069', 'I3104', 'TI51', '2018-09-13 00:00:00', '4G2', 2, 'Tool Pengolahan Citra Digital pada Matlab (1)', 24, 1, '1', '19:06', '20:45', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '111069', 'I3104', 'TI51', '2018-09-13 00:00:00', '4F2', 1, 'Perkenalan, Penjelasan Umum, Pengantar Ilmu\r\nPengolahan Citra Digital', 24, 1, '1', '17:10', '18:32', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '111069', 'I3112', 'TI5A', '2018-09-13 00:00:00', '4C2', 1, 'Pengantar Pengenalan Pola dan Pembelajaran Mesin', 15, 1, '1', '11:35', '13:09', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '111070', 'I1107', 'TI1A', '2018-09-13 00:00:00', '4D2', 1, 'Penjelasan Umum , Pengenalan Bahasa\r\nPemrograman Java, Membuat Program\r\nPertama.', 30, 0, '1', '13:31', '15:12', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '112198', 'S3107', 'SI5A', '2018-09-13 00:00:00', '4A2', 2, 'Akuntansi Keuangan dan Standar Akuntansi        \r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\nAkuntansi Keuangan dan Standar Akuntansi\r\n\r\n\r\n', 21, 0, '1', '07:47', '09:29', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '121076', 'S4104', 'SI71', '2018-09-12 00:00:00', '3F2', 1, 'Penjelasan Umum, Silabus, Materi: Pengantar Analisis Bisnis', 10, 0, '1', '17:12', '18:40', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '121077', 'S2106', 'SI32', '2018-09-13 00:00:00', '4G2', 1, 'Penjelasan Umum, Peraturan perkuliahan, Penjelasan silabus dan Materi Pengantar Sistem Basis Data', 14, 2, '1', '19:05', '20:40', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '121077', 'S2106', 'SI3A', '2018-09-14 00:00:00', '5B2', 1, 'Penjelasan Umum, Silabus dan Aturan Perkuliahan.', 25, 0, '1', '09:44', '10:16', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '121077', 'S4105', 'SI7B', '2018-09-13 00:00:00', '4C2', 1, 'Penjelasan Umum, Penjelasan Silabus dan Penjelasan Tugas Akhir Semester', 21, 0, '1', '11:38', '12:05', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '121077', 'S4105', 'SI7C', '2018-09-13 00:00:00', '4B2', 1, 'Penjelasan Umum E-Business, Silabus E-Business dan Tugas Akhir Semester terkait Analisis E-Business terkait (Shopee, Tokopedia, Tiket.com & Traveloka)', 0, 0, '1', '09:44', '10:16', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '121078', 'S2103', 'SI3B', '2018-09-13 00:00:00', '4B2', 2, 'Perkembangan SO', 29, 0, '1', '09:45', '11:18', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '121078', 'S2104', 'SI3B', '2018-09-14 00:00:00', '5B2', 1, 'Penjelsan GBPP', 27, 0, '1', '09:45', '11:15', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '121079', 'I2101', 'TI3B', '2018-09-14 00:00:00', '5A2', 1, 'Pengenalan dan silabus', 10, 0, '1', '07:55', '09:31', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '121080', 'S4105', 'SI7A', '2018-09-14 00:00:00', '5A2', 1, ' Penjelasan Umum; G2BP/ SAP; Definisi dan\r\nKonsep Dasar E-Business dan E-Commerce', 0, 0, '1', '08:01', '09:30', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '121082', 'I1107', 'TI1B', '2018-09-13 00:00:00', '4D2', 1, 'kontrak perkuliahan, silabus, perkenalan, kesepakatan kelas, pengantar java', 28, 1, '1', '13:32', '15:26', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '121082', 'J1102', 'MI1A', '2018-09-13 00:00:00', '4C2', 2, 'buat project baru, buat file cpp baru,\r\nperintah cout, baris komentar, perintah enter \\n\\t...,endl,dll...\r\n', 10, 0, '1', '11:30', '12:59', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '121082', 'J2107', 'MI3A', '2018-09-14 00:00:00', '5B2', 1, 'pembahasan kontrak perkuliahan, bahas silabus, bahas kesepakatan kelas,\r\npengantar java, cara buat project java, package, class, java baru, dll..', 3, 1, '1', '09:44', '11:09', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '121082', 'K2106', 'KA3A', '2018-09-14 00:00:00', '5B2', 1, '', 0, 0, '1', '09:37', '09:43', NULL, NULL, NULL, '', NULL, NULL),
('2018/2019', '121083', 'I1106', 'TI1B', '2018-09-14 00:00:00', '5B2', 2, 'Pengenalan windows dan dos + Perintah internal DOS', 34, 0, '1', '09:37', '11:17', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '121083', 'S2108', 'SI32', '2018-09-12 00:00:00', '3G2', 1, 'Pengantar Ilmu Komunikasi Bisnis', 12, 0, '1', '19:05', '20:39', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '121084', 'I4105', 'TI73', '2018-09-13 00:00:00', '4E2', 2, 'User interface autodesk maya', 7, 0, '1', '15:12', '16:50', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '121084', 'I4105', 'TI7B', '2018-09-14 00:00:00', '5B2', 2, 'introducing autodesk maya 2018', 13, 1, '1', '09:41', '11:16', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '121084', 'I4105', 'TI7C', '2018-09-13 00:00:00', '4D2', 2, 'User Interface Autodesk Maya', 7, 0, '1', '13:29', '07:05', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '131089', 'S1105', 'SI11', '2018-09-12 00:00:00', '3F2', 2, 'variabel', 26, 0, '1', '17:09', '18:39', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '131089', 'S4114', 'SI72', '2018-09-13 00:00:00', '4G2', 1, 'Pengantar PAB Lanjutan', 28, 2, '1', '19:12', '20:43', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '131091', 'I1108', 'TI11', '2018-09-12 00:00:00', '3F2', 1, 'Pengantar Silabus', 34, 0, '1', '17:17', '18:38', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '131091', 'I1108', 'TI1B', '2018-09-13 00:00:00', '4C2', 1, 'Pengantar Silabus', 30, 1, '1', '11:35', '12:59', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '131091', 'I2106', 'TI3B', '2018-09-14 00:00:00', '5B2', 2, 'Pengukuran dan Angka Penting', 10, 0, '1', '09:42', '11:07', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '131091', 'J1105', 'MI1A', '2018-09-13 00:00:00', '4D2', 2, 'Logika Proposional', 10, 0, '1', '13:35', '15:10', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '131092', 'I4107', 'TI7A', '2018-09-13 00:00:00', '4D2', 1, 'Perkenalan dan Latar Belakang NLP', 8, 0, '1', '13:43', '15:02', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '141096', 'I3111', 'TI5A', '2018-09-13 00:00:00', '4C2', 1, 'Introduction to Unity', 13, 2, '1', '11:35', '13:09', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '141096', 'S4114', 'SI71', '2018-09-12 00:00:00', '3G2', 1, 'Introduction to Android', 7, 2, '1', '19:05', '20:34', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '141100', 'I2103', 'TI3A', '2018-09-13 00:00:00', '4A2', 1, 'Pengantar, Daftar domain dan hosting di rumahweb webmdp.club', 29, 3, '1', '07:54', '09:30', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '141101', 'S2102', 'SI32', '2018-09-13 00:00:00', '4F2', 1, 'Sekilas Tentang Sistem Hukum Nasional\r\n', 11, 1, '1', '17:02', '18:34', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '141102', 'S3103', 'SI52', '2018-09-12 00:00:00', '3G2', 1, 'Perkenalan Silabus, Penjelasan Materi Manajemen Proyek TI', 0, 0, '1', '19:13', '20:44', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '151103', 'I1107', 'TI11', '2018-09-13 00:00:00', '4F2', 1, 'Pengantar Pemrograman Java', 34, 0, '1', '17:11', '18:46', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '151103', 'I1108', 'TI1A', '2018-09-13 00:00:00', '4C2', 1, 'Pengantar Logika Informatika', 0, 0, '1', '11:33', '12:59', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '151103', 'I2101', 'TI3A', '2018-09-13 00:00:00', '4D2', 2, 'Review OOP', 0, 0, '1', '13:33', '15:10', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '151103', 'S1106', 'SI12', '2018-09-12 00:00:00', '3G2', 2, 'Tabel kebenaran', 31, 0, '1', '18:56', '20:38', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '151106', 'I3102', 'TI5A', '2018-09-14 00:00:00', '5B2', 1, 'Pengantar Rekayasa Perangkat Lunak', 31, 5, '1', '09:43', '10:12', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '151106', 'S2102', 'SI3A', '2018-09-13 00:00:00', '4B2', 1, 'Pengantar Sistem Hukum\r\nIndonesia', 27, 1, '1', '09:42', '11:12', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '151106', 'S4103', 'SI71', '2018-09-12 00:00:00', '3G2', 1, 'Penjelasan Umum dan Konsep SI	', 25, 0, '1', '19:05', '20:30', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '151107', 'I4103', 'TI71', '2018-09-12 00:00:00', '3F2', 1, 'Penjelasan Umum Silabus dan Pengantar Kewirausahaan', 16, 0, '1', '17:13', '18:36', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '151107', 'S1107', 'SI11', '2018-09-13 00:00:00', '4F2', 1, 'Silabus, Penjelasan Dasar dan Pengenalan Komputer', 26, 0, '1', '17:10', '18:45', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '151109', 'S1107', 'SI12', '2018-09-13 00:00:00', '4F2', 1, 'Penjelasan dasar dan pengenalan komputer', 29, 0, '1', '17:07', '18:41', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '151109', 'S4103', 'SI73', '2018-09-12 00:00:00', '3F2', 1, 'Penjelasan Umum Konsep Sistem Informasi', 15, 0, '1', '17:09', '18:41', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '151110', 'J3109', 'MI5A', '2018-09-13 00:00:00', '4D2', 2, 'Pengenalan Peralatan Jaringan Komputer.', 6, 0, '1', '13:16', '15:08', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '151110', 'J3109', 'MI5A', '2018-09-13 00:00:00', '4C2', 1, 'Pengenalan operasi pada instalasi komputer', 6, 0, '1', '11:25', '13:10', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '151117', 'J1107', 'MI1A', '2018-09-14 00:00:00', '5B2', 2, 'Mengatur Paragraf, Menambahkan Gambar dan\r\nBingkai (Border)', 10, 0, '1', '09:33', '11:12', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '151117', 'J1107', 'MI1A', '2018-09-14 00:00:00', '5A2', 1, 'GBPP / SAP dan Penjelasan Ms. Word 2010', 10, 0, '1', '07:50', '09:28', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '151117', 'S1107', 'SI1B', '2018-09-13 00:00:00', '4B2', 1, 'Penjelasan Dasar dan Pengenalan Komputer', 28, 0, '1', '09:34', '11:18', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '151118', 'I1106', 'TI1A', '2018-09-14 00:00:00', '5B2', 2, 'Pengenalan DOS (Pengertian dan Sejarah)	', 29, 1, '1', '09:37', '11:20', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '151118', 'S1103', 'SI12', '2018-09-13 00:00:00', '4G2', 1, 'Penjelasan Umum dan Google Apps For\r\nEducation (GAFE) Bagian I', 29, 0, '1', '18:58', '20:42', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '162257', 'S1102', 'SI1B', '2018-09-14 00:00:00', '5B2', 1, 'Introduction the syllabus. Unit 1. GEtting to Know you', 0, 0, '1', '09:42', '11:19', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '162262', 'I1102', 'TI11', '2018-09-13 00:00:00', '4G2', 1, 'PENGENALAN SILABUS DAN GBPP\r\nHUBUNGAN BERPIKIR DAN BERBAHASA LISAN', 34, 0, '1', '19:04', '20:38', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '162263', 'I1104', 'TI11', '2018-09-12 00:00:00', '3G2', 1, 'Sistem  Bilangan Riil dan Kompleks', 36, 0, '1', '19:04', '20:37', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '172271', 'J1104', 'MI1A', '2018-09-13 00:00:00', '2D2', 1, '1. silabus\r\n2. pengantar akuntansi dan perusahaan', 6, 0, '1', '09:29', '10:52', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '172276', 'S1102', 'SI11', '2018-09-13 00:00:00', '4G2', 1, 'INTRODUCTION', 27, 0, '1', '19:05', '08:34', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '001001', 'I3105', 'TI51', '2018-09-14 00:00:00', '5G2', 1, 'Pengenalan Android', 25, 0, '1', '19:01', '20:21', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL);
INSERT INTO `pertemuan` (`ThnAkademik`, `KD_DOSEN`, `KODE_MK`, `KELAS`, `TANGGAL`, `WAKTU`, `PERTEMUAN`, `MATERI`, `Hadir`, `Ijin`, `Kd_Semester`, `Jam_Masuk`, `Jam_Keluar`, `Lama`, `Keterangan`, `SELESAI`, `GBPP`, `JAM_DIATUR`, `CATATAN_KAPRODI`) VALUES
('2018/2019', '021005', 'I1105', 'TI1B', '2018-09-15 00:00:00', '6A2', 1, 'matriks', 30, 1, '1', '07:58', '09:30', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '021013', 'I2101', 'TI31', '2018-09-14 00:00:00', '5F2', 2, 'next : slide 4', 0, 0, '1', '17:03', '18:36', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '021013', 'I3101', 'TI5B', '2018-09-17 00:00:00', '1A2', 2, 'Klasifikasi penelitian (1)', 0, 0, '1', '07:46', '09:22', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '021014', 'S3105', 'SI5C', '2018-09-14 00:00:00', '5D2', 1, 'Penjelasan umum', 22, 0, '1', '13:32', '14:59', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '021016', 'I4104', 'TI7B', '2018-09-15 00:00:00', '6D2', 2, 'pengantar bahasa rakitan', 16, 3, '1', '13:26', '15:09', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '021018', 'I3101', 'TI5A', '2018-09-17 00:00:00', '1A2', 2, 'Konsep Dasar Penelitian + Klasifikasi Penelitian 1\r\n', 27, 0, '1', '07:46', '08:11', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '041034', 'S1107', 'SI1A', '2018-09-15 00:00:00', '6A2', 2, 'Pengenalan dasar teknologi informasi', 28, 0, '1', '07:56', '09:31', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '041035', 'I4110', 'TI7A', '2018-09-15 00:00:00', '6B2', 2, 'Pengenalan Administrasi Jaringan Komputer,  Subnetting Class A, B dan C dan IPV6', 7, 2, '1', '09:41', '11:20', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '041035', 'I4110', 'TI7A', '2018-09-14 00:00:00', '5D2', 1, 'Pengenalan Administrasi Jaringan Komputer', 9, 1, '1', '13:29', '15:10', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '051039', 'S3109', 'SI52', '2018-09-14 00:00:00', '5F2', 1, 'Penjelasan Silabus Dan Paradoks Produktivitas TI', 0, 0, '1', '17:05', '18:36', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '051041', 'I3102', 'TI51', '2018-09-14 00:00:00', '5F2', 2, 'Proses Rekayasa Perangkat Lunak', 0, 0, '1', '17:08', '18:38', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '052103', 'S3101', 'SI51', '2018-09-14 00:00:00', '5F2', 1, 'Pendahuluan', 34, 2, '1', '17:02', '18:35', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '052103', 'S3101', 'SI52', '2018-09-14 00:00:00', '5G2', 1, 'Pendahuluan', 18, 0, '1', '18:59', '20:29', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '071045', 'I2104', 'TI3B', '2018-09-15 00:00:00', '6B2', 2, 'Mengakses Data  (Insert,ALter dan Update)', 9, 1, '1', '09:45', '11:24', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '071045', 'S2106', 'SI31', '2018-09-14 00:00:00', '5G2', 1, 'Silabus dan pengenalan database ', 0, 0, '1', '19:05', '20:37', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '071046', 'S3106', 'SI5A', '2018-09-17 00:00:00', '1B2', 2, 'Navigation, SD 1 : Display Customer, SD 2 : Display S.Order, Latihan ubah nama customer', 0, 0, '1', '09:41', '11:20', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '081050', 'S2101', 'SI3A', '2018-09-17 00:00:00', '1A2', 2, 'Bab 1 Pengenalan Statistik', 23, 0, '1', '07:53', '09:28', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '082164', 'I2103', 'TI31', '2018-09-14 00:00:00', '5G2', 1, 'Website, Hosting, Domain', 22, 1, '1', '19:04', '20:41', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '091052', 'J1101', 'MI1A', '2018-09-17 00:00:00', '1A2', 2, 'lanjutan kajian ilmu ekonomi', 7, 0, '1', '07:54', '09:27', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '101055', 'S3110', 'SI51', '2018-09-14 00:00:00', '5G2', 1, 'SAP, GBPP, Pengantar SKB', 32, 3, '1', '19:04', '20:33', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '111061', 'I2106', 'TI31', '2018-09-15 00:00:00', '6E2', 2, 'besaran dan vektor', 22, 2, '1', '15:16', '16:50', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '111061', 'I3113', 'TI51', '2018-09-14 00:00:00', '5E2', 1, 'intro pemrograman jaringan', 10, 0, '1', '15:12', '16:29', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '111061', 'S3104', 'SI5B', '2018-09-15 00:00:00', '6C2', 2, 'html-1', 18, 3, '1', '11:38', '13:10', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '111062', 'S4102', 'SI7B', '2018-09-17 00:00:00', '1B2', 2, 'Konsep Resiko dan Sistem Pengendalian Internal ', 17, 2, '1', '09:49', '11:21', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '111063', 'J3103', 'MI5A', '2018-09-14 00:00:00', '5B2', 1, 'Penjelasan Silabus', 15, 0, '1', '11', '12', NULL, NULL, NULL, '', NULL, NULL),
('2018/2019', '111063', 'K3105', 'KA5A', '2018-09-14 00:00:00', '5B2', 1, 'Penjelasan Silabus', 5, 0, '1', '11', '12', NULL, NULL, NULL, '', NULL, NULL),
('2018/2019', '111063', 'S1107', 'SI1C', '2018-09-15 00:00:00', '6A2', 2, 'Pengenalan Dasar Teknologi Informasi', 28, 0, '1', '07:53', '09:33', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '111063', 'S3110', 'SI5A', '2018-09-14 00:00:00', '5D2', 1, 'Pengenalan Silabus', 39, 0, '1', '13:25', '15:30', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '111063', 'S4105', 'SI74', '2018-09-14 00:00:00', '5E2', 1, 'Pengenalan dan Konsep E Business dan E Commerce', 17, 1, '1', '15:37', '17:01', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '111064', 'S3111', 'SI51', '2018-09-15 00:00:00', '6F2', 1, 'Hanyu Pinyin dan Nada', 0, 0, '1', '17:05', '18:35', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '111067', 'J1108', 'MI1A', '2018-09-17 00:00:00', '1B2', 2, 'Manajemen, Manajer, dan Kegiatannya', 7, 0, '1', '09:48', '11:13', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '111067', 'J2111', 'MI3A', '2018-09-17 00:00:00', '1A2', 2, 'Keragaman dalam berorganisasi', 5, 1, '1', '07:56', '09:30', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '111069', 'I1105', 'TI11', '2018-09-14 00:00:00', '5F2', 2, 'Matriks (Lanjutan)', 34, 1, '1', '17:13', '18:44', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '111070', 'J2105', 'MI3A', '2018-09-15 00:00:00', '6B2', 2, 'Membuat dan Mengelola Database serta Tabel\r\n(Menambah dan Menghapus Kolom Baru, Menghapus Tabel dan Database)', 6, 1, '1', '09:41', '11:18', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '121076', 'I3103', 'TI51', '2018-09-15 00:00:00', '6F2', 1, 'Penjelasan Umum, Silabus, Materi: Sekilas Kriminal Teknologi Informasi', 23, 1, '1', '17:00', '18:38', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '121077', 'S1103', 'SI1B', '2018-09-17 00:00:00', '1B2', 2, 'Label, Filter, Vacation Responder, Undo Sent, Google Calendar, Google Doc, Sheet dan Slide. ', 30, 0, '1', '09:46', '11:27', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '121077', 'S2106', 'SI3B', '2018-09-14 00:00:00', '5D2', 1, 'Penjelasan Umum dan Penjelasan Silabus ', 0, 0, '1', '13:37', '14:11', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '121078', 'S2104', 'SI3A', '2018-09-14 00:00:00', '5D2', 1, 'Penjelasan GBPP', 25, 0, '1', '13:44', '14:13', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '121078', 'S3106', 'SI52', '2018-09-14 00:00:00', '5E2', 1, 'Pengenalan SAP', 0, 0, '1', '15:32', '18:00', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '121079', 'S1103', 'SI1C', '2018-09-17 00:00:00', '1B2', 2, 'GAFE lanjutan', 32, 0, '1', '09:46', '11:22', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '121080', 'I1103', 'TI1B', '2018-09-17 00:00:00', '1B2', 2, 'Perkembangan dan klasifikasi komputer', 31, 0, '1', '09:40', '11:21', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '121082', 'J2107', 'MI3A', '2018-09-14 00:00:00', '5D2', 2, 'input bilangan, variabel, dan operator aritmatika (tambah, kurang, kali, bagi)', 4, 1, '1', '13:25', '15:05', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '121083', 'I3103', 'TI5B', '2018-09-15 00:00:00', '6B2', 1, 'Penjelasan aturan perkuliahan dan penjelasan isi silabus', 38, 2, '1', '09:38', '11:22', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '121084', 'I4105', 'TI7A', '2018-09-15 00:00:00', '6C2', 2, 'introducing autodesk maya 2018', 14, 1, '1', '11:35', '13:05', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '121084', 'I4105', 'TI7A', '2018-09-14 00:00:00', '5D2', 1, 'Pengantar Teknologi Multimedia', 14, 1, '1', '13:35', '15:06', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '131089', 'S4114', 'SI72', '2018-09-14 00:00:00', '5F2', 2, 'Review Beberapa Widget dan Intent', 0, 0, '1', '17:18', '18:44', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '131089', 'S4114', 'SI7A', '2018-09-14 00:00:00', '5D2', 2, 'Review Intent dan Beberapa Widget', 26, 2, '1', '13:49', '15:20', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '131091', 'I2106', 'TI3A', '2018-09-14 00:00:00', '5D2', 1, 'Pengantar Silabus', 29, 0, '1', '13:36', '15:01', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '131092', 'I3112', 'TI51', '2018-09-14 00:00:00', '5E2', 1, 'Pendahuluan Pengenalan Pola & Pembelajaran Mesin', 14, 0, '1', '15:33', '16:53', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '141096', 'I3105', 'TI5A', '2018-09-15 00:00:00', '6A2', 2, 'Hello Toast', 27, 0, '1', '07:52', '09:35', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '141096', 'S4114', 'SI71', '2018-09-14 00:00:00', '5G2', 2, 'Splash Activity', 8, 1, '1', '19:00', '20:38', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '141100', 'J3104', 'MI5A', '2018-09-15 00:00:00', '6B2', 2, 'Intent', 13, 1, '1', '11', '12', NULL, NULL, NULL, '', NULL, NULL),
('2018/2019', '141100', 'J3104', 'MI5A', '2018-09-15 00:00:00', '6B2', 1, 'Pengenalan Android', 12, 1, '1', '11', '12', NULL, NULL, NULL, '', NULL, NULL),
('2018/2019', '141100', 'K3110', 'KA5A', '2018-09-15 00:00:00', '6B2', 2, 'Intent', 5, 0, '1', '11', '12', NULL, NULL, NULL, '', NULL, NULL),
('2018/2019', '141100', 'K3110', 'KA5A', '2018-09-15 00:00:00', '6B2', 1, 'Pengenalan Android', 5, 0, '1', '11', '12', NULL, NULL, NULL, '', NULL, NULL),
('2018/2019', '141100', 'S2107', 'SI32', '2018-09-14 00:00:00', '5F2', 1, 'Pengenalan,  variabel, komentar, operator aritmatika', 0, 0, '1', '17:05', '18:40', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '141100', 'T3107', 'TK5A', '2018-09-15 00:00:00', '6C2', 2, 'Intent', 3, 0, '1', '11:55', '12:52', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '141100', 'T3107', 'TK5A', '2018-09-15 00:00:00', '6B2', 1, 'Pengenalan Android', 3, 0, '1', '09:40', '11:29', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '141101', 'S2102', 'SI3B', '2018-09-15 00:00:00', '6C2', 1, 'Sistem hukum nasional', 30, 0, '1', '11', '12', NULL, NULL, NULL, '', NULL, NULL),
('2018/2019', '141101', 'S2104', 'SI31', '2018-09-14 00:00:00', '5F2', 1, 'Pengenalan aplikasi akuntansi', 19, 1, '1', '17:06', '18:37', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '141101', 'S2104', 'SI32', '2018-09-14 00:00:00', '5G2', 1, 'Pengenalan aplikasi akuntansi', 14, 0, '1', '19:06', '20:36', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '141102', 'I2102', 'TI31', '2018-09-15 00:00:00', '6F2', 2, 'Pre test Exam,  Chapter 1 Explore the Network (Network Media)', 0, 0, '1', '17:01', '18:47', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '151106', 'I3102', 'TI5B', '2018-09-15 00:00:00', '6A2', 2, 'Masalah Perangkat Lunak', 8, 2, '1', '07:54', '09:24', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '151106', 'S4102', 'SI7A', '2018-09-17 00:00:00', '1B2', 2, 'Konsep Risiko dan Sistem Pengendalian Internal', 29, 4, '1', '09:38', '11:12', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '151107', 'I4103', 'TI72', '2018-09-15 00:00:00', '6E2', 1, 'GBPP/SAP dan Teori Kewirausahaan', 18, 1, '1', '15:36', '17:03', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '151107', 'S2102', 'SI31', '2018-09-15 00:00:00', '6F2', 1, 'Silabus, SEKILAS TENTANG SISTEM HUKUM NASIONAL', 16, 3, '1', '17:15', '18:44', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '151109', 'I1103', 'TI1A', '2018-09-17 00:00:00', '1B2', 2, 'Penjelasan umum dan pengetahuan dasar komputer.', 30, 0, '1', '09:38', '19:13', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '151109', 'S1108', 'SI12', '2018-09-14 00:00:00', '5G2', 1, 'Manajemen dan Manager', 30, 0, '1', '18:52', '20:33', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '151109', 'S4103', 'SI74', '2018-09-15 00:00:00', '6E2', 1, 'Penjelasan Umum Konsep Sistem\r\n', 26, 1, '1', '15:35', '16:59', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '151110', 'S2103', 'SI3A', '2018-09-15 00:00:00', '6B2', 2, 'Pengenalan Sistem Operasi', 23, 0, '1', '09:36', '11:20', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '151117', 'I1106', 'TI11', '2018-09-14 00:00:00', '5G2', 1, 'Penjelasan Umum (SAP GBPP)', 33, 1, '1', '18:51', '20:31', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '151117', 'S1107', 'SI1B', '2018-09-15 00:00:00', '6A2', 2, 'Teknologi Informasi.', 30, 0, '1', '08:00', '18:46', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '151117', 'S1108', 'SI11', '2018-09-14 00:00:00', '5F2', 1, 'GBPP/SAP Menjelaskan tentang GBPP', 26, 0, '1', '16:57', '18:31', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '151118', 'S2103', 'SI31', '2018-09-15 00:00:00', '6G2', 2, 'Pengenalan Sistem Operasi	', 15, 2, '1', '18:59', '20:28', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '151118', 'S2103', 'SI32', '2018-09-15 00:00:00', '6F2', 2, 'Pengenalan Sistem Operasi	', 15, 0, '1', '16:59', '18:33', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '162257', 'I1101', 'TI1A', '2018-09-15 00:00:00', '6A2', 1, 'Introduction of syllabus, Unit 1 getting to know you (daily routines)', 31, 0, '1', '07:58', '09:27', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '162257', 'I1101', 'TI1B', '2018-09-15 00:00:00', '6B2', 1, 'introduction the syllabus, unit 1. getting to know you (daily routines)', 29, 1, '1', '09:49', '11:24', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '162257', 'S2105', 'SI32', '2018-09-15 00:00:00', '6G2', 1, 'introduction the syllabus, operating system (countable and uncountable noun)', 9, 2, '1', '19:03', '20:34', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '162262', 'S1101', 'SI11', '2018-09-14 00:00:00', '5G2', 1, 'GBPP DAN SILABUS\r\nBERPIKIR ILMIAH DALAM BERBAHASA', 28, 0, '1', '19:09', '20:34', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '162262', 'S1101', 'SI12', '2018-09-14 00:00:00', '5F2', 1, 'PENDAHULUAN\r\n1. PENGENALAN MATA KULIAH DAN SILABUS\r\n2. BERPIKIR ILMIAH\r\n', 0, 0, '1', '17:03', '18:39', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '162263', 'I1104', 'TI11', '2018-09-15 00:00:00', '6G2', 2, 'Limit Fungsi', 0, 0, '1', '19:03', '20:41', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '162265', 'I1102', 'TI1A', '2018-09-14 00:00:00', '5D2', 1, 'Pemaparan Silabus', 29, 0, '1', '13:34', '15:10', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '162265', 'J1106', 'MI1A', '2018-09-15 00:00:00', '6C2', 1, 'Pemaparan Silabus', 7, 0, '1', '11', '12', NULL, NULL, NULL, '', NULL, NULL),
('2018/2019', '162265', 'S1101', 'SI1A', '2018-09-15 00:00:00', '6B2', 1, 'Pemparan Silabus', 28, 0, '1', '09:41', '11:25', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '162265', 'S1101', 'SI1B', '2018-09-15 00:00:00', '6C2', 1, 'Pemaparan Silabus', 31, 0, '1', '11:37', '13:12', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '162266', 'I4102', 'TI7A', '2018-09-15 00:00:00', '6D2', 1, 'Pengenalan Materi', 0, 0, '1', '13:23', '15:10', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '162266', 'S1104', 'SI11', '2018-09-15 00:00:00', '6F2', 1, 'Pengenalan Materi', 28, 1, '1', '17:07', '18:37', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '172275', 'S1102', 'SI12', '2018-09-15 00:00:00', '6F2', 1, 'Pendahuluan penjelasan GBPP-SAP Getting to know you', 31, 0, '1', '17:06', '18:37', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '172275', 'S1102', 'SI1C', '2018-09-15 00:00:00', '6B2', 1, 'Pendahuluan penjelasan GBPP-SAP Getting to know you', 33, 0, '1', '09:49', '11:33', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '172275', 'S2105', 'SI3A', '2018-09-15 00:00:00', '6D2', 1, 'pendahuluan penjelasan GBPP-SAP (Operating System)', 25, 0, '1', '13:25', '15:05', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '172276', 'I1101', 'TI11', '2018-09-15 00:00:00', '6F2', 1, 'INTRODUCTION', 33, 1, '1', '17:06', '18:31', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '172276', 'S2105', 'SI3B', '2018-09-15 00:00:00', '6D2', 1, 'Meeting 1', 0, 0, '1', '13:46', '17:00', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '001001', 'I3105', 'TI51', '2018-09-18 00:00:00', '2G2', 2, 'Intent Dan Linear Layout', 26, 0, '1', '19:04', '19:00', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '021005', 'I1105', 'TI1B', '2018-09-18 00:00:00', '2D2', 2, 'Matriks (lanjutan)', 32, 0, '1', '14:46', '14:56', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '021005', 'I2105', 'TI3A', '2018-09-19 00:00:00', '3C2', 2, 'Hampiran dan Galat', 29, 1, '1', '11:16', '12:57', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '021005', 'I2107', 'TI3A', '2018-09-19 00:00:00', '3B2', 2, 'Otomata Hingga', 34, 1, '1', '09:29', '11:07', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '021005', 'S1106', 'SI1A', '2018-09-18 00:00:00', '2A2', 2, 'Logika Proporsional.', 25, 2, '1', '08:01', '09:28', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '021013', 'I3101', 'TI51', '2018-09-19 00:00:00', '3F2', 2, 'konsep dasar penelitian.\r\ntugas jurnal 2 minggu', 24, 1, '1', '17:07', '18:38', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '021013', 'I3104', 'TI5A', '2018-09-18 00:00:00', '2A2', 2, '1.1, 1.2, 1.3 (selesai)\r\nnext : 1.4 tingkat komputasi (5)', 0, 0, '1', '07:45', '09:17', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '021013', 'I3104', 'TI5B', '2018-09-18 00:00:00', '2B2', 2, '1.1, 1.2, 1.3,  (selesai)\r\nNext : 1.4 Tingkat komputasi\r\ntugas jurnal', 28, 2, '1', '09:41', '11:26', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '021014', 'S4111', 'SI51', '2018-09-17 00:00:00', '1E2', 2, 'Perangkat bergerak', 11, 0, '1', '15:32', '16:54', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '021014', 'S4111', 'SI5B', '2018-09-18 00:00:00', '2C2', 1, 'Penjelasan umum', 26, 0, '1', '11:34', '12:59', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '021014', 'S4114', 'SI7C', '2018-09-18 00:00:00', '2D2', 2, 'Notifikasi', 27, 1, '1', '13:29', '14:51', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '021017', 'J3101', 'MI5A', '2018-09-18 00:00:00', '2A2', 1, 'Silabus, Pengenalan operasi pada instalasi komputer', 14, 1, '1', '07:44', '09:31', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '021017', 'S3102', 'SI51', '2018-09-18 00:00:00', '2F2', 2, 'Perencanaan', 27, 0, '1', '17:03', '18:40', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '021017', 'S3102', 'SI52', '2018-09-17 00:00:00', '1F2', 2, 'Perencanaan', 27, 0, '1', '17:04', '18:41', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '021017', 'S3103', 'SI51', '2018-09-19 00:00:00', '3F2', 2, 'Manajemen Proyek', 29, 1, '1', '17:04', '18:40', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '021018', 'I4103', 'TI7A', '2018-09-19 00:00:00', '3B2', 2, 'Melatih Berpikir Kreatif dan Inovatif + Tokoh Wirausaha', 10, 0, '1', '09:38', '11:20', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '021018', 'I4103', 'TI7C', '2018-09-18 00:00:00', '2B2', 1, 'Pendahuluan', 6, 0, '1', '09:37', '11:20', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '021018', 'S3101', 'SI5C', '2018-09-18 00:00:00', '2C2', 1, 'Pendahuluan', 19, 0, '1', '11:32', '13:07', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '021018', 'S3109', 'SI5A', '2018-09-19 00:00:00', '3C2', 2, 'Ragam Teknik Evaluasi Investasi Teknologi Informasi', 13, 1, '1', '11:32', '13:12', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '021018', 'S3109', 'SI5B', '2018-09-20 00:00:00', '4A2', 2, 'Ragam Teknik Evaluasi Investasi Teknologi Informasi + Tujuan dan Tipe Investasi Teknologi Informas', 27, 2, '1', '07:51', '09:30', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '041034', 'I2107', 'TI31', '2018-09-19 00:00:00', '3F2', 2, 'DFA, NFA, Reduksi state pada DFA.', 19, 2, '1', '17:12', '18:39', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '041034', 'S1106', 'SI1B', '2018-09-18 00:00:00', '2A2', 2, 'Logika Proposisional (lanjutan)', 29, 0, '1', '07:42', '09:25', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '041035', 'S4112', 'SI71', '2018-09-17 00:00:00', '1G2', 2, 'Data Mart', 33, 1, '1', '19:03', '20:33', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '041035', 'S4112', 'SI7A', '2018-09-20 00:00:00', '4A2', 2, 'Data Mart dan Metadata', 18, 3, '1', '07:55', '09:28', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '041035', 'T3105', 'TK5A', '2018-09-18 00:00:00', '2B2', 2, 'Praktikum Pengenalan Perangkat wireless dan\r\npenggunaannya', 2, 2, '1', '09:30', '11:10', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '041035', 'T3105', 'TK5A', '2018-09-18 00:00:00', '2A2', 1, 'Pengenalan Jaringan Nirkabel', 2, 2, '1', '07:54', '09:26', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '051038', 'I4109', 'TI71', '2018-09-18 00:00:00', '2E2', 1, 'Penjelasan Umum', 14, 0, '1', '15:24', '16:50', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '051039', 'S3105', 'SI51', '2018-09-17 00:00:00', '1G2', 2, 'Pendahuluan', 0, 0, '1', '19:08', '20:36', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '051039', 'S3105', 'SI52', '2018-09-18 00:00:00', '2F2', 1, 'Penjelasab Silabus dan Pengantar PPL', 26, 0, '1', '17:04', '18:36', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '051039', 'S3109', 'SI51', '2018-09-17 00:00:00', '1F2', 2, 'Ragam Teknik Evaluasi Investasi TI', 17, 0, '1', '17:07', '18:41', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '051039', 'S4113', 'SI7A', '2018-09-19 00:00:00', '3B2', 2, 'Pengelolaan Database dan File', 15, 1, '1', '09:38', '11:22', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '051040', 'J3105', 'MI5A', '2018-09-20 00:00:00', '4A2', 2, 'Pengenalan Sistem & Sistem Pendukung Keputusan', 15, 1, '1', '08:03', '09:30', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '051040', 'S4106', 'SI72', '2018-09-19 00:00:00', '3F2', 2, 'Operasional Manajemen Hubungan Pelanggan', 31, 1, '1', '17:21', '18:40', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '051040', 'S4106', 'SI73', '2018-09-18 00:00:00', '2E2', 1, '', 0, 0, '1', '15:31', '17:01', NULL, NULL, NULL, '', NULL, NULL),
('2018/2019', '051041', 'J3106', 'MI5A', '2018-09-18 00:00:00', '2D2', 1, 'Penjelasan silabus\r\npengantar artikel ilmiah', 0, 0, '1', '13:26', '15:05', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '051041', 'S3105', 'SI5B', '2018-09-18 00:00:00', '2B2', 1, 'Penjelasan Silabus \r\nPengantar Pengujian Perangkat Lunak', 0, 0, '1', '09:40', '11:26', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '071045', 'S2106', 'SI31', '2018-09-18 00:00:00', '2G2', 2, 'Model data', 16, 0, '1', '19:09', '20:40', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '071045', 'S3104', 'SI5A', '2018-09-18 00:00:00', '2A2', 2, 'Tentang HTML', 0, 0, '1', '07:55', '09:30', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '071046', 'I2104', 'TI3A', '2018-09-18 00:00:00', '2B2', 2, 'data definition language create database, tabel, primary key', 30, 0, '1', '09:38', '11:25', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '071046', 'S3106', 'SI51', '2018-09-18 00:00:00', '2G2', 1, 'intruduction SAP, konfigurasi, SD 1 display customer', 14, 2, '1', '19:06', '20:39', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '071046', 'S4115', 'SI7A', '2018-09-19 00:00:00', '3A2', 2, 'FI Exercise, membuat akun2, vendor, transfer dana, post rent exp, FI Case study 8', 0, 0, '1', '07:59', '09:32', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '081050', 'S1106', 'SI1C', '2018-09-18 00:00:00', '2A2', 2, 'LOGIKA', 39, 1, '1', '07:53', '09:30', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '082164', 'I2103', 'TI31', '2018-09-18 00:00:00', '2G2', 2, 'HTML 5 versus HTML 4', 22, 0, '1', '19:06', '20:40', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '091053', 'K3103', 'KA5A', '2018-09-19 00:00:00', '3A2', 2, 'KUP (keluar lebih cepat krn ada kegiatan final MAC)', 5, 0, '1', '07:45', '09:03', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '101057', 'I2103', 'TI3B', '2018-09-18 00:00:00', '2B2', 2, 'list, link, headline, paragraph', 15, 0, '1', '09:48', '11:18', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '101057', 'I2104', 'TI31', '2018-09-18 00:00:00', '2F2', 2, 'create database', 22, 0, '1', '17:12', '18:41', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '101058', 'S4108', 'SI7B', '2018-09-19 00:00:00', '3D2', 2, 'Georeferensi', 22, 1, '1', '13:38', '15:11', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '111061', 'I3113', 'TI51', '2018-09-18 00:00:00', '2F2', 2, 'instalasi delphi', 10, 0, '1', '17:17', '18:40', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '111062', 'K3109', 'KA5A', '2018-09-17 00:00:00', '1C2', 2, 'Konsep Resiko dan Sistem Pengendalian Internal', 0, 0, '1', '11', '12', NULL, NULL, NULL, '', NULL, NULL),
('2018/2019', '111062', 'S2108', 'SI3A', '2018-09-19 00:00:00', '3A2', 2, 'Komunikasi Antar Pribadi ', 22, 1, '1', '07:57', '09:28', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '111062', 'S3103', 'SI5B', '2018-09-19 00:00:00', '3C2', 2, 'Konteks Manajemen Proyek dan TEknologi Informasi ', 35, 4, '1', '11:29', '13:11', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '111062', 'S3103', 'SI5C', '2018-09-18 00:00:00', '2B2', 1, 'Penjelasan umum (tata terib, pengantar MPTI)', 0, 0, '1', '09:46', '11:23', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '111062', 'S4102', 'SI7C', '2018-09-18 00:00:00', '2A2', 1, 'Pengenalan Audit Dan Audit SI/TI\r\n', 17, 0, '1', '07:54', '09:25', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '111063', 'S1108', 'SI1C', '2018-09-19 00:00:00', '3B2', 2, 'Manajemen, Manajer, dan Kegiatannya', 31, 0, '1', '09:39', '11:22', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '111063', 'S4106', 'SI7A', '2018-09-19 00:00:00', '3C2', 2, 'Operasional Manajemen Hubungan Pelanggan', 20, 2, '1', '11:28', '13:12', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '111066', 'S1108', 'SI1A', '2018-09-19 00:00:00', '3B2', 2, 'Manajemen, Manajer dan Kegiatannya', 27, 2, '1', '09:39', '11:25', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '111066', 'S1108', 'SI1B', '2018-09-19 00:00:00', '3A2', 2, 'Manajemen, Manajer & Kegiatannya', 31, 0, '1', '07:59', '09:34', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '111066', 'S2108', 'SI3B', '2018-09-20 00:00:00', '4A2', 2, 'Memahami & Komunikasi Bisnis\r\n', 0, 0, '1', '08:11', '09:32', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '111066', 'S4103', 'SI73', '2018-09-19 00:00:00', '3F2', 1, 'Konsep Sistem Informasi', 15, 1, '1', '17:12', '18:44', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '111066', 'S4103', 'SI7A', '2018-09-18 00:00:00', '2C2', 1, 'Penjelasan SAP & Prngantar Konsep SI', 29, 2, '1', '11:36', '13:10', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '111066', 'S4104', 'SI7A', '2018-09-18 00:00:00', '2B2', 1, 'Penjelasan SAP & Pengantar analisis bisnis', 23, 2, '1', '09:44', '11:25', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '111067', 'K3102', 'KA5A', '2018-09-19 00:00:00', '3C2', 2, 'Analisis Laporan Keu', 5, 0, '1', '11:39', '13:05', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '111069', 'I3112', 'TI5A', '2018-09-18 00:00:00', '2D2', 2, 'Teori Peluang', 15, 1, '1', '13:37', '15:11', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '111070', 'I1107', 'TI1A', '2018-09-18 00:00:00', '2D2', 2, 'Pengenalan Bahasa Pemrograman Java,\r\nPetunjuk Penulisan Program, Variabel', 30, 0, '1', '13:31', '15:02', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '111070', 'S2107', 'SI3B', '2018-09-18 00:00:00', '2B2', 2, 'Seleksi Kondisi IF, Operator logika, dan relasi', 33, 0, '1', '09:42', '11:21', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '111070', 'S2107', 'SI3B', '2018-09-18 00:00:00', '2A2', 1, 'Program Pertama (Hello World), Identifier, variable, dan tipe data, Operator aritmatika', 31, 0, '1', '07:49', '09:29', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '111070', 'S4113', 'SI71', '2018-09-19 00:00:00', '3E2', 2, 'Pengelolaan Database dan File', 19, 0, '1', '15:31', '16:58', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '121076', 'S4103', 'SI7C', '2018-09-17 00:00:00', '1C2', 2, 'Konsep Sistem Informasi', 24, 2, '1', '11:32', '12:53', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '121076', 'S4104', 'SI71', '2018-09-19 00:00:00', '3F2', 2, 'Pengantar Analisis Bisnis (Lanjutan) + Kompetensi Analis Bisnis', 11, 0, '1', '17:17', '18:37', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '121076', 'S4104', 'SI7D', '2018-09-19 00:00:00', '3D2', 2, 'Pengantar Analisis Bisnis + Kompetensi Analis Bisnis', 31, 3, '1', '13:40', '15:11', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '121077', 'S2106', 'SI32', '2018-09-18 00:00:00', '2G2', 2, 'Database Management System (DBMS)', 15, 1, '1', '19:16', '20:43', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '121077', 'S2106', 'SI3A', '2018-09-18 00:00:00', '2B2', 2, 'Pengantar Sistem Basis Data dan Database Management System (DBMS)', 27, 0, '1', '09:45', '11:27', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '121077', 'S2106', 'SI3B', '2018-09-19 00:00:00', '3B2', 2, 'Pengantar Sistem Basis Data dan Database Management System (DBMS)', 25, 0, '1', '09:42', '11:21', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '121078', 'J2104', 'MI3A', '2018-09-18 00:00:00', '2B2', 2, 'Nomor Perkiraan Account', 4, 0, '1', '09:45', '11:21', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '121078', 'J2104', 'MI3A', '2018-09-18 00:00:00', '2A2', 1, 'Penjelasan GBPP', 4, 0, '1', '07:59', '09:38', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '121078', 'K3106', 'KA5A', '2018-09-19 00:00:00', '3B2', 2, 'Pengenalan ACL', 5, 0, '1', '09:45', '11:29', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '121078', 'S2104', 'SI3A', '2018-09-18 00:00:00', '2D2', 2, 'Perkiraan kode Account', 23, 1, '1', '13:41', '15:05', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '121078', 'S3106', 'SI5B', '2018-09-17 00:00:00', '1C2', 2, 'Penjelasan User Account', 33, 4, '1', '11:37', '13:12', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '121079', 'I2101', 'TI3B', '2018-09-18 00:00:00', '2A2', 2, 'Review Algoritma & Struktur Data II', 9, 2, '1', '07:51', '09:34', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '121080', 'I3109', 'TI5B', '2018-09-18 00:00:00', '2C2', 1, 'Penjelasan Umum; G2BP/ SAP; Definisi dan\r\nKonsep Dasar E-Business dan E-Commerce', 0, 0, '1', '11:37', '13:05', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '121080', 'S1103', 'SI1A', '2018-09-17 00:00:00', '1C2', 2, 'GAFE: lanjutan gmail', 0, 0, '1', '11:33', '13:03', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '121080', 'S3102', 'SI5B', '2018-09-18 00:00:00', '2A2', 2, 'Perencanaan sistem informasi', 17, 1, '1', '08:01', '09:29', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '121082', 'I1107', 'TI1B', '2018-09-18 00:00:00', '2C2', 2, 'penulisan program java,\r\nliteral, variabel, identifier, toke, dll..', 29, 0, '1', '11:30', '13:08', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '121083', 'I3109', 'TI51', '2018-09-18 00:00:00', '2E2', 1, 'Pengantar e-business', 6, 2, '1', '15:33', '17:01', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '121083', 'S2108', 'SI32', '2018-09-19 00:00:00', '3G2', 2, 'Komunikasi Antar Pribadi', 11, 1, '1', '19:04', '20:32', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '121083', 'S4104', 'SI72', '2018-09-18 00:00:00', '2G2', 1, 'Pengantar Analisis Bisnis', 19, 0, '1', '19:07', '20:33', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '121086', 'I4105', 'TI71', '2018-09-17 00:00:00', '1F2', 2, 'Maya Basic', 15, 0, '1', '11', '12', NULL, NULL, NULL, '', NULL, NULL),
('2018/2019', '121086', 'I4105', 'TI72', '2018-09-17 00:00:00', '1E2', 2, 'Maya Basic', 16, 0, '1', '11', '12', NULL, NULL, NULL, '', NULL, NULL),
('2018/2019', '131088', 'S4101', 'SI7B', '2018-09-18 00:00:00', '2B2', 1, 'Dasar-dasar Perpajakan', 12, 0, '1', '09:38', '11:26', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '131091', 'I1108', 'TI11', '2018-09-19 00:00:00', '3F2', 2, 'Logika Proposional', 33, 1, '1', '17:16', '18:39', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '131091', 'I2106', 'TI3A', '2018-09-18 00:00:00', '2C2', 2, 'Pengukuran dan Angka Penting', 28, 1, '1', '11:36', '13:03', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '131092', 'I3106', 'TI5B', '2018-09-19 00:00:00', '3A2', 2, 'Logika Fuzzy Bagian I', 12, 1, '1', '07:55', '09:20', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '131092', 'I3112', 'TI51', '2018-09-18 00:00:00', '2F2', 2, 'Pendahuluan Pengenalan Pola dan Pembelajaran Mesin', 13, 1, '1', '17:13', '18:33', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '141096', 'I3110', 'TI5A', '2018-09-17 00:00:00', '1C2', 2, 'Genres of Games', 15, 1, '1', '11:35', '13:09', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '141096', 'I3111', 'TI5A', '2018-09-18 00:00:00', '2D2', 2, 'Using Cameras', 14, 1, '1', '13:39', '15:16', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '141097', 'S4101', 'SI7A', '2018-09-17 00:00:00', '1C2', 2, 'Ketentuan dan tata cara Perpajakan', 28, 4, '1', '11:35', '13:00', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '141101', 'I3103', 'TI5A', '2018-09-19 00:00:00', '3B2', 2, 'Keamanan dan Kerahasiaan Data', 8, 0, '1', '09:33', '11:20', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '141101', 'S1103', 'SI11', '2018-09-18 00:00:00', '2F2', 1, 'Pengenalan komputer', 27, 1, '1', '16:57', '18:40', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '141102', 'S3103', 'SI52', '2018-09-19 00:00:00', '3G2', 2, 'Pengenalan Manajemen Proyek', 23, 1, '1', '19:21', '20:43', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '151103', 'I1105', 'TI1A', '2018-09-18 00:00:00', '2A2', 2, 'Matriks (2)', 0, 0, '1', '07:52', '09:24', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '151103', 'I1107', 'TI11', '2018-09-18 00:00:00', '2F2', 2, 'Membuat Program Pertama', 34, 0, '1', '17:12', '18:41', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '151106', 'I3102', 'TI5A', '2018-09-18 00:00:00', '2C2', 2, 'Masalah Perangkat Lunak', 33, 3, '1', '11:28', '12:59', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '151106', 'S4102', 'SI71', '2018-09-17 00:00:00', '1F2', 2, 'Konsep Risiko dan Sistem Pengendalian Internal', 39, 1, '1', '17:08', '18:38', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '151106', 'S4102', 'SI72', '2018-09-17 00:00:00', '1G2', 2, 'Konsep Risiko dan Sistem Pengendalian Internal', 5, 3, '1', '19:03', '20:28', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '151106', 'S4103', 'SI71', '2018-09-19 00:00:00', '3G2', 2, 'Konsep SI (Lanjutan)', 22, 4, '1', '19:05', '09:26', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '151106', 'S4105', 'SI71', '2018-09-18 00:00:00', '2F2', 1, 'Definisi dan Konsep Dasar E-Business dan E-Commerce	', 33, 1, '1', '17:15', '18:37', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '151107', 'S1107', 'SI11', '2018-09-18 00:00:00', '2G2', 2, 'klasifikasi komponen komputer', 26, 0, '1', '18:57', '20:39', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '151109', 'I1103', 'TI11', '2018-09-17 00:00:00', '1G2', 2, 'perkembangan klasifikasi komputer', 34, 0, '1', '19:19', '20:33', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '151109', 'I4103', 'TI71', '2018-09-19 00:00:00', '3F2', 1, 'Perkenalan, silabus, penjelasan singkat\r\n\r\n', 17, 0, '1', '16:59', '18:39', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '151109', 'S1107', 'SI12', '2018-09-18 00:00:00', '2G2', 2, 'Pengenalan Dasar Teknologi Informasi', 29, 0, '1', '19:06', '20:42', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '151110', 'I4111', 'TI71', '2018-09-18 00:00:00', '2G2', 1, 'Seven OSI Layer', 19, 1, '1', '18:47', '20:39', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '151110', 'I4111', 'TI7A', '2018-09-17 00:00:00', '1D2', 2, 'Teori Model DOD', 29, 3, '1', '13:30', '15:09', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '151110', 'J1103', 'MI1A', '2018-09-18 00:00:00', '2C2', 1, 'Tinjauan Umum Sistem Komputer', 7, 0, '1', '11:29', '13:12', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '151117', 'I1106', 'TI11', '2018-09-18 00:00:00', '2G2', 2, 'Pengenalan DOS (Pengertian dan Sejarah)', 34, 0, '1', '18:51', '20:31', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '151118', 'J2102', 'MI3A', '2018-09-17 00:00:00', '1C2', 2, 'Dasar Komunikasi Data (lanjutan)	', 0, 0, '1', '11:32', '12:56', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '162265', 'I1102', 'TI1B', '2018-09-19 00:00:00', '3C2', 2, 'Perubahan Ejaan Bahasa Indonesia', 30, 0, '1', '11:31', '13:10', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '162265', 'S1101', 'SI1C', '2018-09-19 00:00:00', '3D2', 2, 'Perubahan Ejaan Bahasa Indonesia', 29, 0, '1', '13:35', '15:10', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '162266', 'S1104', 'SI1B', '2018-09-18 00:00:00', '2B2', 1, 'Pengantar Materi', 33, 3, '1', '09:34', '11:22', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '162266', 'S1104', 'SI1C', '2018-09-18 00:00:00', '2C2', 1, 'Pengenalan Materi', 36, 0, '1', '11:39', '13:05', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '172267', 'I4102', 'TI72', '2018-09-19 00:00:00', '3E2', 2, 'Landasan dan Tujuan Pendidikan Pancasila', 17, 0, '1', '15:55', '17:01', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '172267', 'S1104', 'SI12', '2018-09-18 00:00:00', '2F2', 1, 'endidikan Pancasila Membangkitkan Semangat ESQ (Kuliah Pembukaan)', 30, 0, '1', '17:10', '18:41', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '172267', 'S1104', 'SI1A', '2018-09-18 00:00:00', '2C2', 1, 'Pendidikan Pancasila Membangkitkan Semangat ESQ (Kuliah Pembukaan)', 27, 1, '1', '11:39', '13:05', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '172271', 'J1104', 'MI1A', '2018-09-18 00:00:00', '2D2', 2, '1. persamaan akuntansi\r\n2. pengantar akuntansi dan perusahaan lanjutan', 8, 0, '1', '13:32', '15:05', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '172275', 'J2101', 'MI3A', '2018-09-19 00:00:00', '3B2', 2, 'what computer\'s can do?', 4, 0, '1', '09:40', '11:21', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '172275', 'S1102', 'SI1A', '2018-09-19 00:00:00', '3A2', 2, 'what computer\'s can do?', 26, 2, '1', '07:50', '09:33', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '172276', 'S2105', 'SI31', '2018-09-18 00:00:00', '2F2', 1, 'INTRODUCTION', 0, 0, '1', '17:08', '19:12', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '182278', 'S4101', 'SI71', '2018-09-18 00:00:00', '2G2', 1, 'Dasar-Dasar Perpajakan', 23, 3, '1', '19:04', '20:35', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '182278', 'S4101', 'SI72', '2018-09-18 00:00:00', '2F2', 1, 'Dasar-Dasar Perpajakan', 12, 0, '1', '17:16', '18:42', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '041034', 'I4109', 'TI7A', '2018-09-20 00:00:00', '4D2', 2, 'Random Number Generator.', 15, 0, '1', '13:35', '15:05', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '051038', 'I2105', 'TI31', '2018-09-20 00:00:00', '4F2', 2, 'Aturan Pembulatan dan angka bena', 17, 0, '1', '17:09', '18:36', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '051040', 'S4106', 'SI7C', '2018-09-21 00:00:00', '5B2', 2, 'Operasional CRM', 34, 0, '1', '09:47', '11:25', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '051041', 'I4101', 'TI7B', '2018-09-20 00:00:00', '4C2', 2, 'Pengenalan Manajemen Proyek lanjutan', 0, 0, '1', '11:29', '13:11', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '071045', 'I4101', 'TI71', '2018-09-20 00:00:00', '4F2', 2, 'Konteks dan Proses Manaajemen Proyek', 3, 1, '1', '17:13', '18:36', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '081050', 'S4109', 'SI71', '2018-09-20 00:00:00', '4E2', 2, 'Bab 1 Pengenalan MP', 6, 0, '1', '15:33', '16:54', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '081050', 'S4109', 'SI7A', '2018-09-20 00:00:00', '4B2', 2, 'Bab 1', 38, 2, '1', '09:43', '11:24', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '101058', 'S4108', 'SI71', '2018-09-20 00:00:00', '4F2', 2, 'Georeferensi', 29, 4, '1', '17:14', '18:38', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '101058', 'S4108', 'SI7A', '2018-09-21 00:00:00', '5B2', 2, 'Georeferencing', 18, 2, '1', '09:43', '11:20', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '111062', 'S4109', 'SI7B', '2018-09-21 00:00:00', '5B2', 2, 'Siklus MP ', 11, 0, '1', '09:44', '11:20', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '111063', 'J3103', 'MI5A', '2018-09-20 00:00:00', '4B2', 2, 'Tokoh Wirausaha', 15, 0, '1', '09:28', '11:18', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '111063', 'K3105', 'KA5A', '2018-09-20 00:00:00', '5B2', 2, 'Tokoh Wirausaha', 4, 1, '1', '11', '12', NULL, NULL, NULL, '', NULL, NULL),
('2018/2019', '111063', 'T3103', 'TK5A', '2018-09-20 00:00:00', '5B2', 2, 'Tokoh Wirausaha', 3, 0, '1', '11', '12', NULL, NULL, NULL, '', NULL, NULL),
('2018/2019', '111066', 'S2108', 'SI31', '2018-09-20 00:00:00', '4F2', 2, 'Komunikasi Bisnis', 18, 1, '1', '17:08', '18:41', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '121077', 'S4105', 'SI7B', '2018-09-20 00:00:00', '4C2', 2, 'Definisi dan Konsep E-Business dan E-Commerce dan Tipe dan Jenis E-Business', 21, 1, '1', '11:31', '13:09', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '121077', 'S4105', 'SI7C', '2018-09-20 00:00:00', '4B2', 2, 'Definisi dan Konsep E-Business dan E-Commerce dan Tipe dan Jenis E-Business', 0, 0, '1', '09:43', '11:23', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '121078', 'S2104', 'SI3B', '2018-09-21 00:00:00', '5B2', 2, 'Basic Setup', 27, 0, '1', '09:46', '11:15', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '121078', 'S3106', 'SI52', '2018-09-20 00:00:00', '5E2', 2, 'Navigation Sales & Distribution', 23, 0, '1', '15:45', '16:53', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '131092', 'I4107', 'TI7A', '2018-09-21 00:00:00', '5A2', 2, 'Struktur Kata dan Finite State Morphology', 8, 0, '1', '07:51', '09:25', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '141101', 'S2102', 'SI32', '2018-09-20 00:00:00', '4F2', 2, 'Aspek hukum telematika', 0, 0, '1', '17:11', '15:05', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '151103', 'I1108', 'TI1A', '2018-09-20 00:00:00', '4C2', 2, 'Logika proposional', 31, 0, '1', '11:35', '13:05', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '151106', 'S2102', 'SI3A', '2018-09-20 00:00:00', '4B2', 2, 'Aspek Hukum Telematika Dan Cyberspace pada Teknologi Informasi', 26, 1, '1', '09:42', '11:12', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '151107', 'S3110', 'SI52', '2018-09-20 00:00:00', '4G2', 1, 'Pengenalan Dasar Teknologi Informasi', 16, 0, '1', '19:06', '20:38', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '151118', 'S1103', 'SI12', '2018-09-20 00:00:00', '4G2', 2, 'GAFE II terdiri dari:\r\n-Google Docs\r\n-Google Sheet\r\n-Google Slides\r\n', 29, 0, '1', '18:59', '20:36', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '172276', 'S1102', 'SI11', '2018-09-20 00:00:00', '4G2', 2, 'UNIT 1', 0, 0, '1', '19:29', '19:33', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '021014', 'S3105', 'SI5C', '2018-09-21 00:00:00', '5D2', 2, 'Pendahuluan', 20, 4, '1', '13:34', '14:54', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '052103', 'S3101', 'SI51', '2018-09-21 00:00:00', '5F2', 2, 'Konsep Dasar Penelitian', 33, 2, '1', '17:02', '18:42', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL);
INSERT INTO `pertemuan` (`ThnAkademik`, `KD_DOSEN`, `KODE_MK`, `KELAS`, `TANGGAL`, `WAKTU`, `PERTEMUAN`, `MATERI`, `Hadir`, `Ijin`, `Kd_Semester`, `Jam_Masuk`, `Jam_Keluar`, `Lama`, `Keterangan`, `SELESAI`, `GBPP`, `JAM_DIATUR`, `CATATAN_KAPRODI`) VALUES
('2018/2019', '111063', 'S3110', 'SI5A', '2018-09-21 00:00:00', '5D2', 2, 'Aspek Pasar dan Pemasaran	', 34, 6, '1', '13:41', '15:07', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '111063', 'S4105', 'SI74', '2018-09-21 00:00:00', '5E2', 2, 'Jenis dan Tipe E-Commerce', 16, 1, '1', '15:17', '16:59', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '121080', 'S4105', 'SI7A', '2018-09-21 00:00:00', '5A2', 2, 'Tugas ', 34, 7, '1', '11', '12', NULL, NULL, NULL, '', NULL, NULL),
('2018/2019', '151117', 'S1108', 'SI11', '2018-09-21 00:00:00', '5F2', 2, 'Pengambilan keputusan manajerial', 23, 0, '1', '16:53', '18:32', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '162265', 'I1102', 'TI1A', '2018-09-21 00:00:00', '5D2', 2, 'Perubahan Ejaan Bahasa Indonesia', 30, 0, '1', '13:34', '15:10', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '021005', 'A1102', 'AK1A', '2018-09-17 00:00:00', '1A2', 2, 'deret', 28, 0, '1', '07:42', '10:13', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '021005', 'A1102', 'AK1A', '2018-09-10 00:00:00', '1A2', 1, 'Sistem Bilangan dan Himpunan', 28, 1, '1', '07:27', '10:24', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '021005', 'M1102', 'MJ1B', '2018-09-20 00:00:00', '4A2', 2, 'Deret', 20, 1, '1', '07:33', '10:25', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '021005', 'M1102', 'MJ1B', '2018-09-13 00:00:00', '4A2', 1, 'Sistem Bilangan dan Himpunan', 21, 0, '1', '07:38', '10:04', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '021017', 'A2107', 'AK3A', '2018-09-21 00:00:00', '5A2', 2, 'Konsep Sistem Informasi', 20, 2, '1', '07:45', '10:20', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '021017', 'A2107', 'AK3A', '2018-09-14 00:00:00', '5A2', 1, 'Penjelasan Umum Konsep Sistem Informasi', 20, 2, '1', '07:48', '10:25', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '021021', 'M1105', 'MJ11', '2018-09-14 00:00:00', '5F2', 1, 'Motif dan fungsi suatu bisnis', 0, 0, '1', '17:02', '19:32', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '021021', 'M1105', 'MJ1A', '2018-09-19 00:00:00', '3C2', 2, 'Etika Bisnis dan Tanggung Jawab Sosial', 0, 0, '1', '11:23', '14:05', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '021021', 'M1105', 'MJ1A', '2018-09-12 00:00:00', '3C2', 1, 'Motif dan Fungsi Bisnis', 0, 0, '1', '11:27', '14:08', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '021021', 'M1107', 'MJ1B', '2018-09-21 00:00:00', '5A2', 2, 'Memanfaatkan Google Apps', 0, 0, '1', '07:51', '09:30', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '021021', 'M1107', 'MJ1B', '2018-09-14 00:00:00', '5A2', 1, 'Penjelasan Umum Silabus Matakuliah, Pengenalan Internet beserta dampaknya', 0, 0, '1', '07:51', '09:31', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '021021', 'M3506', 'MJ52', '2018-09-20 00:00:00', '4F2', 2, 'MOTIVASI KONSUMEN', 0, 0, '1', '16:58', '18:39', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '021021', 'M3506', 'MJ52', '2018-09-13 00:00:00', '4F2', 1, 'Pendahuluan- keanekaragaman di Pasar', 0, 0, '1', '17:04', '18:37', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '021021', 'M3506', 'MJ5A', '2018-09-21 00:00:00', '5B2', 2, 'MOTIVASI KONSUMEN', 0, 0, '1', '09:42', '11:18', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '021021', 'M3506', 'MJ5A', '2018-09-14 00:00:00', '5B2', 1, 'Keanekaragaman di Pasar', 0, 0, '1', '09:39', '11:20', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '021021', 'M3508', 'MJ51', '2018-09-19 00:00:00', '3F2', 2, 'Isu-Isu Lingkungan, Peraturan dan Isu Etika dalam\r\nKomunikasi Pemasaran.', 0, 0, '1', '17:14', '18:43', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '021021', 'M3508', 'MJ51', '2018-09-12 00:00:00', '3F2', 1, 'Tinjauan Komunikasi Pemasaran Terpadu \r\n', 0, 0, '1', '17:12', '18:44', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '021021', 'M3512', 'MJ51', '2018-09-18 00:00:00', '2G2', 1, 'Isu Kunci Dalam Manajmen inovasi\r\n', 0, 0, '1', '19:20', '20:59', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '022026', 'M2301', 'MJ31', '2018-09-17 00:00:00', '1G2', 2, 'Analisis Perilaku Biaya', 28, 1, '1', '19:26', '20:58', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '022026', 'M2301', 'MJ31', '2018-09-10 00:00:00', '1G2', 1, 'Konsep Biaya dan Sistem Informasi Akuntansi\r\nBiaya', 28, 1, '1', '19:29', '20:58', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '022032', 'A2101', 'AK31', '2018-09-17 00:00:00', '1G2', 2, 'Filsafat Pancasila', 44, 0, '1', '19:28', '21:04', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '022032', 'A2101', 'AK31', '2018-09-10 00:00:00', '1G2', 1, 'Penjelasan Umum silabus, G2BPP, pengertian dan tujuan pendidikan kewarganegaraan', 44, 0, '1', '19:28', '21:01', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '022032', 'M4706', 'MJ71', '2018-09-20 00:00:00', '4G2', 2, 'Bisnis dan etika dalam dunia modren', 0, 0, '1', '19:28', '21:00', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '022032', 'M4706', 'MJ71', '2018-09-13 00:00:00', '4G2', 1, 'Penjelasan umum GBPP', 39, 2, '1', '19:27', '20:58', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '022032', 'M4706', 'MJ72', '2018-09-18 00:00:00', '5G2', 2, 'Bisnis dan etika dalam dunia modren', 17, 7, '1', '14:59', '16:49', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '022032', 'M4706', 'MJ72', '2018-09-14 00:00:00', '5G2', 1, 'Penjelasan umum GBPP', 20, 4, '1', '19:37', '21:00', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '022032', 'M4706', 'MJ7A', '2018-09-21 00:00:00', '5B2', 2, 'Bisnis dan etika dalam dunia modren', 23, 4, '1', '09:53', '11:16', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '022032', 'M4706', 'MJ7A', '2018-09-14 00:00:00', '5B2', 1, 'Penjelasan umum GBPP', 26, 1, '1', '10:06', '11:16', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '031028', 'A3105', 'AK5A', '2018-09-20 00:00:00', '4D2', 2, 'Tugas Memahami Strategi', 22, 0, '1', '11', '12', NULL, NULL, NULL, '', NULL, NULL),
('2018/2019', '031028', 'A3105', 'AK5A', '2018-09-13 00:00:00', '4D2', 1, 'pendahuluan, sistem pengendalian manajemen  sifat dan konsep dasar pengendalian', 0, 0, '1', '13:29', '15:39', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '031028', 'A4101', 'AK71', '2018-09-20 00:00:00', '4F2', 2, 'akuntan, akuntansi dan standar akuntansi', 0, 0, '1', '16:54', '19:24', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '031028', 'A4101', 'AK71', '2018-09-13 00:00:00', '4F2', 1, 'pendahuluan, format tugas dan presentasi,isu akuntansi terkini', 21, 0, '1', '17:01', '19:19', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '031028', 'A4101', 'AK72', '2018-09-21 00:00:00', '5F2', 2, 'akuntan, akuntansi dan standar akuntansi', 20, 12, '1', '16:54', '19:10', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '031028', 'A4101', 'AK72', '2018-09-14 00:00:00', '5F2', 1, 'pendahuluan, penjelasan format tugas dan perkembangan akunatnsi terkini', 0, 0, '1', '17:03', '19:20', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '031028', 'A4104', 'AK71', '2018-09-19 00:00:00', '3F2', 2, 'Karakteristik Pemeriksaan di Lingkungan\r\nPemerintah', 11, 1, '1', '16:55', '19:15', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '031028', 'A4104', 'AK71', '2018-09-12 00:00:00', '3F2', 1, 'pendahuluan, Pengantar Audit atau Pemeriksaan Keuangan Pemerintah', 12, 0, '1', '16:58', '19:15', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '031028', 'A4104', 'AK7A', '2018-09-18 00:00:00', '2C2', 1, 'pendahuluan , Pengantar Audit atau Pemeriksaan Keuangan\r\nPemerintah', 6, 1, '1', '11:31', '14:21', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '031028', 'M1104', 'MJ12', '2018-09-17 00:00:00', '1G2', 2, 'analisis transaksi', 25, 0, '1', '19:35', '21:05', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '031028', 'M1104', 'MJ12', '2018-09-10 00:00:00', '1G2', 1, 'pendahuluan, penjelasan silabus, persamaan akuntansi', 25, 0, '1', '19:35', '21:05', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '041034', 'M1102', 'MJ12', '2018-09-17 00:00:00', '1F2', 2, 'Sistem Bilangan, Pangkat, Akar, Logaritma, Deret dan Penerapan Ekonomi.', 28, 1, '1', '17:09', '19:18', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '041034', 'M1102', 'MJ12', '2018-09-10 00:00:00', '1F2', 1, 'Silabus, himpunan.', 27, 1, '1', '17:11', '19:19', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '051038', 'A1102', 'AK11', '2018-09-15 00:00:00', '6F2', 1, 'Penjelasan Umum / Pendahuluan', 23, 1, '1', '16:57', '19:21', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '051040', 'M2306', 'MJ32', '2018-09-18 00:00:00', '2G2', 1, 'KOnsep silabus', 25, 2, '1', '19:30', '21:11', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '051040', 'M3502', 'MJ5A', '2018-09-18 00:00:00', '2D2', 1, 'Teori dan konsep e-commerce', 27, 0, '1', '13:42', '15:11', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '052103', 'M2303', 'MJ31', '2018-09-19 00:00:00', '3F2', 2, 'Manajemen Proyek', 30, 2, '1', '17:04', '19:18', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '052103', 'M2303', 'MJ31', '2018-09-12 00:00:00', '3F2', 1, 'RPS, Pendahuluan', 30, 2, '1', '17:12', '19:21', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '061043', 'A4106', 'AK71', '2018-09-19 00:00:00', '3F2', 2, 'Arsitektur Informasi Sistem Akuntansi Tradisional	', 7, 1, '1', '16:57', '19:18', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '061043', 'A4106', 'AK71', '2018-09-12 00:00:00', '3F2', 1, 'Penjelasan Umum, Pengantar Teknologi\r\nInformasi Akuntansi Dan Solusi Bisnis', 0, 0, '1', '16:56', '19:16', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '061043', 'A4106', 'AK7A', '2018-09-21 00:00:00', '2C2', 2, 'Arsitektur Informasi Sistem Akuntansi Tradisional	', 9, 0, '1', '09:43', '12:04', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '061043', 'A4106', 'AK7A', '2018-09-18 00:00:00', '2C2', 1, 'Penjelasan Umum Pengantar Teknologi Informasi Akuntansi Dan Solusi Bisnis', 8, 1, '1', '11:30', '14:07', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '061043', 'M2305', 'MJ32', '2018-09-18 00:00:00', '2F2', 1, 'Pengertian, Arti Penting Serta Pendekatan\r\nMSDM', 37, 1, '1', '16:52', '19:17', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '061043', 'M2305', 'MJ3A', '2018-09-17 00:00:00', '1B2', 2, 'Analisis Pekerjaan (Job Analysis) Mendefinisikan analisis pekerjaan. Menjelaskan alasan melaksanakan analisis pekerjaan. Menjelaskan langkah-langkah a', 28, 1, '1', '09:41', '12:11', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '061043', 'M2305', 'MJ3A', '2018-09-10 00:00:00', '1B2', 1, 'Pengertian, Arti Penting Serta Pendekatan\r\nMSDM', 30, 0, '1', '09:44', '12:11', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '061043', 'M4704', 'MJ71', '2018-09-18 00:00:00', '2G2', 1, 'Ruang Lingkup Materi Supply Chain Management, Penjelasan Aturan Kuliah dan silabus SCM', 30, 5, '1', '19:28', '21:00', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '061043', 'M4704', 'MJ72', '2018-09-19 00:00:00', '3G2', 2, 'Strategi SC', 27, 7, '1', '19:24', '20:57', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '061043', 'M4704', 'MJ72', '2018-09-12 00:00:00', '3G2', 1, 'Ruang Lingkup Materi Supply Chain\r\nManagement, Pengenalan SCM', 32, 2, '1', '19:22', '21:01', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '061043', 'M4704', 'MJ73', '2018-09-17 00:00:00', '1F2', 2, 'Strategi SC', 28, 1, '1', '16:53', '18:40', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '061043', 'M4704', 'MJ73', '2018-09-10 00:00:00', '1F2', 1, 'Ruang lingkup materi supplu chain management, pengenalan SCM', 27, 2, '1', '16:53', '18:40', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '061043', 'M4704', 'MJ7A', '2018-09-17 00:00:00', '1A2', 2, 'Strategi SC', 24, 0, '1', '07:51', '09:32', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '061043', 'M4704', 'MJ7A', '2018-09-10 00:00:00', '1A2', 1, 'Ruang Lingkup Materi Supply Chain\r\nManagement, Pengenalan SCM', 20, 5, '1', '07:54', '09:33', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '062130', 'A1107', 'AK11', '2018-09-14 00:00:00', '5G2', 1, 'Penjelasan Umum Silabus Matakuliah,\r\nPengenalan Internet beserta dampaknya', 22, 0, '1', '19:27', '21:09', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '062130', 'A3109', 'AK51', '2018-09-21 00:00:00', '5F2', 2, 'Sistem Basis Data beserta Konsepnya dan komponen Sistem Basis Data', 4, 1, '1', '17:01', '19:21', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '062130', 'A3109', 'AK51', '2018-09-14 00:00:00', '5F2', 1, 'Pengantar tentang Sistem, Data dan Database\r\nbeserta istilah-istilahnya dalam Dunia Teknologi\r\nInformasi.', 5, 0, '1', '17:01', '19:20', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '062130', 'M1107', 'MJ11', '2018-09-18 00:00:00', '2G2', 1, 'Penjelasan Umum Silabus Matakuliah,\r\nPengenalan Internet beserta dampaknya', 26, 0, '1', '19:20', '21:09', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '071045', 'A3109', 'AK5A', '2018-09-21 00:00:00', '5A2', 2, 'Model Data dan Jenis Data', 6, 0, '1', '08:06', '10:00', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '071045', 'A3109', 'AK5A', '2018-09-14 00:00:00', '5A2', 1, 'Silabus dan Pengenalan Database', 0, 0, '1', '07:58', '09:52', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '071045', 'M4702', 'MJ71', '2018-09-15 00:00:00', '6F2', 1, 'silabus dan pengenalan ms. project', 36, 7, '1', '17:12', '18:41', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '071045', 'M4702', 'MJ72', '2018-09-19 00:00:00', '3F2', 2, 'Predecessor dan Project Change Working', 0, 0, '1', '17:16', '18:41', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '071045', 'M4702', 'MJ72', '2018-09-12 00:00:00', '3F2', 1, 'Silabus dan pengenalan ms. project', 14, 2, '1', '17:08', '18:40', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '071045', 'M4702', 'MJ7A', '2018-09-18 00:00:00', '2B2', 1, 'Silabus dan Pengenalan MS. PROJECT', 25, 0, '1', '09:43', '11:22', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '071046', 'A2108', 'AK31', '2018-09-15 00:00:00', '6F2', 2, 'Navigation, tombol F4, SD 1 : Display Customer, latihan ubah customer', 0, 0, '1', '17:07', '18:46', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '071046', 'A2108', 'AK31', '2018-09-10 00:00:00', '1F2', 1, 'GBI-225 introduction to sap', 0, 0, '1', '17:11', '18:44', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '071047', 'A1106', 'AK1A', '2018-09-19 00:00:00', '3B2', 2, 'PERKEMBANGAN ILMU MANAJEMEN', 26, 0, '1', '09:30', '11:58', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '071047', 'A1106', 'AK1A', '2018-09-12 00:00:00', '3B2', 1, 'DEFINISI, KONSEP MANAJEMEN DAN PARADIGMA MANAJEMEN YANG BERUBAH', 26, 0, '1', '09:33', '12:02', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '071047', 'M1106', 'MJ11', '2018-09-20 00:00:00', '4F2', 2, 'PERKEMBANGAN ILMU MANAJEMEN', 26, 1, '1', '16:57', '19:12', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '071047', 'M1106', 'MJ11', '2018-09-13 00:00:00', '4F2', 1, 'DEFINISI, KONSEP MANAJEMEN, DAN PARADIGMA MANAJEMEN YANG BERUBAH', 27, 0, '1', '17:00', '19:15', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '071047', 'M1106', 'MJ1B', '2018-09-18 00:00:00', '2B2', 1, 'DEFINISI DAN KONSEP MANAJEMEN  & PARADIGMA MANAJEMEN \r\nYANG BERUBAH\r\n', 20, 1, '1', '09:41', '12:40', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '071047', 'M3504', 'MJ51', '2018-09-18 00:00:00', '2F2', 1, 'PENGERTIAN, ASAS, DAN PRINSIP KOPERASI', 0, 0, '1', '17:05', '18:38', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '071047', 'M3504', 'MJ5A', '2018-09-17 00:00:00', '1D2', 2, 'FUNGSI DAN PENGGOLONGAN KOPERASI', 28, 0, '1', '13:20', '15:08', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '071047', 'M3504', 'MJ5A', '2018-09-10 00:00:00', '1D2', 1, 'Pengertian, Asas, dan Prinsip Koperasi', 25, 3, '1', '13:19', '15:06', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '071047', 'M3513', 'MJ51', '2018-09-19 00:00:00', '3F2', 2, 'SIKLUS HIDUP PERUSAHAAN KELUARGA', 9, 0, '1', '17:04', '18:40', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '071047', 'M3513', 'MJ51', '2018-09-12 00:00:00', '3F2', 1, 'ARTI PENTING, BATASAN, DAN KARAKTERISTIK PERUSAHAAN KELUARGA', 8, 1, '1', '17:00', '18:41', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '071047', 'M3513', 'MJ5A', '2018-09-17 00:00:00', '1B2', 2, 'SIKLUS HIDUP PERUSAHAAN KELUARGA', 5, 0, '1', '09:38', '11:25', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '071047', 'M3513', 'MJ5A', '2018-09-10 00:00:00', '1B2', 1, 'ARTI PENTING, BATASAN, DAN KARAKTERISTIK PERUSAHAAN KELUARGA', 5, 0, '1', '09:35', '11:20', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '091052', 'M1103', 'MJ1B', '2018-09-21 00:00:00', '5B2', 2, 'Sifat-sifat teori ekonomi, jenis analisis konomi', 0, 0, '1', '09:41', '12:01', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '091052', 'M1103', 'MJ1B', '2018-09-14 00:00:00', '5B2', 1, 'Penjelasan sialbus, ruang lingkup ilmu ekonomi', 18, 0, '1', '10:35', '12:01', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '091052', 'M2302', 'MJ32', '2018-09-17 00:00:00', '1F2', 2, 'KOnsep inti pemasaran, konsep pemasaran holistik', 0, 0, '1', '16:52', '19:10', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '091052', 'M2302', 'MJ32', '2018-09-10 00:00:00', '1F2', 1, 'penejlasan silabus, Mendefinisikan manajemen pemasaran', 37, 0, '1', '16:56', '19:15', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '091052', 'M3503', 'MJ5A', '2018-09-18 00:00:00', '2B2', 1, 'Penjelasan silabus dan konsep dasar manajemen strategis ', 0, 0, '1', '09:45', '12:08', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '091052', 'M3509', 'MJ51', '2018-09-18 00:00:00', '2G2', 1, 'penjelasan silabus, ruang lingkup CRM', 38, 0, '1', '19:26', '20:54', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '091052', 'M3509', 'MJ5A', '2018-09-20 00:00:00', '4B2', 2, 'Memahami manajemen hubungn pelanggan (lanjutan)', 11, 1, '1', '09:44', '11:22', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '091052', 'M3509', 'MJ5A', '2018-09-13 00:00:00', '4B2', 1, 'Penjelasan silabus, Ruang lingkup CRM', 0, 0, '1', '09:40', '11:16', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '091052', 'M3512', 'MJ5A', '2018-09-20 00:00:00', '4D2', 2, 'Jenis inovasi, tingkatan inovasi ', 0, 0, '1', '13:30', '15:08', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '091052', 'M3512', 'MJ5A', '2018-09-13 00:00:00', '4D2', 1, 'penjelasan silabus, Isu kunci manajemen inovasi ', 2, 0, '1', '13:36', '15:12', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '091053', 'A2104', 'AK3A', '2018-09-18 00:00:00', '2A2', 1, 'Liabilitas jangka Pendek', 24, 5, '1', '08:05', '10:26', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '091053', 'A3108', 'AK5A', '2018-09-21 00:00:00', '5A2', 2, 'Akuntansi Pajak \r\nKas dan Setara Kas', 11, 0, '1', '08:04', '10:22', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '091053', 'A3108', 'AK5A', '2018-09-14 00:00:00', '5A2', 1, 'Pendahuluan (selesai lebih cepat krn ada presentasi borang)', 11, 0, '1', '07:51', '09:42', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '091053', 'M1104', 'MJ1B', '2018-09-12 00:00:00', '3B2', 2, 'Persamaan Akuntansi', 19, 2, '1', '09:40', '11:21', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '091053', 'M1104', 'MJ1B', '2018-09-10 00:00:00', '1A2', 1, 'Pengantar Akt dan Bisnis', 20, 1, '1', '07:55', '09:27', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '091053', 'M4703', 'MJ72', '2018-09-21 00:00:00', '5F2', 2, 'Forecasting/Peramalan', 20, 4, '1', '16:53', '19:16', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '091053', 'M4703', 'MJ72', '2018-09-14 00:00:00', '5F2', 1, 'Pendahuluan', 23, 1, '1', '16:58', '18:56', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '101055', 'A3103', 'AK51', '2018-09-17 00:00:00', '1F2', 2, 'Investasi', 42, 2, '1', '16:31', '19:02', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '101055', 'A3103', 'AK51', '2018-09-10 00:00:00', '1F2', 1, 'SAP & GBPP', 42, 2, '1', '17:00', '19:21', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '101055', 'A3103', 'AK5A', '2018-09-17 00:00:00', '1A2', 2, 'Investasi', 26, 2, '1', '07:53', '10:27', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '101055', 'A3103', 'AK5A', '2018-09-10 00:00:00', '1A2', 1, 'SAP & GBPP', 23, 1, '1', '07:53', '10:23', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '101055', 'M2304', 'MJ32', '2018-09-15 00:00:00', '6F2', 1, 'SAP, GBPP, Tinjauan atas Manajemen Keuangan', 34, 2, '1', '16:30', '19:15', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '101055', 'M2307', 'MJ31', '2018-09-18 00:00:00', '2G2', 1, 'SAP, GBPP, dan Statistik Deskriptif dengan Ms Excel', 31, 1, '1', '19:26', '21:05', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '101055', 'M2307', 'MJ32', '2018-09-20 00:00:00', '4G2', 2, 'Statistik Deskriptif dengan Microsoft Excel dan Pengenalan SPSS', 35, 4, '1', '19:27', '21:05', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '101055', 'M2307', 'MJ32', '2018-09-13 00:00:00', '4G2', 1, 'SAP dan GBPP', 38, 1, '1', '19:29', '21:03', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '101055', 'M2309', 'MJ3A', '2018-09-18 00:00:00', '2B2', 1, 'SAP, GBPP, dan Uang', 27, 0, '1', '09:41', '11:20', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '101055', 'M3511', 'MJ51', '2018-09-19 00:00:00', '3F2', 2, 'Konsep dan Fungsi Manajemen Risiko', 15, 0, '1', '17:04', '18:32', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '101055', 'M3511', 'MJ51', '2018-09-12 00:00:00', '3F2', 1, 'SAP dan GBPP', 15, 0, '1', '17:06', '18:35', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '111064', 'A3106', 'AK52', '2018-09-15 00:00:00', '6G2', 1, 'Mengenal Hanyu Pinyin dan Nada', 0, 0, '1', '19:04', '20:30', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '111064', 'M4701', 'MJ71', '2018-09-19 00:00:00', '3F2', 2, 'Mengulangi Hanyu Pinyin dan Belajar empat nada', 26, 1, '1', '11', '12', NULL, NULL, NULL, '', NULL, NULL),
('2018/2019', '111064', 'M4701', 'MJ71', '2018-09-12 00:00:00', '3F2', 1, 'Belajar Hanyu Pinyin', 25, 2, '1', '11', '12', NULL, NULL, NULL, '', NULL, NULL),
('2018/2019', '111064', 'M4701', 'MJ72', '2018-09-18 00:00:00', '2F2', 1, 'Mengenal Hanyu Pinyin dan Nada', 18, 0, '1', '17:18', '18:33', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '111067', 'A1105', 'AK11', '2018-09-18 00:00:00', '2F2', 1, 'Motif dan Fungsi Bisnis', 22, 0, '1', '16:59', '19:21', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '111069', 'M1102', 'MJ11', '2018-09-18 00:00:00', '2F2', 1, 'Penjelasan Umum, Himpunan, Sistem Bilangan,\r\nAkar dan Logaritma', 29, 0, '1', '17:12', '19:21', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '112198', 'A3101', 'AK5A', '2018-09-17 00:00:00', '1C2', 2, 'Profesi Akuntan Publik dan etika Profesi', 23, 1, '1', '11:32', '12:57', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '112198', 'A3101', 'AK5A', '2018-09-12 00:00:00', '3C2', 1, 'Pendahuluan, Permintaan Terhadap Jasa udit\r\ndan Jasa Assurance lainnya', 21, 2, '1', '12:20', '13:19', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '112198', 'A3102', 'AK51', '2018-09-18 00:00:00', '2F2', 2, 'Akuntansi Penjualan Cicilan', 41, 0, '1', '16:51', '18:25', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '112198', 'A3102', 'AK51', '2018-09-13 00:00:00', '4G2', 1, 'Pendahuluan, Penyampaian Silabus dan Review', 41, 2, '1', '19:30', '21:06', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '112198', 'A3102', 'AK5B', '2018-09-18 00:00:00', '2A2', 2, '', 0, 0, '1', '07:58', '08:56', NULL, NULL, NULL, '', NULL, NULL),
('2018/2019', '112198', 'A3102', 'AK5B', '2018-09-12 00:00:00', '3A2', 1, 'Pendahuluan, Penyampaian Silabus dan Review', 29, 1, '1', '07:52', '09:29', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '121073', 'A1105', 'AK1A', '2018-09-21 00:00:00', '5A2', 2, 'ETIKA BISNIS \r\nDAN TANGGUNG JAWAB SOSIAL\r\n', 0, 0, '1', '07:55', '10:19', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '121073', 'A1105', 'AK1A', '2018-09-14 00:00:00', '5A2', 1, 'Motif dan fungsi suatu bisnis', 0, 0, '1', '07:59', '10:21', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '121073', 'M1104', 'MJ11', '2018-09-13 00:00:00', '4G2', 2, 'Persamaan Akuntansi', 0, 0, '1', '19:27', '21:00', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '121073', 'M1104', 'MJ11', '2018-09-12 00:00:00', '3F2', 1, 'Pengantar Akuntansi dan Bisnis ', 0, 0, '1', '16:56', '18:40', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '121073', 'M1105', 'MJ1B', '2018-09-18 00:00:00', '2D2', 1, 'MOTIF DAN FUNGSI BISNIS\r\n', 0, 0, '1', '15:52', '15:53', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '121073', 'M3511', 'MJ5A', '2018-09-20 00:00:00', '4A2', 2, 'FUNGSI MANAJEMEN RESIKO\r\n', 0, 0, '1', '07:57', '09:30', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '121073', 'M3511', 'MJ5A', '2018-09-13 00:00:00', '4A2', 1, 'KONSEP MANAJEMEN RESIKO', 0, 0, '1', '09:42', '11:17', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '121073', 'M4703', 'MJ71', '2018-09-20 00:00:00', '4F2', 2, 'Perencanaan dan Penganggaran Perusahaan', 0, 0, '1', '16:55', '19:22', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '121073', 'M4703', 'MJ71', '2018-09-13 00:00:00', '4F2', 1, 'Perencanaan dan Konsep penganggaran', 0, 0, '1', '16:54', '19:15', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '121073', 'M4703', 'MJ7C', '2018-09-19 00:00:00', '3B2', 2, 'Perencanaan dan Penganggaran Perusahaan', 0, 0, '1', '09:49', '11:54', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '121073', 'M4703', 'MJ7C', '2018-09-12 00:00:00', '3B2', 1, 'Penjelasan Umum GBPP dan Perencanaan dan\r\nPenganggaran Perusahaan', 0, 0, '1', '09:39', '12:03', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '121074', 'A1103', 'AK1A', '2018-09-20 00:00:00', '4A2', 2, 'KOnsep dasar Ekonomi', 0, 0, '1', '07:58', '10:33', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '121074', 'A1103', 'AK1A', '2018-09-13 00:00:00', '4A2', 1, 'GBPP-SAP\r\nKonsep dasar Ekonomi', 26, 0, '1', '07:56', '10:28', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '121074', 'M1103', 'MJ11', '2018-09-17 00:00:00', '1F2', 2, 'Konsep dasar Ekonomi', 29, 1, '1', '17:07', '19:24', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '121074', 'M1103', 'MJ11', '2018-09-10 00:00:00', '1F2', 1, 'Konsep dasar Ekonomi Mikro', 30, 0, '1', '17:25', '19:19', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '121074', 'M2307', 'MJ3A', '2018-09-19 00:00:00', '3C2', 2, 'Pengenalan spss', 28, 0, '1', '11:34', '13:13', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '121074', 'M2307', 'MJ3A', '2018-09-12 00:00:00', '3C2', 1, 'Konsep dasar Statistik ', 0, 0, '1', '11:40', '13:13', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '121074', 'M3501', 'MJ52', '2018-09-14 00:00:00', '5G2', 1, 'Konsep dasar perekonomian', 39, 1, '1', '19:32', '21:07', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '121074', 'M3501', 'MJ5A', '2018-09-18 00:00:00', '2A2', 1, 'GBPP SAP', 36, 2, '1', '08:04', '09:34', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '121074', 'M4707', 'MJ72', '2018-09-17 00:00:00', '1G2', 2, 'Struktur, Kinerja dan Perilaku Pasar', 31, 2, '1', '19:37', '21:09', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '121074', 'M4707', 'MJ72', '2018-09-10 00:00:00', '1G2', 1, 'GBPP SAP\r\n', 32, 1, '1', '19:32', '21:07', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '121074', 'M4707', 'MJ7A', '2018-09-18 00:00:00', '2C2', 1, 'GBPP-SAP dan Konsep dasar', 0, 0, '1', '11:46', '13:19', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '121075', 'A1104', 'AK1A', '2018-09-18 00:00:00', '2A2', 2, 'analisis transaksi', 26, 0, '1', '07:54', '09:39', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '121075', 'A1104', 'AK1A', '2018-09-13 00:00:00', '4C2', 1, 'Pengantar Akuntansi Bisnis', 26, 0, '1', '11:34', '13:07', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '121075', 'A2103', 'AK32', '2018-09-19 00:00:00', '3G2', 2, 'laporan arus kas', 6, 0, '1', '19:20', '21:00', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '121075', 'A2103', 'AK32', '2018-09-12 00:00:00', '3G2', 1, 'Laporan Arus Kas', 6, 0, '1', '19:28', '20:59', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '121075', 'A2103', 'AK3A', '2018-09-19 00:00:00', '3C2', 2, 'Laporan arus kas', 20, 2, '1', '11:36', '13:34', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '121075', 'A2103', 'AK3A', '2018-09-12 00:00:00', '3C2', 1, 'Laporan arus kas', 20, 2, '1', '11:29', '13:01', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '121075', 'A3107', 'AK51', '2018-09-21 00:00:00', '5F2', 2, 'Regulasi Pengembangan e-government', 5, 0, '1', '17:01', '19:16', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '121075', 'A3107', 'AK51', '2018-09-14 00:00:00', '5F2', 1, 'Pengantar Pemahaman E-Government', 5, 0, '1', '17:01', '19:11', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '121075', 'M1102', 'MJ1A', '2018-09-17 00:00:00', '1B2', 2, 'Deret', 22, 1, '1', '11', '12', NULL, NULL, NULL, '', NULL, NULL),
('2018/2019', '121075', 'M1102', 'MJ1A', '2018-09-10 00:00:00', '1B2', 1, 'himpunan, sistem bilangan, akar pangkat logaritma', 21, 0, '1', '09:42', '12:11', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '121075', 'M1102', 'MJA', '2018-09-17 00:00:00', '1B2', 1, '', 0, 0, '1', '09:42', '', NULL, NULL, NULL, '', NULL, NULL),
('2018/2019', '121076', 'A1107', 'AK1A', '2018-09-17 00:00:00', '1D2', 2, 'Tugas Pengenalan Internet Beserta dampaknya', 27, 0, '1', '13:41', '15:07', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '121076', 'A1107', 'AK1A', '2018-09-10 00:00:00', '1D2', 1, 'Penjelasan Umum, Silabus, Pengenalan Internet beserta Dampaknya', 26, 1, '1', '13:34', '15:12', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '121076', 'M1107', 'MJ12', '2018-09-19 00:00:00', '3G2', 2, 'Pengenalan Internet Beserta Dampaknya (Lanjutan) + Memanfaatkan Google Apps', 22, 2, '1', '19:19', '21:03', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '121076', 'M1107', 'MJ12', '2018-09-12 00:00:00', '3G2', 1, 'Penjelasan Umum, Silabus dan materi: Pengenalan Internet beserta Dampaknya', 23, 0, '1', '19:31', '21:02', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '121076', 'M1107', 'MJ1A', '2018-09-19 00:00:00', '3A2', 2, 'Memanfaatkan Google Apps', 24, 0, '1', '07:56', '09:32', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '121076', 'M1107', 'MJ1A', '2018-09-12 00:00:00', '3A2', 1, 'Penjelasan Umum, Silabus, dan Pengenalan Internet beserta Dampaknya', 22, 0, '1', '07:45', '09:33', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '121078', 'A2107', 'AK31', '2018-09-14 00:00:00', '5F2', 1, 'Penjelasan GBPP', 42, 0, '1', '17:14', '18:26', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '121078', 'A2108', 'AK32', '2018-09-17 00:00:00', '1F2', 2, 'Navigation SALES AND DISTRIBUTION', 20, 0, '1', '17:13', '18:55', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '121078', 'A2108', 'AK32', '2018-09-10 00:00:00', '1F2', 1, 'Silabus', 20, 0, '1', '17:15', '17:12', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '121083', 'M2306', 'MJ31', '2018-09-20 00:00:00', '4G2', 2, 'Tugas', 31, 0, '1', '11', '12', NULL, NULL, NULL, '', NULL, NULL),
('2018/2019', '121083', 'M2306', 'MJ31', '2018-09-13 00:00:00', '4G2', 1, 'Penjelasan isi silabus dam pengantar perkuliahan', 29, 1, '1', '19:30', '21:01', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '121083', 'M2306', 'MJ3A', '2018-09-20 00:00:00', '4C2', 2, 'CBIS', 18, 1, '1', '11:35', '13:09', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '121083', 'M2306', 'MJ3A', '2018-09-13 00:00:00', '4C2', 1, 'Pengantar Perkuliahan SIM', 18, 1, '1', '11:35', '13:05', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '121083', 'M3502', 'MJ51', '2018-09-14 00:00:00', '5G2', 1, 'Pengantar perkuliahan dan penjelasan dasar e-commerce', 28, 0, '1', '19:31', '20:56', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '121083', 'M3502', 'MJ52', '2018-09-17 00:00:00', '1G2', 2, 'Jenis dan tipe e-commerce', 17, 2, '1', '19:22', '21:01', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '121083', 'M3502', 'MJ52', '2018-09-10 00:00:00', '1G2', 1, 'Pengenalan e-commerce', 18, 1, '1', '19:06', '20:31', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '121085', 'A2102', 'AK31', '2018-09-20 00:00:00', '4F2', 2, 'analisis perilaku biaya', 1, 0, '1', '16:57', '19:15', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '121085', 'A2102', 'AK31', '2018-09-13 00:00:00', '4F2', 1, 'akumulasi biaya', 42, 0, '1', '16:55', '19:05', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '121085', 'A2102', 'AK3A', '2018-09-18 00:00:00', '2C2', 1, 'Konsep Biaya dan Sistem Informasi Akuntansi Biaya', 21, 0, '1', '11:37', '16:06', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '121085', 'A2104', 'AK31', '2018-09-19 00:00:00', '3F2', 2, 'liabilitas jangka panjang', 43, 0, '1', '16:54', '19:10', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '121085', 'A2104', 'AK31', '2018-09-12 00:00:00', '3F2', 1, 'liabilitas jangka pendek', 43, 0, '1', '16:59', '19:03', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '121085', 'A3107', 'AK5A', '2018-09-21 00:00:00', '5A2', 2, 'Regulasi Pengembangan E-Government', 9, 0, '1', '07:53', '10:13', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '121085', 'A3107', 'AK5A', '2018-09-14 00:00:00', '5A2', 1, 'pengantar pemahaman e - gov', 9, 0, '1', '07:50', '10:12', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '121085', 'A4101', 'AK7A', '2018-09-19 00:00:00', '3B2', 2, 'Akuntansi dan Akuntan, Organisasi Akuntan, dan Pendidikan Profesi Akuntansi.', 34, 1, '1', '09:34', '11:55', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '121085', 'A4101', 'AK7A', '2018-09-12 00:00:00', '3B2', 1, 'pengantar silabus dan materi', 28, 2, '1', '09:37', '11:51', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '121085', 'A4103', 'AK7A', '2018-09-19 00:00:00', '3D2', 2, 'Dasar Akuntansi Forensik dan Audit Forensik', 31, 2, '1', '13:34', '15:54', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '121085', 'A4103', 'AK7A', '2018-09-12 00:00:00', '3D2', 1, 'pengantar audit forensik', 30, 1, '1', '13:39', '15:53', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '122212', 'A2101', 'AK3A', '2018-09-17 00:00:00', '1A2', 2, 'Filsafat Pancasila', 21, 0, '1', '09:26', '09:28', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '122212', 'A2101', 'AK3A', '2018-09-10 00:00:00', '1A2', 1, 'Penjelasan Silabus', 20, 0, '1', '08:11', '09:28', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '122219', 'M3504', 'MJ52', '2018-09-20 00:00:00', '4G2', 1, 'Pendahuluan', 25, 2, '1', '19:34', '20:59', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '131086', 'M2305', 'MJ31', '2018-09-20 00:00:00', '4F2', 2, 'Job Analisis', 24, 5, '1', '16:58', '19:18', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '131086', 'M2305', 'MJ31', '2018-09-13 00:00:00', '4F2', 1, 'Pengenalan MSDM ', 27, 2, '1', '17:06', '19:07', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '131086', 'M2308', 'MJ3A', '2018-09-21 00:00:00', '5B2', 2, 'Mindset Bisnis', 33, 1, '1', '09:35', '11:27', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '131086', 'M2308', 'MJ3A', '2018-09-14 00:00:00', '5B2', 1, 'Pengenalan Kewirausahaan', 33, 1, '1', '09:44', '11:25', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '131086', 'M4705', 'MJ71', '2018-09-18 00:00:00', '2F2', 1, 'Pengenalan Komunikasi Bisnis', 34, 6, '1', '17:06', '18:36', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '131086', 'M4705', 'MJ7A', '2018-09-21 00:00:00', '5A2', 2, 'Interpersonal Communication', 18, 1, '1', '07:53', '09:32', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '131086', 'M4705', 'MJ7A', '2018-09-14 00:00:00', '5A2', 1, 'Pengenalan Komunikasi Bisnis', 20, 0, '1', '07:51', '09:39', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '131086', 'M4708', 'MJ7B', '2018-09-20 00:00:00', '4B2', 2, 'Tugas', 33, 0, '1', '11', '12', NULL, NULL, NULL, '', NULL, NULL),
('2018/2019', '131086', 'M4708', 'MJ7B', '2018-09-13 00:00:00', '4B2', 1, 'Pengenalan Manajemen Perubahan', 30, 0, '1', '09:41', '11:21', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '131088', 'A2105', 'AK3A', '2018-09-15 00:00:00', '6A2', 1, 'Dasar-dasar perpajakan', 23, 0, '1', '08:04', '10:18', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '131088', 'A2106', 'AK3A', '2018-09-20 00:00:00', '4B2', 2, 'Tugas', 24, 0, '1', '11', '12', NULL, NULL, NULL, '', NULL, NULL),
('2018/2019', '131088', 'A2106', 'AK3A', '2018-09-13 00:00:00', '4B2', 1, 'uang', 23, 0, '1', '09:45', '11:22', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '131088', 'A4102', 'AK7B', '2018-09-18 00:00:00', '2D2', 2, 'komunikasi antar pribadi', 31, 0, '1', '13:39', '15:10', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '131088', 'A4102', 'AK7B', '2018-09-10 00:00:00', '1C2', 1, 'memahami komunikasi bisnis', 0, 0, '1', '11:35', '13:02', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '131088', 'A4105', 'AK71', '2018-09-19 00:00:00', '3F2', 2, 'Aplikasi PPh Psl 21/26 Bukti Pemotongan PPh\r\n21 Tidak Final dan Final ', 30, 1, '1', '17:05', '19:00', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '131088', 'A4105', 'AK71', '2018-09-12 00:00:00', '3F2', 1, 'e-regristration', 32, 0, '1', '17:02', '19:03', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '131088', 'A4105', 'AK7A', '2018-09-10 00:00:00', '1D2', 1, 'e-regristration', 15, 1, '1', '13:35', '15:51', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '131094', 'M1106', 'MJ1A', '2018-09-20 00:00:00', '4A2', 2, 'FONDASI SEJARAH MANAJEMEN', 25, 0, '1', '07:56', '10:00', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '131094', 'M1106', 'MJ1A', '2018-09-13 00:00:00', '4A2', 1, 'Konsep Dasar Manajemen dan Paradigma\r\nManajemen yang Berubah', 24, 0, '1', '07:58', '10:03', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '131094', 'M2302', 'MJ31', '2018-09-18 00:00:00', '2F2', 1, 'Manajemen Pemasaran Abad 21', 31, 0, '1', '17:16', '07:31', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '131094', 'M2302', 'MJ3A', '2018-09-19 00:00:00', '3A2', 2, 'Mengembangkan Straregi dan Rencana Pemasran', 32, 0, '1', '08:05', '10:35', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '131094', 'M2302', 'MJ3A', '2018-09-12 00:00:00', '3A2', 1, 'Mendefinisikan pemasaran untuk Abad 21', 0, 0, '1', '07:46', '10:06', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '131094', 'M2308', 'MJ31', '2018-09-14 00:00:00', '5F2', 1, 'Konsep dasar Lingkungan Bisnis', 29, 2, '1', '17:13', '18:36', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '131094', 'M3506', 'MJ51', '2018-09-20 00:00:00', '4F2', 2, 'MOTIVASI KONSUMEN', 33, 4, '1', '17:10', '18:29', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '131094', 'M3506', 'MJ51', '2018-09-13 00:00:00', '4F2', 1, 'Silabus', 37, 0, '1', '11', '12', NULL, NULL, NULL, '', NULL, NULL),
('2018/2019', '131095', 'M1103', 'MJ12', '2018-09-18 00:00:00', '2F2', 1, 'Ruang Lingkup Studi Ilmu Ekonomi Mikro', 23, 0, '1', '17:10', '19:00', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '131095', 'M1103', 'MJ1A', '2018-09-18 00:00:00', '2B2', 1, 'Ruang Lingkup Studi Ilmu Ekonomi Mikro ', 23, 0, '1', '09:45', '12:02', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '131095', 'M2303', 'MJ3A', '2018-09-20 00:00:00', '4A2', 2, 'Operations Management', 0, 0, '1', '08:09', '10:28', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '131095', 'M2303', 'MJ3A', '2018-09-13 00:00:00', '4A2', 1, 'GBPP/SAP, Operasi dan Produktivitas.', 0, 0, '1', '08:03', '10:23', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '131095', 'M3501', 'MJ51', '2018-09-17 00:00:00', '1G2', 2, 'SISTEM EKONOMI INDONESIA', 30, 9, '1', '19:41', '21:03', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '131095', 'M3501', 'MJ51', '2018-09-10 00:00:00', '1G2', 1, 'Deskripsi singkat mata kuliah dan standar kompetensi mata kuliah', 37, 2, '1', '19:38', '20:56', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '131095', 'M3503', 'MJ51', '2018-09-17 00:00:00', '1F2', 2, 'FORMULASI STRATEGI: PERUMUSAN VISI DAN MISI BISNIS', 34, 6, '1', '17:08', '19:04', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '131095', 'M3503', 'MJ51', '2018-09-10 00:00:00', '1F2', 1, 'Konsep Dasar Manajemen Strategi: Karakteristik & Keunggulan Strategis.', 39, 2, '1', '17:21', '18:56', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '131095', 'M4707', 'MJ71', '2018-09-14 00:00:00', '5F2', 1, 'Silabus, Ekonomi Industri, Disiplin Ilmu Ekonomi dan\r\nTujuan Perusahaan\r', 36, 4, '1', '17:08', '18:32', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '141097', 'A2105', 'AK31', '2018-09-18 00:00:00', '2F2', 1, 'Dasar-dasar Perpajakan dan Latihan soal', 0, 0, '1', '17:07', '17:22', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '141097', 'A2108', 'AK3A', '2018-09-12 00:00:00', '3D2', 2, 'Tutorisl SAP & Introduction SAP', 18, 2, '1', '09:45', '11:19', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '141097', 'A2108', 'AK3A', '2018-09-10 00:00:00', '1C2', 1, 'Pengenalan SAP, Konfigurasi SAP', 15, 1, '1', '11:41', '13:17', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '141097', 'A3108', 'AK51', '2018-09-21 00:00:00', '5F2', 2, 'Kas/Bank dan Persedian', 0, 0, '1', '17:05', '19:07', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '141097', 'A3108', 'AK51', '2018-09-14 00:00:00', '5F2', 1, 'Pengantar -pemahaman  Prinsip-prinsip Dasar Akuntansi Pajak', 32, 0, '1', '16:56', '19:01', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '141097', 'M2309', 'MJ31', '2018-09-15 00:00:00', '6F2', 1, 'silabus dan UANG', 27, 1, '1', '17:14', '18:25', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '141097', 'M2309', 'MJ32', '2018-09-19 00:00:00', '3F2', 2, 'Ruang Lingkup Lembaga Keuangan Bank', 29, 0, '1', '17:25', '18:28', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '141097', 'M2309', 'MJ32', '2018-09-12 00:00:00', '3F2', 1, 'silabus dan UANG', 27, 1, '1', '17:15', '18:25', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '141098', 'A2106', 'AK31', '2018-09-18 00:00:00', '2G2', 1, 'Silabus, Uang', 43, 0, '1', '19:24', '20:59', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '141098', 'A3105', 'AK52', '2018-09-20 00:00:00', '4F2', 2, 'Strategi', 13, 1, '1', '17:01', '19:17', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '141098', 'A3105', 'AK52', '2018-09-13 00:00:00', '4F2', 1, 'Sifat Sistem Pengendalian Manajemen', 14, 0, '1', '17:04', '19:20', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '141098', 'M3507', 'MJ51', '2018-09-19 00:00:00', '3G2', 2, 'Bank dan tanya jawab', 39, 2, '1', '19:25', '21:02', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '141098', 'M3507', 'MJ51', '2018-09-12 00:00:00', '3G2', 1, 'Pendahuluan dan latihan soal', 40, 1, '1', '19:27', '21:10', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '151107', 'A3104', 'AK51', '2018-09-19 00:00:00', '3F2', 2, 'Melatih Berpikir Kreatif dan Inovatif', 32, 0, '1', '17:12', '19:16', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '151107', 'A3104', 'AK51', '2018-09-12 00:00:00', '3F2', 1, 'Silabus, Pengertian dan Konsep KWU', 31, 1, '1', '17:17', '19:23', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '151108', 'M2303', 'MJ32', '2018-09-20 00:00:00', '4F2', 2, 'Manajemen  Proyek', 35, 2, '1', '17:04', '19:14', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '151108', 'M2303', 'MJ32', '2018-09-13 00:00:00', '4F2', 1, 'Penjelasan silabus & Operasi dan produktivitas', 37, 0, '1', '17:20', '19:18', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL);
INSERT INTO `pertemuan` (`ThnAkademik`, `KD_DOSEN`, `KODE_MK`, `KELAS`, `TANGGAL`, `WAKTU`, `PERTEMUAN`, `MATERI`, `Hadir`, `Ijin`, `Kd_Semester`, `Jam_Masuk`, `Jam_Keluar`, `Lama`, `Keterangan`, `SELESAI`, `GBPP`, `JAM_DIATUR`, `CATATAN_KAPRODI`) VALUES
('2018/2019', '151108', 'M2304', 'MJ3A', '2018-09-21 00:00:00', '5D2', 1, 'Penjelasan Silabus dan Pengenalan manajemen keuangan', 30, 4, '1', '13:40', '15:59', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '151108', 'M3505', 'MJ51', '2018-09-14 00:00:00', '5F2', 1, 'Penjelasan Silabus & Pengantar Studi Kelayakan Bisnis', 30, 3, '1', '17:10', '19:25', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '151108', 'M3505', 'MJ52', '2018-09-17 00:00:00', '1F2', 2, 'Pengantar Studi Kelayakan Bisnis', 29, 1, '1', '17:10', '19:20', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '151108', 'M3505', 'MJ52', '2018-09-10 00:00:00', '1F2', 1, 'Penjelasan Silabus dan Pengantar Studi Kelayakan Bisnis', 27, 2, '1', '17:08', '19:20', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '151108', 'M3505', 'MJ5A', '2018-09-19 00:00:00', '3D2', 2, 'Pengantar Studi Kelayakan Bisnis', 29, 0, '1', '13:34', '16:02', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '151108', 'M3505', 'MJ5A', '2018-09-12 00:00:00', '3D2', 1, 'Penjelasan Silabus dan Pengantar Studi Kelayakan Bisnis', 30, 2, '1', '13:35', '15:55', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '151108', 'M3510', 'MJ51', '2018-09-18 00:00:00', '2G2', 1, 'Penjelasan Silabus ', 17, 0, '1', '19:07', '20:33', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '151108', 'M3510', 'MJ5A', '2018-09-20 00:00:00', '4B2', 2, 'Investasi', 14, 0, '1', '09:39', '11:27', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '151108', 'M3510', 'MJ5A', '2018-09-13 00:00:00', '4B2', 1, 'Penjelasan Silabus dan Investasi', 15, 0, '1', '07:59', '09:24', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '151115', 'A3104', 'AK5A', '2018-09-19 00:00:00', '4B2', 2, 'Seminar Tokoh Kewirausahaan (Entrepreneur)', 28, 0, '1', '11', '12', NULL, NULL, NULL, '', NULL, NULL),
('2018/2019', '151115', 'A3104', 'AK5A', '2018-09-13 00:00:00', '4B2', 1, 'PENGERTIAN, KONSEP, DAN RUANG LINGKUP ,ENTREPRENEURSHIP, TECHNOPRENEURSHIP, DAN LEADERSHIP', 25, 2, '1', '09:25', '12:04', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '151115', 'A4102', 'AK73', '2018-09-18 00:00:00', '2G2', 1, 'Penjelasan Silabus , Ilmu Komunikasi\r\nPengantar, Memahami Komunikasi Bisnis', 33, 1, '1', '19:20', '20:58', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '151115', 'M2304', 'MJ31', '2018-09-17 00:00:00', '1F2', 2, 'Laporan Keuangan, Pajak, Arus Kas\r\n', 29, 1, '1', '16:47', '19:20', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '151115', 'M2304', 'MJ31', '2018-09-10 00:00:00', '1F2', 1, 'SAP, GBPP, dan Tinjauan Atas Manajemen\r\nKeuangan', 27, 2, '1', '17:01', '19:00', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '151115', 'M2308', 'MJ32', '2018-09-19 00:00:00', '3G2', 2, 'Menumbuhkan Jiwa Kewirausahaan : Mindset dan Motivasi', 36, 0, '1', '19:19', '20:56', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '151115', 'M2308', 'MJ32', '2018-09-12 00:00:00', '3G2', 1, 'Pendahuluan Ruang Lingkup Materi (Silabus)\r\nReview Hakekat Kewirausahaan', 35, 1, '1', '19:28', '20:58', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '151115', 'M3503', 'MJ52', '2018-09-21 00:00:00', '5F2', 2, 'Konsep Dasar Manajemen Strategi : Karakteristik dan Keunggulan Stategi', 23, 5, '1', '16:53', '19:17', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '151115', 'M3503', 'MJ52', '2018-09-14 00:00:00', '5F2', 1, 'diskripsi singkat mata kuliah', 28, 2, '1', '17:02', '19:21', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '151115', 'M3507', 'MJ52', '2018-09-18 00:00:00', '2F2', 1, 'Pendahuluan', 8, 0, '1', '17:05', '18:31', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '151115', 'M3507', 'MJ5A', '2018-09-20 00:00:00', '4D2', 2, 'Tugas', 19, 0, '1', '11', '12', NULL, NULL, NULL, '', NULL, NULL),
('2018/2019', '151115', 'M3507', 'MJ5A', '2018-09-15 00:00:00', '6A2', 1, 'Pendahuluan Manajemen Perbankan', 17, 2, '1', '07:58', '09:20', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '151115', 'M3508', 'MJ5A', '2018-09-20 00:00:00', '4A2', 2, 'Tugas', 11, 1, '1', '11', '12', NULL, NULL, NULL, '', NULL, NULL),
('2018/2019', '151115', 'M3508', 'MJ5A', '2018-09-13 00:00:00', '4A2', 1, 'Tinjauan Komunikasi Pemasaran Terpadu', 12, 1, '1', '07:57', '09:23', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '151115', 'M4705', 'MJ73', '2018-09-14 00:00:00', '5G2', 1, 'PENDAHULUAN KOMUNIKASI BISNIS', 32, 2, '1', '19:32', '20:52', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '152250', 'A1106', 'AK11', '2018-09-19 00:00:00', '3F2', 2, 'Perkembangan ilmu manajemen', 23, 1, '1', '17:03', '19:14', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '152250', 'A1106', 'AK11', '2018-09-12 00:00:00', '3F2', 1, 'konsep dasar manajemen dan paradigma manajemen yang berubah', 23, 1, '1', '17:15', '18:30', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '152250', 'M1106', 'MJ12', '2018-09-14 00:00:00', '5F2', 1, 'Pengantar Materi', 0, 0, '1', '17:03', '18:35', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '152250', 'M4708', 'MJ71', '2018-09-15 00:00:00', '6G2', 1, 'Deskriptip manajemen perubahan', 27, 13, '1', '19:27', '20:57', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '152250', 'M4708', 'MJ72', '2018-09-15 00:00:00', '6F2', 1, 'deskripsi budaya organisasi', 37, 3, '1', '17:09', '18:26', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '152255', 'A1103', 'AK11', '2018-09-20 00:00:00', '4F2', 2, 'pertemuan 01, pola kegiatan perekonomian dan latihan', 20, 1, '1', '16:55', '19:21', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '152255', 'A1103', 'AK11', '2018-09-13 00:00:00', '4F2', 1, 'pengenalan silabus: masalah ekonomi , faktor produksi ( faktor yang mempengaruhi dalam perekonomian), ilmu ekonomi . latihan', 21, 0, '1', '16:55', '19:23', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '152255', 'M1105', 'MJ12', '2018-09-19 00:00:00', '3F2', 2, 'review pertemuan 01, etika bisnis dan tanggung jawab sosial. dan diskusi', 25, 1, '1', '16:52', '19:20', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '152255', 'M1105', 'MJ12', '2018-09-12 00:00:00', '3F2', 1, 'materi motifasi , motif bisni pengenalan bisnis', 26, 0, '1', '17:05', '19:25', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '152255', 'M2301', 'MJ32', '2018-09-17 00:00:00', '1G2', 2, 'lanjutan meteri pertemuan 01, prilaku biayadan latihan', 34, 2, '1', '19:29', '21:12', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '152255', 'M2301', 'MJ32', '2018-09-10 00:00:00', '1G2', 1, 'pengenalan tentang biaya , beban objek biaya dalam silabus.', 36, 0, '1', '19:28', '21:11', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '162257', 'A1101', 'AK11', '2018-09-19 00:00:00', '3G2', 2, 'Introduction into business english (terminology in english, reading text and exercise, writing assignment in Simponi)', 21, 0, '1', '19:04', '20:51', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '162257', 'A1101', 'AK11', '2018-09-12 00:00:00', '3G2', 1, 'Pendahuluan, pengenalan silabus', 22, 0, '1', '19:03', '20:40', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '162257', 'A1101', 'AK1A', '2018-09-19 00:00:00', '3D2', 2, 'introduction into business English (business terminology, Reading text and exercise)', 30, 0, '1', '13:34', '15:12', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '162257', 'A1101', 'AK1A', '2018-09-12 00:00:00', '3D2', 1, 'pendahuluan, pengenalan materi dan silabus', 29, 0, '1', '13:34', '15:10', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '162257', 'M1101', 'MJ11', '2018-09-17 00:00:00', '1G2', 2, 'introduce yourself (WH-questions with be statement)', 27, 0, '1', '19:44', '21:10', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '162257', 'M1101', 'MJ11', '2018-09-10 00:00:00', '1G2', 1, 'Pendahuluan, pengenalan silabus', 0, 0, '1', '19:31', '20:55', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '162257', 'M1101', 'MJ12', '2018-09-20 00:00:00', '4G2', 2, ' introduce yourself (wh-questions with be)', 19, 5, '1', '19:37', '21:07', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '162257', 'M1101', 'MJ12', '2018-09-13 00:00:00', '4G2', 1, 'PEndahuluan, pengelanan silabus, SAP', 25, 0, '1', '19:04', '20:33', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '172271', 'M1104', 'MJ1A', '2018-09-14 00:00:00', '4C2', 2, '1. persamaan akuntansi\r\n2. lanjutan pengantar akuntansi dan perusahaan', 25, 0, '1', '07:51', '09:27', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '172271', 'M1104', 'MJ1A', '2018-09-13 00:00:00', '4C2', 1, '1. silabus\r\n2. pengantar akuntansi dan perusahaan ', 0, 0, '1', '11:05', '12:23', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '172273', 'A3106', 'AK5B', '2018-09-20 00:00:00', '4C2', 2, 'Penjelasan pinyin (qiao she & ping she), latihan dan praktek terhadap pelafalan kata.', 16, 1, '1', '11:30', '13:09', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '172273', 'A3106', 'AK5B', '2018-09-13 00:00:00', '4C2', 1, 'Pembahasan RPS dan pengenalan terhadap Pinyin (Shengmu, Yunmu, Shengdiao).', 0, 0, '1', '11:24', '13:12', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '172273', 'M4701', 'MJ7A', '2018-09-17 00:00:00', '1B2', 2, 'Penjelasan Pinyin (qiao she dan ping she), latihan dan praktek terhadap pelafalan kata.', 21, 0, '1', '09:33', '11:17', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '172273', 'M4701', 'MJ7A', '2018-09-10 00:00:00', '1B2', 1, 'Pembahasan RPS dan Pengenalan terhadap Pinyin (Shengmu, Yunmu, Shengdiao)', 0, 0, '1', '09:48', '11:21', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '172274', 'A3101', 'AK51', '2018-09-14 00:00:00', '5G2', 2, 'Etika Profesional', 41, 0, '1', '19:35', '20:47', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '172274', 'A3101', 'AK51', '2018-09-10 00:00:00', '1G2', 1, 'Permintaan Terhadap Jasa Audit dan Jasa Assurance lainnya', 38, 2, '1', '19:41', '20:47', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '172274', 'A3105', 'AK51', '2018-09-20 00:00:00', '4F2', 2, 'Memahami Strategi\r\n', 31, 3, '1', '17:09', '18:51', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '172274', 'A3105', 'AK51', '2018-09-13 00:00:00', '4F2', 1, 'Dasar-Dasar Pengendalian Manajemen', 32, 2, '1', '16:58', '18:50', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '172274', 'A4103', 'AK71', '2018-09-17 00:00:00', '1F2', 2, 'Dasar-Dasar Audit Investigatif dan Akuntansi Forensik', 19, 2, '1', '16:56', '19:07', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '172274', 'A4103', 'AK71', '2018-09-10 00:00:00', '1F2', 1, 'Dasar-Dasar Akuntansi Forensik dan Audit Investigatif', 21, 0, '1', '17:11', '19:09', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '172274', 'A4103', 'AK72', '2018-09-18 00:00:00', '2F2', 1, 'Dasar-Dasar Akuntansi Forensik dan Audit Investigatif', 0, 0, '1', '17:05', '18:44', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '172275', 'M1101', 'MJ1A', '2018-09-17 00:00:00', '1A2', 2, 'Asking about someone	', 24, 0, '1', '07:52', '09:32', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '172275', 'M1101', 'MJ1A', '2018-09-10 00:00:00', '1A2', 1, 'Pendahuluan penjelasan GBPP-SAP intro into business english', 22, 0, '1', '07:48', '09:30', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '172276', 'M1101', 'MJ1B', '2018-09-17 00:00:00', '1B2', 1, 'INTRODUCTION', 0, 0, '1', '09:41', '11:19', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '182278', 'A1104', 'AK11', '2018-09-14 00:00:00', '5F2', 2, 'Analisis Transaksi', 21, 0, '1', '17:02', '18:39', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '182278', 'A1104', 'AK11', '2018-09-10 00:00:00', '1F2', 1, 'Pengantar Akuntansi dan Bisnis', 21, 0, '1', '17:17', '18:41', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '182278', 'A2103', 'AK31', '2018-09-19 00:00:00', '3G2', 2, 'Laporan Arus Kas', 40, 1, '1', '19:31', '20:54', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '182278', 'A2103', 'AK31', '2018-09-12 00:00:00', '3G2', 1, 'Laporan Arus Kas', 40, 1, '1', '19:40', '20:59', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '182278', 'M2301', 'MJ3A', '2018-09-17 00:00:00', '1D2', 2, 'Analisis Prilaku Biaya', 28, 1, '1', '13:53', '15:18', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '182278', 'M2301', 'MJ3A', '2018-09-10 00:00:00', '1D2', 1, 'Perkenalan dan konsep dan sistem informasi akuntansi biaya', 25, 2, '1', '13:39', '15:09', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '051039', 'S3109', 'SI52', '2018-09-21 00:00:00', '5F2', 2, 'Ragam Teknik Evaluasi Investasi TI', 0, 0, '1', '17:08', '18:37', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '052103', 'S3101', 'SI52', '2018-09-21 00:00:00', '5G2', 2, 'Konsep dasar Penelitian', 0, 0, '1', '19:03', '20:36', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '101055', 'S3110', 'SI51', '2018-09-21 00:00:00', '5G2', 2, 'Aspek Pasar dan Pemasaran', 31, 5, '1', '18:56', '20:32', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '111064', 'S3111', 'SI51', '2018-09-22 00:00:00', '6F2', 2, 'Mengenal Angka', 29, 0, '1', '16:58', '18:39', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '121076', 'I3103', 'TI51', '2018-09-22 00:00:00', '6F2', 2, 'Sekilas Kriminal Teknologi Informasi (Lanjutan)', 24, 0, '1', '17:06', '18:41', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '121083', 'I3103', 'TI5B', '2018-09-22 00:00:00', '6B2', 2, 'Keamanan dan kerahasiaan data', 36, 2, '1', '09:44', '11:13', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '141100', 'S2107', 'SI32', '2018-09-21 00:00:00', '5F2', 2, 'If, else if, else', 12, 3, '1', '17:11', '18:43', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '141101', 'S2102', 'SI3B', '2018-09-22 00:00:00', '6C2', 2, 'Sistem Hukum Telematika Dalam TI', 30, 0, '1', '11:34', '17:03', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '141101', 'S2104', 'SI31', '2018-09-21 00:00:00', '5F2', 2, 'Basic Setup pada Accurate', 18, 1, '1', '17:06', '18:41', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '141101', 'S2104', 'SI32', '2018-09-21 00:00:00', '5G2', 2, 'Basic Setup pada Accurate', 14, 4, '1', '19:04', '20:37', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '151107', 'I4103', 'TI72', '2018-09-22 00:00:00', '6E2', 2, 'Berpikir Kreatif dan Inovatif', 19, 0, '1', '15:31', '16:54', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '151107', 'S2102', 'SI31', '2018-09-22 00:00:00', '6F2', 2, 'Aspek Hukum Telematika', 19, 2, '1', '17:08', '18:42', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '151109', 'S1108', 'SI12', '2018-09-21 00:00:00', '5G2', 2, 'Manajemen, Manajer, dan Kegiatannya\r\n', 31, 0, '1', '18:55', '20:38', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '151109', 'S4103', 'SI74', '2018-09-22 00:00:00', '6E2', 2, 'Penjelasan Umum Konsep Sistem Informasi', 28, 0, '1', '15:17', '17:04', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '162257', 'I1101', 'TI1A', '2018-09-22 00:00:00', '6A2', 2, 'nit 2 what computers can do? COuntable, uncountable, reading, listening and checking error sentences.', 31, 0, '1', '07:53', '09:27', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '162257', 'I1101', 'TI1B', '2018-09-22 00:00:00', '6B2', 2, 'unit 2 what computers can do? (reading, listening, grammar_countable&uncountable and HOw much&how many)', 28, 2, '1', '09:42', '11:18', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '162257', 'S2105', 'SI32', '2018-09-22 00:00:00', '6G2', 2, 'UNIT 2 GUI\'s (reading a text, listening section, writing how to make summary, exercise in the classroom)', 12, 0, '1', '19:03', '20:38', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '162265', 'S1101', 'SI1A', '2018-09-22 00:00:00', '6B2', 2, 'Perubahan Ejaan Bahasa Indonesia', 25, 1, '1', '10:06', '11:21', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '162265', 'S1101', 'SI1B', '2018-09-22 00:00:00', '6C2', 2, 'Perubahan Ejaan Bahasa Indonesia', 26, 0, '1', '11:35', '13:11', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '162266', 'I4102', 'TI7A', '2018-09-22 00:00:00', '6D2', 2, 'Tujuan dan Landasan Pancasila', 0, 0, '1', '13:33', '15:10', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '162266', 'S1104', 'SI11', '2018-09-22 00:00:00', '6F2', 2, 'Landasan dan Tujujan Pancasila', 0, 0, '1', '17:12', '18:30', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '172275', 'S1102', 'SI12', '2018-09-22 00:00:00', '6F2', 2, 'what computer\'s can do?', 31, 0, '1', '16:57', '18:32', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '172275', 'S1102', 'SI1C', '2018-09-22 00:00:00', '6B2', 2, 'what computer\'s can do?', 33, 1, '1', '09:42', '11:22', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '172275', 'S2105', 'SI3A', '2018-09-22 00:00:00', '6D2', 2, 'the graphical user interface', 22, 4, '1', '13:36', '15:13', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '172276', 'I1101', 'TI11', '2018-09-22 00:00:00', '6F2', 2, 'UNIT 1', 0, 0, '1', '16:59', '18:34', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '172276', 'S2105', 'SI3B', '2018-09-22 00:00:00', '6D2', 2, 'UNIT 2', 0, 0, '1', '13:47', '15:09', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '021021', 'M1105', 'MJ11', '2018-09-21 00:00:00', '5F2', 2, 'Etika dan Tanggung Jawab Sosial', 0, 0, '1', '17:15', '19:41', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '051038', 'A1102', 'AK11', '2018-09-22 00:00:00', '6F2', 2, 'Himpunan', 22, 3, '1', '16:56', '19:07', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '062130', 'A1107', 'AK11', '2018-09-21 00:00:00', '5G2', 2, 'Memanfaatkan Google Apps', 22, 0, '1', '19:26', '21:06', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '071045', 'M4702', 'MJ71', '2018-09-22 00:00:00', '6F2', 2, 'Predecessor', 38, 4, '1', '17:11', '18:39', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '101055', 'M2304', 'MJ32', '2018-09-22 00:00:00', '6F2', 2, 'Laporan Keuangan, Arus Kas, dan Perpajakan', 36, 1, '1', '16:30', '19:05', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '111064', 'A3106', 'AK52', '2018-09-22 00:00:00', '6G2', 2, 'Mengenal Angka', 35, 4, '1', '18:58', '20:33', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '121074', 'M3501', 'MJ52', '2018-09-21 00:00:00', '5G2', 2, 'Sistem Ekonomi', 35, 5, '1', '19:27', '21:07', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '121078', 'A2107', 'AK31', '2018-09-21 00:00:00', '5F2', 2, 'Konsep Sistem Informasi', 40, 0, '1', '17:19', '18:49', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '121083', 'M3502', 'MJ51', '2018-09-21 00:00:00', '5G2', 2, 'Jenis dan Tipe e-Commerce', 23, 5, '1', '19:32', '21:08', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '131088', 'A2105', 'AK3A', '2018-09-22 00:00:00', '6A2', 2, 'KUP', 24, 1, '1', '07:58', '10:16', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '131094', 'M2308', 'MJ31', '2018-09-21 00:00:00', '5F2', 2, 'PENGERTIAN, KONSEP, DAN  RUANG LINGKUP  ENTREPRENEURSHIP', 27, 2, '1', '17:11', '18:46', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '131095', 'M4707', 'MJ71', '2018-09-21 00:00:00', '5F2', 2, 'Struktur Pasar-Prilaku-Kenerja', 0, 0, '1', '17:21', '18:34', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '141097', 'M2309', 'MJ31', '2018-09-22 00:00:00', '6F2', 2, 'Ruang lingkup Lembaga Keuangan Bank', 27, 0, '1', '17:19', '', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '151108', 'M3505', 'MJ51', '2018-09-21 00:00:00', '5F2', 2, 'Pengantar studi kelayakan bisnis', 32, 2, '1', '17:20', '19:17', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '151115', 'M4705', 'MJ73', '2018-09-21 00:00:00', '5G2', 2, 'komunikasi antar pribadi', 24, 10, '1', '19:18', '20:53', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '152250', 'M4708', 'MJ71', '2018-09-22 00:00:00', '6G2', 2, 'Masalah perubahan', 35, 5, '1', '19:04', '20:32', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '152250', 'M4708', 'MJ72', '2018-09-22 00:00:00', '6F2', 2, 'Masalah perubahan', 34, 8, '1', '17:13', '18:30', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '001001', 'I3110', 'TI51', '2018-09-24 00:00:00', '1E2', 2, 'Genres Of Games', 5, 0, '1', '15:31', '16:57', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '021017', 'J3101', 'MI5A', '2018-09-25 00:00:00', '2A2', 2, 'Orang yang terlibat dalam operasi komputer', 13, 1, '1', '07:45', '09:31', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '021018', 'S3101', 'SI5B', '2018-09-24 00:00:00', '1B2', 2, 'Konsep Dasar Penelitian + Klasifikasi penelitian', 0, 0, '1', '09:39', '11:20', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '052117', 'S3111', 'SI53', '2018-09-24 00:00:00', '1E2', 1, 'GBPP, mengenal han yu pin yin', 15, 1, '1', '15:48', '17:00', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '111062', 'S4102', 'SI7C', '2018-09-25 00:00:00', '2A2', 2, 'Konsep Resiko ', 19, 3, '1', '07:59', '09:20', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '131088', 'S4101', 'SI7C', '2018-09-24 00:00:00', '1B2', 2, 'KUP', 12, 2, '1', '09:44', '11:13', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '141100', 'I2103', 'TI3A', '2018-09-25 00:00:00', '2A2', 2, 'Instalasi XAMPP dan CMS  Wordpress', 30, 2, '1', '07:52', '09:32', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '162265', 'J1106', 'MI1A', '2018-09-22 00:00:00', '5B2', 2, 'Perubahan Ejaan Bahasa Indonesia', 7, 0, '1', '11', '12', NULL, NULL, NULL, '', NULL, NULL),
('2018/2019', '162266', 'I4102', 'TI7B', '2018-09-24 00:00:00', '1C2', 2, 'Landasan dan Tujuan Pancasila', 12, 3, '1', '11:27', '13:04', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '021018', 'I4103', 'TI7C', '2018-09-25 00:00:00', '2B2', 2, 'Melatih Berpikir Kreatif dan Inovatif ;  Tokoh Wirausaha', 10, 0, '1', '09:38', '11:18', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '051041', 'S3105', 'SI5B', '2018-09-25 00:00:00', '2B2', 2, 'Pengujian Perangkat Lunak', 20, 0, '1', '09:41', '11:20', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '111062', 'S3103', 'SI5C', '2018-09-25 00:00:00', '2B2', 2, 'Manajemen Proyek Ti dan Konteks ', 17, 1, '1', '09:49', '11:20', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '111066', 'S4104', 'SI7A', '2018-09-25 00:00:00', '2B2', 2, 'Pengantar Analisis Bisnis', 24, 4, '1', '09:40', '11:22', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '131088', 'S4101', 'SI7B', '2018-09-25 00:00:00', '2B2', 2, 'KUP', 12, 4, '1', '09:44', '11:11', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '162266', 'S1104', 'SI1B', '2018-09-25 00:00:00', '2B2', 2, 'Landasan dan Tujuan Pancasila', 34, 2, '1', '09:29', '11:12', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '021014', 'S4111', 'SI5B', '2018-09-25 00:00:00', '2C2', 2, 'Perangkat bergerak', 24, 3, '1', '11:33', '12:53', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '021018', 'S3101', 'SI5C', '2018-09-25 00:00:00', '2C2', 2, '', 0, 0, '1', '11:26', '13:07', NULL, NULL, NULL, '', NULL, NULL),
('2018/2019', '051038', 'I4109', 'TI71', '2018-09-25 00:00:00', '2E2', 2, 'Pengantar Sistem Simulasi', 14, 0, '1', '15:30', '16:59', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '051039', 'S3105', 'SI52', '2018-09-25 00:00:00', '2F2', 2, 'pendahuluan', 0, 0, '1', '17:13', '18:39', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '051040', 'S4106', 'SI73', '2018-09-25 00:00:00', '2E2', 2, 'Operasional Manajemen Hubungan Pelanggan', 21, 1, '1', '15:31', '17:00', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '051041', 'J3106', 'MI5A', '2018-09-25 00:00:00', '2D2', 2, 'Konsep Tata Tulis karya Ilmiah', 0, 0, '1', '13:28', '15:13', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '052117', 'I3107', 'TI5B', '2018-09-26 00:00:00', '3C2', 1, 'GBPP, pengenalan han yu pin yin', 8, 0, '1', '11:47', '13:12', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '052117', 'S3111', 'SI5B', '2018-09-25 00:00:00', '2D2', 1, 'GBPP, pengenalan han yu pin yin', 8, 0, '1', '13:55', '15:13', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '071046', 'S3106', 'SI51', '2018-09-25 00:00:00', '2G2', 2, 'SD 2 s.d SD 5', 0, 0, '1', '18:59', '20:36', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '111066', 'S4103', 'SI73', '2018-09-26 00:00:00', '3F2', 2, 'Konsep SI Lanjutan', 15, 2, '1', '17:11', '18:38', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '111066', 'S4103', 'SI7A', '2018-09-25 00:00:00', '2C2', 2, 'Konsep SI Lanjutan', 30, 3, '1', '11:28', '13:12', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '121080', 'I3109', 'TI5B', '2018-09-25 00:00:00', '2C2', 2, 'Tipe dan Jenis E-Business\r', 0, 0, '1', '11:32', '13:04', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '121083', 'I3109', 'TI51', '2018-09-25 00:00:00', '2E2', 2, 'Jenis dan Tipe e-Business', 6, 0, '1', '15:33', '17:02', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '121083', 'S4104', 'SI72', '2018-09-25 00:00:00', '2G2', 2, 'Kompetensi Analis Bisnis', 19, 0, '1', '19:01', '20:30', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '141101', 'S1103', 'SI11', '2018-09-25 00:00:00', '2F2', 2, 'Komponen Komputer', 27, 1, '1', '17:04', '19:03', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '151109', 'I4103', 'TI71', '2018-09-26 00:00:00', '3F2', 2, 'Tokoh wirausaha', 16, 0, '1', '17:07', '18:40', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '151110', 'I4111', 'TI71', '2018-09-25 00:00:00', '2G2', 2, 'protokol http', 19, 1, '1', '18:52', '20:39', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '151110', 'J1103', 'MI1A', '2018-09-25 00:00:00', '2C2', 2, '', 0, 0, '1', '11:25', '13:10', NULL, NULL, NULL, '', NULL, NULL),
('2018/2019', '162266', 'S1104', 'SI1C', '2018-09-25 00:00:00', '2C2', 2, 'Landasan dan Tujuan Pancasila', 32, 4, '1', '11:28', '13:06', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '172267', 'S1104', 'SI12', '2018-09-25 00:00:00', '2F2', 2, 'Landasan dan Tjuan Pendidikan Pancasila', 30, 0, '1', '17:10', '18:36', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '172267', 'S1104', 'SI1A', '2018-09-25 00:00:00', '2C2', 2, 'Landasan dan Tjuan Pendidikan Pancasila', 1, 0, '1', '11:31', '13:10', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '172276', 'S2105', 'SI31', '2018-09-25 00:00:00', '2F2', 2, 'UNIT 2', 0, 0, '1', '17:11', '18:40', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '182278', 'S4101', 'SI71', '2018-09-25 00:00:00', '2G2', 2, 'Ketentuan Umum dan Tata Cara Perpajakan', 23, 2, '1', '19:07', '20:31', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '131091', 'I1108', 'TI1B', '2018-09-27 00:00:00', '4C2', 2, 'Logika Proposisi', 30, 1, '1', '11:36', '13:07', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '151107', 'S3110', 'SI52', '2018-09-27 00:00:00', '4G2', 2, 'Aspek Pasar', 17, 2, '1', '19:03', '20:31', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '162257', 'S1102', 'SI1B', '2018-09-28 00:00:00', '5B2', 2, 'what computers can do (countable&Uncountable noun, some/any, much/many, reading, listening, and doing some exercises)', 29, 1, '1', '09:42', '11:21', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '162262', 'I1102', 'TI11', '2018-09-27 00:00:00', '4G2', 2, 'EJAAN YANG DISEMPURNAKAN ', 32, 2, '1', '19:03', '20:39', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '162262', 'S1101', 'SI11', '2018-09-28 00:00:00', '5G2', 2, 'EJAAN YANG DISEMPURNAKAN', 26, 0, '1', '19:02', '20:37', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '162262', 'S1101', 'SI12', '2018-09-28 00:00:00', '5F2', 2, 'EJAAN YANG DISEMPURNAKAN', 29, 0, '1', '17:12', '18:39', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '052117', 'S3111', 'SI53', '2018-10-01 00:00:00', '1E2', 2, 'Pelajaran 1 Mengenal bilangan', 13, 3, '1', '14:52', '17:00', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '052117', 'S3111', 'SI5B', '2018-10-02 00:00:00', '2D2', 2, 'Pelajaran 1 Mengenal bilangan', 7, 5, '1', '13:42', '15:11', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '151106', 'S4105', 'SI71', '2018-10-02 00:00:00', '2F2', 2, 'Tipe dan Jenis E-Business', 33, 1, '1', '17:13', '18:36', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '182278', 'S4101', 'SI72', '2018-10-02 00:00:00', '2F2', 2, 'Ketentuan Umum dan Tata Cara Perpajakan', 11, 1, '1', '17:16', '18:43', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '052117', 'I3107', 'TI5B', '2018-10-03 00:00:00', '3C2', 2, 'Pelajaran 1 Mengenal bilangan', 7, 1, '1', '11:41', '13:11', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `program_studi`
--

CREATE TABLE `program_studi` (
  `kode_prodi` varchar(6) NOT NULL,
  `nama_prodi` varchar(30) NOT NULL,
  `kode_institusi` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `program_studi`
--

INSERT INTO `program_studi` (`kode_prodi`, `nama_prodi`, `kode_institusi`) VALUES
('11', 'Manajemen Informatika', '3'),
('12', 'Teknik Komputer', '3'),
('13', 'Komputerisasi Akuntasi', '3'),
('20', 'Manajemen', '2'),
('21', 'Akuntansi', '2'),
('24', 'Sistem Informasi', '1'),
('25', 'Teknik Informatika', '1');

-- --------------------------------------------------------

--
-- Table structure for table `rekapitulasi_polling`
--

CREATE TABLE `rekapitulasi_polling` (
  `id` int(4) NOT NULL,
  `tahunAkademik` varchar(10) NOT NULL,
  `kd_semester` varchar(1) NOT NULL,
  `kd_dosen` varchar(6) NOT NULL,
  `kd_prodi` varchar(6) NOT NULL,
  `ikd` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `semester`
--

CREATE TABLE `semester` (
  `kd_semester` varchar(1) NOT NULL,
  `nama_semseter` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `semester`
--

INSERT INTO `semester` (`kd_semester`, `nama_semseter`) VALUES
('1', 'Ganjil'),
('2', 'Genap');

-- --------------------------------------------------------

--
-- Table structure for table `tahun_akademik`
--

CREATE TABLE `tahun_akademik` (
  `tahunAkademik` varchar(10) NOT NULL,
  `kd_semester` varchar(1) NOT NULL,
  `status` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tahun_akademik`
--

INSERT INTO `tahun_akademik` (`tahunAkademik`, `kd_semester`, `status`) VALUES
('2017/2018', '1', 'tidak aktif'),
('2018/2019', '1', 'tidak aktif'),
('2018/2019', '2', 'aktif');

-- --------------------------------------------------------

--
-- Table structure for table `unggah_soal_materi`
--

CREATE TABLE `unggah_soal_materi` (
  `id` int(11) NOT NULL,
  `tahunAkademik` varchar(9) NOT NULL,
  `kd_semester` varchar(1) NOT NULL,
  `kd_dosen` varchar(6) NOT NULL,
  `upload_materi` varchar(5) DEFAULT NULL,
  `upload_soal_uts` varchar(5) DEFAULT NULL,
  `upload_soal_uas` varchar(5) DEFAULT NULL,
  `upload_nilai` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `unggah_soal_materi`
--

INSERT INTO `unggah_soal_materi` (`id`, `tahunAkademik`, `kd_semester`, `kd_dosen`, `upload_materi`, `upload_soal_uts`, `upload_soal_uas`, `upload_nilai`) VALUES
(1, '2018/2019', '1', '021017', '1', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `kd_dosen` varchar(6) NOT NULL,
  `password` text NOT NULL,
  `hak_akses` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`kd_dosen`, `password`, `hak_akses`) VALUES
('021018', '$2y$10$hPggvfK42IJoYJyOf8At/.sLrAmM5RBPjIT/riQ7va/zsVvxbGIsy', '2'),
('111062', '$2y$10$0YGR1wa6jKP5pMwhNWPVjuLQ39XOV3mGDW1V2bFpDhkxa8Nd6jfUa', '3'),
('162257', '$2y$10$QGRetoggE82st4BfqkGzp.2.1hnLi5xjJlBmGb8syqikKEXz679te', '2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_penelitian`
--
ALTER TABLE `data_penelitian`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_proposal`
--
ALTER TABLE `data_proposal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`kd_dosen`);

--
-- Indexes for table `institusi`
--
ALTER TABLE `institusi`
  ADD PRIMARY KEY (`kode_institusi`);

--
-- Indexes for table `mata_kuliah`
--
ALTER TABLE `mata_kuliah`
  ADD PRIMARY KEY (`kode_mk`);

--
-- Indexes for table `program_studi`
--
ALTER TABLE `program_studi`
  ADD PRIMARY KEY (`kode_prodi`);

--
-- Indexes for table `rekapitulasi_polling`
--
ALTER TABLE `rekapitulasi_polling`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `semester`
--
ALTER TABLE `semester`
  ADD PRIMARY KEY (`kd_semester`);

--
-- Indexes for table `tahun_akademik`
--
ALTER TABLE `tahun_akademik`
  ADD PRIMARY KEY (`tahunAkademik`,`kd_semester`);

--
-- Indexes for table `unggah_soal_materi`
--
ALTER TABLE `unggah_soal_materi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`kd_dosen`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data_penelitian`
--
ALTER TABLE `data_penelitian`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `data_proposal`
--
ALTER TABLE `data_proposal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rekapitulasi_polling`
--
ALTER TABLE `rekapitulasi_polling`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `unggah_soal_materi`
--
ALTER TABLE `unggah_soal_materi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
