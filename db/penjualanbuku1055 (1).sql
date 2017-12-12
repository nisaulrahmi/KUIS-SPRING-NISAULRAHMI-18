-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: 12 Des 2017 pada 14.09
-- Versi Server: 5.7.15-log
-- PHP Version: 5.6.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `penjualanbuku1055`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `cv_1055`
--

CREATE TABLE `cv_1055` (
  `id_cv` bigint(20) NOT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `nama_pendaftar` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `cv_1055`
--

INSERT INTO `cv_1055` (`id_cv`, `alamat`, `nama_pendaftar`) VALUES
(1, 'jl berdikari', 'Nisaul rahmi'),
(2, 'jl sentosa', 'Dea'),
(3, 'jl USA', 'Reyhan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `nilai_1055`
--

CREATE TABLE `nilai_1055` (
  `id_nilai` bigint(20) NOT NULL,
  `jenis_nilai` varchar(50) NOT NULL,
  `jumlah_nilai` varchar(255) DEFAULT NULL,
  `nama_matkul` varchar(150) NOT NULL,
  `pembelian_id_cv` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `nilai_1055`
--

INSERT INTO `nilai_1055` (`id_nilai`, `jenis_nilai`, `jumlah_nilai`, `nama_matkul`, `pembelian_id_cv`) VALUES
(1, 'quiz', '80', 'framework', 3),
(2, 'latihan', '90', 'matdas', 1),
(3, 'tugas', '88', 'peweb', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cv_1055`
--
ALTER TABLE `cv_1055`
  ADD PRIMARY KEY (`id_cv`),
  ADD UNIQUE KEY `UK_ax0wkrv9nwy2ipdh2artaftuh` (`nama_pendaftar`);

--
-- Indexes for table `nilai_1055`
--
ALTER TABLE `nilai_1055`
  ADD PRIMARY KEY (`id_nilai`),
  ADD KEY `FK1wg1s8hnoxu9qqhci23aqdu0g` (`pembelian_id_cv`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cv_1055`
--
ALTER TABLE `cv_1055`
  MODIFY `id_cv` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `nilai_1055`
--
ALTER TABLE `nilai_1055`
  MODIFY `id_nilai` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `nilai_1055`
--
ALTER TABLE `nilai_1055`
  ADD CONSTRAINT `FK1wg1s8hnoxu9qqhci23aqdu0g` FOREIGN KEY (`pembelian_id_cv`) REFERENCES `cv_1055` (`id_cv`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
