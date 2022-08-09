-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 26, 2022 at 06:44 PM
-- Server version: 5.7.33
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_transaksi`
--

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `id_banner` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `banner` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`id_banner`, `tanggal`, `banner`) VALUES
(1, '2021-11-12', 'product-1-min.jpg'),
(2, '2021-11-12', 'product-2-min.jpg'),
(3, '2021-11-12', 'product-3-min.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `galeri`
--

CREATE TABLE `galeri` (
  `id` int(11) NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `galeri`
--

INSERT INTO `galeri` (`id`, `gambar`, `tanggal`) VALUES
(1, '1.jpg', '2021-11-01'),
(2, '2.jpg', '2021-11-02'),
(3, '3.jpg', '2021-11-03'),
(4, '4.jpg', '2021-11-04'),
(5, '5.jpg', '2021-11-05'),
(6, '6.jpg', '2021-11-06'),
(7, '7.jpg', '2021-11-07'),
(8, '8.jpg', '2021-11-08');

-- --------------------------------------------------------

--
-- Table structure for table `home`
--

CREATE TABLE `home` (
  `id` int(11) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `slogan` text NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `kontak` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `home`
--

INSERT INTO `home` (`id`, `judul`, `slogan`, `alamat`, `kontak`) VALUES
(1, 'KEUNTUNGAN MEMESAN DI ONE ADVERTISING', 'KEPUASAN KONSUMEN adalah prioritas utama kami, didukung team yang mumpuni, mesin yang terdepan di bidangnya dan service yang selalu update, menjadikan Angkasa Putra solusi terdepan untuk mempercayakan dokumen anda.', 'Jl. Kapten Pattimura, Rw. Sari, Kec. Kota Baru, Kota Jambi, Jambi 36361', '628237643475');

-- --------------------------------------------------------

--
-- Table structure for table `hutang`
--

CREATE TABLE `hutang` (
  `id_hutang` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `kreditur` varchar(100) NOT NULL,
  `catatan` text NOT NULL,
  `jumlah` int(11) NOT NULL,
  `user` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `jam_buka`
--

CREATE TABLE `jam_buka` (
  `id` int(11) NOT NULL,
  `hari` varchar(10) NOT NULL,
  `jam` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jam_buka`
--

INSERT INTO `jam_buka` (`id`, `hari`, `jam`) VALUES
(1, 'Senin', '09.00 - 17.00'),
(2, 'Selasa', '09.00 - 17.00'),
(3, 'Rabu', '09.00 - 17.00'),
(4, 'Kamis', '09.00 - 17.00'),
(5, 'Jumat', '09.00 - 17.00'),
(6, 'Sabtu', '09.00 - 17.00'),
(7, 'Minggu', '09.00 - 17.00');

-- --------------------------------------------------------

--
-- Table structure for table `layanan`
--

CREATE TABLE `layanan` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `gambar` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `layanan`
--

INSERT INTO `layanan` (`id`, `nama`, `gambar`) VALUES
(1, 'Banner', 'banner.jpg'),
(2, 'Brosur', 'brosur.jpg'),
(3, 'ID Card', 'idcard.jpg'),
(4, 'Kartu Pelajar', 'kartupelajar.jpg'),
(5, 'Roll Banner', 'rollbaner.jpg'),
(6, 'Stand Board', 'standboard.jpg'),
(7, 'Stempel Kayu', 'stempelkayu.jpg'),
(8, 'Y Banner', 'ybaner.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `pemasukan`
--

CREATE TABLE `pemasukan` (
  `id_pemasukan` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `catatan` text NOT NULL,
  `jumlah` int(11) NOT NULL,
  `user` varchar(30) NOT NULL,
  `status` enum('pending','selesai') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pengeluaran`
--

CREATE TABLE `pengeluaran` (
  `id_pengeluaran` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `catatan` text NOT NULL,
  `jumlah` int(11) NOT NULL,
  `user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `piutang`
--

CREATE TABLE `piutang` (
  `id_piutang` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `debitur` varchar(100) NOT NULL,
  `catatan` text NOT NULL,
  `jumlah` int(11) NOT NULL,
  `user` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `no_telp` varchar(13) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `role` enum('admin','pegawai','pimpinan') NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_active` enum('0','1') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `username`, `nama`, `email`, `password`, `no_telp`, `foto`, `role`, `create_at`, `is_active`) VALUES
(1, 'admin', 'adminnya w', 'admin@gmail.com', '12345', '0823893244', '1658384572_images.jpg', 'admin', '2022-07-21 05:25:10', '1'),
(2, 'popo', 'popo', 'popo@gmail.com', '12345', '082389324', 'team-5.jpg', 'pegawai', '2022-07-21 05:25:10', '1'),
(3, 'gobi', 'gobi', 'gobi@gmail.com', '12345', '082295644497', '1658383819_images.jpg', 'pimpinan', '2022-07-21 05:25:10', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id_banner`);

--
-- Indexes for table `galeri`
--
ALTER TABLE `galeri`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home`
--
ALTER TABLE `home`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hutang`
--
ALTER TABLE `hutang`
  ADD PRIMARY KEY (`id_hutang`);

--
-- Indexes for table `jam_buka`
--
ALTER TABLE `jam_buka`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `layanan`
--
ALTER TABLE `layanan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pemasukan`
--
ALTER TABLE `pemasukan`
  ADD PRIMARY KEY (`id_pemasukan`);

--
-- Indexes for table `pengeluaran`
--
ALTER TABLE `pengeluaran`
  ADD PRIMARY KEY (`id_pengeluaran`);

--
-- Indexes for table `piutang`
--
ALTER TABLE `piutang`
  ADD PRIMARY KEY (`id_piutang`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id_banner` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `galeri`
--
ALTER TABLE `galeri`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `home`
--
ALTER TABLE `home`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `hutang`
--
ALTER TABLE `hutang`
  MODIFY `id_hutang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `jam_buka`
--
ALTER TABLE `jam_buka`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `layanan`
--
ALTER TABLE `layanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `pemasukan`
--
ALTER TABLE `pemasukan`
  MODIFY `id_pemasukan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `pengeluaran`
--
ALTER TABLE `pengeluaran`
  MODIFY `id_pengeluaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `piutang`
--
ALTER TABLE `piutang`
  MODIFY `id_piutang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
