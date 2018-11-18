-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 08, 2016 at 08:04 AM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 7.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_sip`
--

-- --------------------------------------------------------

--
-- Table structure for table `sip_member`
--

CREATE TABLE `sip_member` (
  `id` int(5) NOT NULL,
  `nama` varchar(32) NOT NULL,
  `kitas` varchar(20) NOT NULL,
  `tipe` int(1) NOT NULL,
  `telp` varchar(15) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sip_member`
--

INSERT INTO `sip_member` (`id`, `nama`, `kitas`, `tipe`, `telp`, `status`) VALUES
(1, 'Christian Rosandhy', '507011223344556677', 1, '089622224614', 1),
(2, 'Agus Michele', '00998877665544', 1, '08123456789', 0),
(3, 'Gugun Rohman', '11002299338844', 2, '083118846221', 0),
(4, 'Nanang Hermawan', '10293847561029', 1, '0819996429158', 9),
(5, 'Sompret Lalala', '57483920162782', 2, '08153292857', 9),
(6, 'Kenangan Terindah', '01923701998237', 3, '089123763812', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sip_peminjaman`
--

CREATE TABLE `sip_peminjaman` (
  `kd_transaksi` int(5) NOT NULL,
  `id` int(5) NOT NULL,
  `tanggal` date NOT NULL,
  `jam_pinjam` time NOT NULL,
  `jumlah` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sip_peminjaman`
--

INSERT INTO `sip_peminjaman` (`kd_transaksi`, `id`, `tanggal`, `jam_pinjam`, `jumlah`) VALUES
(9, 1, '2016-04-07', '20:16:00', 3),
(10, 4, '2016-04-08', '08:33:00', 4),
(11, 3, '2016-04-08', '09:42:00', 12),
(12, 2, '2016-04-08', '10:31:00', 3);

-- --------------------------------------------------------

--
-- Table structure for table `sip_pengembalian`
--

CREATE TABLE `sip_pengembalian` (
  `kd_transaksi` int(5) NOT NULL,
  `tanggal_kembali` date NOT NULL,
  `jam_kembali` time NOT NULL,
  `biaya` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sip_pengembalian`
--

INSERT INTO `sip_pengembalian` (`kd_transaksi`, `tanggal_kembali`, `jam_kembali`, `biaya`) VALUES
(8, '2016-04-07', '13:14:00', 15000),
(9, '2016-04-08', '09:37:00', 210000),
(10, '2016-04-08', '09:39:00', 40000);

-- --------------------------------------------------------

--
-- Table structure for table `sip_setting`
--

CREATE TABLE `sip_setting` (
  `id` int(3) NOT NULL,
  `param` varchar(32) NOT NULL,
  `value` varchar(200) NOT NULL,
  `stat` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sip_setting`
--

INSERT INTO `sip_setting` (`id`, `param`, `value`, `stat`) VALUES
(1, 'username', 'admin', 1),
(2, 'password', 'admin', 1),
(3, 'harga', '5000', 1),
(4, 'paging', '20', 1),
(5, 'token', '66394070e3304458831a227a850301e608045fdc', 1),
(6, 'valid_time', '10', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `sip_member`
--
ALTER TABLE `sip_member`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sip_peminjaman`
--
ALTER TABLE `sip_peminjaman`
  ADD PRIMARY KEY (`kd_transaksi`);

--
-- Indexes for table `sip_setting`
--
ALTER TABLE `sip_setting`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `sip_member`
--
ALTER TABLE `sip_member`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `sip_peminjaman`
--
ALTER TABLE `sip_peminjaman`
  MODIFY `kd_transaksi` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `sip_setting`
--
ALTER TABLE `sip_setting`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
