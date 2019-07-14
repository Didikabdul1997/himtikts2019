-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 21, 2019 at 09:27 AM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `himtikts`
--

-- --------------------------------------------------------

--
-- Table structure for table `peserta`
--

CREATE TABLE `peserta` (
  `id_peserta` int(9) NOT NULL,
  `no_register` varchar(55) NOT NULL,
  `nama` varchar(99) NOT NULL,
  `alamat` varchar(155) NOT NULL,
  `no` varchar(15) NOT NULL,
  `kategori` varchar(99) NOT NULL,
  `bayar` varchar(99) NOT NULL,
  `kehadiran` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `peserta`
--

INSERT INTO `peserta` (`id_peserta`, `no_register`, `nama`, `alamat`, `no`, `kategori`, `bayar`, `kehadiran`) VALUES
(9, 'TS001', 'andrian', 'ds. sidodadi, kec. bangilan, kab. tuban', '085394167245', 'Umum / Mahasiswa', 'jauhari', 'belum'),
(10, 'TS002', 'NURUL AENI', 'DS. PUNGPUNGAN RT. 24 RW. 04 KEC. KALITIDU KAB. BOJONEGORO', '085235899469', 'Umum / Mahasiswa', '', 'belum'),
(11, 'TS003', 'LIA AGUSTINA', 'DS. NGUNUT KEC. DANDE R KAB. BOJONEGORO', '085335663220', 'Umum / Mahasiswa', '', 'belum'),
(12, 'TS004', 'RAKA BARUNATAMA', 'JL.KS. TUBUN Gg. SRINAYAN MOJOKAMPUNG BOJONEGORO', '082338259471', 'Umum / Mahasiswa', '', 'belum');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(33) NOT NULL,
  `password` varchar(33) NOT NULL,
  `nama` varchar(99) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `nama`) VALUES
(1, 'admin', 'himtikts', 'Talkshow Teknologi');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `peserta`
--
ALTER TABLE `peserta`
  ADD PRIMARY KEY (`id_peserta`,`no_register`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `peserta`
--
ALTER TABLE `peserta`
  MODIFY `id_peserta` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
