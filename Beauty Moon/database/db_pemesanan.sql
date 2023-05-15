-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 15 Bulan Mei 2023 pada 10.28
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_pemesanan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `pemesanan`
--

CREATE TABLE `pemesanan` (
  `id_pemesanan` int(50) NOT NULL,
  `tanggal_pemesanan` date NOT NULL,
  `total_belanja` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pemesanan`
--

INSERT INTO `pemesanan` (`id_pemesanan`, `tanggal_pemesanan`, `total_belanja`) VALUES
(2, '2023-06-08', 180000),
(3, '2023-06-09', 20000),
(4, '2023-06-10', 25000),
(5, '2023-06-11', 22000),
(6, '2020-06-22', 56000),
(43, '2023-05-15', 35000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pemesanan_produk`
--

CREATE TABLE `pemesanan_produk` (
  `id_pemesanan_produk` int(50) NOT NULL,
  `id_pemesanan` int(50) NOT NULL,
  `id_menu` varchar(50) NOT NULL,
  `jumlah` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pemesanan_produk`
--

INSERT INTO `pemesanan_produk` (`id_pemesanan_produk`, `id_pemesanan`, `id_menu`, `jumlah`) VALUES
(7, 32, '9', 1),
(8, 32, '11', 1),
(9, 33, '16', 1),
(10, 33, '6', 1),
(11, 34, '13', 1),
(12, 34, '8', 1),
(13, 34, '9', 1),
(14, 34, '17', 1),
(15, 35, '9', 2),
(16, 35, '14', 1),
(17, 36, '8', 1),
(18, 37, '13', 1),
(19, 37, '16', 1),
(20, 38, '8', 1),
(21, 39, '9', 1),
(22, 39, '16', 1),
(23, 40, '10', 1),
(24, 40, '14', 1),
(25, 41, '17', 1),
(26, 41, '10', 1),
(27, 41, '9', 2),
(28, 42, '9', 1),
(29, 42, '14', 1),
(30, 42, '7', 1),
(31, 42, '17', 1),
(32, 43, '21', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `id_menu` int(50) NOT NULL,
  `nama_menu` varchar(50) NOT NULL,
  `jenis_menu` varchar(50) NOT NULL,
  `stok` int(50) NOT NULL,
  `harga` int(50) NOT NULL,
  `gambar` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`id_menu`, `nama_menu`, `jenis_menu`, `stok`, `harga`, `gambar`) VALUES
(21, 'Wardah UV Shield Essential Suncreen Gel SPF 30 PA ', 'skincare', 70, 35000, 'sunscreen wardah.jpg'),
(22, 'YOU Extra Full High Coverage Liquid Foundation Mak', '', 60, 84000, 'foundation YOU.jpg'),
(23, 'HANASUI MATTEDORABLE LIP CREAM ', '', 40, 35000, 'hanasui lip cream.jpg'),
(24, 'Cetaphil Baby Daily Lotion With Shea Butter 400ml ', 'skincare', 20, 35000, 'cetaphil.jpg'),
(25, 'COSRX Low pH Good Morning Cleanser -150ml', 'skincare', 50, 35000, 'cleanser.jpg'),
(26, 'SKINTIFIC Serum Niacinamide 10% Brightening Whiten', 'skincare', 70, 169000, 'skinfitic.jpg'),
(27, 'Revlon Superlustrous LS - 02 - Wine Evrth C', 'kosmetik', 45, 69000, 'revlon.jpg'),
(28, 'MAKE OVER Hydrastay Glow Fluid Foundation 35ml - M', 'kosmetik', 38, 138000, 'makeover.jpg'),
(29, 'Just Miss Eye Shadow Wonder Palette 4 Warna Makeup', 'kosmetik', 35, 18000, 'eye.jpg'),
(30, 'WARDAH Perfect Bright BB Powder 50g - SPF 50', '', 18, 18000, 'bb.jpg'),
(31, 'The Originote Gluta-Bright B3 Serum - Serum Mencer', 'skincare', 70, 40000, 'serum.jpg'),
(32, 'Maybelline Line Tattoo High Impact Eyeliner Makeup', 'kosmetik', 80, 61200, 'eyeliner.jpeg'),
(33, 'Masker Wajah Korea 100% ORIGINAL Natural', '', 59, 5000, 'masker.jpeg'),
(34, 'SKINTIFIC Brightening 4PCS MSH Niacinamide ', '', 30, 399000, 'set.jpeg'),
(35, 'Paket Make Up Set Mybelline 1 Set 8in1-Make Up', 'kosmetik', 20, 123500, '11packs.jpeg'),
(36, 'Madame Gie Eyeshadow Moondust', '', 28, 25000, 'MG.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(25) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `nama_lengkap` varchar(25) NOT NULL,
  `jenis_kelamin` varchar(25) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `alamat` varchar(25) NOT NULL,
  `hp` varchar(25) NOT NULL,
  `status` enum('admin','user','','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `nama_lengkap`, `jenis_kelamin`, `tanggal_lahir`, `alamat`, `hp`, `status`) VALUES
(1, 'admin', 'admin', 'Nasywa Kalailah Fathin', 'Perempuan', '2003-03-25', 'Sumatra Utara', '089123614882', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `pemesanan`
--
ALTER TABLE `pemesanan`
  ADD PRIMARY KEY (`id_pemesanan`);

--
-- Indeks untuk tabel `pemesanan_produk`
--
ALTER TABLE `pemesanan_produk`
  ADD PRIMARY KEY (`id_pemesanan_produk`);

--
-- Indeks untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_menu`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `pemesanan`
--
ALTER TABLE `pemesanan`
  MODIFY `id_pemesanan` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT untuk tabel `pemesanan_produk`
--
ALTER TABLE `pemesanan_produk`
  MODIFY `id_pemesanan_produk` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT untuk tabel `produk`
--
ALTER TABLE `produk`
  MODIFY `id_menu` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
