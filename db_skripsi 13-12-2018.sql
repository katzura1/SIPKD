-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 13, 2018 at 03:40 PM
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
-- Table structure for table `data_detail_kuesioner`
--

CREATE TABLE `data_detail_kuesioner` (
  `id` int(11) NOT NULL,
  `kd_kompetensi` int(2) NOT NULL,
  `skor` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_detail_kuesioner`
--

INSERT INTO `data_detail_kuesioner` (`id`, `kd_kompetensi`, `skor`) VALUES
(3, 1, 3),
(3, 3, 3),
(3, 4, 3),
(3, 5, 3),
(3, 6, 3),
(3, 7, 3),
(3, 8, 3),
(3, 9, 3),
(3, 10, 3),
(3, 11, 3),
(3, 12, 3),
(3, 13, 3),
(3, 14, 3),
(3, 15, 3),
(3, 16, 3),
(3, 17, 3),
(3, 18, 3),
(3, 19, 3),
(3, 20, 3),
(3, 21, 3),
(3, 22, 3),
(3, 23, 3),
(3, 24, 3),
(3, 25, 3),
(3, 26, 3),
(3, 27, 3),
(3, 28, 3),
(3, 29, 3),
(3, 30, 3),
(3, 31, 3),
(3, 33, 3),
(4, 1, 3),
(4, 3, 3),
(4, 4, 3),
(4, 5, 3),
(4, 6, 3),
(4, 7, 3),
(4, 8, 3),
(4, 9, 3),
(4, 10, 3),
(4, 11, 3),
(4, 12, 3),
(4, 13, 3),
(4, 14, 3),
(4, 15, 3),
(4, 16, 3),
(4, 17, 3),
(4, 18, 3),
(4, 19, 3),
(4, 20, 3),
(4, 21, 3),
(4, 22, 3),
(4, 23, 3),
(4, 24, 3),
(4, 25, 3),
(4, 26, 3),
(4, 27, 3),
(4, 28, 3),
(4, 29, 3),
(4, 30, 3),
(4, 31, 3),
(4, 33, 3),
(5, 1, 5),
(5, 3, 5),
(5, 4, 5),
(5, 5, 5),
(5, 6, 5),
(5, 7, 5),
(5, 8, 5),
(5, 9, 5),
(5, 10, 5),
(5, 11, 5),
(5, 12, 5),
(5, 13, 5),
(5, 14, 5),
(5, 15, 5),
(5, 16, 5),
(5, 17, 5),
(5, 18, 5),
(5, 19, 5),
(5, 20, 5),
(5, 21, 5),
(5, 22, 5),
(5, 23, 5),
(5, 24, 5),
(5, 25, 5),
(5, 26, 5),
(5, 27, 5),
(5, 28, 5),
(5, 29, 5),
(5, 30, 5),
(5, 31, 5),
(5, 33, 5),
(6, 1, 3),
(6, 3, 3),
(6, 4, 3),
(6, 5, 3),
(6, 6, 3),
(6, 7, 3),
(6, 8, 3),
(6, 9, 3),
(6, 10, 3),
(6, 11, 3),
(6, 12, 3),
(6, 13, 3),
(6, 14, 3),
(6, 15, 3),
(6, 16, 3),
(6, 17, 3),
(6, 18, 3),
(6, 19, 3),
(6, 20, 3),
(6, 21, 3),
(6, 22, 3),
(6, 23, 3),
(6, 24, 3),
(6, 25, 3),
(6, 26, 3),
(6, 27, 3),
(6, 28, 3),
(6, 29, 3),
(6, 30, 3),
(6, 31, 3),
(6, 33, 3),
(7, 1, 3),
(7, 3, 3),
(7, 4, 3),
(7, 5, 3),
(7, 6, 3),
(7, 7, 3),
(7, 8, 3),
(7, 9, 3),
(7, 10, 3),
(7, 11, 3),
(7, 12, 3),
(7, 13, 3),
(7, 14, 3),
(7, 15, 3),
(7, 16, 3),
(7, 17, 3),
(7, 18, 3),
(7, 19, 3),
(7, 20, 3),
(7, 21, 3),
(7, 22, 3),
(7, 23, 3),
(7, 24, 3),
(7, 25, 3),
(7, 26, 3),
(7, 27, 3),
(7, 28, 3),
(7, 29, 3),
(7, 30, 3),
(7, 31, 3),
(7, 33, 3),
(8, 1, 3),
(8, 3, 3),
(8, 4, 3),
(8, 5, 3),
(8, 6, 3),
(8, 7, 3),
(8, 8, 3),
(8, 9, 3),
(8, 10, 3),
(8, 11, 3),
(8, 12, 3),
(8, 13, 3),
(8, 14, 3),
(8, 15, 3),
(8, 16, 3),
(8, 17, 3),
(8, 18, 3),
(8, 19, 3),
(8, 20, 3),
(8, 21, 3),
(8, 22, 3),
(8, 23, 3),
(8, 24, 3),
(8, 25, 3),
(8, 26, 3),
(8, 27, 3),
(8, 28, 3),
(8, 29, 3),
(8, 30, 3),
(8, 31, 3),
(8, 33, 3),
(9, 1, 3),
(9, 3, 3),
(9, 4, 3),
(9, 5, 3),
(9, 6, 3),
(9, 7, 3),
(9, 8, 3),
(9, 9, 3),
(9, 10, 3),
(9, 11, 3),
(9, 12, 3),
(9, 13, 3),
(9, 14, 3),
(9, 15, 3),
(9, 16, 3),
(9, 17, 3),
(9, 18, 3),
(9, 19, 3),
(9, 20, 3),
(9, 21, 3),
(9, 22, 3),
(9, 23, 3),
(9, 24, 3),
(9, 25, 3),
(9, 26, 3),
(9, 27, 3),
(9, 28, 3),
(9, 29, 3),
(9, 30, 3),
(9, 31, 3),
(9, 33, 3),
(10, 1, 3),
(10, 3, 3),
(10, 4, 3),
(10, 5, 3),
(10, 6, 3),
(10, 7, 3),
(10, 8, 3),
(10, 9, 3),
(10, 10, 3),
(10, 11, 3),
(10, 12, 3),
(10, 13, 3),
(10, 14, 3),
(10, 15, 3),
(10, 16, 3),
(10, 17, 3),
(10, 18, 3),
(10, 19, 3),
(10, 20, 3),
(10, 21, 3),
(10, 22, 3),
(10, 23, 3),
(10, 24, 3),
(10, 25, 3),
(10, 26, 3),
(10, 27, 3),
(10, 28, 3),
(10, 29, 3),
(10, 30, 3),
(10, 31, 3),
(10, 33, 3),
(11, 1, 3),
(11, 3, 3),
(11, 4, 3),
(11, 5, 3),
(11, 6, 3),
(11, 7, 3),
(11, 8, 3),
(11, 9, 3),
(11, 10, 3),
(11, 11, 3),
(11, 12, 3),
(11, 13, 3),
(11, 14, 3),
(11, 15, 3),
(11, 16, 3),
(11, 17, 3),
(11, 18, 3),
(11, 19, 3),
(11, 20, 3),
(11, 21, 3),
(11, 22, 3),
(11, 23, 3),
(11, 24, 3),
(11, 25, 3),
(11, 26, 3),
(11, 27, 3),
(11, 28, 3),
(11, 29, 3),
(11, 30, 3),
(11, 31, 3),
(11, 33, 3),
(12, 1, 3),
(12, 3, 3),
(12, 4, 3),
(12, 5, 3),
(12, 6, 3),
(12, 7, 3),
(12, 8, 3),
(12, 9, 3),
(12, 10, 3),
(12, 11, 3),
(12, 12, 3),
(12, 13, 3),
(12, 14, 3),
(12, 15, 3),
(12, 16, 3),
(12, 17, 3),
(12, 18, 3),
(12, 19, 3),
(12, 20, 3),
(12, 21, 3),
(12, 22, 3),
(12, 23, 3),
(12, 24, 3),
(12, 25, 3),
(12, 26, 3),
(12, 27, 3),
(12, 28, 3),
(12, 29, 3),
(12, 30, 3),
(12, 31, 3),
(12, 33, 3),
(13, 1, 3),
(13, 3, 3),
(13, 4, 3),
(13, 5, 3),
(13, 6, 3),
(13, 7, 3),
(13, 8, 3),
(13, 9, 3),
(13, 10, 3),
(13, 11, 3),
(13, 12, 3),
(13, 13, 3),
(13, 14, 3),
(13, 15, 3),
(13, 16, 3),
(13, 17, 3),
(13, 18, 3),
(13, 19, 3),
(13, 20, 4),
(13, 21, 3),
(13, 22, 3),
(13, 23, 3),
(13, 24, 3),
(13, 25, 3),
(13, 26, 3),
(13, 27, 3),
(13, 28, 3),
(13, 29, 3),
(13, 30, 3),
(13, 31, 3),
(13, 33, 3),
(14, 1, 3),
(14, 3, 3),
(14, 4, 3),
(14, 5, 3),
(14, 6, 3),
(14, 7, 3),
(14, 8, 3),
(14, 9, 3),
(14, 10, 3),
(14, 11, 3),
(14, 12, 3),
(14, 13, 3),
(14, 14, 3),
(14, 15, 3),
(14, 16, 3),
(14, 17, 3),
(14, 18, 3),
(14, 19, 3),
(14, 20, 3),
(14, 21, 3),
(14, 22, 3),
(14, 23, 3),
(14, 24, 3),
(14, 25, 3),
(14, 26, 3),
(14, 27, 3),
(14, 28, 3),
(14, 29, 1),
(14, 30, 3),
(14, 31, 3),
(14, 33, 3),
(15, 1, 3),
(15, 3, 3),
(15, 4, 3),
(15, 5, 3),
(15, 6, 3),
(15, 7, 5),
(15, 8, 5),
(15, 9, 5),
(15, 10, 3),
(15, 11, 3),
(15, 12, 3),
(15, 13, 3),
(15, 14, 3),
(15, 15, 3),
(15, 16, 3),
(15, 17, 5),
(15, 18, 5),
(15, 19, 3),
(15, 20, 5),
(15, 21, 3),
(15, 22, 3),
(15, 23, 3),
(15, 24, 3),
(15, 25, 3),
(15, 26, 3),
(15, 27, 3),
(15, 28, 3),
(15, 29, 3),
(15, 30, 3),
(15, 31, 3),
(15, 33, 3),
(16, 1, 3),
(16, 3, 3),
(16, 4, 3),
(16, 5, 3),
(16, 6, 3),
(16, 7, 3),
(16, 8, 3),
(16, 9, 3),
(16, 10, 3),
(16, 11, 3),
(16, 12, 3),
(16, 13, 3),
(16, 14, 3),
(16, 15, 3),
(16, 16, 3),
(16, 17, 3),
(16, 18, 3),
(16, 19, 3),
(16, 20, 3),
(16, 21, 3),
(16, 22, 3),
(16, 23, 3),
(16, 24, 3),
(16, 25, 3),
(16, 26, 3),
(16, 27, 3),
(16, 28, 3),
(16, 29, 3),
(16, 30, 3),
(16, 31, 3),
(16, 33, 3),
(17, 1, 5),
(17, 3, 5),
(17, 4, 5),
(17, 5, 5),
(17, 6, 5),
(17, 7, 5),
(17, 8, 5),
(17, 9, 5),
(17, 10, 5),
(17, 11, 3),
(17, 12, 3),
(17, 13, 3),
(17, 14, 3),
(17, 15, 3),
(17, 16, 3),
(17, 17, 3),
(17, 18, 3),
(17, 19, 3),
(17, 20, 3),
(17, 21, 3),
(17, 22, 5),
(17, 23, 5),
(17, 24, 5),
(17, 25, 5),
(17, 26, 5),
(17, 27, 5),
(17, 28, 5),
(17, 29, 5),
(17, 30, 5),
(17, 31, 5),
(17, 33, 3),
(18, 1, 3),
(18, 3, 3),
(18, 4, 3),
(18, 5, 3),
(18, 6, 3),
(18, 7, 3),
(18, 8, 3),
(18, 9, 3),
(18, 10, 3),
(18, 11, 5),
(18, 12, 5),
(18, 13, 5),
(18, 14, 5),
(18, 15, 5),
(18, 16, 5),
(18, 17, 5),
(18, 18, 5),
(18, 19, 5),
(18, 20, 5),
(18, 21, 5),
(18, 22, 3),
(18, 23, 3),
(18, 24, 3),
(18, 25, 3),
(18, 26, 3),
(18, 27, 3),
(18, 28, 3),
(18, 29, 3),
(18, 30, 3),
(18, 31, 3),
(18, 33, 3),
(19, 1, 3),
(19, 3, 3),
(19, 4, 3),
(19, 5, 3),
(19, 6, 3),
(19, 7, 5),
(19, 8, 5),
(19, 9, 5),
(19, 10, 5),
(19, 11, 3),
(19, 12, 3),
(19, 13, 3),
(19, 14, 3),
(19, 15, 3),
(19, 16, 3),
(19, 17, 3),
(19, 18, 3),
(19, 19, 3),
(19, 20, 3),
(19, 21, 3),
(19, 22, 3),
(19, 23, 3),
(19, 24, 3),
(19, 25, 5),
(19, 26, 5),
(19, 27, 5),
(19, 28, 5),
(19, 29, 5),
(19, 30, 5),
(19, 31, 5),
(19, 33, 3),
(20, 1, 3),
(20, 3, 3),
(20, 4, 3),
(20, 5, 3),
(20, 6, 3),
(20, 7, 3),
(20, 8, 3),
(20, 9, 3),
(20, 10, 3),
(20, 11, 3),
(20, 12, 3),
(20, 13, 3),
(20, 14, 3),
(20, 15, 3),
(20, 16, 3),
(20, 17, 3),
(20, 18, 3),
(20, 19, 3),
(20, 20, 3),
(20, 21, 3),
(20, 22, 3),
(20, 23, 3),
(20, 24, 3),
(20, 25, 3),
(20, 26, 3),
(20, 27, 3),
(20, 28, 3),
(20, 29, 3),
(20, 30, 3),
(20, 31, 3),
(20, 33, 3),
(21, 1, 3),
(21, 3, 3),
(21, 4, 3),
(21, 5, 3),
(21, 6, 3),
(21, 7, 3),
(21, 8, 3),
(21, 9, 3),
(21, 10, 3),
(21, 11, 3),
(21, 12, 3),
(21, 13, 3),
(21, 14, 3),
(21, 15, 3),
(21, 16, 3),
(21, 17, 3),
(21, 18, 3),
(21, 19, 3),
(21, 20, 3),
(21, 21, 3),
(21, 22, 3),
(21, 23, 3),
(21, 24, 3),
(21, 25, 3),
(21, 26, 3),
(21, 27, 3),
(21, 28, 3),
(21, 29, 3),
(21, 30, 3),
(21, 31, 3),
(21, 33, 3),
(22, 1, 3),
(22, 3, 3),
(22, 4, 3),
(22, 5, 3),
(22, 6, 3),
(22, 7, 4),
(22, 8, 4),
(22, 9, 4),
(22, 10, 3),
(22, 11, 3),
(22, 12, 3),
(22, 13, 3),
(22, 14, 3),
(22, 15, 3),
(22, 16, 3),
(22, 17, 3),
(22, 18, 3),
(22, 19, 5),
(22, 20, 3),
(22, 21, 4),
(22, 22, 3),
(22, 23, 3),
(22, 24, 3),
(22, 25, 3),
(22, 26, 3),
(22, 27, 3),
(22, 28, 3),
(22, 29, 3),
(22, 30, 3),
(22, 31, 3),
(22, 33, 3),
(23, 1, 3),
(23, 3, 3),
(23, 4, 3),
(23, 5, 3),
(23, 6, 3),
(23, 7, 3),
(23, 8, 3),
(23, 9, 3),
(23, 10, 3),
(23, 11, 3),
(23, 12, 3),
(23, 13, 3),
(23, 14, 3),
(23, 15, 3),
(23, 16, 3),
(23, 17, 3),
(23, 18, 3),
(23, 19, 3),
(23, 20, 3),
(23, 21, 3),
(23, 22, 3),
(23, 23, 3),
(23, 24, 3),
(23, 25, 3),
(23, 26, 3),
(23, 27, 3),
(23, 28, 3),
(23, 29, 3),
(23, 30, 3),
(23, 31, 3),
(23, 33, 3),
(24, 1, 3),
(24, 3, 3),
(24, 4, 3),
(24, 5, 3),
(24, 6, 3),
(24, 7, 5),
(24, 8, 5),
(24, 9, 5),
(24, 10, 5),
(24, 11, 3),
(24, 12, 3),
(24, 13, 3),
(24, 14, 3),
(24, 15, 3),
(24, 16, 3),
(24, 17, 3),
(24, 18, 3),
(24, 19, 3),
(24, 20, 3),
(24, 21, 3),
(24, 22, 3),
(24, 23, 3),
(24, 24, 3),
(24, 25, 3),
(24, 26, 3),
(24, 27, 3),
(24, 28, 3),
(24, 29, 3),
(24, 30, 3),
(24, 31, 3),
(24, 33, 3);

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
(1, '001001', 1),
(1, '021005', 2),
(2, '021007', 1),
(2, '021014', 2),
(2, '021014', 3),
(4, '041034', 1),
(4, '051038', 2),
(4, '051039', 3),
(4, '052098', 4),
(4, '082164', 5),
(3, '052098', 1),
(3, '082164', 2),
(3, '101057', 3),
(3, '111062', 4),
(1, '111066', 3),
(1, '111067', 4),
(1, '121076', 5),
(2, '121077', 4),
(2, '121079', 5),
(2, '121080', 6),
(3, '121082', 5),
(3, '121083', 6);

-- --------------------------------------------------------

--
-- Table structure for table `data_dosen_proposal`
--

CREATE TABLE `data_dosen_proposal` (
  `id_proposal` int(11) NOT NULL,
  `kd_dosen` varchar(6) NOT NULL,
  `dosen_ke` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_dosen_proposal`
--

INSERT INTO `data_dosen_proposal` (`id_proposal`, `kd_dosen`, `dosen_ke`) VALUES
(1, '001001', 1),
(1, '021005', 2),
(1, '021007', 3),
(1, '021014', 4),
(1, '041034', 5),
(1, '051038', 6),
(1, '051039', 7),
(1, '052098', 8),
(1, '082164', 9),
(1, '101057', 10),
(2, '101057', 1),
(2, '111062', 2),
(2, '111066', 3),
(2, '111067', 4),
(2, '121076', 5),
(2, '121077', 6),
(2, '121079', 7);

-- --------------------------------------------------------

--
-- Table structure for table `data_kuesioner`
--

CREATE TABLE `data_kuesioner` (
  `id` int(5) NOT NULL,
  `thnAkademik` varchar(9) NOT NULL,
  `kd_semester` varchar(1) NOT NULL,
  `kd_dosen` varchar(6) NOT NULL,
  `penilai` varchar(1) NOT NULL COMMENT '1 untuk kaprodi 2 untuk pk 1',
  `tgl_isi` date NOT NULL,
  `tgl_ubah` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_kuesioner`
--

INSERT INTO `data_kuesioner` (`id`, `thnAkademik`, `kd_semester`, `kd_dosen`, `penilai`, `tgl_isi`, `tgl_ubah`) VALUES
(3, '2018/2019', '2', '051038', '2', '2018-12-07', '2018-12-07'),
(4, '2018/2019', '2', '052098', '2', '2018-12-07', '2018-12-07'),
(5, '2018/2019', '2', '111066', '2', '2018-12-07', '2018-12-08'),
(6, '2018/2019', '2', '141101', '2', '2018-12-07', '2018-12-07'),
(7, '2018/2019', '2', '021005', '2', '2018-12-07', '2018-12-07'),
(8, '2018/2019', '2', '111067', '2', '2018-12-07', '2018-12-07'),
(9, '2018/2019', '2', '141102', '1', '2018-12-07', '2018-12-07'),
(10, '2018/2019', '2', '111067', '1', '2018-12-07', '2018-12-07'),
(11, '2018/2019', '2', '021005', '1', '2018-12-07', '2018-12-07'),
(12, '2018/2019', '2', '121076', '1', '2018-12-07', '2018-12-07'),
(13, '2018/2019', '2', '121077', '1', '2018-12-07', '2018-12-07'),
(14, '2018/2019', '2', '121079', '1', '2018-12-07', '2018-12-07'),
(15, '2018/2019', '2', '111066', '1', '2018-12-07', '2018-12-07'),
(16, '2018/2019', '2', '051039', '2', '2018-12-08', '2018-12-08'),
(17, '2018/2019', '2', '051039', '1', '2018-12-08', '2018-12-08'),
(18, '2018/2019', '2', '121083', '2', '2018-12-09', '2018-12-09'),
(19, '2018/2019', '2', '111062', '1', '2018-12-09', '2018-12-09'),
(20, '2018/2019', '2', '001001', '1', '2018-12-13', '2018-12-13'),
(21, '2018/2019', '2', '151107', '1', '2018-12-13', '2018-12-13'),
(22, '2018/2019', '2', '111069', '1', '2018-12-13', '2018-12-13'),
(23, '2018/2019', '2', '021013', '1', '2018-12-13', '2018-12-13'),
(24, '2018/2019', '2', '151106', '1', '2018-12-13', '2018-12-13');

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
(1, '123456', '2018/2019', '2', 'Pengaruh ABC terhadap DEF', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\r\n\r\n', 'penelitian', '2018', '100000000', '2018-11-30 02:40:40', 'Akademik', '1234521321312321', 'dokumen_penelitian', 'dok_hasil_123.docx', 25, 'Pengaruh ABC terhadap DEF', '123456789123', 1, 2018, '01', '01', '2018', '500'),
(2, '123457', '2018/2019', '1', 'Pengaruh ABC terhadap DEF 2', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\r\n\r\n', 'penelitian', '2018', '100000000', '2018-11-05 16:32:50', 'Akademik', '1234521321312321', 'dokumen_penelitian', 'dok_hasil_123.docx', 25, 'Pengaruh ABC terhadap DEF', '123456789123', 1, 2018, '01', '01', '2018', '500'),
(3, '123789', '2018/2019', '1', 'Pengembangan Buku Elektronik Olimpiade Matematika Berbasis Web Dengan Pendekatan Strategi Pemecahan Masalah', 'Pengembangan Buku Elektronik Olimpiade Matematika Berbasis Web Dengan Pendekatan Strategi Pemecahan MasalahPengembangan Buku Elektronik Olimpiade Matematika Berbasis Web Dengan Pendekatan Strategi Pemecahan MasalahPengembangan Buku Elektronik Olimpiade Matematika Berbasis Web Dengan Pendekatan Strategi Pemecahan MasalahPengembangan Buku Elektronik Olimpiade Matematika Berbasis Web Dengan Pendekatan Strategi Pemecahan Masalah', 'buku', '2018', '123123', '2018-11-28 17:07:13', 'Akademik', '123123213', 'dokumen_penelitian', 'dok_hasil_123.docx', 1231231231, 'Pengembangan Buku Elektronik Olimpiade Matematika Berbasis Web Dengan Pendekatan Strategi Pemecahan Masalah', '123123123213', 1, 2018, '5', '1', '2018', '123'),
(4, '123458', '2018/2019', '1', 'Perancangan dan Pembuatan Ensiklopedia Matematika Digital Dalam Komunitas dan Pembelajaran Matematika', 'Perancangan dan Pembuatan Ensiklopedia Matematika Digital Dalam Komunitas dan Pembelajaran MatematikaPerancangan dan Pembuatan Ensiklopedia Matematika Digital Dalam Komunitas dan Pembelajaran MatematikaPerancangan dan Pembuatan Ensiklopedia Matematika Digital Dalam Komunitas dan Pembelajaran MatematikaPerancangan dan Pembuatan Ensiklopedia Matematika Digital Dalam Komunitas dan Pembelajaran Matematika', 'penelitian', '2018', '456456', '2018-11-28 17:07:15', 'Pemerintah', '123123213', 'dokumen_penelitian', 'dok_hasil_123.docx', 12132132, 'asPerancangan dan Pembuatan Ensiklopedia Matematika Digital Dalam Komunitas dan Pembelajaran Matematika', '12313212', 3, 0, '', '1', '2018', '3131');

-- --------------------------------------------------------

--
-- Table structure for table `data_penunjang`
--

CREATE TABLE `data_penunjang` (
  `id` int(5) NOT NULL,
  `thnAkademik` varchar(9) NOT NULL,
  `kd_semester` varchar(1) NOT NULL,
  `kd_dosen` varchar(6) NOT NULL,
  `id_kegiatan` int(1) NOT NULL,
  `nama_kegiatan` varchar(150) NOT NULL,
  `tanggal` date NOT NULL,
  `tempat` varchar(150) NOT NULL,
  `alamat` text NOT NULL,
  `dok_path` varchar(50) NOT NULL,
  `dok_hasil` varchar(250) NOT NULL,
  `status_periksa` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_penunjang`
--

INSERT INTO `data_penunjang` (`id`, `thnAkademik`, `kd_semester`, `kd_dosen`, `id_kegiatan`, `nama_kegiatan`, `tanggal`, `tempat`, `alamat`, `dok_path`, `dok_hasil`, `status_periksa`) VALUES
(1, '2018/2019', '2', '111062', 1, 'Membekali Generasi Alfa Menuju Revolusi Industri 4.0', '2018-12-07', 'Ballroom Arcadia', 'Hotel Alana, Surakarta', 'dok_penunjang', 'doc_071220180550212013-2-00828-IF_Bab2002.docx', 'sudah'),
(2, '2018/2019', '2', '051039', 1, 'Karir + Spektakuler Jobfest', '2018-12-09', 'Graha Darussalam', 'Jl. Sultan Moh. Mansyur No 400 Bukit Lama, Palembang', 'dok_penunjang', 'doc_09122018050228PROSEDUR_PEMBELIAN_BARANG_BEKAS.jpg', 'sudah'),
(3, '2018/2019', '2', '051039', 1, 'Finansialku Roadshow #PALEMBANG : How to reach Your FInancial Goals Faster In Digital Era', '2018-12-09', 'Warunk Upnormal Palembang', 'Jl. R. Sukamto No.68, 8 Ilir', 'dok_penunjang', 'doc_09122018050745PROSEDUR_SERVIS_BARANG.jpg', 'belum');

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

--
-- Dumping data for table `data_proposal`
--

INSERT INTO `data_proposal` (`id`, `no_registrasi`, `thn_akademik`, `kd_semester`, `judul`, `deskripsi`, `penyelenggara`, `jenis`, `periode_dari`, `periode_sampai`, `tempat`, `alamat`, `dana`, `dok_jadwal`, `path_jadwal`, `dok_proposal`, `path_proposal`, `dok_hasil`, `kode_alur`, `tgl_buat`, `tgl_lppm`, `tgl_ketua`, `tgl_bau`, `tgl_dosen_terima`, `tgl_dosen_laporan`) VALUES
(1, '000001', '2018/2019', '2', '	Pengembangan Modul Penerapan Teori Graph berbasis ICT sebagai Pedoman Praktek Kerja Lapangan (PKL) Mahasiswa Jurusan Matematika di Industri', '	Pengembangan Modul Penerapan Teori Graph berbasis ICT sebagai Pedoman Praktek Kerja Lapangan (PKL) Mahasiswa Jurusan Matematika di Industri	Pengembangan Modul Penerapan Teori Graph berbasis ICT sebagai Pedoman Praktek Kerja Lapangan (PKL) Mahasiswa Jurusan Matematika di Industri	Pengembangan Modul Penerapan Teori Graph berbasis ICT sebagai Pedoman Praktek Kerja Lapangan (PKL) Mahasiswa Jurusan Matematika di Industri	Pengembangan Modul Penerapan Teori Graph berbasis ICT sebagai Pedoman Praktek Kerja Lapangan (PKL) Mahasiswa Jurusan Matematika di Industri	Pengembangan Modul Penerapan Teori Graph berbasis ICT sebagai Pedoman Praktek Kerja Lapangan (PKL) Mahasiswa Jurusan Matematika di Industri', 1, 1, '2018-11-01', '2018-11-01', 'Fakultas Teknologi Informasi Kampus Palembang', '	Pengembangan Modul Penerapan Teori Graph berbasis ICT sebagai Pedoman Praktek Kerja Lapangan (PKL) Mahasiswa Jurusan Matematika di Industri', '123123123', '', '', '', '', 0, 1, '2018-11-29 08:27:20', '2018-11-01 00:00:00', '2018-11-01 00:00:00', '2018-11-01 00:00:00', '2018-11-01 00:00:00', '2018-11-01 00:00:00'),
(2, '000002', '2018/2019', '2', 'Pengembangan Web Jurusan Matematika FMIPA Universitas Negeri Malang', 'Pengembangan Web Jurusan Matematika FMIPA Universitas Negeri MalangPengembangan Web Jurusan Matematika FMIPA Universitas Negeri MalangPengembangan Web Jurusan Matematika FMIPA Universitas Negeri MalangPengembangan Web Jurusan Matematika FMIPA Universitas Negeri MalangPengembangan Web Jurusan Matematika FMIPA Universitas Negeri MalangPengembangan Web Jurusan Matematika FMIPA Universitas Negeri Malang', 1, 1, '2018-11-01', '2018-11-01', 'Pengembangan Web Jurusan Matematika FMIPA Universitas Negeri Malang', 'Pengembangan Web Jurusan Matematika FMIPA Universitas Negeri Malang', '1111111', '', '', '', '', 0, 1, '2018-11-28 17:15:41', '2018-11-29 00:00:00', '2018-11-29 00:00:00', '2018-11-29 00:00:00', '2018-11-29 00:00:00', '2018-11-29 00:00:00');

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
  `kode_prodi` varchar(2) NOT NULL,
  `jenis_kelamin` varchar(10) NOT NULL,
  `path_foto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dosen`
--

INSERT INTO `dosen` (`kd_dosen`, `nm_dosen`, `gelar_depan`, `gelar_belakang`, `email`, `kode_prodi`, `jenis_kelamin`, `path_foto`) VALUES
('001001', 'Rusbandi', '', 'Ir, M.Eng', 'rusbandi@mdp.ac.id', '25', 'L', '07122018044339rusbandi.JPG'),
('021005', 'SUDIADI', 'Ir', 'M.M.A.E.', 'sudiardi@mdp.ac.id', '24', 'L', '06122018171733sudiadi.jpg'),
('021007', 'Arif Yulianto', '', 'S.Kom., MTI', 'arif@mdp.ac.id', '24', 'L', '07122018045451s200_arif_yulianto.jpg'),
('021013', 'Gasim', ' Dr', 'S.Kom., M.Si.', 'gasim@mdp.ac.id', '25', 'L', '13122018032828gasim.jpg'),
('021014', 'M.Rachmadi', '', ' ST,M.T.I', 'rachmadi@mdp.ac.id', '24', 'L', '07122018045714rachmadi.jpg'),
('021018', 'Wijang Widhiarso', ' Dr', 'M.Kom', 'wijang@mdp.ac.id', '25', 'L', '13122018032644wijang_widiarso.jpg'),
('041032', 'Johannes Petrus', '', 'S.Kom, M.T.I.', 'johannes@mdp.ac.id', '25', 'L', '13122018033641johannes_petrus.jpg'),
('041034', 'Mardiani', '', 'S.Si., M.T.I.', 'mardiani@mdp.ac.id', '24', 'P', '06122018174021mardiani.jpg'),
('051038', 'RIZANI TEGUH', 'Ir.', 'MT', 'rizani@mdp.ac.id', '24', 'L', '06122018172642rizani_teguh.jpg'),
('051039', 'Dafid', '', 'S.Si, M.T.I', 'dafid@mdp.ac.id', '24', 'L', '06122018173834dafid.jpg'),
('052098', 'Dien Novita', '', 'S.Si, M.T.I', 'dien@mdp.ac.id', '24', 'P', '06122018173534dien_novita.jpg'),
('071045', 'Daniel Udjulawa', '', 'S.Kom, M.T.I', 'daniel@mdp.ac.id', '25', 'L', '13122018033131daniel_udjulawa.jpg'),
('071046', 'Yoannita', '', 'M.Kom', 'yoannita@mdp.ac.id', '25', 'L', '13122018034039yoannita.jpg'),
('082164', 'Hermawan', '', 'S.Kom, M.Kom', 'hermawan@mdp.ac.id', '24', 'L', '07122018050707male.png'),
('101057', 'Iis Pradesan', '', 'S.Kom, M.T.I', 'iis@mdp.ac.id', '24', 'L', '07122018050959iis_pradesan.jpg'),
('111062', 'Desy Iba Ricoida', '', 'S.T., M.T.I.', 'desy@mdp.ac.id', '24', 'P', '06122018173700desy_iba.jpg'),
('111066', 'Mulyati', '', 'SE., M.T.I', 'mulyati@mdp.ac.id', '24', 'P', '07122018050453mulyati.jpg'),
('111067', 'Lisa Amelia', '', 'S.E., M.T.I.', 'lisa@mdp.ac.id', '24', 'P', '06122018174358lisa_amelia.jpg'),
('111069', 'Derry Alamsyah', '', 'S.Si., M.Kom., M.Pd', 'derry@mdp.ac.id', '25', 'L', '13122018034420dery_alamsyah.jpg'),
('121076', 'Della Oktaviany', '', 'S.Kom., M.T.I', 'dellaoktaviany@mdp.ac.id', '24', 'P', '07122018053043della.jpg'),
('121077', 'Desi Pibriana', '', 'S.SI, M.T.I', 'desi.pibriana@mdp.ac.id', '24', 'P', '07122018052540desi_pibriana.jpg'),
('121079', 'Fithri Selva J', '', 'S.Kom., MTI', 'fithri.selva@mdp.ac.id', '24', 'P', '07122018052911fitri_selva.jpg'),
('121080', 'Fransiska Prihatini S', '', 'S.SI, MTI', 'fransiskaps@mdp.ac.id', '24', 'P', '07122018051800fransika_ps-300x300.jpg'),
('121082', 'Triana Elizabeth', '', 'S.Kom, M.T.I', 'triana@mdp.ac.id', '24', 'P', '07122018052343triana.jpg'),
('121083', 'Dicky Pratama', '', 'S.Kom., M.T.I', 'dicky@mdp.ac.id', '24', 'L', '07122018051258dicky.gif'),
('121086', 'Chriestina', '', 'S.Kom., M.T.I', 'chriestina@mdp.ac.id', '24', 'P', '07122018052033chriestine.jpg'),
('131089', 'Ahmad Farisi', '', 'S.Kom,M.Kom', 'ahmadfarisi@mdp.ac.id', '24', 'L', '07122018052204admad_farisi.jpg'),
('131092', 'M.Ezar Al Rivan', '', 'M. Kom', 'ezar@mdp.ac.id', '25', 'L', '13122018034748m_ezhar.jpg'),
('132241', 'Yohannes', '', 'S.Kom', 'yohannes@mdp.ac.id', '25', 'L', '13122018035207yohannes.jpg'),
('141101', 'Dorie P. Kesuma', '', 'S.Kom., MTI', 'dorie@mdp.ac.id', '24', 'L', '07122018050837dorie_p_k.jpg'),
('141102', 'Anggoro Aryo P', '', 'S.Kom., MTI', 'anggoro@mdp.ac.id', '24', 'L', '07122018050349Anggoro-Aryo.jpg'),
('151106', 'M.Rizky Pribadi', '', 'M.Kom.', 'rizky@mdp.ac.id', '25', 'L', '13122018034529m_rizky_p.jpg'),
('151107', 'Erwin Azhari Wijaya', '', 'M.Kom.', 'eaw@mdp.ac.id', '25', 'L', '13122018034624Erwin.jpg');

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
-- Table structure for table `kategori_kinerja`
--

CREATE TABLE `kategori_kinerja` (
  `kd_kategori` int(2) NOT NULL,
  `nama_kategori` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori_kinerja`
--

INSERT INTO `kategori_kinerja` (`kd_kategori`, `nama_kategori`) VALUES
(2, 'Profesional'),
(3, 'Pedagogik'),
(4, 'Kepribadian'),
(5, 'Sosial');

-- --------------------------------------------------------

--
-- Table structure for table `kegiatan_akademik`
--

CREATE TABLE `kegiatan_akademik` (
  `id` int(11) NOT NULL,
  `thnAkademik` varchar(9) NOT NULL,
  `kd_semester` varchar(1) NOT NULL,
  `kd_dosen` varchar(6) NOT NULL,
  `upload_materi` varchar(5) DEFAULT NULL,
  `upload_soal` varchar(5) DEFAULT NULL,
  `upload_nilai` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kegiatan_akademik`
--

INSERT INTO `kegiatan_akademik` (`id`, `thnAkademik`, `kd_semester`, `kd_dosen`, `upload_materi`, `upload_soal`, `upload_nilai`) VALUES
(1, '2018/2019', '2', '111066', '5', '1', '1'),
(2, '2018/2019', '2', '041034', '2', '1', '1'),
(3, '2018/2019', '2', '021005', '5', '0', '1'),
(4, '2018/2019', '2', '021007', '2', '1', '1'),
(5, '2018/2019', '2', '021014', '5', '1', '1'),
(6, '2018/2019', '2', '051038', '5', '1', '1'),
(7, '2018/2019', '2', '051039', '5', '1', '1'),
(8, '2018/2019', '2', '052098', '2', '1', '0'),
(9, '2018/2019', '2', '082164', '2', '1', '0'),
(10, '2018/2019', '2', '101057', '2', '1', '1'),
(11, '2018/2019', '2', '111062', '2', '1', '1'),
(12, '2018/2019', '2', '111067', '2', '1', '1'),
(13, '2018/2019', '2', '121076', '5', '1', '1'),
(14, '2018/2019', '2', '121077', '5', '1', '0'),
(15, '2018/2019', '2', '121079', '5', '1', '1'),
(16, '2018/2019', '2', '121080', '0', '1', '1'),
(17, '2018/2019', '2', '121082', '2', '1', '1'),
(18, '2018/2019', '2', '121083', '5', '1', '0'),
(19, '2018/2019', '2', '121086', '5', '1', '1'),
(20, '2018/2019', '2', '131089', '5', '1', '1'),
(21, '2018/2019', '2', '141101', '5', '0', '1'),
(22, '2018/2019', '2', '141102', '5', '1', '1'),
(23, '2018/2019', '2', '001001', '5', '1', '1'),
(24, '2018/2019', '2', '021013', '5', '1', '1'),
(25, '2018/2019', '2', '021018', '5', '1', '1'),
(26, '2018/2019', '2', '041032', '5', '1', '1'),
(27, '2018/2019', '2', '071045', '5', '1', '1'),
(28, '2018/2019', '2', '071046', '5', '1', '1'),
(29, '2018/2019', '2', '111069', '5', '1', '1'),
(30, '2018/2019', '2', '131092', '5', '1', '1'),
(31, '2018/2019', '2', '132241', '5', '1', '1'),
(32, '2018/2019', '2', '151106', '5', '1', '1'),
(33, '2018/2019', '2', '151107', '5', '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `kompetensi`
--

CREATE TABLE `kompetensi` (
  `kd_kompetensi` int(2) NOT NULL,
  `nama_kompetensi` varchar(150) NOT NULL,
  `kd_kategori` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kompetensi`
--

INSERT INTO `kompetensi` (`kd_kompetensi`, `nama_kompetensi`, `kd_kategori`) VALUES
(1, 'Keteraturan Ketertiban dalam penyelenggaraan perkuliahan', 3),
(3, 'Kesungguhan dalam mempersiapkan perkuliahan', 3),
(4, 'Kemampuan mengelola kelas', 3),
(5, 'Kedisiplinan dan Kepatuhan terhadap peraturan akademik', 3),
(6, 'Kemampuan memimbing mahasiswa', 3),
(7, 'Penguasaan bidang keahlian yang menjadi tugas pokoknya', 2),
(8, 'Kemampuan menjelaskan keterkaitan bidang/topik yang diajarkan dengan bidang/topik lain', 2),
(9, 'Kemampuan menjelaskan keterkaitan bidang keahlian yang diajarkan dengan konteks kehidupan', 2),
(10, 'Penguasaan isu-isu mutakhir dalam bidang yang diajarkan', 2),
(11, 'Kewibawaan sebagai pribadi dosen', 4),
(12, 'Kearifan dalam mengambil keputusan', 4),
(13, 'Menjadi contoh dalam bersikap dan berperilaku', 4),
(14, 'Satunya kata dan teladan', 4),
(15, 'Kemampuan mengendalikan diri dalam berbagai situasi dan kondisi', 4),
(16, 'Adil dalam memperlakukan sejawat, karyawan, dan mahasiswa', 4),
(17, 'Kemampuan menyampaikan pendapat', 5),
(18, 'Kemampuan menerima kritik, saran, dan pendapat orang lain', 5),
(19, 'Mudah bergaul di kalangan sejawat, karyawan, dan mahasiswa', 5),
(20, 'Mudah bergaul di kalangan masyarakat', 5),
(21, 'Toleransi terhadap keberagaman di masyarakat', 5),
(22, 'Penguasaan media dan teknologi pembelajaran', 3),
(23, 'Kemampuan melaksanakan penilaian prestasi belajar mahasiswa', 3),
(24, 'Objektivitas dalam penilaian terhadap mahasiswa', 3),
(25, 'Kesediaan melakukan refleksi dan diskusi permasalahan pembelajaran yang dihadapi dengan kolega', 2),
(26, 'Pelibatan mahasiswa dalam penelitian/kajian dan atau pengembangan/rekayasa/desain yang dialukan oleh dosen', 2),
(27, 'Kemampuan mengikuti perkembangan ipteks untuk pemuktahiran pembelajaran', 2),
(28, 'Keterlibatan dalam kegiatan ilmiah organisasi profesi', 2),
(29, 'Kemampuan melaksanakan tugas dan tanggung jawab dari atasan', 2),
(30, 'Kemampuan bekerja sama dengan atasan', 2),
(31, 'Kemampuan bekerja sama dengan sesama dosen', 2),
(33, 'Berpersepsi positif terhadap kemampuan mahasiswa', 3);

-- --------------------------------------------------------

--
-- Table structure for table `kurikulummdp`
--

CREATE TABLE `kurikulummdp` (
  `Kode_MK` varchar(5) NOT NULL,
  `KODE_MK1` varchar(5) DEFAULT NULL,
  `KODE_MK2` varchar(5) DEFAULT NULL,
  `KODE_MK3` varchar(5) DEFAULT NULL,
  `Keterangan` varchar(50) NOT NULL,
  `Sks` int(2) NOT NULL,
  `SKS_BAYAR` smallint(6) DEFAULT '0',
  `Jenis` varchar(4) NOT NULL,
  `Semester` varchar(2) NOT NULL,
  `Bersyarat` varchar(1) NOT NULL,
  `Prasyarat1` varchar(5) DEFAULT NULL,
  `Prasyarat2` varchar(5) DEFAULT NULL,
  `Prasyarat3` varchar(5) DEFAULT NULL,
  `Prasyarat4` varchar(5) DEFAULT NULL,
  `Praktek` varchar(1) DEFAULT NULL,
  `KodeJrs` varchar(2) NOT NULL,
  `SINGKATAN` varchar(5) NOT NULL,
  `Prasyarat_Lama1` varchar(5) DEFAULT NULL,
  `Prasyarat_Lama2` varchar(5) DEFAULT NULL,
  `Prasyarat_Lama3` varchar(5) DEFAULT NULL,
  `Prasyarat_Lama4` varchar(5) DEFAULT NULL,
  `Prasyarat_Lama1_2` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kurikulummdp`
--

INSERT INTO `kurikulummdp` (`Kode_MK`, `KODE_MK1`, `KODE_MK2`, `KODE_MK3`, `Keterangan`, `Sks`, `SKS_BAYAR`, `Jenis`, `Semester`, `Bersyarat`, `Prasyarat1`, `Prasyarat2`, `Prasyarat3`, `Prasyarat4`, `Praktek`, `KodeJrs`, `SINGKATAN`, `Prasyarat_Lama1`, `Prasyarat_Lama2`, `Prasyarat_Lama3`, `Prasyarat_Lama4`, `Prasyarat_Lama1_2`) VALUES
('AD101', NULL, NULL, NULL, 'Bahasa Indonesia', 2, 0, 'MK', '1', 'T', '', '', '', '', 'Y', '', '', '', '', '', '', NULL),
('AD102', NULL, NULL, NULL, 'Bahasa Inggris Bisnis', 3, 0, 'MK', '1', 'T', '', '', '', '', 'T', '', '', '', '', '', '', NULL),
('AD103', NULL, NULL, NULL, 'Matematika Bisnis', 3, 0, 'MK', '1', 'T', '', '', '', '', 'T', '', '', '', '', '', '', NULL),
('AD104', NULL, NULL, NULL, 'Ekonomi Mikro', 3, 0, 'MK', '1', 'T', '', '', '', '', 'T', '', '', '', '', '', '', NULL),
('AD105', NULL, NULL, NULL, 'Pengantar Manajemen', 3, 0, 'MK', '1', 'T', '', '', '', '', 'T', '', '', '', '', '', '', NULL),
('AD106', NULL, NULL, NULL, 'Pengantar Komputer Bisnis', 3, 0, 'MK', '1', 'T', '', '', '', '', 'T', '', '', '', '', '', '', NULL),
('AD107', NULL, NULL, NULL, 'Peng. Akuntansi Bisnis 1 + Praktikum', 3, 0, 'MK', '1', 'T', '', '', '', '', 'T', '', '', '', '', '', '', NULL),
('AD108', NULL, NULL, NULL, 'Pendidikan Agama', 2, 0, '', '2', 'T', '', '', '', '', 'T', '', '', '', '', '', '', NULL),
('AD109', NULL, NULL, NULL, 'Statistik Bisnis + Praktikum', 3, 0, '', '2', 'T', '', '', '', '', 'Y', 'S1', '-', '', '', '', '', NULL),
('AD110', NULL, NULL, NULL, 'Aplikasi Bisnis SAP', 4, 0, '', '2', 'T', '', '', '', '', 'Y', 'S1', '-', '', '', '', '', NULL),
('AD111', NULL, NULL, NULL, 'Ekonomi Makro', 3, 0, 'MK', '2', 'T', '', '', '', '', 'T', '', '', '', '', '', '', NULL),
('AD112', NULL, NULL, NULL, 'Hukum Bisnis', 3, 0, 'MK', '2', 'T', '', '', '', '', 'T', '', '', '', '', '', '', NULL),
('AD113', NULL, NULL, NULL, 'Peng. Akuntansi Bisnis 2 + Praktikum', 3, 0, 'MK', '2', 'T', 'AD107', '', '', '', 'Y', '', '', '', '', '', '', NULL),
('AD114', NULL, NULL, NULL, 'Pendidikan Kewarganegaraan', 2, 0, 'MK', '2', 'T', '', '', '', '', 'T', '', '', '', '', '', '', NULL),
('AD115', NULL, NULL, NULL, 'Pengantar Perpajakan', 2, 0, 'MK', '2', 'T', '', '', '', '', 'T', '', '', '', '', '', '', NULL),
('AD201', NULL, NULL, NULL, 'Akuntansi Menengah 1 + Praktikum', 3, 0, 'MK', '3', 'Y', 'AD113', '', '', '', 'Y', '', '', '', '', '', '', NULL),
('AD202', NULL, NULL, NULL, 'Etika Bisnis', 3, 0, 'MK', '3', 'T', '', '', '', '', 'T', '', '', '', '', '', '', NULL),
('AD203', NULL, NULL, NULL, 'Akuntansi Sektor Publik', 3, 0, 'MK', '3', 'T', '', '', '', '', 'T', '', '', '', '', '', '', NULL),
('AD204', NULL, NULL, NULL, 'Manajemen Keuangan 1 + Praktikum', 3, 0, 'MK', '3', 'T', 'AD107', '', '', '', 'Y', '', '', '', '', '', '', NULL),
('AD205', NULL, NULL, NULL, 'Akuntansi Biaya + Praktikum', 3, 0, 'MK', '3', 'Y', 'AD113', '', '', '', 'Y', '', '', '', '', '', '', NULL),
('AD206', NULL, NULL, NULL, 'Sistem Informasi Akt. 1', 3, 0, '', '3', 'T', '', '', '', '', 'T', '', '', '', '', '', '', NULL),
('AD207', NULL, NULL, NULL, 'Perpajakan (A1)', 2, 0, 'MK', '3', 'T', 'AD115', '', '', '', 'T', '', '', '', '', '', '', NULL),
('AD208', NULL, NULL, NULL, 'Pajak Bumi dan Bangunan (A2)', 2, 0, 'MK', '3', 'Y', 'AD115', '', '', '', 'T', '', '', '', '', '', '', NULL),
('AD209', NULL, NULL, NULL, 'Akuntansi Manajemen', 3, 0, '', '4', 'Y', 'ad205', '', '', '', 'T', '', '', '', '', '', '', NULL),
('AD210', NULL, NULL, NULL, 'Manajemen Keuangan 2 + Praktikum', 3, 0, '', '4', 'Y', 'AD204', '', '', '', 'T', '', '', '', '', '', '', NULL),
('AD211', NULL, NULL, NULL, 'Pemasaran', 3, 0, '', '4', 'Y', 'AD105', '', '', '', 'T', '', '', '', '', '', '', NULL),
('AD212', NULL, NULL, NULL, 'Anggaran Perusahaan', 3, 0, '', '4', 'T', '', '', '', '', 'T', '', '', '', '', '', '', NULL),
('AD213', NULL, NULL, NULL, 'Akuntansi Menengah 2 + Praktikum', 3, 0, 'MK', '4', 'Y', 'AD201', '', '', '', 'T', '', '', '', '', '', '', NULL),
('AD214', NULL, NULL, NULL, 'Akuntansi Lanjutan 1 + Praktikum (A1) ', 3, 0, 'MK', '4', 'Y', 'AD201', '', '', '', 'T', '', '', '', '', '', '', NULL),
('AD215', NULL, NULL, NULL, 'Sistem Informasi Akt. 2 + Praktikum', 3, 0, 'MK', '4', 'T', 'AD206', '', '', '', 'Y', '', '', '', '', '', '', NULL),
('AD216', NULL, NULL, NULL, 'Akuntansi Lanjutan (A2)', 3, 0, 'MK', '4', 'T', '', '', '', '', 'T', '', '', '', '', '', '', NULL),
('AD217', NULL, NULL, NULL, 'Pajak Penghasilan Orang Pribadi + Pratikum (A2)', 3, 0, 'MK', '4', 'Y', 'AD115', '', '', '', 'T', '', '', '', '', '', '', NULL),
('AD301', NULL, NULL, NULL, 'Pemeriksaan Akuntansi 1', 3, 0, 'MK', '5', 'T', 'AD213', '', '', '', 'T', '', '', '', '', '', '', NULL),
('AD302', NULL, NULL, NULL, 'Aplikasi Akuntansi Komputer', 3, 0, 'MK', '5', 'Y', 'AD201', '', '', '', 'T', '', '', '', '', '', '', NULL),
('AD303', NULL, NULL, NULL, 'Teknik Penyusunan Laporan', 3, 0, 'MK', '5', 'T', '', '', '', '', 'T', '', '', '', '', '', '', NULL),
('AD304', NULL, NULL, NULL, 'Bank & Lembaga Keuangan Lainnya', 3, 0, 'MK', '5', 'T', '', '', '', '', 'T', '', '', '', '', '', '', NULL),
('AD305', NULL, NULL, NULL, 'Akuntansi Lanjutan 2 + Pratikum (A1)', 3, 0, 'MK', '5', 'Y', 'AD214', '', '', '', 'T', '', '', '', '', '', '', NULL),
('AD306', NULL, NULL, NULL, 'Studi Kelayakan Bisnis', 3, 0, 'MK', '5', 'T', '', '', '', '', 'T', '', '', '', '', '', '', NULL),
('AD307', NULL, NULL, NULL, 'Pajak Pertambahan Nilai + Pratikum (A2)', 3, 0, 'MK', '5', 'Y', 'AD115', '', '', '', 'T', '', '', '', '', '', '', NULL),
('AD308', NULL, NULL, NULL, 'Pemeriksaan Akuntansi 2 + Praktikum', 3, 0, 'MK', '6', 'T', 'AD301', '', '', '', 'Y', '', '', '', '', '', '', NULL),
('AD309', NULL, NULL, NULL, 'Kewirausahaan', 2, 0, '', '6', 'Y', 'ad105', '', '', '', 'T', '', '', '', '', '', '', NULL),
('AD310', NULL, NULL, NULL, 'Analisis Laporan Keuangan', 3, 0, 'MK', '6', 'Y', 'ad107', '', '', '', 'T', '', '', '', '', '', '', NULL),
('AD311', NULL, NULL, NULL, 'Magang + Tugas Akhir', 4, 0, 'MK', '6', 'Y', 'AD303', '', '', '', 'T', '', '', '', '', '', '', NULL),
('AK101', NULL, NULL, NULL, 'Pengantar Akuntansi', 4, 0, 'MK', '1', 'T', '', '', '', '', 'T', '', '', '', '', '', '', NULL),
('AK102', NULL, NULL, NULL, 'Akuntansi Menengah', 4, 0, 'MK', '2', 'Y', 'AK101', '', '', '', 'Y', '', '', '', '', '', '', NULL),
('AK201', NULL, NULL, NULL, 'Akuntansi Biaya', 3, 0, 'MK', '3', 'Y', 'AK101', '', '', '', 'T', '', '', '', '', '', '', NULL),
('AK202', NULL, NULL, NULL, 'Perpajakan 1', 3, 0, 'MK', '3', 'Y', '', '', '', '', 'T', 'S1', 'PJK', '', '', '', '', NULL),
('AK204', NULL, NULL, NULL, 'Akuntansi Manajemen', 3, 0, '', '4', 'Y', 'AK201', '', '', '', 'T', '', '', '', '', '', '', NULL),
('AK205', NULL, NULL, NULL, 'Perpajakan 2', 3, 0, 'MK', '6', 'Y', 'AK202', '', '', '', 'T', '', '', '', '', '', '', NULL),
('AK206', NULL, NULL, NULL, 'Pemeriksaan Akuntansi I', 3, 0, '', '4', 'T', '', '', '', '', 'T', '', '', '', '', '', '', NULL),
('AK207', NULL, NULL, NULL, 'Sistem Informasi Akuntansi', 3, 0, '', '4', 'T', 'mj210', '', '', '', 'T', '', '', '', '', '', '', NULL),
('AK208', NULL, NULL, NULL, 'Analisis Laporan Keuangan', 3, 0, 'MK', '4', 'Y', 'MJ202', '', '', '', 'T', '', '', '', '', '', '', NULL),
('AK209', NULL, NULL, NULL, 'Aplikasi Bisnis SAP', 4, 0, 'MK', '3', 'Y', 'EK108', '', '', '', 'T', '', '', '', '', '', '', NULL),
('AK210', NULL, NULL, NULL, 'Akuntansi Biaya', 2, 0, 'MK', '1', 'Y', 'AK101', '', '', '', 'T', '', '', '', '', '', '', NULL),
('AK211', NULL, NULL, NULL, 'Akuntansi Manajemen', 2, 0, '', '4', 'Y', 'AK201', '', '', '', 'T', '', '', '', '', '', '', NULL),
('AK212', NULL, NULL, NULL, 'Pratikum Akuntansi Komputer', 2, 0, 'MK', '3', 'Y', 'AK102', '', '', '', 'Y', '', '', '', '', '', '', NULL),
('AK301', NULL, NULL, NULL, 'Pemeriksaan Akuntansi II', 3, 0, 'MK', '5', 'Y', 'AK206', '', '', '', 'T', '', '', '', '', '', '', NULL),
('AK302', NULL, NULL, NULL, 'Akuntansi Lanjutan', 4, 0, 'MK', '5', 'T', '', '', '', '', 'T', '', '', '', '', '', '', NULL),
('AK303', NULL, NULL, NULL, 'Akuntansi Koperasi dan UKM ', 2, 0, 'MK', '2', 'Y', 'AK101', '', '', '', 'T', '', '', '', '', '', '', NULL),
('AK304', NULL, NULL, NULL, 'Studi Kelayakan Bisnis', 3, 0, 'MK', '5', 'T', '', '', '', '', 'T', '', '', '', '', '', '', NULL),
('AK305', NULL, NULL, NULL, 'Anggaran Perusahaan', 3, 0, 'MK', '5', 'T', '', '', '', '', 'T', '', '', '', '', '', '', NULL),
('AK306', NULL, NULL, NULL, 'Akuntansi Syariah', 3, 0, 'MK', '6', 'T', '', '', '', '', 'T', '', '', '', '', '', '', NULL),
('AK307', NULL, NULL, NULL, 'Teori Akuntansi', 3, 0, '', '6', 'T', '', '', '', '', 'T', '', '', '', '', '', '', NULL),
('AK308', NULL, NULL, NULL, 'Akuntansi Sektor Publik', 3, 0, '', '4', 'T', '', '', '', '', 'T', '', '', '', '', '', '', NULL),
('AK309', NULL, NULL, NULL, 'Sistem Pengendalian Manajemen', 3, 0, '', '6', 'T', '', '', '', '', 'T', '', '', '', '', '', '', NULL),
('AK310', NULL, NULL, NULL, 'Pemeriksaan Manajemen', 3, 0, 'MK', '6', 'T', 'AK301', '', '', '', 'T', '', '', '', '', '', '', NULL),
('AK311', NULL, NULL, NULL, 'Audit Sistem Informasi', 3, 0, 'MK', '5', 'Y', 'AK206', '', '', '', 'T', '', '', '', '', '', '', NULL),
('AK312', NULL, NULL, NULL, 'E-Goverment', 3, 0, 'MK', '6', 'T', '', '', '', '', 'T', '', '', '', '', '', '', NULL),
('AK313', NULL, NULL, NULL, 'Aplikasi Sistem Perpajakan Indonesia', 3, 0, 'MK', '5', 'Y', 'AK205', '', '', '', 'T', '', '', '', '', '', '', NULL),
('AK314', NULL, NULL, NULL, 'Akuntansi Pajak', 3, 0, 'MK', '6', 'Y', 'AK205', '', '', '', 'T', '', '', '', '', '', '', NULL),
('AK315', NULL, NULL, NULL, 'E-Commerce', 3, 0, 'MK', '5', 'Y', 'AK207', '', '', '', 'Y', '', '', '', '', '', '', NULL),
('AK316', NULL, NULL, NULL, 'Akuntansi Perbankan (umum & syariah)', 3, 0, 'MK', '6', 'T', '', '', '', '', 'T', '', '', '', '', '', '', NULL),
('AK317', NULL, NULL, NULL, 'Perpajakan', 3, 0, 'MK', '6', 'T', '', '', '', '', 'T', '', '', '', '', '', '', NULL),
('AK318', NULL, NULL, NULL, 'Analisa Laporan Keuangan', 2, 0, 'MK', '6', 'Y', 'AK101', '', '', '', 'T', '', '', '', '', '', '', NULL),
('AK319', NULL, NULL, NULL, 'Audit Forensik', 3, 0, 'MK', '5', 'Y', 'AK206', '', '', '', 'T', '', '', '', '', '', '', NULL),
('AK401', NULL, NULL, NULL, 'Seminar Akuntansi', 3, 0, 'MK', '7', 'Y', 'Ak307', '', '', '', 'T', '', '', '', '', '', '', NULL),
('AK402', NULL, NULL, NULL, 'Metode Penelitian Akuntansi', 3, 0, 'MK', '7', 'Y', 'EK107', '', '', '', 'T', '', '', '', '', '', '', NULL),
('AK403', NULL, NULL, NULL, 'Analisis Investasi dan Mj. Potofolio', 3, 0, 'MK', '7', 'T', '', '', '', '', 'T', '', '', '', '', '', '', NULL),
('AK404', NULL, NULL, NULL, 'Skripsi', 6, 0, 'MK', '8', 'T', 'AK402', '', '', '', 'T', '', '', '', '', '', '', NULL),
('AK405', NULL, NULL, NULL, 'Ujian Komprehensif', 3, 0, 'MK', '8', 'T', '', '', '', '', 'T', '', '', '', '', '', '', NULL),
('AK406', NULL, NULL, NULL, 'Pemeriksaan Keuangan Pemerintah', 3, 0, 'MK', '7', 'Y', 'AK206', 'Ak308', '', '', 'T', '', '', '', '', '', '', NULL),
('AK407', NULL, NULL, NULL, 'Perpajakan Lanjutan', 3, 0, 'MK', '7', 'Y', 'AK205', '', '', '', 'T', '', '', '', '', '', '', NULL),
('AK408', NULL, NULL, NULL, 'Akuntansi IT dan Solusi Business', 3, 0, 'MK', '7', 'Y', 'AK207', '', '', '', 'T', '', '', '', '', '', '', NULL),
('EK101', NULL, NULL, NULL, 'Pendidikan Agama', 2, 0, 'MK', '2', 'T', '', '', '', '', 'T', '', '', '', '', '', '', NULL),
('EK102', NULL, NULL, NULL, 'Pendidikan Kewarganegaraan', 2, 0, 'MK', '2', 'T', '', '', '', '', 'T', '', '', '', '', '', '', NULL),
('EK103', NULL, NULL, NULL, 'Bahasa Inggris', 2, 0, 'MK', '1', 'T', '', '', '', '', 'T', '', '', '', '', '', '', NULL),
('EK104', NULL, NULL, NULL, 'Bahasa Indonesia', 2, 0, '', '2', 'T', '', '', '', '', 'T', '', '', '', '', '', '', NULL),
('EK105', NULL, NULL, NULL, 'Ekonomi Mikro', 3, 0, 'MK', '1', 'T', '', '', '', '', 'T', '', '', '', '', '', '', NULL),
('EK106', NULL, NULL, NULL, 'Ekonomi Makro', 3, 0, 'MK', '2', 'T', '', '', '', '', 'T', '', '', '', '', '', '', NULL),
('EK107', NULL, NULL, NULL, 'Statistik Bisnis', 3, 0, 'MK', '2', 'T', '', '', '', '', 'T', '', '', '', '', '', '', NULL),
('EK108', NULL, NULL, NULL, 'Paket Program Bisnis', 2, 0, 'MK', '2', 'T', '', '', '', '', 'Y', '', '', '', '', '', '', NULL),
('EK109', NULL, NULL, NULL, 'Internet', 2, 0, 'MK', '1', 'T', '', '', '', '', 'Y', '', '', '', '', '', '', NULL),
('EK110', NULL, NULL, NULL, 'Matematika Bisnis', 3, 0, 'MK', '1', 'T', '', '', '', '', 'T', '', '', '', '', '', '', NULL),
('EK201', NULL, NULL, NULL, 'Bank & Lembaga Keuangan Lainnya', 2, 0, 'MK', '3', 'T', '', '', '', '', 'T', 'S1', 'BLK', '', '', '', '', NULL),
('EK202', NULL, NULL, NULL, 'Aplikasi Statistik Bisnis', 2, 0, 'MK', '3', 'T', '', '', '', '', 'Y', '', '', '', '', '', '', NULL),
('EK203', NULL, NULL, NULL, 'Metode Riset Bisnis', 2, 0, '', '4', 'T', '', '', '', '', 'T', '', '', '', '', '', '', NULL),
('EK301', NULL, NULL, NULL, 'Bisnis Internasional', 2, 0, 'MK', '4', 'T', '', '', '', '', 'T', '', '', '', '', '', '', NULL),
('EK302', NULL, NULL, NULL, 'Perekonomian Indonesia', 2, 0, '', '5', 'T', '', '', '', '', 'T', '', '', '', '', '', '', NULL),
('EK303', NULL, NULL, NULL, 'Bahasa Inggris Bisnis', 2, 0, '', '6', 'T', '', '', '', '', 'T', '', '', '', '', '', '', NULL),
('EK401', NULL, NULL, NULL, 'Bahasa Mandarin', 2, 0, '', '7', 'T', '', '', '', '', 'T', '', '', '', '', '', '', NULL),
('EK402', NULL, NULL, NULL, 'Aplikasi Manajemen Proyek', 2, 0, 'MK', '7', 'Y', 'MJ203', '', '', '', 'Y', '', '', '', '', '', '', NULL),
('EK405', NULL, NULL, NULL, 'Ekonomi Industri', 2, 0, 'MK', '7', 'T', '', '', '', '', 'T', '', '', '', '', '', '', NULL),
('I1101', 'SP102', 'SP131', '', 'Bahasa Inggris I', 2, 2, '', '1', 'T', '', '', '', '', 'T', 'S1', '', '', '', '', '', NULL),
('I1102', 'SP139', 'SP110', '', 'Bahasa Indonesia', 2, 2, '', '1', 'T', '', '', '', '', 'T', 'S1', '', '', '', '', '', NULL),
('I1103', 'SP241', '', '', 'Pengantar Teknologi Informasi', 2, 2, '', '1', 'T', '', '', '', '', 'T', 'S1', '', '', '', '', '', NULL),
('I1104', 'TI201', '', '', 'Kalkulus I', 4, 4, '', '1', 'T', '', '', '', '', 'T', 'S1', '', '', '', '', '', NULL),
('I1105', 'TI210', '', '', 'Aljabar Linier & Matriks', 4, 4, '', '1', 'T', '', '', '', '', 'T', 'S1', '', '', '', '', '', NULL),
('I1106', 'SP247', '', '', 'Paket Program Niaga', 2, 4, '', '1', 'T', '', '', '', '', 'Y', 'S1', '', '', '', '', '', NULL),
('I1107', 'SP243', '', '', 'Dasar Pemrograman', 2, 4, '', '1', 'T', '', '', '', '', 'Y', 'S1', '', '', '', '', '', NULL),
('I1108', '', '', '', 'Logika Informatika', 2, 2, '', '1', 'T', '', '', '', '', 'T', 'S1', '', '', '', '', '', NULL),
('I1201', 'SP104', 'SP133', '', 'Pendidikan Agama Islam', 2, 2, '', '1', 'T', '', '', '', '', 'T', 'S1', '', '', '', '', '', NULL),
('I1202', 'SP105', 'SP134', '', 'Pendidikan Agama Katolik', 2, 2, '', '2', 'T', '', '', '', '', 'T', 'S1', '', '', '', '', '', NULL),
('I1203', 'SP106', 'SP135', '', 'Pendidikan Agama Kristen', 2, 2, '', '2', 'T', '', '', '', '', 'T', 'S1', '', '', '', '', '', NULL),
('I1204', 'SP107', 'SP136', '', 'Pendidikan Agama Budha', 2, 2, '', '2', 'T', '', '', '', '', 'T', 'S1', '', '', '', '', '', NULL),
('I1205', 'SP108', 'SP137', '', 'Pendidikan Agama Hindu', 2, 2, '', '2', 'T', '', '', '', '', 'T', 'S1', '', '', '', '', '', NULL),
('I1206', 'SP244', 'SP216', '', 'Algoritma & Struktur Data I', 3, 4, '', '2', 'Y', 'I1107', '', '', '', 'Y', 'S1', '', 'SP243', '', '', '', NULL),
('I1207', 'SP219', 'SP245', 'TI212', 'Matematika Diskrit', 4, 4, '', '2', 'T', '', '', '', '', 'T', 'S1', '', '', '', '', '', NULL),
('I1208', 'TI202', '', '', 'Kalkulus II', 2, 2, '', '2', 'Y', 'I1104', '', '', '', 'T', 'S1', '', 'TI201', '', '', '', NULL),
('I1209', 'TI310', '', '', 'Pemrograman Berorientasi Objek', 3, 4, 'MK', '2', 'Y', 'I1107', 'SP243', '', '', 'Y', 'S1', '', 'SP215', '', '', '', 'SP215'),
('I1210', 'SP346', '', '', 'Sistem Basis Data', 4, 4, '', '2', 'T', '', '', '', '', 'T', 'S1', '', '', '', '', '', NULL),
('I1211', 'SP354', '', '', 'Arsitektur & Organisasi Komputer', 2, 2, '', '2', 'T', '', '', '', '', 'T', 'S1', '', '', '', '', '', NULL),
('I2101', '', '', '', 'Algoritma & Struktur Data II', 3, 4, '', '3', 'Y', 'I1206', '', '', '', 'Y', 'S1', '', 'SP244', '', '', '', NULL),
('I2102', 'TI323', '', '', 'Jaringan Komputer', 3, 4, '', '3', 'T', '', '', '', '', 'Y', 'S1', '', '', '', '', '', NULL),
('I2103', '', '', '', 'Pemrograman Web I', 3, 4, '', '3', 'T', '', '', '', '', 'Y', 'S1', '', '', '', '', '', NULL),
('I2104', 'SP328', 'SP345', 'TI321', 'Basis Data Terapan', 2, 4, '', '3', 'Y', 'I1210', '', '', '', 'Y', 'S1', '', 'SP325', '', '', '', NULL),
('I2105', 'TI213', '', '', 'Metode Numerik', 2, 2, '', '3', 'Y', 'I1208', '', '', '', 'T', 'S1', '', 'TI202', '', '', '', NULL),
('I2106', 'TI204', 'TI219', '', 'Fisika Dasar', 4, 4, '', '3', 'T', '', '', '', '', 'T', 'S1', '', '', '', '', '', NULL),
('I2107', 'TI304', '', '', 'Teori Bahasa Automata', 2, 2, '', '3', 'T', '', '', '', '', 'T', 'S1', '', '', '', '', '', NULL),
('I2201', 'SP314', '', '', 'Sistem Operasi', 4, 4, '', '4', 'T', '', '', '', '', 'T', 'S1', '', '', '', '', '', NULL),
('I2202', 'TI215', '', '', 'Pengantar Robotika', 2, 2, '', '4', 'Y', 'I1207', '', '', '', 'T', 'S1', '', 'SP245', '', '', '', NULL),
('I2203', 'SP352', 'TI311', '', 'Interaksi Manusia & Komputer', 2, 2, '', '4', 'T', '', '', '', '', 'T', 'S1', '', '', '', '', '', NULL),
('I2204', '', '', '', 'Statistika & Probabilitas', 4, 4, '', '4', 'T', '', '', '', '', 'T', 'S1', '', '', '', '', '', NULL),
('I2205', 'SP323', 'TI326', 'TI327', 'Pemrograman Visual', 2, 4, '', '4', 'Y', 'I2104', '', '', '', 'Y', 'S1', '', 'SP345', '', '', '', NULL),
('I2206', '', '', '', 'Pemrograman Web II', 2, 4, '', '4', 'Y', 'I2103', '', '', '', 'Y', 'S1', '', '', '', '', '', NULL),
('I2207', 'TI322', '', '', 'Kecerdasan Buatan I', 3, 4, '', '4', 'T', '', '', '', '', 'Y', 'S1', '', '', '', '', '', NULL),
('I3101', 'SP240', 'SP318', '', 'Metode Penulisan Ilmiah', 2, 2, '', '5', 'T', '', '', '', '', 'T', 'S1', '', '', '', '', '', NULL),
('I3102', 'SP350', 'TI313', '', 'Rekayasa Perangkat Lunak', 4, 4, '', '5', 'Y', 'I1209', '', '', '', 'T', 'S1', '', 'TI310', '', '', '', NULL),
('I3103', 'SP353', 'TI407', '', 'Keamanan Informasi', 2, 2, '', '5', 'T', '', '', '', '', 'T', 'S1', '', '', '', '', '', NULL),
('I3104', 'TI419', '', '', 'Pengolahan Citra Digital', 3, 4, '', '5', 'T', '', '', '', '', 'Y', 'S1', '', '', '', '', '', NULL),
('I3105', 'TI412', '', '', 'Pemrograman Aplikasi Bergerak I', 2, 4, '', '5', 'Y', 'I1209', '', '', '', 'Y', 'S1', '', 'TI310', '', '', '', NULL),
('I3106', '', '', '', 'Kecerdasan Buatan II', 3, 4, '', '5', 'Y', 'I2207', '', '', '', 'Y', 'S1', '', 'I2207', '', '', '', NULL),
('I3107', 'SP425', 'SP452', '', 'Bahasa Mandarin', 2, 2, '', '5', 'T', '', '', '', '', 'T', 'S1', '', '', '', '', '', NULL),
('I3108', '', '', '', 'Pengetahuan Teknologi Bergerak', 2, 2, '', '5', 'T', '', '', '', '', 'T', 'S1', '', '', '', '', '', NULL),
('I3109', 'SI451', '', '', 'E-Business', 2, 2, '', '5', 'T', '', '', '', '', 'T', 'S1', '', '', '', '', '', NULL),
('I3110', '', '', '', 'Pengantar Teknologi Game', 2, 2, '', '5', 'T', '', '', '', '', 'T', 'S1', '', '', '', '', '', NULL),
('I3111', '', '', '', 'Pemrograman Game I', 2, 4, '', '5', 'Y', 'I1209', '', '', '', 'Y', 'S1', '', 'TI310', '', '', '', NULL),
('I3112', '', '', '', 'Pengenalan Pola & Pembelajaran Mesin', 4, 4, '', '5', 'Y', 'I2105', 'I2204', '', '', 'T', 'S1', '', 'TI213', 'SP246', '', '', NULL),
('I3113', 'TI425', '', '', 'Pemrograman Jaringan', 2, 4, '', '5', 'T', '', '', '', '', 'Y', 'S1', '', '', '', '', '', NULL),
('I3201', 'SP138', 'SP109', '', 'Pendidikan Kewarganegaraan', 2, 2, '', '6', 'T', '', '', '', '', 'T', 'S1', '', '', '', '', '', NULL),
('I3202', 'SP351', '', '', 'Pengujian Perangkat Lunak', 2, 2, '', '6', 'T', '', '', '', '', 'T', 'S1', '', '', '', '', '', NULL),
('I3203', 'TI406', '', '', 'Grafika Komputer', 3, 4, '', '6', 'Y', 'I1105', '', '', '', 'T', 'S1', '', 'TI210', '', '', '', NULL),
('I3204', '', '', '', 'Infrastruktur & Layanan Komputasi Awan', 4, 4, '', '6', 'T', '', '', '', '', 'T', 'S1', '', '', '', '', '', NULL),
('I3205', '', '', '', 'Pemrograman Aplikasi Bergerak II', 2, 4, '', '6', 'Y', 'I3105', '', '', '', 'Y', 'S1', '', 'TI412', '', '', '', NULL),
('I3206', 'TI312', '', '', 'Kerja Praktik', 2, 2, '', '6', 'T', '', '', '', '', 'T', 'S1', '', '', '', '', '', NULL),
('I3207', 'TI416', '', '', 'Kriptografi', 2, 2, '', '6', 'Y', 'I1207', '', '', '', 'T', 'S1', '', 'SP245', '', '', '', NULL),
('I3208', 'TI415', '', '', 'Data Warehouse', 2, 2, '', '6', 'Y', 'I2104', '', '', '', 'T', 'S1', '', 'SP345', '', '', '', NULL),
('I3209', '', '', '', 'Aplikasi Bisnis', 2, 4, '', '6', 'T', '', '', '', '', 'Y', 'S1', '', '', '', '', '', NULL),
('I3210', 'TI427', '', '', 'iOS Programming', 2, 4, '', '6', 'Y', 'I1209', '', '', '', 'Y', 'S1', '', 'TI310', '', '', '', NULL),
('I3211', '', '', '', 'Pemrograman Game II', 2, 4, '', '6', 'Y', 'I3111', 'I3106', '', '', 'Y', 'S1', '', '', '', '', '', NULL),
('I3212', 'TI420', '', '', 'Pemrosesan Teks', 4, 4, '', '6', 'Y', 'I1105', 'I2204', '', '', 'T', 'S1', '', 'TI210', 'SP246', '', '', NULL),
('I3213', 'TI417', '', '', 'Teknik Kompilasi', 4, 4, '', '6', 'Y', 'I2107', '', '', '', 'T', 'S1', '', 'TI304', '', '', '', NULL),
('I3214', 'TI424', '', '', 'Jaringan Komputer Terapan', 2, 4, '', '6', 'Y', 'I2102', '', '', '', 'Y', 'S1', '', 'TI323', '', '', '', NULL),
('I4101', 'SP355', '', '', 'Manajemen Proyek TI', 2, 2, '', '7', 'T', '', '', '', '', 'T', 'S1', '', '', '', '', '', NULL),
('I4102', 'SP101', 'SP130', '', 'Pendidikan Pancasila', 2, 2, '', '7', 'T', '', '', '', '', 'T', 'S1', '', '', '', '', '', NULL),
('I4103', 'SP343', 'SP317', '', 'Kewirausahaan', 2, 2, '', '7', 'T', '', '', '', '', 'T', 'S1', '', '', '', '', '', NULL),
('I4104', 'TI324', '', '', 'Mikroprosesor & Bahasa Rakitan', 3, 4, '', '7', 'Y', 'I1107', '', '', '', 'Y', 'S1', '', 'SP243', '', '', '', NULL),
('I4105', 'TI426', '', '', 'Multimedia', 2, 4, '', '7', 'T', '', '', '', '', 'Y', 'S1', '', '', '', '', '', NULL),
('I4106', '', '', '', 'Pengembangan Aplikasi Pada Platform Khusus', 4, 4, '', '7', 'Y', 'I3205', '', '', '', 'T', 'S1', '', 'TI412', '', '', '', NULL),
('I4107', '', '', '', 'Pengolahan Bahasa Manusia', 2, 2, '', '7', 'T', '', '', '', '', 'T', 'S1', '', '', '', '', '', NULL),
('I4108', '', '', '', 'Strategi Algoritmik', 2, 2, '', '7', 'T', '', '', '', '', 'T', 'S1', '', '', '', '', '', NULL),
('I4109', 'TI214', '', '', 'Teknik Simulasi', 2, 2, '', '7', 'Y', 'I2204', '', '', '', 'T', 'S1', '', 'SP246', '', '', '', NULL),
('I4110', 'TI423', '', '', 'Administrasi Jaringan Komputer', 2, 4, '', '7', 'Y', 'I2102', '', '', '', 'Y', 'S1', '', 'TI323', '', '', '', NULL),
('I4111', '', '', '', 'Keamanan Jaringan', 2, 2, '', '7', 'T', '', '', '', '', 'T', 'S1', '', '', '', '', '', NULL),
('I4201', 'SP330', 'SP344', '', 'Psikologi Dunia Kerja', 2, 2, '', '8', 'T', '', '', '', '', 'T', 'S1', '', '', '', '', '', NULL),
('I4202', 'SP103', 'SP132', '', 'Bahasa Inggris II', 2, 2, '', '8', 'Y', 'I1101', '', '', '', 'T', 'S1', '', 'SP131', '', '', '', NULL),
('I4203', '', '', '', 'Komputer & Masyarakat', 2, 2, '', '8', 'T', '', '', '', '', 'T', 'S1', '', '', '', '', '', NULL),
('I4204', 'TI318', '', '', 'Skripsi', 6, 6, '', '8', 'Y', 'I3101', '', '', '', 'T', 'S1', '', 'SP240', '', '', '', NULL),
('IT001', NULL, NULL, NULL, 'IT Club - Flash', 0, 0, '-', '1', 'T', '', '', '', '', 'Y', '00', 'FLASH', '', '', '', '', NULL),
('J1101', 'MI203', 'SP217', '', 'Pengantar Ekonomi', 2, 2, '', '1', 'T', '', '', '', '', 'T', 'D3', '', '', '', '', '', NULL),
('J1102', 'SP215', '', '', 'Pemrograman Dasar', 2, 4, '', '1', 'T', '', '', '', '', 'Y', 'D3', '', '', '', '', '', NULL),
('J1103', 'SP218', '', '', 'Pengantar Sistem Operasi', 1, 2, '', '1', 'T', '', '', '', '', 'Y', 'D3', '', '', '', '', '', NULL),
('J1104', 'KA203', '', '', 'Dasar Akuntansi', 4, 4, '', '1', 'T', '', '', '', '', 'T', 'D3', '', '', '', '', '', NULL),
('J1105', 'SP219', 'SP245', '', 'Matematika Diskrit', 4, 4, '', '1', 'T', '', '', '', '', 'T', 'D3', '', '', '', '', '', NULL),
('J1106', 'SP139', 'SP110', '', 'Bahasa Indonesia', 3, 2, '', '1', 'T', '', '', '', '', 'T', 'D3', '', '', '', '', '', NULL),
('J1107', 'SP315', '', '', 'Paket Program Niaga', 2, 4, '', '1', 'T', '', '', '', '', 'Y', 'D3', '', '', '', '', '', NULL),
('J1108', 'SP213', '', '', 'Manajemen Umum', 2, 2, '', '1', 'T', '', '', '', '', 'T', 'D3', '', '', '', '', '', NULL),
('J1201', 'SP104', 'SP133', '', 'Pendidikan Agama Islam', 2, 2, '', '2', 'T', '', '', '', '', 'T', 'D3', '', '', '', '', '', NULL),
('J1202', 'SP105', 'SP134', '', 'Pendidikam Agama Katolik', 2, 2, '', '2', 'T', '', '', '', '', 'T', 'D3', '', '', '', '', '', NULL),
('J1203', 'SP106', 'SP135', '', 'Pendidikan Agama Kristen', 2, 2, '', '2', 'T', '', '', '', '', 'T', 'D3', '', '', '', '', '', NULL),
('J1204', 'SP107', 'SP136', '', 'Pendidikan Agama Budha', 2, 2, '', '2', 'T', '', '', '', '', 'T', 'D3', '', '', '', '', '', NULL),
('J1205', 'SP108', 'SP137', '', 'Pendidikan Agama Hindu', 2, 2, '', '2', 'T', '', '', '', '', 'T', 'D3', '', '', '', '', '', NULL),
('J1206', 'SP244', 'SP216', '', 'Logika Algoritma dan Struktur Data', 3, 4, '', '2', 'Y', 'J1102', '', '', '', 'Y', 'D3', '', 'SP215', '', '', '', NULL),
('J1207', 'MI201', '', '', 'Pengantar Teknologi dan Sistem Informasi', 4, 4, '', '2', 'T', '', '', '', '', 'T', 'D3', '', '', '', '', '', NULL),
('J1208', 'SP211', '', '', 'Aljabar Liniear', 2, 2, '', '2', 'T', '', '', '', '', 'T', 'D3', '', '', '', '', '', NULL),
('J1209', 'SP346', 'SP325', '', 'Sistem Basis Data', 4, 4, '', '2', 'T', '', '', '', '', 'T', 'D3', '', '', '', '', '', NULL),
('J1210', 'SP425', 'SP452', '', 'Bahasa Mandarin', 2, 2, '', '2', 'T', '', '', '', '', 'T', 'D3', '', '', '', '', '', NULL),
('J1211', 'SP322', '', '', 'Statistika', 3, 4, '', '2', 'T', '', '', '', '', 'T', 'D3', '', '', '', '', '', NULL),
('J2101', 'SP102', 'SP131', '', 'Bahasa Inggris I', 2, 2, '', '3', 'T', '', '', '', '', 'T', 'D3', '', '', '', '', '', NULL),
('J2102', 'MI323', '', '', 'Komunikasi Data', 2, 2, '', '3', 'T', '', '', '', '', 'T', 'D3', '', '', '', '', '', NULL),
('J2103', '', '', '', 'Pemrograman Web I', 2, 4, '', '3', 'T', '', '', '', '', 'Y', 'D3', '', '', '', '', '', NULL),
('J2104', 'KA309', '', '', 'Aplikasi Akuntansi', 2, 4, '', '3', 'T', '', '', '', '', 'Y', 'D3', '', '', '', '', '', NULL),
('J2105', 'MI310', '', '', 'Basis Data Terapan', 2, 4, '', '3', 'Y', 'J1209', '', '', '', 'Y', 'D3', '', 'SP325', '', '', '', NULL),
('J2106', 'MI316', '', '', 'Analisis Sistem Informasi', 4, 4, '', '3', 'T', '', '', '', '', 'T', 'D3', '', '', '', '', '', NULL),
('J2107', 'SP331', '', '', 'Pemrograman Berorientasi Objek', 2, 4, '', '3', 'T', '', '', '', '', 'Y', 'D3', '', '', '', '', '', NULL),
('J2108', 'MI405', '', '', 'Manajemen Keuangan', 2, 2, '', '3', 'T', '', '', '', '', 'T', 'D3', '', '', '', '', '', NULL),
('J2109', 'MI406', '', '', 'Manajemen Sumber Daya Manusia', 2, 2, '', '3', 'T', '', '', '', '', 'T', 'D3', '', '', '', '', '', NULL),
('J2110', 'SP428', '', '', 'Manajemen Pemasaran', 2, 2, '', '3', 'T', '', '', '', '', 'T', 'D3', '', '', '', '', '', NULL),
('J2111', 'MI318', '', '', 'Perilaku Organisasi', 2, 2, '', '3', 'T', '', '', '', '', 'T', 'D3', '', '', '', '', '', NULL),
('J2201', '', '', '', 'Aplikasi Bisnis', 2, 4, '', '4', 'T', '', '', '', '', 'Y', 'D3', '', '', '', '', '', NULL),
('J2202', '', '', '', 'Multimedia', 2, 4, '', '4', 'T', '', '', '', '', 'Y', 'D3', '', '', '', '', '', NULL),
('J2203', 'MI313', '', '', 'Pemrograman Visual I', 2, 4, '', '4', 'Y', 'J2105', '', '', '', 'Y', 'D3', '', 'SP328', '', '', '', NULL),
('J2204', '', '', '', 'Pemrograman Web II', 2, 4, '', '4', 'Y', 'J2103', '', '', '', 'Y', 'D3', '', 'SP320', '', '', '', NULL),
('J2205', 'MI317', '', '', 'Perancangan Sistem Informasi', 4, 4, '', '4', 'Y', 'J2106', '', '', '', 'T', 'D3', '', 'SP321', '', '', '', NULL),
('J2206', 'SP103', 'SP132', '', 'Bahasa Inggris II', 2, 2, '', '4', 'Y', 'J2101', '', '', '', 'T', 'D3', '', 'SP111', '', '', '', NULL),
('J2207', 'MI315', '', '', 'Sistem Informasi Manajemen', 4, 4, '', '4', 'T', '', '', '', '', 'T', 'D3', '', '', '', '', '', NULL),
('J2208', '', '', '', 'Sistem Operasi Lanjut', 2, 4, '', '4', 'T', '', '', '', '', 'Y', 'D3', '', '', '', '', '', NULL),
('J2209', '', '', '', 'Adm dan Keamanan Basis Data', 2, 4, '', '4', 'T', '', '', '', '', 'Y', 'D3', '', '', '', '', '', NULL),
('J3101', 'MI311', '', '', 'Pengelolaan Instalasi Komputer', 2, 2, '', '5', 'T', '', '', '', '', 'T', 'D3', '', '', '', '', '', NULL),
('J3102', 'MI314', '', '', 'Pemrograman Visual II', 2, 4, '', '5', 'Y', 'J2203', '', '', '', 'Y', 'D3', '', 'SP323', '', '', '', NULL),
('J3103', 'SP343', 'SP317', '', 'Kewirausahaan', 2, 2, '', '5', 'T', '', '', '', '', 'T', 'D3', '', '', '', '', '', NULL),
('J3104', 'MI416', 'MI417', '', 'Pemrograman Aplikasi Bergerak', 2, 4, '', '5', 'Y', 'J2204', 'J2107', '', '', 'Y', 'D3', '', 'SP329', 'SP331', '', '', 'SP329'),
('J3105', 'MI412', '', '', 'Sistem Pendukung Keputusan', 2, 2, '', '5', 'T', '', '', '', '', 'T', 'D3', '', '', '', '', '', NULL),
('J3106', 'KA412', '', '', 'Tata Tulis Karya Ilmiah', 2, 2, '', '5', 'T', '', '', '', '', 'T', 'D3', '', '', '', '', '', NULL),
('J3107', '', '', '', 'Kerja Praktik', 2, 2, '', '5', 'T', '', '', '', '', 'Y', 'D3', '', '', '', '', '', NULL),
('J3108', 'SP427', '', '', 'Pemrograman Web Lanjut', 2, 2, '', '5', 'Y', 'J2204', '', '', '', 'Y', 'D3', '', 'SP320', '', '', '', NULL),
('J3109', 'MI411', '', '', 'Pengelolaan Jaringan Komputer', 2, 4, '', '5', 'T', '', '', '', '', 'Y', 'D3', '', '', '', '', '', NULL),
('J3201', 'SP330', '', '', 'Psikologi Dunia Kerja', 2, 2, '', '6', 'T', '', '', '', '', 'T', 'S1', '', '', '', '', '', NULL),
('J3202', 'MI322', '', '', 'Pengelolaan Proyek SI', 3, 4, '', '6', 'T', '', '', '', '', 'T', 'D3', '', '', '', '', '', NULL),
('J3203', 'SP342', '', '', 'E-Commerce', 2, 4, '', '6', 'T', '', '', '', '', 'Y', 'D3', '', '', '', '', '', NULL),
('J3204', '', '', '', 'Pendidikan Pancasila dan Kewarganegaraan', 3, 2, '', '6', 'T', '', '', '', '', 'T', 'D3', '', '', '', '', '', NULL),
('J3205', 'MI319', '', '', 'Tugas Akhir', 4, 4, '', '6', 'Y', 'J2205', '', '', '', 'Y', 'D3', '', 'SP326', '', '', '', NULL),
('J3206', '', '', '', 'Etika Profesi', 2, 2, '', '6', 'T', '', '', '', '', 'T', 'D3', '', '', '', '', '', NULL),
('J3207', 'MI414', '', '', 'Komunikasi Antar Personal', 2, 2, '', '6', 'T', '', '', '', '', 'T', 'D3', '', '', '', '', '', NULL),
('J3208', 'MI415', '', '', 'Manajemen Hubungan Pelanggan', 2, 2, '', '6', 'T', '', '', '', '', 'T', 'D3', '', '', '', '', '', NULL),
('K1101', 'SP139', 'SP110', '', 'Bahasa Indonesia', 3, 2, '', '1', 'T', '', '', '', '', 'Y', 'D3', '', '', '', '', '', NULL),
('K1102', 'SP102', 'SP131', '', 'Bahasa Inggris I', 2, 2, '', '1', 'T', '', '', '', '', 'T', 'D3', '', '', '', '', '', NULL),
('K1103', 'SP241', '', '', 'Pengantar Teknologi Informasi', 2, 2, '', '1', 'T', '', '', '', '', 'Y', 'D3', '', '', '', '', '', NULL),
('K1104', 'KA203', '', '', 'Akuntansi Dasar', 4, 4, '', '1', 'T', '', '', '', '', 'Y', 'D3', '', '', '', '', '', NULL),
('K1105', 'SP215', '', '', 'Pemrograman Dasar', 2, 4, '', '1', 'T', '', '', '', '', 'Y', 'D3', '', '', '', '', '', NULL),
('K1106', 'KA203', '', '', 'Dasar Komputer', 1, 2, '', '1', 'T', '', '', '', '', 'Y', 'D3', '', '', '', '', '', NULL),
('K1107', 'KA204', '', '', 'Matematika Ekonomi', 3, 4, '', '1', 'T', '', '', '', '', 'Y', 'D3', '', '', '', '', '', NULL),
('K1108', '', '', '', 'Komunikasi Data', 3, 2, '', '1', 'T', '', '', '', '', 'Y', 'D3', '', '', '', '', '', NULL),
('K1201', 'SP104', 'SP133', '', 'Pendidikan Agama Islam', 2, 2, '', '2', 'T', '', '', '', '', 'T', 'D3', '', '', '', '', '', NULL),
('K1202', 'SP105', 'SP134', '', 'Pendidikan Agama Katolik', 2, 2, '', '2', 'T', '', '', '', '', 'T', 'D3', '', '', '', '', '', NULL),
('K1203', 'SP106', 'SP135', '', 'Pendidikan Agama Kristen', 2, 2, '', '2', 'T', '', '', '', '', 'T', 'D3', '', '', '', '', '', NULL),
('K1204', 'SP107', 'SP136', '', 'Pendidikan Agama Budha', 2, 2, '', '2', 'T', '', '', '', '', 'T', 'D3', '', '', '', '', '', NULL),
('K1205', 'SP108', 'SP137', '', 'Pendidikan Agama Hindu', 2, 2, '', '2', 'T', '', '', '', '', 'T', 'D3', '', '', '', '', '', NULL),
('K1206', 'KA301', '', '', 'Akuntansi Menengah', 3, 4, '', '2', 'Y', 'K1104', '', '', '', 'Y', 'D3', '', 'K1104', '', '', '', NULL),
('K1207', 'SP217', '', '', 'Pengantar Ekonomi', 2, 2, '', '2', 'T', '', '', '', '', 'Y', 'D3', '', '', '', '', '', NULL),
('K1208', 'SP320', '', '', 'Pemrograman Web Dasar', 2, 4, '', '2', 'T', '', '', '', '', 'Y', 'D3', '', '', '', '', '', NULL),
('K1209', 'SP244', 'SP216', '', 'Logika Algoritma & Struktur Data', 3, 4, '', '2', 'Y', 'K1105', '', '', '', 'Y', 'D3', '', 'SP215', '', '', '', NULL),
('K1210', 'KA304', '', '', 'Sistem Informasi Manajemen', 2, 2, '', '2', 'T', '', '', '', '', 'T', 'D3', '', '', '', '', '', NULL),
('K1211', 'SP316', 'SP247', '', 'Paket Program Niaga', 2, 4, '', '2', 'T', '', '', '', '', 'Y', 'D3', '', '', '', '', '', NULL),
('K1212', 'KA308', '', '', 'Sistem Basis Data', 4, 4, '', '2', 'T', '', '', '', '', 'Y', 'D3', '', '', '', '', '', NULL),
('K2101', '', '', '', 'Analisis dan Perancangan SI', 4, 4, '', '3', 'Y', 'K1210', '', '', '', 'Y', 'D3', '', 'SP319', '', '', '', NULL),
('K2102', 'KA302', '', '', 'Akuntansi Biaya', 3, 4, '', '3', 'Y', 'K1206', '', '', '', 'Y', 'D3', '', 'KA301', '', '', '', NULL),
('K2103', 'KA309', '', '', 'Aplikasi Akuntansi', 2, 4, '', '3', 'Y', 'K1104', '', '', '', 'Y', 'D3', '', 'KA203', '', '', '', NULL),
('K2104', 'KA319', 'KA315', '', 'Pemrograman Visual I', 2, 4, '', '3', 'T', '', '', '', '', 'Y', 'D3', '', '', '', '', '', NULL),
('K2105', 'SP322', '', '', 'Statistika', 3, 2, '', '3', 'T', '', '', '', '', 'Y', 'D3', '', '', '', '', '', NULL),
('K2106', '', '', '', 'Pemrograman Berorientasi Objek', 2, 4, '', '3', 'T', '', '', '', '', 'Y', 'D3', '', '', '', '', '', NULL),
('K2107', 'SP328', 'SP345', 'KA321', 'Basis Data Terapan', 2, 4, '', '3', 'Y', 'K1212', '', '', '', 'Y', 'D3', '', 'KA308', '', '', '', NULL),
('K2108', 'SP214', '', '', 'Perilaku Dalam Berorganisasi', 2, 2, '', '3', 'T', '', '', '', '', 'T', 'D3', '', '', '', '', '', NULL),
('K2201', 'KA316', '', '', 'Pemrograman Visual II', 2, 4, '', '4', 'Y', 'K2104', '', '', '', 'Y', 'D3', '', 'KA316', '', '', '', NULL),
('K2202', 'KA413', '', '', 'Aplikasi Bisnis', 2, 4, '', '4', 'T', '', '', '', '', 'Y', 'D3', '', '', '', '', '', NULL),
('K2203', '', '', '', 'Pemeriksaan Akuntansi', 3, 2, '', '4', 'T', '', '', '', '', 'Y', 'D3', '', '', '', '', '', NULL),
('K2204', 'KA320', '', '', 'Akuntansi Lanjutan', 3, 4, '', '4', 'Y', 'K1206', '', '', '', 'Y', 'D3', '', 'KA301', '', '', '', NULL),
('K2205', '', '', '', 'Multimedia', 2, 4, '', '4', 'T', '', '', '', '', 'Y', 'D3', '', '', '', '', '', NULL),
('K2206', 'KA311', '', '', 'Sistem Informasi Akuntansi', 3, 2, '', '4', 'T', '', '', '', '', 'Y', 'D3', '', '', '', '', '', NULL),
('K2207', 'KA407', '', '', 'Manajemen Keuangan', 3, 2, '', '4', 'T', '', '', '', '', 'Y', 'D3', '', '', '', '', '', NULL),
('K2208', 'KA404', '', '', 'Akuntansi Manajemen', 2, 2, '', '4', 'Y', 'K2102', '', '', '', 'T', 'D3', '', 'KA302', '', '', '', NULL),
('K2209', '', '', '', 'Akuntansi Syariah', 2, 2, '', '4', 'T', '', '', '', '', 'T', 'D3', '', '', '', '', '', NULL),
('K2210', '', '', '', 'Pemrograman Berorientasi Objek Lanjt', 2, 4, '', '4', 'Y', 'K2106', '', '', '', 'Y', 'D3', '', 'SP331', '', '', '', NULL),
('K2211', 'KA403', '', '', 'E-Commerce', 2, 4, '', '4', 'T', '', '', '', '', 'Y', 'D3', '', '', '', '', '', NULL),
('K3101', 'KA412', '', '', 'Tata Tulis Karya Ilmiah', 2, 2, '', '5', 'T', '', '', '', '', 'Y', 'D3', '', '', '', '', '', NULL),
('K3102', 'KA410', '', '', 'Analisa Laporan Keuangan', 3, 2, '', '5', 'T', '', '', '', '', 'T', 'D3', '', '', '', '', '', NULL),
('K3103', 'SP212', 'SP424', '', 'Perpajakan', 4, 4, '', '5', 'T', '', '', '', '', 'Y', 'D3', '', '', '', '', '', NULL),
('K3104', 'SP103', 'SP132', '', 'Bahasa Inggris II', 2, 2, '', '5', 'Y', 'K1102', '', '', '', 'Y', 'D3', '', 'SP111', '', '', '', NULL),
('K3105', 'SP343', 'SP317', '', 'Kewirausahaan', 2, 2, '', '5', 'T', '', '', '', '', 'T', 'D3', '', '', '', '', '', NULL),
('K3106', '', '', '', 'Aplikasi Audit', 1, 2, '', '5', 'Y', 'K2203', '', '', '', 'T', 'D3', '', 'SP212', '', '', '', NULL),
('K3107', '', '', '', 'Kerja Praktik', 2, 2, '', '5', 'T', '', '', '', '', 'Y', 'D3', '', '', '', '', '', NULL),
('K3108', 'KA409', '', '', 'Perbankan', 2, 2, '', '5', 'T', '', '', '', '', 'T', 'D3', '', '', '', '', '', NULL),
('K3109', 'KA405', '', '', 'Audit Sistem Akuntansi', 2, 2, '', '5', 'T', '', '', '', '', 'T', 'D3', '', '', '', '', '', NULL),
('K3110', '', '', '', 'Pemrograman Aplikasi Bergerak', 2, 4, '', '5', 'Y', 'K1208', '', '', '', 'Y', 'D3', '', 'SP320', '', '', '', NULL),
('K3111', 'SP427', '', '', 'Pemrograman Web Lanjut', 2, 4, '', '5', 'Y', 'K1208', '', '', '', 'Y', 'D3', '', 'SP320', '', '', '', NULL),
('K3201', '', '', '', 'Aplikasi Sistem Perpajakan Indonesia', 1, 2, '', '6', 'Y', 'K3103', '', '', '', 'Y', 'D3', '', 'SP212', '', '', '', NULL),
('K3202', 'SP344', '', '', 'Psikologi Dunia Kerja', 2, 2, '', '6', 'T', '', '', '', '', 'T', 'D3', '', '', '', '', '', NULL),
('K3203', 'SP425', 'SP452', '', 'Bahasa Mandarin', 2, 2, '', '6', 'T', '', '', '', '', 'T', 'D3', '', '', '', '', '', NULL),
('K3204', '', '', '', 'Pendidikan Pancasila & Kewarganegaraan', 3, 2, '', '6', 'T', '', '', '', '', 'Y', 'D3', '', '', '', '', '', NULL),
('K3205', 'KA318', '', '', 'Tugas Akhir', 4, 4, '', '6', 'Y', 'K3101', '', '', '', 'Y', 'D3', '', 'KA412', '', '', '', NULL),
('KA201', '', '', '', 'Pengantar Ekonomi', 4, 4, '', '1', 'T', '', '', '', '', 'T', 'D3', 'PENEK', '', '', '', '', NULL),
('KA202', '', '', '', 'Pengenalan PDE', 2, 2, '', '1', 'T', '', '', '', '', 'T', 'D3', 'PPDE', '', '', '', '', NULL),
('KA203', '', '', '', 'Dasar Akuntansi', 4, 4, '', '1', 'T', '', '', '', '', 'T', 'D3', 'DASAK', '', '', '', '', NULL),
('KA204', '', '', '', 'Matematika Ekonomi', 4, 4, '', '2', 'T', '', '', '', '', 'T', 'D3', 'MATEK', '', '', '', '', NULL),
('KA205', '', '', '', 'Statistik Ekonomi', 2, 2, '', '3', 'T', '', '', '', '', 'T', 'D3', 'STAEK', '', '', '', '', NULL),
('KA206', '', '', '', 'Praktikum Akuntansi Dasar', 2, 2, 'MK', '2', 'Y', 'KA203', '', '', '', 'T', 'D3', '', '', '', '', '', NULL),
('KA301', '', '', '', 'Akuntansi Menengah', 4, 4, 'MK', '2', 'Y', 'KA203', '', '', '', 'T', 'D3', 'AKMEN', '', '', '', '', NULL),
('KA302', '', '', '', 'Akuntansi Biaya', 4, 4, 'MK', '3', 'T', '', '', '', '', 'T', 'D3', 'AKBIA', '', '', '', '', NULL),
('KA303', '', '', '', 'Akuntansi Lanjutan', 2, 2, 'MK', '4', 'T', '', '', '', '', 'T', 'D3', 'AKLAN', '', '', '', '', NULL),
('KA304', '', '', '', 'Sistem Informasi Manajemen', 4, 4, 'MK', '2', 'T', '', '', '', '', 'T', 'D3', 'SIIMA', '', '', '', '', NULL),
('KA305', '', '', '', 'Analisa Sistem Informasi', 4, 4, 'MK', '3', 'Y', 'KA304', '', '', '', 'T', 'D3', 'ASIFO', '', '', '', '', NULL),
('KA306', '', '', '', 'Perancangan Sistem Informasi', 4, 4, 'MK', '5', 'Y', 'KA305', '', '', '', 'T', 'D3', 'PSIFO', '', '', '', '', NULL),
('KA307', '', '', '', 'Pengantar Komunikasi Data', 2, 2, 'MK', '5', 'T', '', '', '', '', 'T', 'D3', 'PKODA', '', '', '', '', NULL),
('KA308', '', '', '', 'Sistem Basis Data', 4, 4, 'MK', '3', 'T', '', '', '', '', 'T', 'D3', 'SIBDA', '', '', '', '', NULL),
('KA309', '', '', '', 'Aplikasi Akuntansi', 2, 2, 'MK', '3', 'T', '', '', '', '', 'Y', 'D3', 'APLAK', '', '', '', '', NULL),
('KA310', '', '', '', 'Sistem Akuntansi', 4, 4, 'MK', '4', 'T', '', '', '', '', 'T', 'D3', 'SISAK', '', '', '', '', NULL),
('KA311', '', '', '', 'Sistem Informasi Akuntansi', 2, 2, 'MK', '5', 'T', '', '', '', '', 'T', 'D3', 'SIFAK', '', '', '', '', NULL),
('KA312', '', '', '', 'Pemeriksaan Akuntansi', 2, 2, 'MK', '5', 'T', '', '', '', '', 'T', 'D3', 'PEMAK', '', '', '', '', NULL),
('KA313', '', '', '', 'Pemrograman Cobol', 4, 4, 'MK', '2', 'T', '', '', '', '', 'Y', 'D3', 'COBOL', '', '', '', '', NULL),
('KA314', '', '', '', 'Pemrograman Terstruktur', 4, 4, 'MK', '2', 'T', '', '', '', '', 'Y', 'D3', 'PETER', '', '', '', '', NULL),
('KA315', '', '', '', 'Pemrograman Visual I', 2, 2, 'MK', '3', 'T', '', '', '', '', 'Y', 'D3', 'PVIS1', '', '', '', '', NULL),
('KA316', '', '', '', 'Pemrograman Visual II', 4, 4, 'MK', '4', 'T', '', '', '', '', 'Y', 'D3', 'PVIS2', '', '', '', '', NULL),
('KA317', '', '', '', 'Pengelolaan Instalasi Komputer', 2, 2, 'MK', '6', 'T', '', '', '', '', 'T', 'D3', 'PIKOM', '', '', '', '', NULL),
('KA318', '', '', '', 'Tugas Akhir', 4, 4, 'MK', '5', 'T', '', '', '', '', 'T', 'D3', 'TUHIR', '', '', '', '', NULL),
('KA319', '', '', '', 'Pemrograman Visual I', 2, 2, 'MK', '3', 'T', '', '', '', '', 'Y', 'D3', 'VIS1', '', '', '', '', NULL),
('KA320', '', '', '', 'Akuntansi Lanjutan ', 4, 4, 'MK', '4', 'T', '', '', '', '', 'T', 'D3', '-', '', '', '', '', NULL),
('KA321', '', '', '', 'Basis Data Terapan ', 2, 2, 'MK', '4', 'Y', 'KA308', '', '', '', 'Y', 'D3', '-', '', '', '', '', NULL),
('KA322', '', '', '', 'Pemrograman Akuntansi', 2, 2, 'MK', '5', 'Y', 'KA316', '', '', '', 'Y', 'D3', '', '', '', '', '', NULL),
('KA323', '', '', '', 'Sistem Akuntansi', 2, 2, 'MK', '4', 'T', '', '', '', '', 'T', '', '', '', '', '', '', NULL),
('KA401', '', '', '', 'Jaringan Komputer', 2, 2, '', '3', 'T', '', '', '', '', 'Y', 'D3', 'JARKO', '', '', '', '', NULL),
('KA402', '', '', '', 'Perancangan Web', 2, 2, '', '4', 'T', '', '', '', '', 'Y', 'D3', 'WEB', '', '', '', '', NULL),
('KA403', '', '', '', 'E-Commerce', 2, 2, '', '3', 'T', '', '', '', '', 'T', 'D3', 'ECOMM', '', '', '', '', NULL),
('KA404', '', '', '', 'Akuntansi Manajemen', 2, 2, 'MK', '5', 'T', '', '', '', '', 'T', 'D3', 'AKMEN', '', '', '', '', NULL),
('KA405', '', '', '', 'Audit Sistem Informasi', 2, 2, '', '6', 'Y', 'KA312', '', '', '', 'T', 'D3', 'AUSFO', '', '', '', '', NULL),
('KA407', '', '', '', 'Manajemen Keuangan', 2, 2, 'MK', '4', 'T', '', '', '', '', 'T', '', '', '', '', '', '', NULL),
('KA408', '', '', '', 'Pemrograman Web', 2, 2, '', '5', 'Y', 'SP422', '', '', '', 'Y', 'D3', '-', '', '', '', '', NULL),
('KA409', '', '', '', 'Perbankan', 2, 2, 'MK', '3', 'T', '', '', '', '', 'T', 'D3', 'PBANK', '', '', '', '', NULL),
('KA410', '', '', '', 'Analisa Laporan Keuangan', 2, 2, 'MK', '5', 'T', '', '', '', '', 'T', 'D3', 'ALK', '', '', '', '', NULL),
('KA411', '', '', '', 'Pasar Modal', 2, 2, 'MK', '5', 'T', '', '', '', '', 'T', 'D3', 'PM', '', '', '', '', NULL),
('KA412', '', '', '', 'Metode Penulisan Ilmiah', 2, 2, 'MK', '6', 'T', '', '', '', '', 'T', 'S1', '-', '', '', '', '', NULL),
('KA413', '', '', '', 'Aplikasi Bisnis SAP', 4, 4, '', '5', 'T', '', '', '', '', 'Y', '', '', '', '', '', '', NULL),
('M2302', '', '', '', 'Manajemen Pemasaran', 3, 3, 'MK', '3', 'Y', 'M1106', '', '', '', 'T', 'S1', '-', 'MJ102', '', '', '', NULL),
('M2308', '', '', '', 'Lingkungan Bisnis', 3, 3, 'MK', '3', 'Y', '', '', '', '', 'T', 'S1', '-', 'MJ105', '', '', '', NULL),
('M3503', '', '', '', 'Manajemen Strategis', 3, 3, 'MK', '5', 'Y', 'M2303', 'A1209', 'A1207', '', 'T', 'S1', '-', 'MJ203', 'M2304', 'MJ201', '', NULL),
('M3508', '', '', '', 'Manajemen Promosi dan Periklanan', 2, 2, 'MK', '5', 'Y', 'M2302', '', '', '', 'T', 'S1', '-', 'MJ201', '', '', '', NULL),
('M3511', '', '', '', 'Manajemen Risiko', 2, 2, 'MK', '5', 'Y', 'M2304', '', '', '', 'T', 'S1', '-', 'MJ202', '', '', '', NULL),
('MI201', '', '', '', 'Pengantar Teknologi Informasi', 2, 2, 'MK', '1', 'T', '', '', '', '', 'T', 'D3', 'PTEFO', '', '', '', '', NULL),
('MI202', '', '', '', 'Kalkulus', 4, 4, '', '1', 'T', '', '', '', '', 'T', 'D3', 'KAKUL', '', '', '', '', NULL),
('MI203', '', '', '', 'Pengantar Ekonomi', 2, 2, 'MK', '1', 'T', '', '', '', '', 'T', 'D3', 'PENEK', '', '', '', '', NULL),
('MI204', '', '', '', 'Pemrograman Pascal ', 4, 4, 'MK', '2', 'T', 'SP210', '', '', '', 'Y', 'D3', 'PASCA', '', '', '', '', NULL),
('MI301', '', '', '', 'Sistem Operasi I', 2, 2, 'MK', '2', 'T', '', '', '', '', 'T', 'D3', 'SIOP1', '', '', '', '', NULL),
('MI302', '', '', '', 'Statistik Deskriptif', 2, 2, 'MK', '2', 'T', '', '', '', '', 'T', 'D3', 'STADE', '', '', '', '', NULL),
('MI303', '', '', '', 'Statistika Probabilitas', 4, 4, 'MK', '3', 'Y', 'MI302', '', '', '', 'T', 'D3', 'STABA', '', '', '', '', NULL),
('MI304', '', '', '', 'Organisasi Komputer', 2, 2, 'MK', '3', 'T', '', '', '', '', 'T', 'D3', 'ORKOM', '', '', '', '', NULL),
('MI305', '', '', '', 'Komunikasi Data', 4, 4, 'MK', '3', 'T', '', '', '', '', 'T', 'D3', 'KOMDA', '', '', '', '', NULL),
('MI306', '', '', '', 'Struktur Data', 4, 4, 'MK', '3', 'Y', 'MI204', '', '', '', 'Y', 'D3', 'STDAT', '', '', '', '', NULL),
('MI307', '', '', '', 'Pemrograman Cobol', 4, 4, 'MK', '4', 'T', '', '', '', '', 'Y', 'D3', 'COBOL', '', '', '', '', NULL),
('MI308', '', '', '', 'Sistem Basis Data I', 2, 2, 'MK', '4', 'Y', 'MI309', '', '', '', 'T', 'D3', 'SBD01', '', '', '', '', NULL),
('MI309', '', '', '', 'Sistem Basis Data II', 2, 2, 'MK', '5', 'Y', 'MI308', '', '', '', 'T', 'D3', 'SBD02', '', '', '', '', NULL),
('MI310', '', '', '', 'Basis Data Terapan', 2, 2, 'MK', '5', 'T', '', '', '', '', 'Y', 'D3', 'BDTER', '', '', '', '', NULL),
('MI311', '', '', '', 'Pengelolaan Instalasi Komputer', 2, 2, 'MK', '4', 'T', '', '', '', '', 'T', 'D3', 'PIKOM', '', '', '', '', NULL),
('MI312', '', '', '', 'Pemrograman Terstruktur', 4, 4, 'MK', '3', 'T', '', '', '', '', 'Y', 'D3', 'PETER', '', '', '', '', NULL),
('MI313', '', '', '', 'Pemrograman Visual I', 2, 2, 'MK', '4', 'T', '', '', '', '', 'T', 'D3', 'PVI01', '', '', '', '', NULL),
('MI314', '', '', '', 'Pemrograman Visual II', 4, 4, 'MK', '5', 'Y', 'MI313', '', '', '', 'Y', 'D3', 'PVI02', '', '', '', '', NULL),
('MI315', '', '', '', 'Sistem Informasi Manajemen', 4, 4, 'MK', '4', 'T', '', '', '', '', 'T', 'D3', 'SIFMA', '', '', '', '', NULL),
('MI316', '', '', '', 'Analisis Sistem Informasi', 4, 4, 'MK', '4', 'T', '', '', '', '', 'T', 'D3', 'ASIFO', '', '', '', '', NULL),
('MI317', '', '', '', 'Perancangan Sistem Informasi', 4, 4, 'MK', '6', 'Y', 'MI316', '', '', '', 'T', 'D3', 'PSIFO', '', '', '', '', NULL),
('MI318', '', '', '', 'Perilaku Dalam Berorganisasi', 2, 2, 'MK', '6', 'T', '', '', '', '', 'T', 'D3', 'PDORG', '', '', '', '', NULL),
('MI319', '', '', '', 'Tugas Akhir', 4, 4, 'MK', '5', 'Y', 'SP326', '', '', '', 'T', 'D3', 'TUHIR', '', '', '', '', NULL),
('MI320', '', '', '', 'Pemrograman Dasar', 4, 4, 'MK', '2', 'T', '', '', '', '', 'Y', '', '', '', '', '', '', NULL),
('MI321', '', '', '', 'Pemrograman Lanjut', 4, 4, 'MK', '3', 'T', '', '', '', '', 'T', 'D3', '-', '', '', '', '', NULL),
('MI322', '', '', '', 'Pengelolaan Proyek Sistem Informasi', 4, 4, 'MK', '6', 'T', '', '', '', '', 'Y', '', '', '', '', '', '', NULL),
('MI323', '', '', '', 'Komunikasi Data', 2, 2, '', '4', 'T', '', '', '', '', 'T', 'S1', '-', '', '', '', '', NULL),
('MI324', '', '', '', 'Pemrograman Lanjut', 4, 4, '', '3', 'T', '', '', '', '', 'Y', '', '', '', '', '', '', NULL),
('MI401', '', '', '', 'Bahasa Inggris Bisnis', 2, 2, 'MK', '3', 'T', '', '', '', '', 'T', 'D3', 'BAINI', '', '', '', '', NULL),
('MI402', '', '', '', 'Sistem Operasi II', 2, 2, '', '3', 'T', '', '', '', '', 'Y', 'D3', 'SIOP2', '', '', '', '', NULL),
('MI403', '', '', '', 'Perancangan Web', 2, 2, '', '4', 'T', '', '', '', '', 'Y', 'D3', 'PEWEB', '', '', '', '', NULL),
('MI404', '', '', '', 'Pemrograman Java', 2, 2, '', '6', 'T', '', '', '', '', 'Y', 'D3', 'PJAVA', '', '', '', '', NULL),
('MI405', '', '', '', 'Manajemen Keuangan ', 2, 2, '', '4', 'T', '', '', '', '', 'T', 'D3', 'MAKEU', '', '', '', '', NULL),
('MI406', '', '', '', 'Manajemen Sumber Daya Manusia', 2, 2, '', '3', 'T', '', '', '', '', 'T', 'D3', 'MASDM', '', '', '', '', NULL),
('MI407', '', '', '', 'Interaksi Manusia dan Komputer', 2, 2, '', '5', 'T', '', '', '', '', 'T', 'D3', 'IMKOM', '', '', '', '', NULL),
('MI408', '', '', '', 'Manajemen Proyek', 2, 2, '', '6', 'T', '', '', '', '', 'Y', 'D3', 'MAPRO', '', '', '', '', NULL),
('MI409', 'J2208', '', '', 'Sistem Operasi Lanjut', 2, 2, 'MK', '4', 'T', '', '', '', '', 'Y', 'S1', '-', '', '', '', '', NULL),
('MI410', '', '', '', 'Sistem Adm & Keamanan Data', 2, 2, '', '4', 'T', '', '', '', '', 'Y', 'S1', '-', '', '', '', '', NULL),
('MI411', '', '', '', 'Pengelolaan Jaringan Komputer', 2, 2, 'MK', '5', 'T', '', '', '', '', 'Y', '', '', '', '', '', '', NULL),
('MI412', '', '', '', 'Sistem Penunjang Keputusan', 2, 2, '', '5', 'T', '', '', '', '', 'T', 'S1', '-', '', '', '', '', NULL),
('MI414', '', '', '', 'Komunikasi Antar Personal', 2, 2, 'MB', '6', 'T', '', '', '', '', 'T', 'D3', 'KAP', '', '', '', '', NULL),
('MI415', '', '', '', 'Manajemen Hubungan Pelanggan', 2, 2, '', '6', 'T', '', '', '', '', 'T', 'S1', '-', '', '', '', '', NULL),
('MI416', '', '', '', 'Pemrograman Aplikasi Bergerak', 2, 2, '', '5', 'T', '', '', '', '', 'Y', 'D3', '', '', '', '', '', NULL),
('MI417', '', '', '', 'Pemrograman Aplikasi Bergerak', 4, 4, 'MK', '5', 'T', '', '', '', '', 'Y', 'D3', '-', '', '', '', '', NULL),
('MJ101', NULL, NULL, NULL, 'Pengantar Bisnis', 3, 0, 'MK', '1', 'T', '', '', '', '', 'T', '', '', '', '', '', '', NULL),
('MJ102', NULL, NULL, NULL, 'Pengantar Manajemen', 3, 0, 'MK', '1', 'T', '', '', '', '', 'T', '', '', '', '', '', '', NULL),
('MJ103', NULL, NULL, NULL, 'Hukum Bisnis', 2, 0, '', '2', 'T', '', '', '', '', 'T', '', '', '', '', '', '', NULL),
('MJ104', NULL, NULL, NULL, 'Perilaku Organisasi', 2, 0, 'MK', '2', 'T', '', '', '', '', 'T', '', '', '', '', '', '', NULL),
('MJ105', NULL, NULL, NULL, 'Dasar-dasar Kewirausahaan', 2, 0, 'MK', '2', 'T', '', '', '', '', 'T', '', '', '', '', '', '', NULL),
('MJ106', NULL, NULL, NULL, 'Aplikasi Bisnis SAP', 4, 0, '', '4', 'T', '', '', '', '', 'Y', '', '', '', '', '', '', NULL),
('MJ201', NULL, NULL, NULL, 'Manajemen Pemasaran', 3, 0, 'MK', '3', 'Y', 'MJ102', '', '', '', 'T', '', '', '', '', '', '', NULL),
('MJ202', NULL, NULL, NULL, 'Manajemen Keuangan ', 3, 0, 'MK', '3', 'Y', 'AK101', '', '', '', 'T', '', '', '', '', '', '', NULL),
('MJ203', NULL, NULL, NULL, 'Manajemen Operasional', 3, 0, 'MK', '3', 'Y', 'MJ102', '', '', '', 'T', '', '', '', '', '', '', NULL),
('MJ204', NULL, NULL, NULL, 'Manajemen Keuangan Lanjut ', 3, 0, '', '4', 'T', 'mj202', '', '', '', 'T', '', '', '', '', '', '', NULL),
('MJ205', NULL, NULL, NULL, 'Manajemen Pemasaran Lanjutan', 3, 0, 'MK', '4', 'T', '', '', '', '', 'T', '', '', '', '', '', '', NULL),
('MJ206', NULL, NULL, NULL, 'Manajemen Operasional Lanjutan', 3, 0, '', '4', 'T', '', '', '', '', 'T', '', '', '', '', '', '', NULL);
INSERT INTO `kurikulummdp` (`Kode_MK`, `KODE_MK1`, `KODE_MK2`, `KODE_MK3`, `Keterangan`, `Sks`, `SKS_BAYAR`, `Jenis`, `Semester`, `Bersyarat`, `Prasyarat1`, `Prasyarat2`, `Prasyarat3`, `Prasyarat4`, `Praktek`, `KodeJrs`, `SINGKATAN`, `Prasyarat_Lama1`, `Prasyarat_Lama2`, `Prasyarat_Lama3`, `Prasyarat_Lama4`, `Prasyarat_Lama1_2`) VALUES
('MJ207', NULL, NULL, NULL, 'Manajemen SDM', 3, 0, 'MK', '3', 'Y', 'MJ102', '', '', '', 'T', '', '', '', '', '', '', NULL),
('MJ208', NULL, NULL, NULL, 'MSDM Lanjutan', 3, 0, '', '4', 'T', '', '', '', '', 'T', '', '', '', '', '', '', NULL),
('MJ209', NULL, NULL, NULL, 'Manajemen Teknologi Informasi ', 2, 0, 'MK', '4', 'T', '', '', '', '', 'T', '', '', '', '', '', '', NULL),
('MJ210', NULL, NULL, NULL, 'Sistem Informasi Manajemen', 2, 0, 'MK', '3', 'T', '', '', '', '', 'T', '', '', '', '', '', '', NULL),
('MJ211', NULL, NULL, NULL, 'Lingkungan Bisnis', 2, 0, 'MK', '3', 'Y', 'MJ105', '', '', '', 'T', '', '', '', '', '', '', NULL),
('MJ212', NULL, NULL, NULL, 'Praktek Bisnis', 2, 0, '', '4', 'T', '', '', '', '', 'T', '', '', '', '', '', '', NULL),
('MJ213', NULL, NULL, NULL, 'Kewirausahaan', 3, 0, '', '4', 'T', '', '', '', '', 'T', '', '', '', '', '', '', NULL),
('MJ301', NULL, NULL, NULL, 'Studi Kelayakan Bisnis', 3, 0, 'MK', '5', 'Y', 'MJ201', 'MJ202', 'MJ203', '', 'T', '', '', '', '', '', '', NULL),
('MJ302', NULL, NULL, NULL, 'E-Commerce', 2, 0, 'MK', '5', 'T', '', '', '', '', 'T', '', '', '', '', '', '', NULL),
('MJ303', NULL, NULL, NULL, 'Manajemen Strategis', 3, 0, 'MK', '5', 'Y', 'MJ201', 'MJ202', 'MJ203', '', 'T', '', '', '', '', '', '', NULL),
('MJ304', NULL, NULL, NULL, 'Teknik Proyeksi Bisnis', 2, 0, 'MK', '6', 'T', '', '', '', '', 'T', '', '', '', '', '', '', NULL),
('MJ305', NULL, NULL, NULL, 'Manajemen Perbankan', 2, 0, 'MK', '5', 'T', '', '', '', '', 'T', '', '', '', '', '', '', NULL),
('MJ306', NULL, NULL, NULL, 'Riset Pemasaran', 2, 0, 'MK', '6', 'Y', 'MJ201', '', '', '', 'T', '', '', '', '', '', '', NULL),
('MJ307', NULL, NULL, NULL, 'Manajemen Koperasi & UMKM', 2, 0, '', '5', 'T', '', '', '', '', 'T', '', '', '', '', '', '', NULL),
('MJ308', NULL, NULL, NULL, 'Perilaku Konsumen', 2, 0, 'MK', '5', 'Y', 'MJ201', '', '', '', 'T', '', '', '', '', '', '', NULL),
('MJ309', NULL, NULL, NULL, 'Manajemen Promosi dan Periklanan', 2, 0, 'MK', '5', 'Y', 'MJ201', '', '', '', 'T', '', '', '', '', '', '', NULL),
('MJ310', NULL, NULL, NULL, 'Customer Relationship Management', 2, 0, 'MK', '5', 'Y', 'Mj201', '', '', '', 'T', '', '', '', '', '', '', NULL),
('MJ311', NULL, NULL, NULL, 'Manajemen Bisnis Ritel', 2, 0, 'MK', '6', 'Y', 'MJ201', '', '', '', 'T', '', '', '', '', '', '', NULL),
('MJ312', NULL, NULL, NULL, 'Manajemen Pemasaran Internasional', 2, 0, 'MK', '6', 'Y', 'MJ201', '', '', '', 'T', '', '', '', '', '', '', NULL),
('MJ313', NULL, NULL, NULL, 'Seminar Manajemen Pemasaran', 2, 0, 'MK', '6', 'Y', 'MJ201', '', '', '', 'T', '', '', '', '', '', '', NULL),
('MJ314', NULL, NULL, NULL, 'Analisis Investasi dan Mj. Portofolio', 2, 0, 'MK', '5', 'Y', 'MJ202', '', '', '', 'T', '', '', '', '', '', '', NULL),
('MJ315', NULL, NULL, NULL, 'Manajemen Resiko', 2, 0, 'MK', '7', 'Y', 'MJ202', '', '', '', 'T', '', '', '', '', '', '', NULL),
('MJ316', NULL, NULL, NULL, 'Manajemen Keuangan Internasional', 2, 0, 'MK', '6', 'Y', 'MJ202', '', '', '', 'T', '', '', '', '', '', '', NULL),
('MJ317', NULL, NULL, NULL, 'Analisis Pasar Modal dan Pasar Uang', 2, 0, 'MK', '6', 'Y', 'MJ202', '', '', '', 'T', '', '', '', '', '', '', NULL),
('MJ318', NULL, NULL, NULL, 'Seminar Manajemen Keuangan', 2, 0, 'MK', '6', 'Y', 'MJ202', '', '', '', 'T', '', '', '', '', '', '', NULL),
('MJ319', NULL, NULL, NULL, 'Manajemen Inovasi Pemasaran', 2, 0, 'MK', '5', 'Y', 'MJ201', '', '', '', 'T', '', '', '', '', '', '', NULL),
('MJ320', NULL, NULL, NULL, 'Manajemen Bisnis Keluarga', 2, 0, 'MK', '5', 'Y', 'MJ105', '', '', '', 'T', '', '', '', '', '', '', NULL),
('MJ321', NULL, NULL, NULL, 'Bisnis Waralaba (Franchising)', 2, 0, 'MK', '6', 'Y', 'MJ105', '', '', '', 'T', '', 'BWARA', '', '', '', '', NULL),
('MJ322', NULL, NULL, NULL, 'Pembiayaan Usaha Kecil dan Mikro', 2, 0, 'MK', '6', 'Y', 'EK201', '', '', '', 'T', '', 'PUKM', '', '', '', '', NULL),
('MJ323', NULL, NULL, NULL, 'Seminar Perencanaan Bisnis', 2, 0, 'MK', '6', 'Y', 'MJ211', '', '', '', 'T', '', 'SMPRB', '', '', '', '', NULL),
('MJ401', NULL, NULL, NULL, 'Komunikasi Bisnis', 2, 0, '', '7', 'T', '', '', '', '', 'T', '', '', '', '', '', '', NULL),
('MJ402', NULL, NULL, NULL, 'Etika Bisnis', 2, 0, '', '7', 'T', '', '', '', '', 'T', '', '', '', '', '', '', NULL),
('MJ403', NULL, NULL, NULL, 'Penganggaran', 3, 0, 'MK', '7', 'Y', 'MJ201', 'MJ202', 'MJ203', '', 'T', '', '', '', '', '', '', NULL),
('MJ404', NULL, NULL, NULL, 'Supply Chain Management', 2, 0, 'MK', '7', 'Y', '', '', '', '', 'T', '', '', '', '', '', '', NULL),
('MJ405', NULL, NULL, NULL, 'Mj. Perubahan & Budaya Organisasi', 2, 0, 'MK', '7', 'Y', 'MJ207', '', '', '', 'T', '', '', '', '', '', '', NULL),
('MJ406', NULL, NULL, NULL, 'Skripsi', 6, 0, 'MK', '8', 'Y', 'EK203', '', '', '', 'T', '', '', '', '', '', '', NULL),
('MJ407', NULL, NULL, NULL, 'Business Plan Project', 6, 0, 'MK', '8', 'Y', 'MJ212', '', '', '', 'T', '', '', '', '', '', '', NULL),
('S1101', 'SP139', 'SP110', '', 'Bahasa Indonesia', 2, 2, '', '1', 'T', '', '', '', '', 'T', 'S1', '-', '', '', '', '', NULL),
('S1102', 'SP102', 'SP131', '', 'Bahasa Inggris I', 2, 2, '', '1', 'T', '', '', '', '', 'T', 'S1', '', '', '', '', '', NULL),
('S1103', 'SP242', '', '', 'Dasar Komputer', 1, 2, '', '1', 'T', '', '', '', '', 'Y', 'S1', '', '', '', '', '', NULL),
('S1104', 'SP101', 'SP130', '', 'Pancasila', 2, 2, '', '1', 'T', '', '', '', '', 'T', 'S1', '', '', '', '', '', NULL),
('S1105', 'SP243', 'SP243', 'SP243', 'Dasar Pemrograman', 2, 4, '', '1', 'T', '', '', '', '', 'Y', 'S1', '', '', '', '', '', NULL),
('S1106', 'SP219', 'SP245', '', 'Matematika Diskrit', 4, 4, '', '1', 'T', '', '', '', '', 'T', 'S1', '', '', '', '', '', NULL),
('S1107', '', '', '', 'Pengantar Sistem&Teknologi Informasi', 4, 4, '', '1', 'T', '', '', '', '', 'T', 'S1', '', '', '', '', '', NULL),
('S1108', 'SI210', 'SP213', '', 'Manajemen Umum', 2, 2, '', '1', 'T', '', '', '', '', 'T', 'S1', '', '', '', '', '', NULL),
('S1201', 'SP104', 'SP133', '', 'Pendidikan Agama Islam', 2, 2, '', '2', 'T', '', '', '', '', 'T', 'S1', '', '', '', '', '', NULL),
('S1202', 'SP105', 'SP134', '', 'Pendidikan Agama Katolik', 2, 2, '', '2', 'T', '', '', '', '', 'T', 'S1', '', '', '', '', '', NULL),
('S1203', 'SP106', 'SP135', '', 'Pendidikan Agama Kristen', 2, 2, '', '2', 'T', '', '', '', '', 'T', 'S1', '', '', '', '', '', NULL),
('S1204', 'SP107', 'SP136', '', 'Pendidikan Agama Budha', 2, 2, '', '2', 'T', '', '', '', '', 'T', 'S1', '', '', '', '', '', NULL),
('S1205', 'SP108', 'SP137', '', 'Pendidikan Agama HIndu', 2, 2, '', '2', 'T', '', '', '', '', 'T', 'S1', '', '', '', '', '', NULL),
('S1206', 'SI321', '', '', 'Kepemimpinan', 2, 2, '', '2', 'T', '', '', '', '', 'T', 'S1', '', '', '', '', '', NULL),
('S1207', 'SP216', 'SP244', '', 'Algoritma & Struktur Data', 3, 4, '', '2', 'Y', 'S1105', '', '', '', 'Y', 'S1', '', 'SP243', '', '', '', NULL),
('S1208', 'SI217', '', '', 'Matematika Dasar', 4, 4, '', '2', 'T', '', '', '', '', 'T', 'S1', '', '', '', '', '', NULL),
('S1209', 'SI207', '', '', 'Akuntansi Dasar', 4, 4, '', '2', 'T', '', '', '', '', 'T', 'S1', '', '', '', '', '', NULL),
('S1210', 'SP138', 'SP109', '', 'Pendidikan Kewarganegaraan', 2, 2, '', '2', 'T', '', '', '', '', 'T', 'S1', '', '', '', '', '', NULL),
('S1211', 'SI404', '', '', 'Manajemen Sumber Daya Manusia', 2, 2, '', '2', 'T', '', '', '', '', 'T', 'S1', '', '', '', '', '', NULL),
('S1212', 'SI301', 'SP247', '', 'Paket Program Niaga', 1, 2, '', '2', 'T', '', '', '', '', 'Y', 'S1', '', '', '', '', '', NULL),
('S2101', 'SP246', '', '', 'Statistik', 4, 4, '', '3', 'T', '', '', '', '', 'T', 'S1', '', '', '', '', '', NULL),
('S2102', 'SP356', '', '', 'Aspek Hukum Dalam Rekayasa', 2, 2, '', '3', 'T', '', '', '', '', 'T', 'S1', '', '', '', '', '', NULL),
('S2103', 'SP314', 'SI314', '', 'Sistem Operasi', 4, 4, '', '3', 'T', '', '', '', '', 'T', 'S1', 'SO', '', '', '', '', NULL),
('S2104', 'SI338', '', '', 'Aplikasi Akuntansi', 1, 2, '', '3', 'Y', 'S1209', '', '', '', 'Y', 'S1', '', 'SI207', '', '', '', NULL),
('S2105', 'SP103', 'SP132', '', 'Bahasa Inggris II', 2, 2, '', '3', 'Y', 'S1102', '', '', '', 'T', 'S1', '', 'SP131', '', '', '', NULL),
('S2106', 'SP346', 'SP325', '', 'Sistem Basis Data', 4, 4, '', '3', 'T', '', '', '', '', 'T', 'S1', '', '', '', '', '', NULL),
('S2107', 'SI341', '', '', 'Pemrograman Berorientasi Objek', 2, 4, '', '3', 'T', '', '', '', '', 'Y', 'S1', '', '', '', '', '', NULL),
('S2108', 'SI218', '', '', 'Komunikasi Bisnis', 2, 2, '', '3', 'T', '', '', '', '', 'T', 'S1', '', '', '', '', '', NULL),
('S2201', 'S2201', '', '', 'Teori Keputusan', 2, 2, '', '4', 'T', '', '', '', '', 'T', 'S1', '', '', '', '', '', NULL),
('S2202', 'SP354', '', '', 'Arsitektur dan Organisasi Komputer', 2, 2, '', '4', 'Y', 'S2103', '', '', '', 'T', 'S1', '', 'SP314', '', '', '', NULL),
('S2203', 'SI317', 'SP350', '', 'Rekayasa Perangkat Lunak', 4, 4, '', '4', 'Y', 'S2107', '', '', '', 'T', 'S1', 'RPL', 'SI341', '', '', '', NULL),
('S2204', 'SP328', 'SP345', '', 'Basis Data Terapan', 1, 2, '', '4', 'Y', 'S2106', '', '', '', 'Y', 'S1', '', 'SP346', '', '', '', NULL),
('S2205', 'SP343', 'SP317', '', 'Kewirausahaan', 2, 2, '', '4', 'T', '', '', '', '', 'T', 'S1', '', '', '', '', '', NULL),
('S2206', '', '', '', 'Riset Operasi', 4, 4, '', '4', 'T', '', '', '', '', 'T', 'S1', '', '', '', '', '', NULL),
('S2207', 'SI342', '', '', 'Jaringan Komputer & Komdat', 2, 4, '', '4', 'Y', 'S2103', '', '', '', 'Y', 'S1', '', 'SP314', '', '', '', NULL),
('S2208', 'SI344', '', '', 'Analisis Sistem Informasi', 4, 4, '', '4', 'Y', 'S2106', '', '', '', 'T', 'S1', '', 'SP346', '', '', '', NULL),
('S3101', 'SP240', 'SP318', '', 'Metode Penulisan Ilmiah', 2, 2, '', '5', 'Y', 'S1101', 'S2101', '', '', 'T', 'S1', '', 'SP139', 'SP246', '', '', NULL),
('S3102', 'SI345', '', '', 'Perancangan Sistem Informasi', 4, 4, '', '5', 'Y', 'S2208', '', '', '', 'T', 'S1', '', 'SI344', '', '', '', NULL),
('S3103', 'SP355', '', '', 'Manajemen Proyek TI', 2, 2, '', '5', 'T', '', '', '', '', 'T', 'S1', '', '', '', '', '', NULL),
('S3104', 'SP349', '', '', 'Perancangan & Pemrograman Web', 2, 4, '', '5', 'Y', 'S2204', 'S2107', '', '', 'Y', 'S1', '', 'SP345', 'SI341', '', '', NULL),
('S3105', 'SP351', '', '', 'Pengujian Perangkat Lunak', 2, 2, '', '5', 'Y', 'S2203', '', '', '', 'T', 'S1', '', 'SP350', '', '', '', NULL),
('S3106', '', '', '', 'Aplikasi Bisnis', 1, 2, '', '5', 'T', '', '', '', '', 'Y', 'S1', '', '', '', '', '', NULL),
('S3107', 'SI327', '', '', 'Akuntansi Menengah', 4, 4, '', '5', 'Y', 'S1209', '', '', '', 'T', 'S1', '', 'SI207', '', '', '', NULL),
('S3108', 'SI405', '', '', 'Manajemen Strategi', 2, 2, '', '5', 'T', '', '', '', '', 'T', 'S1', '', '', '', '', '', NULL),
('S3109', 'SI428', '', '', 'Manajemen Investasi', 2, 2, '', '5', 'Y', '', '', '', '', 'T', 'S1', '', '', '', '', '', NULL),
('S3110', '', '', '', 'Studi Kelayakan Bisnis', 2, 2, '', '5', 'T', '', '', '', '', 'T', 'S1', 'SKB', '', '', '', '', NULL),
('S3111', 'SP425', 'SP452', '', 'Bahasa Mandarin', 2, 2, '', '5', 'T', '', '', '', '', 'T', 'S1', '', '', '', '', '', NULL),
('S3201', 'SP353', 'SI311', '', 'Keamanan Komputer', 2, 2, '', '6', 'T', '', '', '', '', 'T', 'S1', '', '', '', '', '', NULL),
('S3202', 'SI415', 'SP348', '', 'Multimedia', 1, 2, '', '6', 'T', '', '', '', '', 'Y', 'S1', '', '', '', '', '', NULL),
('S3203', 'SI313', 'SP352', '', 'Interaksi Manusia dan Komputer', 2, 2, '', '6', 'T', '', '', '', '', 'T', 'S1', '', '', '', '', '', NULL),
('S3204', 'SI308', '', '', 'Pengelolaan Sistem Informasi', 2, 2, '', '6', 'Y', 'S3102', '', '', '', 'T', 'S1', '', 'SI345', '', '', '', NULL),
('S3205', 'SI427', '', '', 'Pemrograman Aplikasi Bergerak', 3, 4, '', '6', 'Y', 'S2107', 'S3104', '', '', 'Y', 'S1', '', 'SI341', 'SP349', '', '', NULL),
('S3206', '', '', '', 'Forensik Komputer', 2, 2, '', '6', 'T', '', '', '', '', 'T', 'S1', '', '', '', '', '', NULL),
('S3207', 'SI437', '', '', 'E-Government', 2, 2, '', '6', 'T', '', '', '', '', 'T', 'S1', '', '', '', '', '', NULL),
('S3208', '', '', '', 'Perencanaan Infrastruktur', 2, 2, '', '6', 'T', '', '', '', '', 'T', 'S1', '', '', '', '', '', NULL),
('S3209', 'SI438', '', '', 'Sistem Pendukung Keputusan', 2, 2, '', '6', 'Y', 'S2201', '', '', '', 'T', 'S1', '', 'SI348', '', '', '', NULL),
('S3210', 'SI432', '', '', 'Perencanaan Strategis Sisfo', 2, 2, '', '6', 'T', '', '', '', '', 'T', 'S1', '', '', '', '', '', NULL),
('S3211', '', '', '', 'PBO Terapan', 1, 2, '', '6', 'Y', 'S2107', '', '', '', 'Y', 'S1', '', 'SI341', '', '', '', NULL),
('S3212', '', '', '', 'Pemrograman Web Lanjutan', 1, 2, '', '6', 'Y', 'S3104', '', '', '', 'Y', 'S1', '', 'SP349', '', '', '', NULL),
('S3213', '', '', '', 'Pemrograman Aplikasi Bergerak', 2, 4, '', '6', 'Y', 'S2107', 'S3104', '', '', 'Y', 'S1', '', 'SI341', 'SP349', '', '', NULL),
('S4101', 'SI214', 'SP212', 'SP424', 'Perpajakan', 2, 2, '', '7', 'T', '', '', '', '', 'T', 'S1', '', '', '', '', '', NULL),
('S4102', 'SI351', '', '', 'Audit Sistem Informasi', 2, 2, '', '7', 'Y', 'S3204', '', '', '', 'T', 'S1', '', 'SI308', '', '', '', NULL),
('S4103', 'SI306', 'SP319', '', 'Sistem Informasi Manajemen', 2, 2, '', '7', 'T', '', '', '', '', 'T', 'S1', '', '', '', '', '', NULL),
('S4104', 'SI339', '', '', 'Model Bisnis', 2, 2, '', '7', 'T', '', '', '', '', 'T', 'S1', '', '', '', '', '', NULL),
('S4105', 'SI451', '', '', 'E-Business', 2, 2, '', '7', 'T', '', '', '', '', 'T', 'S1', '', '', '', '', '', NULL),
('S4106', 'SP429', '', '', 'Manajemen Hubungan Pelanggan', 2, 2, '', '7', 'T', '', '', '', '', 'T', 'S1', '', '', '', '', '', NULL),
('S4107', 'SI318', '', '', 'Kerja Praktek', 2, 2, '', '7', 'T', '', '', '', '', 'T', 'S1', '', '', '', '', '', NULL),
('S4108', 'SI431', '', '', 'Sistem Informasi Geografis', 1, 2, '', '7', 'T', '', '', '', '', 'Y', 'S1', '', '', '', '', '', NULL),
('S4109', 'SI436', '', '', 'Manajemen Pengetahuan', 2, 2, '', '7', 'Y', 'S3102', '', '', '', 'T', 'S1', '', 'SI345', '', '', '', NULL),
('S4110', '', '', '', 'Pemrograman Aplikasi Bergerak Lanjtn', 1, 2, '', '7', 'Y', 'S3205', '', '', '', 'Y', 'S1', '', 'SI427', '', '', '', NULL),
('S4111', '', '', '', 'Mobile Human Computer Interaction', 2, 2, '', '7', 'T', '', '', '', '', 'T', 'S1', '', '', '', '', '', NULL),
('S4112', 'SI434', '', '', 'Data Warehouse', 2, 2, '', '7', 'Y', 'S2204', '', '', '', 'T', 'S1', '', 'SP345', '', '', '', NULL),
('S4113', 'SI433', '', '', 'Administrasi dan Keamanan Basis Data', 1, 2, '', '7', 'Y', 'S2204', '', '', '', 'Y', 'S1', '', 'SP345', '', '', '', NULL),
('S4114', '', '', '', 'PAB Lanjutan', 2, 4, '', '7', 'Y', 'S3213', '', '', '', 'Y', 'S1', '-', 'S3205', '', '', '', NULL),
('S4115', '', '', '', 'Aplikasi Bisnis Lanjutan', 1, 2, '', '7', 'Y', 'S3106', '', '', '', 'Y', 'S1', '', '', '', '', '', NULL),
('S4201', 'SI326', '', '', 'Etika Profesi', 2, 2, '', '6', 'T', '', '', '', '', 'T', 'S1', '', '', '', '', '', NULL),
('S4202', 'SI322', 'SP214', '', 'Perilaku Organisasi', 2, 2, '', '6', 'T', '', '', '', '', 'T', 'S1', '', '', '', '', '', NULL),
('S4203', 'SI323', '', '', 'Skripsi', 6, 6, '', '8', 'Y', 'S3101', '', '', '', 'T', 'S1', 'SKRIP', 'SP240', '', '', '', NULL),
('SI201', '', '', '', 'Pemrograman I', 4, 4, '', '2', 'T', '', '', '', '', 'Y', 'S1', 'PROG1', '', '', '', '', NULL),
('SI202', '', '', '', 'Struktur Data', 4, 4, 'MK', '3', 'T', '', '', '', '', 'Y', 'S1', 'STDAT', '', '', '', '', NULL),
('SI203', '', '', '', 'Kalkulus', 4, 4, '', '1', 'T', '', '', '', '', 'T', 'S1', 'KALKU', '', '', '', '', NULL),
('SI204', '', '', '', 'Aljabar Linier', 2, 2, '', '2', 'T', '', '', '', '', 'T', 'S1', 'ALLIN', '', '', '', '', NULL),
('SI205', '', '', '', 'Matematika Diskrit', 4, 4, '', '3', 'T', '', '', '', '', 'T', 'S1', 'MADIS', '', '', '', '', NULL),
('SI206', '', '', '', 'Pengantar Ekonomi', 2, 2, 'MK', '1', 'T', '', '', '', '', 'T', 'S1', 'PENEK', '', '', '', '', NULL),
('SI207', '', '', '', 'Dasar Akuntansi', 4, 4, 'MK', '2', 'T', '', '', '', '', 'T', 'S1', 'DASAK', '', '', '', '', NULL),
('SI208', '', '', '', 'Pengantar Teknologi Informasi', 2, 2, 'MK', '1', 'T', '', '', '', '', 'T', 'S1', 'PTEFO', '', '', '', '', NULL),
('SI209', '', '', '', 'Konsep Sistem Informasi', 2, 2, 'MK', '1', 'T', '', '', '', '', 'T', 'S1', 'KOSFO', '', '', '', '', NULL),
('SI210', '', '', '', 'Manajemen Umum', 2, 2, '', '3', 'T', '', '', '', '', 'T', 'S1', 'MANUM', '', '', '', '', NULL),
('SI211', '', '', '', 'Statistik Dasar', 4, 4, '', '2', 'T', '', '', '', '', 'T', 'S1', 'STADA', '', '', '', '', NULL),
('SI212', '', '', '', 'Organisasi Komputer', 2, 2, '', '3', 'T', '', '', '', '', 'T', 'S1', 'ORKOM', '', '', '', '', NULL),
('SI213', '', '', '', 'Manajemen Keuangan', 2, 2, 'MK', '6', 'T', '', '', '', '', 'T', 'S1', '', '', '', '', '', NULL),
('SI214', '', '', '', 'Perpajakan', 2, 2, '', '7', 'T', '', '', '', '', 'T', 'S1', 'PAJAK', '', '', '', '', NULL),
('SI216', '', '', '', 'Pengantar Sistem Informasi', 2, 2, 'MK', '1', 'T', '', '', '', '', 'T', 'S1', '', '', '', '', '', NULL),
('SI217', '', '', '', 'Matematika Dasar', 4, 4, '', '1', 'T', '', '', '', '', 'T', 'S1', '-', '', '', '', '', NULL),
('SI218', '', '', '', 'Komunikasi Bisnis', 2, 2, 'MK', '3', 'T', '', '', '', '', 'T', 'S1', '-', '', '', '', '', NULL),
('SI301', '', '', '', 'Paket Program Niaga', 2, 4, 'MK', '1', 'T', '', '', '', '', 'Y', 'S1', 'PAKPN', '', '', '', '', NULL),
('SI302', '', '', '', 'Komunikasi Data', 2, 2, 'MK', '3', 'T', '', '', '', '', 'T', 'S1', 'KOMDA', '', '', '', '', NULL),
('SI303', '', '', '', 'Pemrograman Terstruktur', 4, 4, 'MK', '3', 'Y', 'SI201', '', '', '', 'Y', 'S1', 'PETER', '', '', '', '', NULL),
('SI304', '', '', '', 'Sistem Basis Data', 4, 4, 'MK', '4', 'Y', 'SI202', '', '', '', 'T', 'S1', 'SIBDA', '', '', '', '', NULL),
('SI305', '', '', '', 'Pemrograman  II', 4, 4, 'MK', '4', 'Y', 'SI201', '', '', '', 'Y', 'S1', 'PROG2', '', '', '', '', NULL),
('SI306', '', '', '', 'Sistem Informasi Manajemen ', 4, 4, 'MK', '3', 'T', '', '', '', '', 'T', 'S1', 'SIFMA', '', '', '', '', NULL),
('SI307', '', '', '', 'Pengelolaan Proyek Sist. Informasi', 2, 2, 'MK', '5', 'Y', 'SI306', '', '', '', 'T', 'S1', 'PPSFO', '', '', '', '', NULL),
('SI308', '', '', '', 'Pengelolaan Sistem Informasi', 2, 2, 'MK', '6', 'Y', 'SI345', '', '', '', 'T', 'S1', 'PSIFO', '', '', '', '', NULL),
('SI309', '', '', '', 'Analisa dan Perancangan Sistem', 4, 4, 'MK', '4', 'T', '', '', '', '', 'T', 'S1', 'APSIS', '', '', '', '', NULL),
('SI310', '', '', '', 'Sistem Penunjang Keputusan', 2, 2, 'MK', '7', 'Y', 'SI309', '', '', '', 'Y', 'S1', 'SPKEP', '', '', '', '', NULL),
('SI311', '', '', '', 'Keamanan Komputer', 2, 2, 'MK', '4', 'T', '', '', '', '', 'T', 'S1', 'KEKOM', '', '', '', '', NULL),
('SI312', 'S2206', '', '', 'Teknik Riset Operasional', 4, 4, 'MK', '6', 'T', '', '', '', '', 'T', 'S1', 'TRIOP', '', '', '', '', NULL),
('SI313', '', '', '', 'Interaksi Manusia dan Komputer', 2, 2, 'MK', '6', 'T', '', '', '', '', 'T', 'S1', 'IMKOM', '', '', '', '', NULL),
('SI314', '', '', '', 'Sistem Operasi', 4, 4, 'MK', '5', 'T', '', '', '', '', 'T', 'S1', 'SISOP', '', '', '', '', NULL),
('SI315', '', '', '', 'Pemrograman Visual I', 2, 2, 'MK', '5', 'T', '', '', '', '', 'T', 'S1', 'PVIS1', '', '', '', '', NULL),
('SI316', '', '', '', 'Pemrograman Visual II', 4, 4, 'MK', '6', 'Y', 'SI315', '', '', '', 'Y', 'S1', 'VB2', '', '', '', '', NULL),
('SI317', '', '', '', 'Rekayasa Perangkat Lunak', 4, 4, 'MK', '5', 'T', '', '', '', '', 'T', 'S1', 'RPL', '', '', '', '', NULL),
('SI318', '', '', '', 'Kerja Praktek', 2, 2, 'MK', '5', 'T', '', '', '', '', 'Y', 'S1', 'KP', '', '', '', '', NULL),
('SI319', '', '', '', 'Testing dan Implementasi Sistem', 2, 2, 'MK', '6', 'T', '', '', '', '', 'Y', 'S1', 'TESTI', '', '', '', '', NULL),
('SI320', '', '', '', 'Seminar', 2, 2, 'MK', '7', 'T', '', '', '', '', 'T', 'S1', 'SMNAR', '', '', '', '', NULL),
('SI321', '', '', '', 'Kepemimpinan', 2, 2, 'MK', '2', 'T', '', '', '', '', 'T', 'S1', 'KEMIM', '', '', '', '', NULL),
('SI322', '', '', '', 'Perilaku Dalam Berorganisasi', 2, 2, 'MK', '6', 'T', '', '', '', '', 'T', 'S1', 'PDORG', '', '', '', '', NULL),
('SI323', '', '', '', 'Skripsi', 6, 6, 'MK', '7', 'Y', 'SP240', '', '', '', 'Y', 'S1', 'SKRIP', '', '', '', '', NULL),
('SI324', '', '', '', 'Proyek & Pengelolaan Sisfo', 2, 2, 'MK', '5', 'T', 'SI309', '', '', '', 'Y', 'S1', '', '', '', '', '', NULL),
('SI325', '', '', '', 'Kapita Selekta', 2, 2, 'MK', '7', 'Y', 'SI309', '', '', '', 'T', 'S1', '', '', '', '', '', NULL),
('SI326', '', '', '', 'Etika Profesi', 2, 2, '', '5', 'Y', 'SI306', '', '', '', 'T', 'S1', '-', '', '', '', '', NULL),
('SI327', '', '', '', 'Akuntansi Menengah', 4, 4, '', '6', 'Y', 'SI207', '', '', '', 'T', 'S1', '-', '', '', '', '', NULL),
('SI328', '', '', '', 'Akuntansi Biaya', 2, 2, '', '7', 'Y', 'SI207', '', '', '', 'T', 'S1', '-', '', '', '', '', NULL),
('SI329', '', '', '', 'Teori Organisasi Umum', 2, 2, 'MK', '7', 'T', '', '', '', '', 'T', 'S1', 'SIA', '', '', '', '', NULL),
('SI330', '', '', '', 'Akuntansi Lanjutan', 2, 2, 'MK', '7', 'Y', 'SI327', '', '', '', 'T', 'S1', '-', '', '', '', '', NULL),
('SI331', '', '', '', 'Sistem Penunjang Keputusan', 2, 2, 'MK', '7', 'T', '', '', '', '', 'T', 'S1', '-', '', '', '', '', NULL),
('SI332', '', '', '', 'Akuntansi Manajemen', 2, 2, 'MK', '7', 'Y', 'SI328', '', '', '', 'Y', '', '', '', '', '', '', NULL),
('SI333', '', '', '', 'Sistem Informasi Akuntansi', 4, 4, 'MK', '7', 'Y', 'SI327', '', '', '', 'T', 'S1', '-', '', '', '', '', NULL),
('SI334', '', '', '', 'Pemeriksaan Akuntansi', 2, 2, 'MK', '7', 'Y', 'SI330', '', '', '', 'Y', 'S1', '', '', '', '', '', NULL),
('SI335', '', '', '', 'Komputer Audit', 2, 2, 'MK', '8', 'Y', 'SI334', '', '', '', 'T', 'S1', '', '', '', '', '', NULL),
('SI336', '', '', '', 'Pratikum Akuntansi', 2, 2, 'MK', '6', 'T', '', '', '', '', 'T', 'S1', '', '', '', '', '', NULL),
('SI337', '', '', '', 'Pemrograman Visual II', 2, 2, '', '4', 'T', '', '', '', '', 'Y', 'S1', '-', '', '', '', '', NULL),
('SI338', '', '', '', 'Aplikasi Akuntansi', 2, 2, 'MK', '3', 'Y', 'SI207', '', '', '', 'Y', 'S1', '-', '', '', '', '', NULL),
('SI339', '', '', '', 'Model Bisnis', 2, 2, '', '2', 'T', '', '', '', '', 'T', 'S1', '-', '', '', '', '', NULL),
('SI340', '', '', '', 'Sistem Informasi Manajemen', 2, 2, '', '7', 'T', '', '', '', '', 'T', 'S1', '-', '', '', '', '', NULL),
('SI341', '', '', '', 'Pemrograman Berorientasi Objek I', 4, 4, 'MK', '4', 'T', 'SP244', '', '', '', 'Y', '', '', '', '', '', '', NULL),
('SI342', '', '', '', 'Jarkom. & Komdat.', 4, 4, 'MK', '4', 'Y', 'SP314', '', '', '', 'Y', '', '', '', '', '', '', NULL),
('SI343', '', '', '', 'Pemrograman Berorientasi Objek II', 2, 2, 'MK', '5', 'Y', 'SI341', '', '', '', 'Y', '', '', '', '', '', '', NULL),
('SI344', '', '', '', 'Analisis Sistem Informasi', 4, 4, 'MK', '4', 'Y', 'SP346', '', '', '', 'Y', 'S1', '-', '', '', '', '', NULL),
('SI345', '', '', '', 'Perancangan Sistem Informasi', 4, 4, 'MK', '5', 'T', '', '', '', '', 'T', 'S1', '-', '', '', '', '', NULL),
('SI346', '', '', '', 'Manajemen Kebutuhan Perangkat Lunak', 2, 2, 'MK', '6', 'Y', 'SP350', '', '', '', 'T', '', '', '', '', '', '', NULL),
('SI347', '', '', '', 'Proyek Akhir', 4, 4, 'MK', '7', 'T', '', '', '', '', 'T', '', '', '', '', '', '', NULL),
('SI348', 'S2201', '', '', 'Teori Keputusan', 2, 2, 'MK', '4', 'T', '', '', '', '', 'T', 'S1', '-', '', '', '', '', NULL),
('SI349', '', '', '', 'Pemrograman Visual II', 2, 2, '', '6', 'T', '', '', '', '', 'Y', 'S1', '-', '', '', '', '', NULL),
('SI350', '', '', '', 'Akuntansi Biaya', 4, 4, '', '7', 'T', '', '', '', '', 'T', 'S1', '-', '', '', '', '', NULL),
('SI351', '', '', '', 'Audit Sistem Informasi', 2, 2, 'MK', '7', 'Y', 'SI308', '', '', '', 'T', 'S1', '-', 'SI308', '', '', '', NULL),
('SI401', '', '', '', 'Pengolahan Citra', 2, 2, 'MK', '7', 'T', '', '', '', '', 'T', 'S1', 'PECIT', '', '', '', '', NULL),
('SI402', '', '', '', 'Sistem Pakar', 2, 2, 'MK', '3', 'Y', 'SP239', '', '', '', 'T', 'S1', 'SIPAK', '', '', '', '', NULL),
('SI403', '', '', '', 'Teknik Kompilasi', 2, 2, '', '4', 'T', '', '', '', '', 'T', 'S1', 'TEKKO', '', '', '', '', NULL),
('SI404', '', '', '', 'Manajemen Sumber Daya Manusia', 2, 2, 'MK', '2', 'T', '', '', '', '', 'T', 'S1', 'MASDM', '', '', '', '', NULL),
('SI405', '', '', '', 'Manajemen Strategi', 2, 2, '', '5', 'T', '', '', '', '', 'T', 'S1', 'MASTR', '', '', '', '', NULL),
('SI406', '', '', '', 'Manajemen Perbankan', 2, 2, 'MK', '2', 'T', '', '', '', '', 'T', 'S1', 'MABAN', '', '', '', '', NULL),
('SI407', '', '', '', 'Pengantar Data Terdistribusi', 2, 2, 'MK', '5', 'T', '', '', '', '', 'T', 'S1', 'PEDAT', '', '', '', '', NULL),
('SI408', '', '', '', 'Pemrograman Java', 2, 4, '', '6', 'T', '', '', '', '', 'Y', 'S1', 'JAVA', '', '', '', '', NULL),
('SI409', '', '', '', 'Oracle', 2, 2, 'MK', '4', 'T', '', '', '', '', 'Y', 'S1', 'ORACL', '', '', '', '', NULL),
('SI410', '', '', '', 'Perancangan Web', 2, 4, '', '4', 'T', '', '', '', '', 'Y', 'S1', 'PEWEB', '', '', '', '', NULL),
('SI411', '', '', '', 'Web Programming', 2, 4, '', '8', 'T', '', '', '', '', 'Y', 'S1', 'WPROG', '', '', '', '', NULL),
('SI412', '', '', '', 'Aspek Hukum dalam Rekayasa ', 2, 2, '', '6', 'T', '', '', '', '', 'Y', 'S1', 'ASPEK', '', '', '', '', NULL),
('SI413', '', '', '', 'Artificial Intelegensi', 2, 2, 'MK', '8', 'T', '', '', '', '', 'T', 'S1', 'AI', '', '', '', '', NULL),
('SI414', '', '', '', 'E-Commerce', 2, 2, '', '7', 'T', '', '', '', '', 'Y', 'S1', 'ECOMM', '', '', '', '', NULL),
('SI415', '', '', '', 'Multimedia', 2, 2, '', '8', 'T', '', '', '', '', 'Y', 'S1', 'MULTI', '', '', '', '', NULL),
('SI418', '', '', '', 'Bank dan Lembaga Keuangan Lainnya', 2, 2, 'MK', '5', 'Y', 'SI206', 'SI206', 'SI206', '', 'T', 'S1', '', '', '', '', '', NULL),
('SI420', '', '', '', 'Manajemen Operasional', 2, 2, 'MK', '5', 'T', '', '', '', '', 'T', 'S1', '', '', '', '', '', NULL),
('SI422', '', '', '', 'Bahasa Mandarin', 2, 2, 'MK', '6', 'T', '', '', '', '', 'T', 'S1', '-', '', '', '', '', NULL),
('SI423', '', '', '', 'Manajemen Pemasaran', 2, 2, 'MK', '6', 'T', '', '', '', '', 'T', 'S1', '', '', '', '', '', NULL),
('SI426', '', '', '', 'Pengantar Aplikasi Bergerak', 2, 2, 'MK', '6', 'T', '', '', '', '', 'T', 'S1', '', '', '', '', '', NULL),
('SI427', '', '', '', 'Pemrograman Aplikasi Bergerak', 4, 4, 'MK', '6', 'Y', 'SI345', 'SI341', '', '', 'Y', '', '', '', '', '', '', NULL),
('SI428', '', '', '', 'Manajemen Investasi', 2, 2, 'MK', '5', 'T', '', '', '', '', 'T', 'S1', '-', '', '', '', '', NULL),
('SI431', '', '', '', 'Sistem Informasi Geografis', 2, 2, '', '7', 'Y', 'SI345', '', '', '', 'T', 'S1', '-', '', '', '', '', NULL),
('SI432', '', '', '', 'Perencanaan Sistem Informasi Strategis', 2, 2, 'MK', '7', 'T', '', '', '', '', 'T', '', '', '', '', '', '', NULL),
('SI433', '', '', '', 'Adm. dan Keamanan Basis Data', 2, 2, 'MK', '7', 'T', '', '', '', '', 'Y', 'S1', '-', '', '', '', '', NULL),
('SI434', '', '', '', 'Data Warehouse', 2, 2, 'MK', '7', 'Y', 'SP345', '', '', '', 'T', 'S1', '-', '', '', '', '', NULL),
('SI435', '', '', '', 'Keamanan Basis Data', 2, 2, 'MK', '7', 'Y', 'SP345', '', '', '', 'T', 'S1', '-', '', '', '', '', NULL),
('SI436', '', '', '', 'Manajemen Pengetahuan', 2, 2, '', '7', 'Y', 'SI345', '', '', '', 'T', 'S1', '-', '', '', '', '', NULL),
('Si437', '', '', '', 'E-Government', 2, 2, '', '7', 'Y', 'SI345', '', '', '', 'T', 'S1', '-', '', '', '', '', NULL),
('SI438', '', '', '', 'Sistem Pendukung Keputusan', 2, 2, 'MK', '7', 'Y', 'SI348', '', '', '', 'T', 'S1', '-', '', '', '', '', NULL),
('SI439', '', '', '', 'Sistem Informasi Akuntansi', 2, 2, '', '7', 'Y', 'SI207', 'SI345', '', '', 'T', 'S1', '-', '', '', '', '', NULL),
('SI440', '', '', '', 'Pemrograman Database', 2, 2, 'MK', '7', 'Y', 'SP345', '', '', '', 'Y', '', '', '', '', '', '', NULL),
('SI451', '', '', '', 'E-Business', 2, 2, 'MK', '7', 'T', '', '', '', '', 'T', 'S1', '-', '', '', '', '', NULL),
('SP100', '', '', '', 'NCTC', 4, 4, '', '1', 'T', '', '', '', '', 'Y', '', '', '', '', '', '', NULL),
('SP101', '', '', '', 'Pendidikan Pancasila', 2, 2, 'MK', '1', 'T', '', '', '', '', 'T', 'D3', 'PANCA', '', '', '', '', NULL),
('SP102', '', '', '', 'Bahasa Inggris I', 2, 2, '', '3', 'T', '', '', '', '', 'T', 'D3', 'ING01', '', '', '', '', NULL),
('SP103', '', '', '', 'Bahasa Inggris II', 2, 2, 'MK', '6', 'T', '', '', '', '', 'T', 'D3', 'ING02', '', '', '', '', NULL),
('SP104', '', '', '', 'Pendidikan Agama Islam', 2, 2, 'MK', '2', 'T', '', '', '', '', 'T', 'D3', 'ISLAM', '', '', '', '', NULL),
('SP105', '', '', '', 'Pendidikan Agama Katolik', 2, 2, 'MK', '2', 'T', '', '', '', '', 'T', 'D3', 'KATOL', '', '', '', '', NULL),
('SP106', '', '', '', 'Pendidikan Agama Kristen', 2, 2, 'MK', '2', 'T', '', '', '', '', 'T', 'D3', 'KRIST', '', '', '', '', NULL),
('SP107', '', '', '', 'Pendidikan Agama Budha', 2, 2, 'MK', '2', 'T', '', '', '', '', 'T', 'D3', 'BUDHA', '', '', '', '', NULL),
('SP108', '', '', '', 'Pendidikan Agama Hindu', 2, 2, 'MK', '2', 'T', '', '', '', '', 'T', 'D3', 'HINDU', '', '', '', '', NULL),
('SP109', '', '', '', 'Pendidikan Kewarganegaraan', 2, 2, '', '3', 'T', '', '', '', '', 'T', 'D3', 'PENKN', '', '', '', '', NULL),
('SP110', '', '', '', 'Bahasa Indonesia', 2, 2, '', '1', 'T', '', '', '', '', 'T', 'D3', '-', '', '', '', '', NULL),
('SP111', '', '', '', 'Bahasa Inggris', 2, 2, '', '1', 'T', '', '', '', '', 'T', 'D3', '-', '', '', '', '', NULL),
('SP130', '', '', '', 'Pendidikan Pancasila', 2, 2, 'MK', '1', 'T', '', '', '', '', 'T', 'S1', 'PANCA', '', '', '', '', NULL),
('SP131', '', '', '', 'Bahasa Inggris I', 2, 2, '', '1', 'T', '', '', '', '', 'T', 'S1', 'ING01', '', '', '', '', NULL),
('SP132', '', '', '', 'Bahasa Inggris II', 2, 2, '', '7', 'Y', 'SP131', '', '', '', 'T', 'S1', 'ING02', '', '', '', '', NULL),
('SP133', '', '', '', 'Pendidikan Agama Islam', 2, 2, 'MK', '2', 'T', '', '', '', '', 'T', 'S1', 'ISLAM', '', '', '', '', NULL),
('SP134', '', '', '', 'Pendidikan Agama Katolik', 2, 2, 'MK', '2', 'T', '', '', '', '', 'T', 'S1', 'KATOL', '', '', '', '', NULL),
('SP135', '', '', '', 'Pendidikan Agama Kristen', 2, 2, 'MK', '2', 'T', '', '', '', '', 'T', 'S1', 'KRIST', '', '', '', '', NULL),
('SP136', '', '', '', 'Pendidikan Agama Budha', 2, 2, 'MK', '2', 'T', '', '', '', '', 'T', 'S1', 'BUDHA', '', '', '', '', NULL),
('SP137', '', '', '', 'Pendidikan Agama Hindu', 2, 2, 'MK', '2', 'T', '', '', '', '', 'T', 'S1', 'HINDU', '', '', '', '', NULL),
('SP138', '', '', '', 'Pendidikan Kewarganegaraan', 2, 2, '', '6', 'T', '', '', '', '', 'T', 'S1', 'PENKN', '', '', '', '', NULL),
('SP139', '', '', '', 'Bahasa Indonesia', 2, 2, '', '1', 'T', '', '', '', '', 'T', 'S1', '-', '', '', '', '', NULL),
('SP210', '', '', '', 'Logika Algoritma', 4, 4, 'MK', '1', 'T', '', '', '', '', 'Y', 'D3', 'LOGAL', '', '', '', '', NULL),
('SP211', '', '', '', 'Aljabar Linier', 2, 2, '', '2', 'T', '', '', '', '', 'T', 'D3', 'ALLIN', '', '', '', '', NULL),
('SP212', '', '', '', 'Perpajakan', 2, 2, '', '5', 'T', '', '', '', '', 'T', 'D3', 'PAJAK', '', '', '', '', NULL),
('SP213', '', '', '', 'Manajemen Umum', 2, 2, '', '4', 'T', '', '', '', '', 'T', 'D3', 'MU', '', '', '', '', NULL),
('SP214', '', '', '', 'Perilaku Dalam Berorganisasi', 2, 2, '', '3', 'T', '', '', '', '', 'T', 'D3', 'PDORG', '', '', '', '', NULL),
('SP215', '', '', '', 'Pemrograman Dasar', 4, 4, 'MK', '1', 'T', '', '', '', '', 'Y', 'D3', '', '', '', '', '', NULL),
('SP216', '', '', '', 'Algoritma & Struktur Data', 4, 4, 'MK', '2', 'Y', 'SP215', '', '', '', 'Y', 'D3', '-', '', '', '', '', NULL),
('SP217', '', '', '', 'Pengantar Ekonomi', 2, 2, 'MK', '1', 'T', '', '', '', '', 'T', 'D3', '', '', '', '', '', NULL),
('SP218', '', '', '', 'Pengantar Sistem Operasi', 2, 2, 'MK', '1', 'T', '', '', '', '', 'T', 'D3', '', '', '', '', '', NULL),
('SP219', '', '', '', 'Matematika Diskrit', 4, 4, '', '1', 'T', '', '', '', '', 'T', 'D3', '-', '', '', '', '', NULL),
('SP221', '', '', '', 'Praktikum Perpajakan', 2, 2, 'MK', '6', 'Y', 'SP212', '', '', '', 'T', '', '', '', '', '', '', NULL),
('SP239', '', '', '', 'Algoritma dan Pemrograman', 4, 4, 'MK', '1', 'T', '', '', '', '', 'Y', 'S1', 'ALPRO', '', '', '', '', NULL),
('SP240', '', '', '', 'Metodologi Penelitian', 2, 2, '', '5', 'Y', 'SP139', 'SP246', '', '', 'T', 'S1', 'MEPEN', '', '', '', '', NULL),
('SP241', '', '', '', 'Pengantar Teknologi Informasi', 2, 2, 'MK', '1', 'T', '', '', '', '', 'T', 'S1', '', '', '', '', '', NULL),
('SP242', '', '', '', 'Dasar Komputer', 2, 2, '', '1', 'T', '', '', '', '', 'Y', 'S1', '-', '', '', '', '', NULL),
('SP243', '', '', '', 'Dasar Pemrograman', 4, 4, '', '1', 'T', '', '', '', '', 'Y', 'S1', '-', '', '', '', '', NULL),
('SP244', '', '', '', 'Algoritma & Struktur Data', 4, 4, 'MK', '2', 'Y', 'SP243', '', '', '', 'Y', 'S1', '-', '', '', '', '', NULL),
('SP245', '', '', '', 'Matematika Diskrit', 4, 4, 'MK', '2', 'T', '', '', '', '', 'T', 'S1', '-', '', '', '', '', NULL),
('SP246', '', '', '', 'Statistik', 4, 4, 'MK', '3', 'T', '', '', '', '', 'T', 'S1', '-', '', '', '', '', NULL),
('SP247', '', '', '', 'Paket Program Niaga', 2, 2, '', '1', 'T', '', '', '', '', 'T', 'S1', 'PPN', '', '', '', '', NULL),
('SP313', '', '', '', 'Technopreneurship', 2, 2, 'MK', '5', 'T', '', '', '', '', 'T', '', '', '', '', '', '', NULL),
('SP314', '', '', '', 'Sistem Operasi', 4, 4, 'MK', '4', 'T', '', '', '', '', 'T', 'S1', 'SO', '', '', '', '', NULL),
('SP315', '', '', '', 'Paket  Program Niaga', 4, 4, 'MK', '1', 'T', '', '', '', '', 'Y', 'D3', 'PAKPN', '', '', '', '', NULL),
('SP316', '', '', '', 'Paket Program Niaga', 2, 2, 'MK', '1', 'T', '', '', '', '', 'Y', 'D3', 'PAKPN', '', '', '', '', NULL),
('SP317', '', '', '', 'Kewirausahaan', 2, 2, 'MK', '5', 'T', '', '', '', '', 'T', 'D3', 'KEWIR', '', '', '', '', NULL),
('SP318', '', '', '', 'Metodologi Penelitian', 2, 2, 'MK', '5', 'T', '', '', '', '', 'T', 'D3', 'MEPEN', '', '', '', '', NULL),
('SP319', '', '', '', 'Sistem Informasi Manajemen', 4, 4, 'MK', '2', 'T', '', '', '', '', 'T', 'D3', '-', '', '', '', '', NULL),
('SP320', '', '', '', 'Pemrograman Web Dasar', 2, 2, 'MK', '2', 'T', '', '', '', '', 'Y', 'D3', '-', '', '', '', '', NULL),
('SP321', '', '', '', 'Analisa Sistem Informasi', 4, 4, 'MK', '2', 'T', '', '', '', '', 'T', 'D3', '-', '', '', '', '', NULL),
('SP322', '', '', '', 'Statistika', 2, 2, 'MK', '3', 'T', '', '', '', '', 'T', '', '', '', '', '', '', NULL),
('SP323', '', '', '', 'Pemrograman Visual 1', 4, 4, 'MK', '3', 'T', '', '', '', '', 'Y', 'S1', '-', '', '', '', '', NULL),
('SP325', '', '', '', 'Sistem Basis Data', 4, 4, 'MK', '2', 'T', '', '', '', '', 'T', 'D3', '-', '', '', '', '', NULL),
('SP326', '', '', '', 'Perancangan Sistem Informasi', 4, 4, 'MK', '4', 'Y', 'SP321', '', '', '', 'T', '', '', '', '', '', '', NULL),
('SP327', '', '', '', 'Pemrograman Visual II', 4, 4, 'MK', '4', 'Y', 'SP323', '', '', '', 'Y', 'S1', '-', '', '', '', '', NULL),
('SP328', '', '', '', 'Basis Data Terapan', 2, 2, '', '3', 'Y', 'SP325', '', '', '', 'Y', 'S1', '-', '', '', '', '', NULL),
('SP329', '', '', '', 'Perancangan Web', 2, 2, 'MK', '4', 'T', '', '', '', '', 'Y', '', '', '', '', '', '', NULL),
('SP330', '', '', '', 'Psikologi Dunia Kerja', 2, 2, 'MK', '6', 'T', '', '', '', '', 'T', 'S1', '-', '', '', '', '', NULL),
('SP331', '', '', '', 'Pemrograman Berorientasi Objek', 4, 4, 'MK', '4', 'T', '', '', '', '', 'T', 'S1', '-', '', '', '', '', NULL),
('SP341', '', '', '', 'Internet', 2, 2, 'MK', '2', 'T', '', '', '', '', 'Y', 'S1', 'INNET', '', '', '', '', NULL),
('SP342', '', '', '', 'E-Commerce', 2, 2, 'MK', '5', 'Y', 'SP341', '', '', '', 'T', 'S1', 'ECOMM', '', '', '', '', NULL),
('SP343', '', '', '', 'Kewirausahaan', 2, 2, 'MK', '6', 'T', '', '', '', '', 'T', 'S1', 'KEWIR', '', '', '', '', NULL),
('SP344', '', '', '', 'Psikologi Dunia Kerja', 2, 2, 'MK', '8', 'T', '', '', '', '', 'T', 'S1', 'PSIDU', '', '', '', '', NULL),
('SP345', '', '', '', 'Basis Data Terapan', 2, 2, 'MK', '4', 'Y', 'SP346', '', '', '', 'Y', 'S1', 'BDTER', '', '', '', '', NULL),
('SP346', '', '', '', 'Sistem Basis Data', 4, 4, '', '3', 'T', '', '', '', '', 'T', 'S1', '-', '', '', '', '', NULL),
('SP348', '', '', '', 'Multimedia', 2, 2, '', '3', 'T', '', '', '', '', 'Y', 'S1', '-', '', '', '', '', NULL),
('SP349', '', '', '', 'Perancangan dan Pemrograman Web', 4, 4, 'MK', '5', 'Y', 'SP345', '', '', '', 'Y', '', '', '', '', '', '', NULL),
('SP350', '', '', '', 'Rekayasa Perangkat Lunak', 4, 4, 'MK', '5', 'Y', 'TI310', '', '', '', 'T', 'S1', 'RPL', '', '', '', '', NULL),
('SP351', '', '', '', 'Pengujian Perangkat Lunak', 2, 2, 'MK', '6', 'Y', 'SP350', '', '', '', 'T', 'S1', '-', '', '', '', '', NULL),
('SP352', '', '', '', 'Interaksi Manusia dengan Komputer', 2, 2, 'MK', '6', 'Y', 'SP350', '', '', '', 'T', 'S1', '-', '', '', '', '', NULL),
('SP353', '', '', '', 'Keamanan Komputer', 2, 2, 'MK', '4', 'T', '', '', '', '', 'T', 'S1', '-', '', '', '', '', NULL),
('SP354', '', '', '', 'Arsitektur & Organisasi Komputer', 2, 2, 'MK', '4', 'Y', 'SP314', '', '', '', 'T', '', '', '', '', '', '', NULL),
('SP355', '', '', '', 'Manajemen Proyek TI', 2, 2, '', '7', 'T', '', '', '', '', 'T', 'S1', '-', '', '', '', '', NULL),
('SP356', '', '', '', 'Aspek Hukum Dalam Rekayasa', 2, 2, 'MK', '5', 'T', '', '', '', '', 'T', 'S1', '-', '', '', '', '', NULL),
('SP410', '', '', '', 'Perancangan Web', 2, 2, 'MK', '4', 'T', '', '', '', '', 'T', 'S1', '', '', '', '', '', NULL),
('SP419', '', '', '', 'Jaringan Komputer Terapan I', 4, 4, 'MK', '3', 'Y', 'SP102', '', '', '', 'Y', 'D3', 'JKT01', '', '', '', '', NULL),
('SP420', '', '', '', 'Jaringan Komputer Terapan II', 4, 4, 'MK', '4', 'Y', 'SP419', '', '', '', 'Y', 'D3', 'JKT02', '', '', '', '', NULL),
('SP421', '', '', '', 'Jaringan Komputer Terapan III', 4, 4, 'MK', '5', 'Y', 'SP420', '', '', '', 'Y', 'D3', 'JKT03', '', '', '', '', NULL),
('SP422', '', '', '', 'Internet', 2, 2, '', '1', 'T', '', '', '', '', 'Y', 'D3', 'INNET', '', '', '', '', NULL),
('SP423', '', '', '', 'Web Programming', 2, 2, 'MK', '5', 'T', '', '', '', '', 'Y', 'D3', 'WEPRO', '', '', '', '', NULL),
('SP424', '', '', '', 'Perpajakan', 2, 2, '', '5', 'T', '', '', '', '', 'T', 'D3', 'PAJAK', '', '', '', '', NULL),
('SP425', '', '', '', 'Bahasa Mandarin', 2, 2, '', '4', 'T', '', '', '', '', 'T', 'D3', 'BARIN', '', '', '', '', NULL),
('SP427', '', '', '', 'Pemrograman Web Lanjut', 2, 2, '', '5', 'Y', 'SP320', '', '', '', 'Y', 'S1', '-', '', '', '', '', NULL),
('SP428', '', '', '', 'Manajemen Pemasaran', 2, 2, 'MK', '5', 'T', '', '', '', '', 'T', '', '', '', '', '', '', NULL),
('SP429', '', '', '', 'Manajemen Hubungan Pelanggan', 2, 2, '', '5', 'T', '', '', '', '', 'T', 'S1', '-', '', '', '', '', NULL),
('SP446', '', '', '', 'Jaringan Komputer Terapan I', 4, 4, 'MK', '3', 'T', '', '', '', '', 'Y', 'S1', 'JKT01', '', '', '', '', NULL),
('SP447', '', '', '', 'Jaringan Komputer Terapan II', 4, 4, 'MK', '5', 'Y', 'SP446', '', '', '', 'Y', 'S1', 'JKT02', '', '', '', '', NULL),
('SP448', '', '', '', 'Jaringan Komputer Terapan III', 4, 4, 'MK', '5', 'Y', 'SP447', '', '', '', 'Y', 'S1', 'JKT03', '', '', '', '', NULL),
('SP449', '', '', '', 'Internet', 2, 2, '', '2', 'T', '', '', '', '', 'Y', 'S1', 'INNET', '', '', '', '', NULL),
('SP450', '', '', '', 'Manajemen Proyek', 2, 2, '', '7', 'T', '', '', '', '', 'T', 'S1', 'MAPRO', '', '', '', '', NULL),
('SP452', '', '', '', 'Bahasa Mandarin', 2, 2, 'MK', '5', 'T', '', '', '', '', 'T', 'S1', '-', '', '', '', '', NULL),
('T1101', 'SP111', '', '', 'Bahasa Inggris', 3, 2, '', '1', 'T', '', '', '', '', 'T', 'D3', 'BI', '', '', '', '', NULL),
('T1102', 'TK202', '', '', 'Fisika Dasar', 3, 4, '', '1', 'T', '', '', '', '', 'Y', 'D3', 'FD', '', '', '', '', NULL),
('T1103', 'SP215', '', '', 'Pemrograman Dasar', 3, 4, '', '1', 'T', '', '', '', '', 'Y', 'D3', '', '', '', '', '', NULL),
('T1104', 'SP219', 'SP245', '', 'Matematika Diskrit', 3, 4, '', '1', 'T', '', '', '', '', 'T', 'D3', '', '', '', '', '', NULL),
('T1105', 'TK203', '', '', 'Elektronika 1', 3, 4, '', '1', 'T', '', '', '', '', 'Y', 'D3', '', '', '', '', '', NULL),
('T1106', 'TK208', '', '', 'Peng. Sistem Komputer', 3, 4, '', '1', 'T', '', '', '', '', 'Y', 'D3', '', '', '', '', '', NULL),
('T1107', 'TK307', '', '', 'Komunikasi Data', 2, 2, '', '1', 'T', '', '', '', '', 'T', 'D3', '', '', '', '', '', NULL),
('T1201', 'SP104', 'SP133', '', 'Pendidikan Agama Islam', 2, 2, '', '2', 'T', '', '', '', '', 'T', 'D3', '', '', '', '', '', NULL),
('T1202', 'SP105', 'SP134', '', 'Pendidikan Agama Katolik', 2, 2, '', '2', 'T', '', '', '', '', 'T', 'D3', '', '', '', '', '', NULL),
('T1203', 'SP106', 'SP135', '', 'Pendidikan Agama Kristen', 2, 2, '', '2', 'T', '', '', '', '', 'T', 'D3', '', '', '', '', '', NULL),
('T1204', 'SP108', 'SP137', '', 'Pendidikan Agama Hindu', 2, 2, '', '2', 'T', '', '', '', '', 'T', 'D3', '', '', '', '', '', NULL),
('T1205', 'SP107', 'SP136', '', 'Pendidikan Agama Budha', 2, 2, '', '2', 'T', '', '', '', '', 'T', 'D3', '', '', '', '', '', NULL),
('T1206', 'SP244', 'SP216', '', 'Logika Algo. & Struktur Data', 3, 4, '', '2', 'Y', 'T1103', '', '', '', 'Y', 'D3', '', 'SP215', '', '', '', NULL),
('T1207', 'TK309', '', '', 'Rangkaian Digital', 3, 4, '', '2', 'Y', 'TK203', '', '', '', 'Y', 'D3', 'RADIT', 'T1105', '', '', '', NULL),
('T1208', 'TK308', '', '', 'Sistem Operasi', 3, 4, '', '2', 'T', '', '', '', '', 'T', 'D3', 'SO', '', '', '', '', NULL),
('T1209', 'TK402', '', '', 'Elektronika 2', 3, 4, '', '2', 'Y', 'T1105', '', '', '', 'Y', 'D3', '', 'TK203', '', '', '', NULL),
('T1210', '', '', '', 'Matematika Komputasi', 3, 4, '', '2', 'T', '', '', '', '', 'T', 'D3', '', '', '', '', '', NULL),
('T1211', 'TK321', '', '', 'Menggambar Teknik', 3, 4, '', '2', 'T', '', '', '', '', 'Y', 'D3', '', '', '', '', '', NULL),
('T2101', 'SP139', 'SP110', '', 'Bahasa Indonesia', 3, 2, '', '3', 'T', '', '', '', '', 'T', 'D3', '', '', '', '', '', NULL),
('T2102', 'SP331', '', '', 'Pemrograman Berorientasi Objek', 3, 4, '', '3', 'Y', 'T1206', '', '', '', 'Y', 'D3', 'PBO', 'SP216', '', '', '', NULL),
('T2103', 'SP354', '', '', 'Arsitektur dan Organisasi Komputer', 3, 4, '', '3', 'Y', 'T1106', '', '', '', 'T', 'D3', 'AOK', 'TK208', '', '', '', NULL),
('T2104', 'TK310', 'TK306', '', 'Mikroprosessor & Bahasa Rakitan', 3, 4, '', '3', 'Y', 'T1206', '', '', '', 'Y', 'D3', '', 'SP216', '', '', '', NULL),
('T2105', 'TK204', '', '', 'Teknik Rangkaian Listrik', 3, 4, '', '3', 'T', '', '', '', '', 'Y', 'D3', 'TRLIS', '', '', '', '', NULL),
('T2106', 'TK401', 'TK410', '', 'Jaringan Komputer', 3, 4, '', '3', 'T', '', '', '', '', 'Y', 'D3', '', '', '', '', '', NULL),
('T2107', 'TK406', '', '', 'Multimedia', 2, 4, '', '3', 'T', '', '', '', '', 'Y', 'D3', '', '', '', '', '', NULL),
('T2108', '', '', '', 'Simulator Rangkaian Elektronika', 2, 4, '', '3', 'T', '', '', '', '', 'Y', 'D3', '', '', '', '', '', NULL),
('T2201', 'SP425', 'SP452', '', 'Bahasa Mandarin', 3, 2, '', '4', 'T', '', '', '', '', 'T', 'D3', '', '', '', '', '', NULL),
('T2202', '', '', '', 'Pemrograman Web', 3, 4, '', '4', 'Y', 'T2102', '', '', '', 'Y', 'D3', '', 'SP331', '', '', '', NULL),
('T2203', '', '', '', 'Dasar Sistem Kontrol', 3, 4, '', '4', 'Y', 'T1210', '', '', '', 'T', 'D3', '', 'TK201', '', '', '', NULL),
('T2204', '', '', '', 'Embeded System', 3, 4, '', '4', 'Y', 'T1207', '', '', '', 'Y', 'D3', '', 'TK309', '', '', '', NULL),
('T2205', 'TK312', '', '', 'Antarmuka Perangkat Komputer', 3, 4, '', '4', 'Y', 'T1207', '', '', '', 'Y', 'D3', '', 'TK309', '', '', '', NULL),
('T2206', '', '', '', 'Instalasi dan Perawatan Komputer', 3, 4, '', '4', 'T', '', '', '', '', 'Y', 'D3', '', '', '', '', '', NULL),
('T2207', '', '', '', 'Perancangan Sistem Digital', 2, 2, '', '4', 'Y', '', '', '', '', 'T', 'D3', '', 'TK309', '', '', '', NULL),
('T2208', '', '', '', 'Jaringan Komputer Terapan', 2, 4, '', '4', 'Y', 'T2106', '', '', '', 'Y', 'D3', '', 'TK401', '', '', '', NULL),
('T2209', '', '', '', 'Aplikasi Bisnis', 2, 4, '', '4', 'T', '', '', '', '', 'Y', 'D3', '', '', '', '', '', NULL),
('T3101', 'TK407', '', '', 'Keamanan Komputer', 3, 2, '', '5', 'T', '', '', '', '', 'T', 'D3', '', '', '', '', '', NULL),
('T3102', 'TK408', '', '', 'Programmable Logic Controller', 3, 4, '', '5', 'Y', 'T1207', '', '', '', 'Y', 'D3', 'PLC', 'TK309', '', '', '', NULL),
('T3103', 'SP343', 'SP317', '', 'Kewirausahaan', 3, 2, '', '5', 'T', '', '', '', '', 'T', 'D3', '', '', '', '', '', NULL),
('T3104', 'TK322', '', '', 'Robotika', 3, 4, '', '5', 'T', '', '', '', '', 'Y', 'D3', '', '', '', '', '', NULL),
('T3105', '', '', '', 'Jaringan Nirkabel', 2, 4, '', '5', 'Y', 'T2106', '', '', '', 'Y', 'D3', '', 'TK401', '', '', '', NULL),
('T3106', '', '', '', 'Kerja Praktek', 2, 2, '', '5', 'T', '', '', '', '', 'T', 'D3', '', '', '', '', '', NULL),
('T3107', '', '', '', 'Pemrograman Aplikasi Bergerak', 2, 4, '', '5', 'Y', 'T2202', 'T2205', '', '', 'Y', 'D3', '', 'SP320', 'TK312', '', '', NULL),
('T3108', '', '', '', 'Pemrograman Jaringan', 2, 4, '', '5', 'Y', 'T1103', '', '', '', 'Y', 'D3', '', 'SP243', '', '', '', NULL),
('T3201', '', '', '', 'Administrasi Jaringan Komputer', 3, 4, '', '6', 'T', '', '', '', '', 'Y', 'D3', '', '', '', '', '', NULL),
('T3202', '', '', '', 'Etika Profesi', 2, 2, '', '6', 'T', '', '', '', '', 'T', 'D3', '', '', '', '', '', NULL),
('T3203', 'TK320', '', '', 'Tugas Akhir', 4, 4, '', '6', 'T', '', '', '', '', 'T', 'D3', 'TA', '', '', '', '', NULL),
('T3204', '', '', '', 'Pend. Pancasila & Kewarganegaraan', 3, 2, '', '6', 'T', '', '', '', '', 'T', 'D3', '', '', '', '', '', NULL),
('TI201', '', '', '', 'Kalkulus I', 4, 4, '', '1', 'T', '', '', '', '', 'T', 'S1', 'KAL01', '', '', '', '', NULL),
('TI202', '', '', '', 'Kalkulus II', 4, 4, '', '2', 'Y', 'TI201', '', '', '', 'T', 'S1', 'KAL02', '', '', '', '', NULL),
('TI203', '', '', '', 'Kalkulus III', 4, 4, '', '3', 'T', '', '', '', '', 'T', 'S1', 'KAL03', '', '', '', '', NULL),
('TI204', '', '', '', 'Fisika Dasar I', 2, 2, 'MK', '2', 'T', '', '', '', '', 'T', 'S1', 'FIS01', '', '', '', '', NULL),
('TI205', '', '', '', 'Fisika Dasar II', 4, 4, 'MK', '3', 'T', '', '', '', '', 'Y', 'S1', 'FIS02', '', '', '', '', NULL),
('TI206', '', '', '', 'Statistik Dasar', 2, 2, '', '1', 'T', '', '', '', '', 'T', 'S1', 'STADA', '', '', '', '', NULL),
('TI207', '', '', '', 'Statistik Probabilitas', 2, 2, 'MK', '2', 'T', '', '', '', '', 'T', 'S1', 'STABA', '', '', '', '', NULL),
('TI208', '', '', '', 'Konsep Teknologi', 2, 2, 'MK', '1', 'T', '', '', '', '', 'T', 'S1', 'KOTEK', '', '', '', '', NULL),
('TI209', '', '', '', 'Struktur Data', 4, 4, 'MK', '2', 'Y', 'SP239', '', '', '', 'Y', 'S1', 'STDAT', '', '', '', '', NULL),
('TI210', '', '', '', 'Aljabar Linier  dan Matriks', 4, 4, '', '1', 'T', '', '', '', '', 'T', 'S1', 'ALIMA', '', '', '', '', NULL),
('TI211', '', '', '', 'Logika Matematika ', 2, 2, 'MK', '2', 'T', '', '', '', '', 'T', 'S1', 'LOGMA', '', '', '', '', NULL),
('TI212', '', '', '', 'Matematika Diskrit', 4, 4, '', '3', 'T', '', '', '', '', 'T', 'S1', 'MADIS', '', '', '', '', NULL),
('TI213', '', '', '', 'Metode Numerik', 2, 2, '', '3', 'Y', 'TI202', '', '', '', 'T', 'S1', 'MENUM', '', '', '', '', NULL),
('TI214', '', '', '', 'Teknik Simulasi', 2, 2, '', '7', 'Y', 'SP246', '', '', '', 'T', 'S1', 'TESIM', '', '', '', '', NULL),
('TI215', '', '', '', 'Pengantar Robotika', 2, 2, '', '7', 'Y', 'SP245', '', '', '', 'Y', 'S1', 'PEROB', '', '', '', '', NULL),
('TI216', '', '', '', 'Rangkaian Digital', 2, 2, '', '4', 'T', '', '', '', '', 'Y', 'S1', 'RADIT', '', '', '', '', NULL),
('TI217', '', '', '', 'Pengantar Arsitektur Komputer', 4, 4, 'MK', '3', 'T', '', '', '', '', 'T', 'S1', 'PAKOM', '', '', '', '', NULL),
('TI218', '', '', '', 'Konsep Teknologi Informasi', 2, 2, 'MK', '1', 'T', '', '', '', '', 'T', 'S1', '', '', '', '', '', NULL),
('TI219', '', '', '', 'Fisika Dasar', 4, 4, 'MK', '2', 'T', '', '', '', '', 'Y', 'S1', '', '', '', '', '', NULL),
('TI301', '', '', '', 'Pemrograman Berbasis Web', 2, 2, 'MK', '4', 'T', '', '', '', '', 'Y', 'S1', 'PBWEB', '', '', '', '', NULL),
('TI302', '', '', '', 'Organisasi Komputer', 2, 2, 'MK', '2', 'T', '', '', '', '', 'T', 'S1', 'ORKOM', '', '', '', '', NULL),
('TI303', '', '', '', 'Sistem Operasi', 4, 4, 'MK', '7', 'T', '', '', '', '', 'T', 'S1', 'SISOP', '', '', '', '', NULL),
('TI304', '', '', '', 'Teori Bahasa dan Automata', 4, 4, 'MK', '4', 'T', '', '', '', '', 'T', 'S1', 'TBAUT', '', '', '', '', NULL),
('TI305', '', '', '', 'Teknik Kompilasi', 2, 2, 'MK', '6', 'Y', 'TI304', '', '', '', 'T', 'S1', 'TEKKO', '', '', '', '', NULL),
('TI306', '', '', '', 'Sistem Basis Data', 2, 2, 'MK', '3', 'T', '', '', '', '', 'T', 'S1', 'SIBDA', '', '', '', '', NULL),
('TI307', '', '', '', 'Sistem Informasi', 4, 4, 'MK', '4', 'T', '', '', '', '', 'T', 'S1', 'SISFO', '', '', '', '', NULL),
('TI308', '', '', '', 'Sistem Berkas', 2, 2, 'MK', '7', 'T', '', '', '', '', 'T', 'S1', 'SISBE', '', '', '', '', NULL),
('TI309', '', '', '', 'Bahasa Rakitan', 4, 4, 'MK', '4', 'T', '', '', '', '', 'Y', 'S1', 'BARAK', '', '', '', '', NULL),
('TI310', '', '', '', 'Pemrograman Berorientasi Objek', 4, 4, 'MK', '4', 'Y', 'SP244', '', '', '', 'Y', 'S1', 'PEMBO', '', '', '', '', NULL),
('TI311', '', '', '', 'Interaksi Manusia dan Komputer', 2, 2, 'MK', '6', 'T', '', '', '', '', 'T', 'S1', 'IMKOM', '', '', '', '', NULL),
('TI312', '', '', '', 'Kerja Praktek', 2, 2, 'MK', '5', 'T', '', '', '', '', 'T', 'S1', 'KP', '', '', '', '', NULL),
('TI313', '', '', '', 'Rekayasa Perangkat Lunak', 4, 4, 'MK', '6', 'T', '', '', '', '', 'T', 'S1', 'REPEL', '', '', '', '', NULL),
('TI314', '', '', '', 'Pemrograman Visual I', 4, 4, 'MK', '4', 'T', '', '', '', '', 'Y', 'S1', 'PVIS1', '', '', '', '', NULL),
('TI315', '', '', '', 'Pemrograman Visual II', 4, 4, 'MK', '5', 'Y', 'TI314', '', '', '', 'Y', 'S1', 'PVIS2', '', '', '', '', NULL),
('TI316', '', '', '', 'Pengolahan Citra', 2, 2, 'MK', '7', 'T', '', '', '', '', 'T', 'S1', 'PECIT', '', '', '', '', NULL),
('TI317', '', '', '', 'Seminar', 2, 2, 'MK', '7', 'T', '', '', '', '', 'T', 'S1', 'SMIN', '', '', '', '', NULL),
('TI318', '', '', '', 'Skripsi', 6, 6, 'MK', '7', 'Y', 'SP240', '', '', '', 'T', 'S1', 'SKRIP', '', '', '', '', NULL),
('TI319', '', '', '', 'Pemrograman Terstruktur', 2, 2, 'MK', '5', 'T', '', '', '', '', 'Y', 'S1', 'PTRK', '', '', '', '', NULL),
('TI320', '', '', '', 'Sistem Basis Data', 2, 2, 'MK', '3', 'T', '', '', '', '', 'T', 'S1', 'SBD', '', '', '', '', NULL),
('TI321', '', '', '', 'Basis Data Terapan', 4, 4, 'MK', '5', 'T', '', '', '', '', 'Y', 'S1', 'BDT', '', '', '', '', NULL);
INSERT INTO `kurikulummdp` (`Kode_MK`, `KODE_MK1`, `KODE_MK2`, `KODE_MK3`, `Keterangan`, `Sks`, `SKS_BAYAR`, `Jenis`, `Semester`, `Bersyarat`, `Prasyarat1`, `Prasyarat2`, `Prasyarat3`, `Prasyarat4`, `Praktek`, `KodeJrs`, `SINGKATAN`, `Prasyarat_Lama1`, `Prasyarat_Lama2`, `Prasyarat_Lama3`, `Prasyarat_Lama4`, `Prasyarat_Lama1_2`) VALUES
('TI322', '', '', '', 'Intelegensia Buatan', 4, 4, 'MK', '3', 'Y', 'SP244', '', '', '', 'Y', '', '', '', '', '', '', NULL),
('TI323', '', '', '', 'Jaringan Komputer', 2, 2, 'MK', '3', 'T', '', '', '', '', 'Y', 'S1', '-', '', '', '', '', NULL),
('TI324', '', '', '', 'Mikro. & Bahasa Rakitan', 4, 4, 'MK', '4', 'Y', 'SP243', '', '', '', 'Y', '', '', '', '', '', '', NULL),
('TI325', '', '', '', 'RPL Terapan', 2, 2, 'MK', '7', 'T', '', '', '', '', 'T', '', '', '', '', '', '', NULL),
('TI326', '', '', '', 'Pemrograman Visual I', 4, 4, '', '4', 'Y', 'SP240', '', '', '', 'Y', 'S1', '-', '', '', '', '', NULL),
('TI327', '', '', '', 'Pemrograman Visual I', 4, 4, 'MK', '4', 'T', '', '', '', '', 'Y', 'S1', '-', '', '', '', '', NULL),
('TI328', '', '', '', 'Proyek Akhir', 4, 4, 'MK', '7', 'T', '', '', '', '', 'T', '', '', '', '', '', '', NULL),
('TI401', '', '', '', 'Komunikasi Data', 4, 4, '', '3', 'T', '', '', '', '', 'T', 'S1', 'KODAT', '', '', '', '', NULL),
('TI402', '', '', '', 'Mikroprosesor', 2, 2, 'MK', '4', 'T', '', '', '', '', 'T', 'S1', 'MIPRO', '', '', '', '', NULL),
('TI403', '', '', '', 'Interfacing dan Peripheral ', 2, 2, 'MK', '4', 'T', '', '', '', '', 'T', 'S1', 'INPER', '', '', '', '', NULL),
('TI404', '', '', '', 'Programmable Logic Controller', 4, 4, 'MK', '5', 'Y', 'TI216', '', '', '', 'Y', 'S1', 'PROLC', '', '', '', '', NULL),
('TI405', '', '', '', 'Pengolahan Data Terdistribusi', 2, 2, 'MK', '6', 'T', '', '', '', '', 'T', 'S1', 'PODAT', '', '', '', '', NULL),
('TI406', '', '', '', 'Grafika Komputer', 2, 2, '', '7', 'Y', 'TI209', '', '', '', 'Y', 'S1', 'GRKOM', '', '', '', '', NULL),
('TI407', '', '', '', 'Keamanan Komputer', 2, 2, '', '6', 'T', '', '', '', '', 'T', 'S1', 'KEKOM', '', '', '', '', NULL),
('TI408', '', '', '', 'Aspek Hukum Dalam Rekayasa', 2, 2, '', '7', 'T', '', '', '', '', 'T', 'S1', 'ASHDR', '', '', '', '', NULL),
('TI409', '', '', '', 'Pemrograman Java', 2, 2, '', '5', 'T', '', '', '', '', 'Y', 'S1', '', '', '', '', '', NULL),
('TI411', '', '', '', 'Pengantar Aplikasi Bergerak', 2, 2, '', '5', 'T', '', '', '', '', 'Y', 'S1', '', '', '', '', '', NULL),
('TI412', '', '', '', 'Pemrograman Aplikasi Bergerak ', 4, 4, 'MK', '6', 'Y', 'TI310', '', '', '', 'Y', 'S1', '', '', '', '', '', NULL),
('TI413', '', '', '', 'Manajemen Pengetahuan', 2, 2, '', '6', 'Y', 'TI307', '', '', '', 'T', 'S1', '-', '', '', '', '', NULL),
('TI414', '', '', '', 'Komputer Grafik', 2, 2, '', '6', 'T', '', '', '', '', 'T', 'S1', '-', '', '', '', '', NULL),
('TI415', '', '', '', 'Data Warehouse', 2, 2, '', '7', 'Y', 'SP345', '', '', '', 'T', 'S1', '-', '', '', '', '', NULL),
('TI416', '', '', '', 'Kriptografi', 2, 2, 'MK', '5', 'Y', 'SP245', '', '', '', 'T', '', '', '', '', '', '', NULL),
('TI417', '', '', '', 'Teknik Kompilasi', 4, 4, '', '6', 'T', '', '', '', '', 'T', 'S1', 'TEKKO', '', '', '', '', NULL),
('TI419', '', '', '', 'Pengolahan Citra', 2, 2, 'MK', '5', 'Y', 'SP245', 'TI202', '', '', 'T', '', '', '', '', '', '', NULL),
('TI420', '', '', '', 'Pemrosesan Teks', 4, 4, 'MK', '6', 'Y', 'TI210', 'SP246', 'SP243', '', 'T', '', '', '', '', '', '', NULL),
('TI421', '', '', '', 'Soft Computing', 4, 4, 'MK', '7', 'Y', 'SP245', 'TI322', '', '', 'T', '', '', '', '', '', '', NULL),
('TI423', '', '', '', 'Administrasi Jaringan Komputer', 2, 2, '', '5', 'Y', 'TI323', '', '', '', 'Y', 'S1', '-', '', '', '', '', NULL),
('TI424', '', '', '', 'Jaringan Komputer Terapan', 4, 4, 'MK', '6', 'Y', 'TI323', '', '', '', 'Y', 'S1', '-', '', '', '', '', NULL),
('TI425', '', '', '', 'Pemrograman Jaringan', 2, 2, 'MK', '7', 'Y', 'SP243', 'TI323', '', '', 'Y', '', '', '', '', '', '', NULL),
('TI426', '', '', '', 'Multimedia', 4, 4, 'MK', '7', 'T', '', '', '', '', 'Y', 'S1', 'MULTI', '', '', '', '', NULL),
('TI427', '', '', '', 'iOS Programming', 4, 4, 'MK', '7', 'Y', 'TI310', '', '', '', 'Y', 'S1', 'SIG', '', '', '', '', NULL),
('TI428', '', '', '', 'Sistem Informasi Geografis', 4, 4, 'MK', '7', 'Y', 'TI307', 'TI419', '', '', 'Y', 'S1', '-', '', '', '', '', NULL),
('TI999', '', '', '', 'Testing saja', 3, 3, 'MK', '1', 'T', '', '', '', '', 'T', '', '', '', '', '', '', NULL),
('TK201', '', '', '', 'Kalkulus', 4, 4, '', '1', 'T', '', '', '', '', 'T', 'D3', 'KALKU', '', '', '', '', NULL),
('TK202', '', '', '', 'Fisika Dasar', 4, 4, 'MK', '1', 'T', '', '', '', '', 'Y', 'D3', 'FISDA', '', '', '', '', NULL),
('TK203', '', '', '', 'Elektronika Dasar', 4, 4, 'MK', '1', 'T', '', '', '', '', 'Y', 'D3', 'ELKDA', '', '', '', '', NULL),
('TK204', '', '', '', 'Teknik Rangkaian Listrik', 4, 4, '', '2', 'T', '', '', '', '', 'Y', 'D3', 'TRLIS', '', '', '', '', NULL),
('TK205', '', '', '', 'Statistika Deskriptif', 2, 2, 'MK', '2', 'T', '', '', '', '', 'T', 'D3', 'STDES', '', '', '', '', NULL),
('TK206', '', '', '', 'Pengenalan Pengaturan', 4, 4, 'MK', '3', 'T', '', '', '', '', 'T', 'D3', 'PENGA', '', '', '', '', NULL),
('TK207', '', '', '', 'Teknik Kontrol', 4, 4, 'MK', '4', 'Y', 'TK201', '', '', '', 'T', 'D3', 'KONTR', '', '', '', '', NULL),
('TK208', '', '', '', 'Pengantar Sistem Komputer', 2, 2, 'MK', '1', 'T', '', '', '', '', 'T', 'D3', '', '', '', '', '', NULL),
('TK301', '', '', '', 'Pengenalan PDE', 2, 2, 'MK', '1', 'T', '', '', '', '', 'T', 'D3', 'PEPDE', '', '', '', '', NULL),
('TK302', '', '', '', 'Pemrograman Pascal', 2, 2, 'MK', '2', 'T', 'SP210', '', '', '', 'Y', 'D3', 'PASCA', '', '', '', '', NULL),
('TK303', '', '', '', 'Pemrograman Terstruktur', 4, 4, 'MK', '5', 'Y', 'TK302', '', '', '', 'Y', 'D3', 'PETER', '', '', '', '', NULL),
('TK304', '', '', '', 'Arsitektur Komputer', 4, 4, 'MK', '3', 'Y', 'TK208', '', '', '', 'T', 'D3', 'ARKOM', '', '', '', '', NULL),
('TK305', '', '', '', 'Statistika Probabilitas', 2, 2, 'MK', '3', 'Y', 'TK205', '', '', '', 'T', 'D3', 'STABA', '', '', '', '', NULL),
('TK306', '', '', '', 'Bahasa Rakitan', 4, 4, 'MK', '3', 'Y', 'SP216', '', '', '', 'Y', 'D3', 'BARAK', '', '', '', '', NULL),
('TK307', '', '', '', 'Komunikasi Data', 4, 4, 'MK', '3', 'T', '', '', '', '', 'T', 'D3', 'KOMDA', '', '', '', '', NULL),
('TK308', '', '', '', 'Sistem Operasi', 4, 4, 'MK', '2', 'T', '', '', '', '', 'T', 'D3', 'SISOP', '', '', '', '', NULL),
('TK309', '', '', '', 'Rangkaian Digital', 4, 4, 'MK', '3', 'Y', 'TK203', '', '', '', 'Y', 'D3', 'RADIT', '', '', '', '', NULL),
('TK310', '', '', '', 'Mikroprosesor', 4, 4, 'MK', '5', 'Y', 'TK309', '', '', '', 'Y', 'D3', 'MIPRO', '', '', '', '', NULL),
('TK311', '', '', '', 'Mikroelektronika', 2, 2, 'MK', '3', 'T', '', '', '', '', 'T', 'D3', 'MIELK', '', '', '', '', NULL),
('TK312', '', '', '', 'Interfacing/Peripheral Komputer', 4, 4, 'MK', '5', 'Y', 'TK309', '', '', '', 'Y', 'D3', 'INPER', '', '', '', '', NULL),
('TK313', '', '', '', 'Pengaturan Elektronika', 2, 2, 'MK', '2', 'T', '', '', '', '', 'T', 'D3', 'PNELK', '', '', '', '', NULL),
('TK314', '', '', '', 'Peralatan Elektronika', 2, 2, 'MK', '3', 'T', '', '', '', '', 'T', 'D3', 'PRELK', '', '', '', '', NULL),
('TK315', '', '', '', 'Metode Pemeliharaan', 2, 2, 'MK', '4', 'T', '', '', '', '', 'T', 'D3', 'MEPEM', '', '', '', '', NULL),
('TK316', '', '', '', 'Troubleshooting', 4, 4, 'MK', '6', 'T', '', '', '', '', 'Y', 'D3', 'TROUB', '', '', '', '', NULL),
('TK317', '', '', '', 'Pengantar Telekomunikasi', 2, 2, 'MK', '5', 'T', '', '', '', '', 'T', 'D3', 'PETEL', '', '', '', '', NULL),
('TK318', '', '', '', 'Teknik Simulasi', 2, 2, 'MK', '5', 'T', '', '', '', '', 'T', 'D3', 'TESIM', '', '', '', '', NULL),
('TK319', '', '', '', 'Intelegensia Buatan', 4, 4, 'MK', '6', 'T', '', '', '', '', 'Y', 'D3', 'INTBU', '', '', '', '', NULL),
('TK320', '', '', '', 'Tugas Akhir', 4, 4, 'MK', '5', 'T', '', '', '', '', 'T', 'D3', 'TUHIR', '', '', '', '', NULL),
('TK321', '', '', '', 'Menggambar Teknik', 2, 2, 'MK', '2', 'T', '', '', '', '', 'Y', 'D3', '', '', '', '', '', NULL),
('TK322', '', '', '', 'Pengantar Robotika', 4, 4, 'MK', '5', 'Y', 'TK309', '', '', '', 'Y', '', '', '', '', '', '', NULL),
('TK401', '', '', '', 'Jaringan Komputer', 4, 4, '', '4', 'T', '', '', '', '', 'Y', 'D3', 'JARKO', '', '', '', '', NULL),
('TK402', '', '', '', 'Elektronika Lanjut', 2, 2, 'MK', '3', 'T', '', '', '', '', 'T', 'D3', 'ELJUT', '', '', '', '', NULL),
('TK403', '', '', '', 'Pengelolaan Instalasi Komputer', 2, 2, 'MK', '2', 'T', '', '', '', '', 'T', 'D3', 'PIK', '', '', '', '', NULL),
('TK404', '', '', '', 'Mikrocontroller', 2, 2, 'MK', '4', 'Y', 'TK309', '', '', '', 'Y', 'D3', 'MIKCO', '', '', '', '', NULL),
('TK405', '', '', '', 'Pemrograman C++', 4, 4, 'MK', '5', 'T', '', '', '', '', 'T', 'D3', 'PRC++', '', '', '', '', NULL),
('TK406', '', '', '', 'Multimedia', 2, 2, '', '5', 'T', '', '', '', '', 'T', 'D3', 'MUMED', '', '', '', '', NULL),
('TK407', '', '', '', 'Keamanan Komputer', 2, 2, '', '6', 'T', '', '', '', '', 'T', 'D3', 'KEKOM', '', '', '', '', NULL),
('TK408', '', '', '', 'Programmable Logic Controller (PLC)', 4, 4, '', '5', 'Y', 'TK309', '', '', '', 'Y', 'D3', '-', '', '', '', '', NULL),
('TK409', '', '', '', 'Pemrograman C++', 4, 4, 'MK', '5', 'T', '', '', '', '', 'Y', 'D3', '', '', '', '', '', NULL),
('TK410', '', '', '', 'Jaringan Komputer', 4, 4, 'MK', '6', 'T', '', '', '', '', 'Y', '', '', '', '', '', '', NULL),
('TK411', '', '', '', 'Pengantar Simulator Rangkaian Elektronika', 2, 2, 'MK', '3', 'Y', 'SP216', '', '', '', 'Y', '', '', '', '', '', '', NULL),
('TK413', '', '', '', 'Administrasi Jaringan ', 4, 4, 'MK', '5', 'T', '', '', '', '', 'Y', '', '', '', '', '', '', NULL),
('TK414', '', '', '', 'Pemrograman Perangkat Bergerak', 4, 4, 'MK', '5', 'Y', 'SP331', '', '', '', 'Y', '', '', '', '', '', '', NULL),
('TK999', 'TK409', '', '', 'CONTOH', 2, 2, 'MK', '5', 'T', '', '', '', '', 'T', 'D3', 'CNTH', '', '', '', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `open_km`
--

CREATE TABLE `open_km` (
  `id` int(4) NOT NULL,
  `thnAkademik` varchar(9) NOT NULL,
  `kd_semester` varchar(1) NOT NULL,
  `kd_dosen` varchar(6) NOT NULL,
  `skor` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `open_km`
--

INSERT INTO `open_km` (`id`, `thnAkademik`, `kd_semester`, `kd_dosen`, `skor`) VALUES
(3, '2018/2019', '2', '121083', 5),
(4, '2018/2019', '2', '111066', 2),
(5, '2018/2019', '2', '051039', 5),
(6, '2018/2019', '2', '021005', 5),
(7, '2018/2019', '2', '001001', 0),
(8, '2018/2019', '2', '121076', 0),
(9, '2018/2019', '2', '082164', 2),
(10, '2018/2019', '1', '121083', 2),
(11, '2018/2019', '2', '141102', 5),
(12, '2018/2019', '2', '121082', 5),
(13, '2018/2019', '2', '111067', 5),
(14, '2018/2019', '2', '052098', 5),
(15, '2018/2019', '2', '021007', 2),
(16, '2018/2019', '2', '121086', 2),
(17, '2018/2019', '2', '121077', 2),
(18, '2018/2019', '2', '101057', 2),
(19, '2018/2019', '2', '041034', 5),
(20, '2018/2019', '2', '141101', 2),
(21, '2018/2019', '2', '121080', 5),
(22, '2018/2019', '2', '021014', 2),
(23, '2018/2019', '2', '131089', 2),
(24, '2018/2019', '2', '121079', 2),
(25, '2018/2019', '2', '111062', 5),
(26, '2018/2019', '2', '051038', 5),
(27, '2018/2019', '2', '132241', 2),
(28, '2018/2019', '2', '041032', 5),
(29, '2018/2019', '2', '151107', 5),
(30, '2018/2019', '2', '071046', 5),
(31, '2018/2019', '2', '131092', 5),
(32, '2018/2019', '2', '021018', 2),
(33, '2018/2019', '2', '151106', 0),
(34, '2018/2019', '2', '071045', 2),
(35, '2018/2019', '2', '111069', 5),
(36, '2018/2019', '2', '021013', 0);

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
('2018/2019', '111066', 'S1108', 'SI1A', '2018-09-12 00:00:00', '3B2', 12, 'Penjelasan Silabus & SAP\r\n', 29, 0, '2', '09:48', '11:29', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '111066', 'S4103', 'SI1A', '2018-09-12 00:00:00', '3B2', 14, 'Penjelasan Silabus & SAP\r\n', 29, 0, '2', '09:48', '11:29', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '111066', 'S4104', 'SI1A', '2018-09-12 00:00:00', '3B2', 13, 'Penjelasan Silabus & SAP\r\n', 29, 0, '2', '09:48', '11:29', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '111066', 'S2108', 'SI1A', '2018-09-12 00:00:00', '3B2', 13, 'Penjelasan Silabus & SAP\r\n', 29, 0, '2', '09:48', '11:29', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL),
('2018/2019', '111066', 'S1108', 'SI1A', '2018-09-12 00:00:00', '3B2', 12, 'Penjelasan Silabus & SAP\r\n', 29, 0, '1', '09:48', '11:29', NULL, NULL, NULL, 'Belum ada GBPP Pertemuan ini !', NULL, NULL);

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

--
-- Dumping data for table `rekapitulasi_polling`
--

INSERT INTO `rekapitulasi_polling` (`id`, `tahunAkademik`, `kd_semester`, `kd_dosen`, `kd_prodi`, `ikd`) VALUES
(1, '2018/2019', '2', '111066', '24', 3.4),
(2, '2018/2019', '2', '111066', '11', 3.8),
(3, '2018/2019', '2', '121083', '24', 3.6),
(4, '2018/2019', '2', '121083', '25', 3.4),
(5, '2018/2019', '2', '121083', '13', 3.8);

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
('2018/2019', '2', 'aktif'),
('2019/2020', '2', 'tidak aktif'),
('2020/2021', '1', 'tidak aktif');

-- --------------------------------------------------------

--
-- Table structure for table `tipe_kegiatan`
--

CREATE TABLE `tipe_kegiatan` (
  `id_kegiatan` int(1) NOT NULL,
  `jenis_kegiatan` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tipe_kegiatan`
--

INSERT INTO `tipe_kegiatan` (`id_kegiatan`, `jenis_kegiatan`) VALUES
(1, 'Seminar'),
(2, 'Workshop'),
(3, 'Pelatihan');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `kd_dosen` varchar(6) NOT NULL,
  `password` text NOT NULL,
  `hak_akses` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`kd_dosen`, `password`, `hak_akses`) VALUES
('021014', '$2y$10$n/506ForwUO06aXAgY4ulehfncx2Ve/ccRoUKQjqrJosKW6UGeW1e', '1'),
('041034', '$2y$10$MpGgRh7Rs4c85FenNmsR/.HkqjtlIuYYqpRpLlD0hMYYFJJ5.sb.q', '3'),
('051039', '$2y$10$sHm5QHAvm5jLukiTJg7nAusCp6EERXUmqi8oAYBgFw0aZ0O7e85oy', '1'),
('071046', '$2y$10$TQSoTH.YB8OA7Vu6E4wvx.0WZkF2VT.xjD4fy81eeX9aNazjcGFD.', '4'),
('111062', '$2y$10$5FI6ptwRNAlzqtIkd9jneu3Dk/P2TZTFJ.xCfAUE9WkAHiLvxzItS', '10'),
('111066', '$2y$10$7m3rxi4wN/wyxgI0Qou.MOJYEKuV1VYLHeqYnc3cNUuR6zQtow7vq', '1'),
('111067', '$2y$10$wekMiTaHcCM5YlbEhvTTxO8FyY.zKBM19rQcLItt.Jl8tBTBfUpDO', '2'),
('121083', '$2y$10$.33.yebmSx8G9fhxWSTQOeJhMycpJaOi72UEdqRFAoYKcq7XDqYXS', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_detail_kuesioner`
--
ALTER TABLE `data_detail_kuesioner`
  ADD PRIMARY KEY (`id`,`kd_kompetensi`),
  ADD KEY `kd_kompetensi` (`kd_kompetensi`);

--
-- Indexes for table `data_dosen_penelitian`
--
ALTER TABLE `data_dosen_penelitian`
  ADD KEY `id_penelitian` (`id_penelitian`),
  ADD KEY `kd_dosen` (`kd_dosen`);

--
-- Indexes for table `data_dosen_proposal`
--
ALTER TABLE `data_dosen_proposal`
  ADD KEY `id_proposal` (`id_proposal`),
  ADD KEY `kd_dosen` (`kd_dosen`);

--
-- Indexes for table `data_kuesioner`
--
ALTER TABLE `data_kuesioner`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kd_dosen` (`kd_dosen`),
  ADD KEY `thnAkademik` (`thnAkademik`);

--
-- Indexes for table `data_penelitian`
--
ALTER TABLE `data_penelitian`
  ADD PRIMARY KEY (`id`),
  ADD KEY `thn_akademik` (`thn_akademik`);

--
-- Indexes for table `data_penunjang`
--
ALTER TABLE `data_penunjang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kd_dosen` (`kd_dosen`),
  ADD KEY `thnAkademik` (`thnAkademik`),
  ADD KEY `id_kegiatan` (`id_kegiatan`);

--
-- Indexes for table `data_proposal`
--
ALTER TABLE `data_proposal`
  ADD PRIMARY KEY (`id`),
  ADD KEY `thn_akademik` (`thn_akademik`);

--
-- Indexes for table `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`kd_dosen`),
  ADD KEY `kode_prodi` (`kode_prodi`);

--
-- Indexes for table `institusi`
--
ALTER TABLE `institusi`
  ADD PRIMARY KEY (`kode_institusi`);

--
-- Indexes for table `kategori_kinerja`
--
ALTER TABLE `kategori_kinerja`
  ADD PRIMARY KEY (`kd_kategori`);

--
-- Indexes for table `kegiatan_akademik`
--
ALTER TABLE `kegiatan_akademik`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kd_dosen` (`kd_dosen`),
  ADD KEY `tahunAkademik` (`thnAkademik`);

--
-- Indexes for table `kompetensi`
--
ALTER TABLE `kompetensi`
  ADD PRIMARY KEY (`kd_kompetensi`),
  ADD KEY `kd_kategori` (`kd_kategori`);

--
-- Indexes for table `kurikulummdp`
--
ALTER TABLE `kurikulummdp`
  ADD UNIQUE KEY `Kode_MK` (`Kode_MK`),
  ADD KEY `Prasyarat1` (`Prasyarat1`),
  ADD KEY `Prasyarat2` (`Prasyarat2`),
  ADD KEY `Prasyarat4` (`Prasyarat4`),
  ADD KEY `Keterangan` (`Keterangan`),
  ADD KEY `Prasyarat_Lama1` (`Prasyarat_Lama1`,`Prasyarat_Lama2`,`Prasyarat_Lama3`,`Prasyarat_Lama4`),
  ADD KEY `Prasyarat3` (`Prasyarat3`),
  ADD KEY `Sks` (`Sks`,`SKS_BAYAR`);

--
-- Indexes for table `open_km`
--
ALTER TABLE `open_km`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `program_studi`
--
ALTER TABLE `program_studi`
  ADD PRIMARY KEY (`kode_prodi`),
  ADD KEY `kode_institusi` (`kode_institusi`);

--
-- Indexes for table `rekapitulasi_polling`
--
ALTER TABLE `rekapitulasi_polling`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kd_dosen` (`kd_dosen`),
  ADD KEY `kd_prodi` (`kd_prodi`),
  ADD KEY `tahunAkademik` (`tahunAkademik`);

--
-- Indexes for table `tahun_akademik`
--
ALTER TABLE `tahun_akademik`
  ADD PRIMARY KEY (`tahunAkademik`,`kd_semester`);

--
-- Indexes for table `tipe_kegiatan`
--
ALTER TABLE `tipe_kegiatan`
  ADD PRIMARY KEY (`id_kegiatan`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`kd_dosen`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data_kuesioner`
--
ALTER TABLE `data_kuesioner`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `data_penelitian`
--
ALTER TABLE `data_penelitian`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `data_penunjang`
--
ALTER TABLE `data_penunjang`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `data_proposal`
--
ALTER TABLE `data_proposal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `kategori_kinerja`
--
ALTER TABLE `kategori_kinerja`
  MODIFY `kd_kategori` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `kegiatan_akademik`
--
ALTER TABLE `kegiatan_akademik`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `kompetensi`
--
ALTER TABLE `kompetensi`
  MODIFY `kd_kompetensi` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `open_km`
--
ALTER TABLE `open_km`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `rekapitulasi_polling`
--
ALTER TABLE `rekapitulasi_polling`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tipe_kegiatan`
--
ALTER TABLE `tipe_kegiatan`
  MODIFY `id_kegiatan` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `data_detail_kuesioner`
--
ALTER TABLE `data_detail_kuesioner`
  ADD CONSTRAINT `data_detail_kuesioner_ibfk_1` FOREIGN KEY (`id`) REFERENCES `data_kuesioner` (`id`),
  ADD CONSTRAINT `data_detail_kuesioner_ibfk_2` FOREIGN KEY (`kd_kompetensi`) REFERENCES `kompetensi` (`kd_kompetensi`);

--
-- Constraints for table `data_dosen_penelitian`
--
ALTER TABLE `data_dosen_penelitian`
  ADD CONSTRAINT `data_dosen_penelitian_ibfk_1` FOREIGN KEY (`id_penelitian`) REFERENCES `data_penelitian` (`id`),
  ADD CONSTRAINT `data_dosen_penelitian_ibfk_2` FOREIGN KEY (`kd_dosen`) REFERENCES `dosen` (`kd_dosen`);

--
-- Constraints for table `data_dosen_proposal`
--
ALTER TABLE `data_dosen_proposal`
  ADD CONSTRAINT `data_dosen_proposal_ibfk_1` FOREIGN KEY (`id_proposal`) REFERENCES `data_proposal` (`id`),
  ADD CONSTRAINT `data_dosen_proposal_ibfk_2` FOREIGN KEY (`kd_dosen`) REFERENCES `dosen` (`kd_dosen`);

--
-- Constraints for table `data_kuesioner`
--
ALTER TABLE `data_kuesioner`
  ADD CONSTRAINT `data_kuesioner_ibfk_1` FOREIGN KEY (`kd_dosen`) REFERENCES `dosen` (`kd_dosen`),
  ADD CONSTRAINT `data_kuesioner_ibfk_3` FOREIGN KEY (`thnAkademik`) REFERENCES `tahun_akademik` (`tahunAkademik`);

--
-- Constraints for table `data_penelitian`
--
ALTER TABLE `data_penelitian`
  ADD CONSTRAINT `data_penelitian_ibfk_1` FOREIGN KEY (`thn_akademik`) REFERENCES `tahun_akademik` (`tahunAkademik`);

--
-- Constraints for table `data_penunjang`
--
ALTER TABLE `data_penunjang`
  ADD CONSTRAINT `data_penunjang_ibfk_1` FOREIGN KEY (`kd_dosen`) REFERENCES `dosen` (`kd_dosen`),
  ADD CONSTRAINT `data_penunjang_ibfk_2` FOREIGN KEY (`thnAkademik`) REFERENCES `tahun_akademik` (`tahunAkademik`),
  ADD CONSTRAINT `data_penunjang_ibfk_3` FOREIGN KEY (`id_kegiatan`) REFERENCES `tipe_kegiatan` (`id_kegiatan`);

--
-- Constraints for table `data_proposal`
--
ALTER TABLE `data_proposal`
  ADD CONSTRAINT `data_proposal_ibfk_1` FOREIGN KEY (`thn_akademik`) REFERENCES `tahun_akademik` (`tahunAkademik`);

--
-- Constraints for table `dosen`
--
ALTER TABLE `dosen`
  ADD CONSTRAINT `dosen_ibfk_1` FOREIGN KEY (`kode_prodi`) REFERENCES `program_studi` (`kode_prodi`);

--
-- Constraints for table `kegiatan_akademik`
--
ALTER TABLE `kegiatan_akademik`
  ADD CONSTRAINT `kegiatan_akademik_ibfk_1` FOREIGN KEY (`kd_dosen`) REFERENCES `dosen` (`kd_dosen`),
  ADD CONSTRAINT `kegiatan_akademik_ibfk_2` FOREIGN KEY (`thnAkademik`) REFERENCES `tahun_akademik` (`tahunAkademik`);

--
-- Constraints for table `kompetensi`
--
ALTER TABLE `kompetensi`
  ADD CONSTRAINT `kompetensi_ibfk_1` FOREIGN KEY (`kd_kategori`) REFERENCES `kategori_kinerja` (`kd_kategori`);

--
-- Constraints for table `program_studi`
--
ALTER TABLE `program_studi`
  ADD CONSTRAINT `program_studi_ibfk_1` FOREIGN KEY (`kode_institusi`) REFERENCES `institusi` (`kode_institusi`);

--
-- Constraints for table `rekapitulasi_polling`
--
ALTER TABLE `rekapitulasi_polling`
  ADD CONSTRAINT `rekapitulasi_polling_ibfk_1` FOREIGN KEY (`kd_dosen`) REFERENCES `dosen` (`kd_dosen`),
  ADD CONSTRAINT `rekapitulasi_polling_ibfk_2` FOREIGN KEY (`kd_prodi`) REFERENCES `program_studi` (`kode_prodi`),
  ADD CONSTRAINT `rekapitulasi_polling_ibfk_3` FOREIGN KEY (`tahunAkademik`) REFERENCES `tahun_akademik` (`tahunAkademik`);

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`kd_dosen`) REFERENCES `dosen` (`kd_dosen`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
