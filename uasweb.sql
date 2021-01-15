-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 15 Jan 2021 pada 13.02
-- Versi server: 10.4.14-MariaDB
-- Versi PHP: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uasweb`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id` varchar(10) NOT NULL,
  `username` varchar(20) NOT NULL,
  `Nama` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `level` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id`, `username`, `Nama`, `password`, `level`) VALUES
('1', 'admin', 'alham', '21232f297a57a5a743894a0e4a801fc3', 'Administrasi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku`
--

CREATE TABLE `buku` (
  `idBuku` varchar(10) NOT NULL,
  `Judul` varchar(50) NOT NULL,
  `Pengarang` varchar(50) NOT NULL,
  `Penerbit` varchar(30) NOT NULL,
  `TahunPenerbit` varchar(4) NOT NULL,
  `stock` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `buku`
--

INSERT INTO `buku` (`idBuku`, `Judul`, `Pengarang`, `Penerbit`, `TahunPenerbit`, `stock`) VALUES
('KB0001', 'Matematika', 'Anggika Sari', 'Air Langga', '2018', 28),
('KB0002', 'Kimia', 'Lia Lestari', 'Air Langga', '2017', 31);

-- --------------------------------------------------------

--
-- Struktur dari tabel `peminjaman`
--

CREATE TABLE `peminjaman` (
  `idPeminjaman` varchar(10) NOT NULL,
  `Judul` varchar(50) NOT NULL,
  `nip` varchar(10) NOT NULL,
  `Nama` varchar(50) NOT NULL,
  `Total` varchar(3) NOT NULL,
  `tglPeminjaman` varchar(10) NOT NULL,
  `tglPengembalian` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `peminjaman`
--

INSERT INTO `peminjaman` (`idPeminjaman`, `Judul`, `nip`, `Nama`, `Total`, `tglPeminjaman`, `tglPengembalian`) VALUES
('PB001', 'Matematika', '1911002', 'an', '1', '01/15/2021', '01/20/2021'),
('PB002', 'Bahasa Indonesia', '1911001', 'Alham', '1', '01/15/2021', '01/19/2021');

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa`
--

CREATE TABLE `siswa` (
  `nip` varchar(15) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `JKelamin` varchar(20) NOT NULL,
  `alamat` text NOT NULL,
  `NoHp` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `siswa`
--

INSERT INTO `siswa` (`nip`, `nama`, `JKelamin`, `alamat`, `NoHp`) VALUES
('1911001', 'Alham', 'Laki-laki', 'Malang', '081678536114'),
('1911002', 'An', 'Perempuan', 'Gresik', '085221xxxxxx'),
('1911003', 'Ainul', 'Laki-laki', 'Malang', '082331xxxxxx');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`idBuku`);

--
-- Indeks untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`idPeminjaman`);

--
-- Indeks untuk tabel `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`nip`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
