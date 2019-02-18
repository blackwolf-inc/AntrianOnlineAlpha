-- phpMyAdmin SQL Dump
-- version 4.6.6deb4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 02, 2019 at 02:27 PM
-- Server version: 10.1.26-MariaDB-0+deb9u1
-- PHP Version: 7.0.32-2+0~20181015120817.7+stretch~1.gbpa6b8cf

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `antrian_v1`
--

-- --------------------------------------------------------

--
-- Table structure for table `dokter`
--

CREATE TABLE `dokter` (
  `ID_dk` varchar(5) NOT NULL,
  `username_dk` varchar(30) NOT NULL,
  `pasword_dk` varchar(30) NOT NULL,
  `id_praktek_dk` varchar(100) NOT NULL,
  `no_ijin_dk` varchar(50) NOT NULL,
  `alamat_tinngal_dk` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dokterumum`
--

CREATE TABLE `dokterumum` (
  `ID_dokterumum` varchar(10) NOT NULL,
  `nama_dokterumum` varchar(150) NOT NULL,
  `alamat_dokterumum` varchar(300) NOT NULL,
  `jambuka_dokterumum` varchar(100) NOT NULL,
  `jamtutup_dokterumum` varchar(50) NOT NULL,
  `pemilik_dokterumum` varchar(200) NOT NULL,
  `no_op_dokterumum` varchar(50) NOT NULL,
  `no_telp_dokterumum` varchar(20) NOT NULL,
  `cuti_dokterumum` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `klinik`
--

CREATE TABLE `klinik` (
  `ID_klinik` varchar(10) NOT NULL,
  `nama_klinik` varchar(150) NOT NULL,
  `alamat_klinik` varchar(300) NOT NULL,
  `jambuka_klinik` varchar(100) NOT NULL,
  `jamtutup_klinik` varchar(50) NOT NULL,
  `pemilik_klinik` varchar(200) NOT NULL,
  `no_op_klinik` varchar(50) NOT NULL,
  `no_telp_klinik` varchar(20) NOT NULL,
  `cuti_klinik` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `nimda`
--

CREATE TABLE `nimda` (
  `ID_nimda` varchar(5) NOT NULL,
  `username_nimda` varchar(30) NOT NULL,
  `password_nimda` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `oprator`
--

CREATE TABLE `oprator` (
  `ID_op` varchar(5) NOT NULL,
  `username_op` varchar(30) NOT NULL,
  `password_op` varchar(30) NOT NULL,
  `tingkat_op` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pasien`
--

CREATE TABLE `pasien` (
  `ID_pasien` varchar(16) NOT NULL,
  `username_pasien` varchar(30) NOT NULL,
  `password_pasien` varchar(30) NOT NULL,
  `nama_pasien` varchar(100) NOT NULL,
  `jenis_kelamin_pasien` varchar(1) NOT NULL,
  `alamat_pasien` varchar(300) NOT NULL,
  `no_hp_pasien` varchar(13) NOT NULL,
  `foto_profil_pasien` varchar(50) NOT NULL,
  `no_bpjs_pasien` varchar(13) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pukesmas`
--

CREATE TABLE `pukesmas` (
  `ID_pukesmas` varchar(10) NOT NULL,
  `nama_pukesmas` varchar(150) NOT NULL,
  `alamat_pukesmas` varchar(300) NOT NULL,
  `jambuka_pukesmas` varchar(100) NOT NULL,
  `jamtutup_pukesmas` varchar(50) NOT NULL,
  `pemilik_pukesmas` varchar(200) NOT NULL,
  `no_op_pukesmas` varchar(50) NOT NULL,
  `no_telp_pukesmas` varchar(20) NOT NULL,
  `cuti_pukesmas` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rumahsakit`
--

CREATE TABLE `rumahsakit` (
  `ID_rumahsakit` varchar(10) NOT NULL,
  `nama_rumahsakit` varchar(150) NOT NULL,
  `alamat_rumahsakit` varchar(300) NOT NULL,
  `jambuka_rumahsakit` varchar(100) NOT NULL,
  `jamtutup_rumahsakit` varchar(50) NOT NULL,
  `pemilik_rumahsakit` varchar(200) NOT NULL,
  `no_op_rumahsakit` varchar(50) NOT NULL,
  `no_telp_rumahsakit` varchar(20) NOT NULL,
  `cuti_rumahsakit` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `temp`
--

CREATE TABLE `temp` (
  `id_user_temp` varchar(10) NOT NULL,
  `no_antrian` varchar(30) NOT NULL,
  `jam_ambil_antrian` varchar(30) NOT NULL,
  `lokasi` varchar(200) NOT NULL,
  `tgl` varchar(50) NOT NULL,
  `id_oprator_temp` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dokter`
--
ALTER TABLE `dokter`
  ADD PRIMARY KEY (`ID_dk`);

--
-- Indexes for table `dokterumum`
--
ALTER TABLE `dokterumum`
  ADD PRIMARY KEY (`ID_dokterumum`);

--
-- Indexes for table `klinik`
--
ALTER TABLE `klinik`
  ADD PRIMARY KEY (`ID_klinik`);

--
-- Indexes for table `nimda`
--
ALTER TABLE `nimda`
  ADD PRIMARY KEY (`ID_nimda`);

--
-- Indexes for table `oprator`
--
ALTER TABLE `oprator`
  ADD PRIMARY KEY (`ID_op`);

--
-- Indexes for table `pasien`
--
ALTER TABLE `pasien`
  ADD PRIMARY KEY (`ID_pasien`);

--
-- Indexes for table `pukesmas`
--
ALTER TABLE `pukesmas`
  ADD PRIMARY KEY (`ID_pukesmas`);

--
-- Indexes for table `rumahsakit`
--
ALTER TABLE `rumahsakit`
  ADD PRIMARY KEY (`ID_rumahsakit`);

--
-- Indexes for table `temp`
--
ALTER TABLE `temp`
  ADD PRIMARY KEY (`id_user_temp`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
