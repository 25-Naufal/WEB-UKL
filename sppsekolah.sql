-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 04 Feb 2022 pada 04.21
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 7.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sppsekolah`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `idadmin` int(5) NOT NULL,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `namalengkap` varchar(40) DEFAULT NULL,
  `role` enum('admin','operator') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`idadmin`, `username`, `password`, `namalengkap`, `role`) VALUES
(1, 'admin1', '6c7ca345f63f835cb353ff15bd6c5e052ec08e7a', 'Dio Pawadi', 'admin'),
(3, 'operator1', 'c75b7ce848979cba0469278e2263c53fc8f2e04d', 'Tangguh Marki', 'operator'),
(4, 'operator2', '95079d1ba496a5d90a9f67625f89bd804c0afc7a', 'Dana Iwak', 'operator');

-- --------------------------------------------------------

--
-- Struktur dari tabel `guru`
--

CREATE TABLE `guru` (
  `idguru` int(5) NOT NULL,
  `namaguru` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `guru`
--

INSERT INTO `guru` (`idguru`, `namaguru`) VALUES
(1, 'SUPRIANTO, SPd'),
(4, 'MEYKI ARDIANSYAH'),
(5, 'JERRY SANJAYA'),
(6, 'REZA ADSIANSYAH'),
(7, 'HONGKY WIRANATA'),
(8, 'WAHYU CHANDRA'),
(9, 'JAPRIANNSYAH'),
(11, 'NEDI RENALDI'),
(15, ' ERICK IRWANSYAH '),
(16, 'Awaludi'),
(17, 'adsadada');

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa`
--

CREATE TABLE `siswa` (
  `idsiswa` int(10) NOT NULL,
  `nis` varchar(10) DEFAULT NULL,
  `namasiswa` varchar(40) DEFAULT NULL,
  `kelas` varchar(10) DEFAULT NULL,
  `tahunajaran` varchar(10) DEFAULT NULL,
  `biaya` int(20) DEFAULT NULL,
  `role` enum('siswa') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `siswa`
--

INSERT INTO `siswa` (`idsiswa`, `nis`, `namasiswa`, `kelas`, `tahunajaran`, `biaya`, `role`) VALUES
(23, '201810001', 'hanggara P U', 'IX A', '2018/2019', 250000, 'siswa'),
(24, '201810002', 'Meyki Ardiansyah', 'VII B', '2018/2019', 250000, 'siswa'),
(25, '201810003', 'Chandra Wijaya', 'VII C', '2018/2019', 250000, 'siswa'),
(26, '201810004', 'Dedi Marlin Hidayat', 'VIII A', '2018/2019', 250000, 'siswa'),
(27, '201810005', 'Novian Sandi Putra', 'VIII B', '2018/2019', 250000, 'siswa'),
(28, '201810006', 'Rina Puspita Sari', 'VII A', '2018/2019', 250000, 'siswa'),
(29, '201810007', 'Jeki Sanjaka', 'VIII C', '2018/2019', 250000, 'siswa'),
(30, '201810008', 'Andry Al-febri', 'IX B', '2018/2019', 250000, 'siswa'),
(31, '201810009', 'Atang Al-Farizi', 'X A', '2018/2019', 250000, 'siswa'),
(33, '201810010', 'kjbkjbk', 'IX A', '2018/2019', 250000, 'siswa'),
(34, '201810123', 'dsaddsad', 'VII C', '2018/2019', 250000, 'siswa'),
(35, '201810020', 'Nopal', 'X A', '2018/2019', 250000, 'siswa');

-- --------------------------------------------------------

--
-- Struktur dari tabel `spp`
--

CREATE TABLE `spp` (
  `idspp` int(5) NOT NULL,
  `idsiswa` int(10) DEFAULT NULL,
  `jatuhtempo` date DEFAULT NULL,
  `bulan` varchar(20) DEFAULT NULL,
  `nobayar` varchar(10) DEFAULT NULL,
  `tglbayar` date DEFAULT NULL,
  `jumlah` int(20) DEFAULT NULL,
  `ket` varchar(20) DEFAULT NULL,
  `idadmin` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `spp`
--

INSERT INTO `spp` (`idspp`, `idsiswa`, `jatuhtempo`, `bulan`, `nobayar`, `tglbayar`, `jumlah`, `ket`, `idadmin`) VALUES
(1, 23, '2018-10-10', 'Oktober  2018', '20170919', '2018-09-24', 250000, 'LUNAS', 1),
(2, 23, '2018-11-10', 'November  2018', '1809240001', '2018-09-24', 250000, 'LUNAS', 1),
(3, 23, '2018-12-10', 'Desember  2018', NULL, NULL, 250000, NULL, NULL),
(4, 23, '2019-01-10', 'januari  2019', NULL, NULL, 250000, NULL, NULL),
(5, 23, '2019-02-10', 'Februari  2019', NULL, NULL, 250000, NULL, NULL),
(6, 23, '2019-03-10', 'Maret  2019', NULL, NULL, 250000, NULL, NULL),
(7, 23, '2019-04-10', 'April  2019', NULL, NULL, 250000, NULL, NULL),
(8, 23, '2019-05-10', 'Mei  2019', NULL, NULL, 250000, NULL, NULL),
(9, 23, '2019-06-10', 'Juni  2019', NULL, NULL, 250000, NULL, NULL),
(10, 23, '2019-07-10', 'Juli  2019', NULL, NULL, 250000, NULL, NULL),
(11, 23, '2019-08-10', 'Agustus  2019', NULL, NULL, 250000, NULL, NULL),
(12, 23, '2019-09-10', 'September  2019', NULL, NULL, 250000, NULL, NULL),
(13, 24, '2018-10-10', 'Oktober  2018', '1809250004', '2018-09-25', 250000, 'LUNAS', 1),
(14, 24, '2018-11-10', 'November  2018', '1809240011', '2018-09-24', 250000, 'LUNAS', 1),
(15, 24, '2018-12-10', 'Desember  2018', '1809240012', '2018-09-24', 250000, 'LUNAS', 1),
(16, 24, '2019-01-10', 'januari  2019', '1809240014', '2018-09-24', 250000, 'LUNAS', 1),
(17, 24, '2019-02-10', 'Februari  2019', '1809240015', '2018-09-24', 250000, 'LUNAS', 1),
(18, 24, '2019-03-10', 'Maret  2019', NULL, NULL, 250000, NULL, NULL),
(19, 24, '2019-04-10', 'April  2019', NULL, NULL, 250000, NULL, NULL),
(20, 24, '2019-05-10', 'Mei  2019', NULL, NULL, 250000, NULL, NULL),
(21, 24, '2019-06-10', 'Juni  2019', NULL, NULL, 250000, NULL, NULL),
(22, 24, '2019-07-10', 'Juli  2019', NULL, NULL, 250000, NULL, NULL),
(23, 24, '2019-08-10', 'Agustus  2019', NULL, NULL, 250000, NULL, NULL),
(24, 24, '2019-09-10', 'September  2019', NULL, NULL, 250000, NULL, NULL),
(25, 25, '2018-10-10', 'Oktober  2018', NULL, NULL, 250000, NULL, NULL),
(26, 25, '2018-11-10', 'November  2018', NULL, NULL, 250000, NULL, NULL),
(27, 25, '2018-12-10', 'Desember  2018', NULL, NULL, 250000, NULL, NULL),
(28, 25, '2019-01-10', 'januari  2019', NULL, NULL, 250000, NULL, NULL),
(29, 25, '2019-02-10', 'Februari  2019', NULL, NULL, 250000, NULL, NULL),
(30, 25, '2019-03-10', 'Maret  2019', NULL, NULL, 250000, NULL, NULL),
(31, 25, '2019-04-10', 'April  2019', NULL, NULL, 250000, NULL, NULL),
(32, 25, '2019-05-10', 'Mei  2019', NULL, NULL, 250000, NULL, NULL),
(33, 25, '2019-06-10', 'Juni  2019', NULL, NULL, 250000, NULL, NULL),
(34, 25, '2019-07-10', 'Juli  2019', NULL, NULL, 250000, NULL, NULL),
(35, 25, '2019-08-10', 'Agustus  2019', NULL, NULL, 250000, NULL, NULL),
(36, 25, '2019-09-10', 'September  2019', NULL, NULL, 250000, NULL, NULL),
(37, 26, '2018-10-10', 'Oktober  2018', NULL, NULL, 250000, NULL, NULL),
(38, 26, '2018-11-10', 'November  2018', NULL, NULL, 250000, NULL, NULL),
(39, 26, '2018-12-10', 'Desember  2018', NULL, NULL, 250000, NULL, NULL),
(40, 26, '2019-01-10', 'januari  2019', NULL, NULL, 250000, NULL, NULL),
(41, 26, '2019-02-10', 'Februari  2019', NULL, NULL, 250000, NULL, NULL),
(42, 26, '2019-03-10', 'Maret  2019', NULL, NULL, 250000, NULL, NULL),
(43, 26, '2019-04-10', 'April  2019', NULL, NULL, 250000, NULL, NULL),
(44, 26, '2019-05-10', 'Mei  2019', NULL, NULL, 250000, NULL, NULL),
(45, 26, '2019-06-10', 'Juni  2019', NULL, NULL, 250000, NULL, NULL),
(46, 26, '2019-07-10', 'Juli  2019', NULL, NULL, 250000, NULL, NULL),
(47, 26, '2019-08-10', 'Agustus  2019', NULL, NULL, 250000, NULL, NULL),
(48, 26, '2019-09-10', 'September  2019', NULL, NULL, 250000, NULL, NULL),
(49, 27, '2018-10-10', 'Oktober  2018', NULL, NULL, 250000, NULL, NULL),
(50, 27, '2018-11-10', 'November  2018', NULL, NULL, 250000, NULL, NULL),
(51, 27, '2018-12-10', 'Desember  2018', NULL, NULL, 250000, NULL, NULL),
(52, 27, '2019-01-10', 'januari  2019', NULL, NULL, 250000, NULL, NULL),
(53, 27, '2019-02-10', 'Februari  2019', NULL, NULL, 250000, NULL, NULL),
(54, 27, '2019-03-10', 'Maret  2019', NULL, NULL, 250000, NULL, NULL),
(55, 27, '2019-04-10', 'April  2019', NULL, NULL, 250000, NULL, NULL),
(56, 27, '2019-05-10', 'Mei  2019', NULL, NULL, 250000, NULL, NULL),
(57, 27, '2019-06-10', 'Juni  2019', NULL, NULL, 250000, NULL, NULL),
(58, 27, '2019-07-10', 'Juli  2019', NULL, NULL, 250000, NULL, NULL),
(59, 27, '2019-08-10', 'Agustus  2019', NULL, NULL, 250000, NULL, NULL),
(60, 27, '2019-09-10', 'September  2019', NULL, NULL, 250000, NULL, NULL),
(61, 28, '2018-10-10', 'Oktober  2018', NULL, NULL, 250000, NULL, NULL),
(62, 28, '2018-11-10', 'November  2018', NULL, NULL, 250000, NULL, NULL),
(63, 28, '2018-12-10', 'Desember  2018', NULL, NULL, 250000, NULL, NULL),
(64, 28, '2019-01-10', 'januari  2019', NULL, NULL, 250000, NULL, NULL),
(65, 28, '2019-02-10', 'Februari  2019', NULL, NULL, 250000, NULL, NULL),
(66, 28, '2019-03-10', 'Maret  2019', NULL, NULL, 250000, NULL, NULL),
(67, 28, '2019-04-10', 'April  2019', NULL, NULL, 250000, NULL, NULL),
(68, 28, '2019-05-10', 'Mei  2019', NULL, NULL, 250000, NULL, NULL),
(69, 28, '2019-06-10', 'Juni  2019', NULL, NULL, 250000, NULL, NULL),
(70, 28, '2019-07-10', 'Juli  2019', NULL, NULL, 250000, NULL, NULL),
(71, 28, '2019-08-10', 'Agustus  2019', NULL, NULL, 250000, NULL, NULL),
(72, 28, '2019-09-10', 'September  2019', NULL, NULL, 250000, NULL, NULL),
(73, 29, '2018-10-10', 'Oktober  2018', '1809250007', '2018-09-25', 250000, 'LUNAS', 1),
(74, 29, '2018-11-10', 'November  2018', NULL, NULL, 250000, NULL, NULL),
(75, 29, '2018-12-10', 'Desember  2018', NULL, NULL, 250000, NULL, NULL),
(76, 29, '2019-01-10', 'januari  2019', NULL, NULL, 250000, NULL, NULL),
(77, 29, '2019-02-10', 'Februari  2019', NULL, NULL, 250000, NULL, NULL),
(78, 29, '2019-03-10', 'Maret  2019', NULL, NULL, 250000, NULL, NULL),
(79, 29, '2019-04-10', 'April  2019', NULL, NULL, 250000, NULL, NULL),
(80, 29, '2019-05-10', 'Mei  2019', NULL, NULL, 250000, NULL, NULL),
(81, 29, '2019-06-10', 'Juni  2019', NULL, NULL, 250000, NULL, NULL),
(82, 29, '2019-07-10', 'Juli  2019', NULL, NULL, 250000, NULL, NULL),
(83, 29, '2019-08-10', 'Agustus  2019', NULL, NULL, 250000, NULL, NULL),
(84, 29, '2019-09-10', 'September  2019', NULL, NULL, 250000, NULL, NULL),
(85, 30, '2018-10-10', 'Oktober  2018', NULL, NULL, 250000, NULL, NULL),
(86, 30, '2018-11-10', 'November  2018', NULL, NULL, 250000, NULL, NULL),
(87, 30, '2018-12-10', 'Desember  2018', NULL, NULL, 250000, NULL, NULL),
(88, 30, '2019-01-10', 'januari  2019', NULL, NULL, 250000, NULL, NULL),
(89, 30, '2019-02-10', 'Februari  2019', NULL, NULL, 250000, NULL, NULL),
(90, 30, '2019-03-10', 'Maret  2019', NULL, NULL, 250000, NULL, NULL),
(91, 30, '2019-04-10', 'April  2019', NULL, NULL, 250000, NULL, NULL),
(92, 30, '2019-05-10', 'Mei  2019', NULL, NULL, 250000, NULL, NULL),
(93, 30, '2019-06-10', 'Juni  2019', NULL, NULL, 250000, NULL, NULL),
(94, 30, '2019-07-10', 'Juli  2019', NULL, NULL, 250000, NULL, NULL),
(95, 30, '2019-08-10', 'Agustus  2019', NULL, NULL, 250000, NULL, NULL),
(96, 30, '2019-09-10', 'September  2019', NULL, NULL, 250000, NULL, NULL),
(97, 31, '2018-10-10', 'Oktober  2018', '1809250005', '2018-09-25', 250000, 'LUNAS', 1),
(98, 31, '2018-11-10', 'November  2018', '1809250006', '2018-09-25', 250000, 'LUNAS', 1),
(99, 31, '2018-12-10', 'Desember  2018', NULL, NULL, 250000, NULL, NULL),
(100, 31, '2019-01-10', 'januari  2019', NULL, NULL, 250000, NULL, NULL),
(101, 31, '2019-02-10', 'Februari  2019', NULL, NULL, 250000, NULL, NULL),
(102, 31, '2019-03-10', 'Maret  2019', NULL, NULL, 250000, NULL, NULL),
(103, 31, '2019-04-10', 'April  2019', NULL, NULL, 250000, NULL, NULL),
(104, 31, '2019-05-10', 'Mei  2019', NULL, NULL, 250000, NULL, NULL),
(105, 31, '2019-06-10', 'Juni  2019', NULL, NULL, 250000, NULL, NULL),
(106, 31, '2019-07-10', 'Juli  2019', NULL, NULL, 250000, NULL, NULL),
(107, 31, '2019-08-10', 'Agustus  2019', NULL, NULL, 250000, NULL, NULL),
(108, 31, '2019-09-10', 'September  2019', NULL, NULL, 250000, NULL, NULL),
(121, 33, '2018-10-10', 'Oktober  2018', NULL, NULL, 250000, NULL, NULL),
(122, 33, '2018-11-10', 'November  2018', NULL, NULL, 250000, NULL, NULL),
(123, 33, '2018-12-10', 'Desember  2018', NULL, NULL, 250000, NULL, NULL),
(124, 33, '2019-01-10', 'januari  2019', NULL, NULL, 250000, NULL, NULL),
(125, 33, '2019-02-10', 'Februari  2019', NULL, NULL, 250000, NULL, NULL),
(126, 33, '2019-03-10', 'Maret  2019', NULL, NULL, 250000, NULL, NULL),
(127, 33, '2019-04-10', 'April  2019', NULL, NULL, 250000, NULL, NULL),
(128, 33, '2019-05-10', 'Mei  2019', NULL, NULL, 250000, NULL, NULL),
(129, 33, '2019-06-10', 'Juni  2019', NULL, NULL, 250000, NULL, NULL),
(130, 33, '2019-07-10', 'Juli  2019', NULL, NULL, 250000, NULL, NULL),
(131, 33, '2019-08-10', 'Agustus  2019', NULL, NULL, 250000, NULL, NULL),
(132, 33, '2019-09-10', 'September  2019', NULL, NULL, 250000, NULL, NULL),
(133, 34, '2018-10-10', 'Oktober  2018', NULL, NULL, 250000, NULL, NULL),
(134, 34, '2018-11-10', 'November  2018', NULL, NULL, 250000, NULL, NULL),
(135, 34, '2018-12-10', 'Desember  2018', NULL, NULL, 250000, NULL, NULL),
(136, 34, '2019-01-10', 'januari  2019', NULL, NULL, 250000, NULL, NULL),
(137, 34, '2019-02-10', 'Februari  2019', NULL, NULL, 250000, NULL, NULL),
(138, 34, '2019-03-10', 'Maret  2019', NULL, NULL, 250000, NULL, NULL),
(139, 34, '2019-04-10', 'April  2019', NULL, NULL, 250000, NULL, NULL),
(140, 34, '2019-05-10', 'Mei  2019', NULL, NULL, 250000, NULL, NULL),
(141, 34, '2019-06-10', 'Juni  2019', NULL, NULL, 250000, NULL, NULL),
(142, 34, '2019-07-10', 'Juli  2019', NULL, NULL, 250000, NULL, NULL),
(143, 34, '2019-08-10', 'Agustus  2019', NULL, NULL, 250000, NULL, NULL),
(144, 34, '2019-09-10', 'September  2019', NULL, NULL, 250000, NULL, NULL),
(145, 35, '2018-10-10', 'Oktober  2018', NULL, NULL, 250000, NULL, NULL),
(146, 35, '2018-11-10', 'November  2018', NULL, NULL, 250000, NULL, NULL),
(147, 35, '2018-12-10', 'Desember  2018', NULL, NULL, 250000, NULL, NULL),
(148, 35, '2019-01-10', 'januari  2019', NULL, NULL, 250000, NULL, NULL),
(149, 35, '2019-02-10', 'Februari  2019', NULL, NULL, 250000, NULL, NULL),
(150, 35, '2019-03-10', 'Maret  2019', NULL, NULL, 250000, NULL, NULL),
(151, 35, '2019-04-10', 'April  2019', NULL, NULL, 250000, NULL, NULL),
(152, 35, '2019-05-10', 'Mei  2019', NULL, NULL, 250000, NULL, NULL),
(153, 35, '2019-06-10', 'Juni  2019', NULL, NULL, 250000, NULL, NULL),
(154, 35, '2019-07-10', 'Juli  2019', NULL, NULL, 250000, NULL, NULL),
(155, 35, '2019-08-10', 'Agustus  2019', NULL, NULL, 250000, NULL, NULL),
(156, 35, '2019-09-10', 'September  2019', NULL, NULL, 250000, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `walikelas`
--

CREATE TABLE `walikelas` (
  `kelas` varchar(10) NOT NULL,
  `idguru` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `walikelas`
--

INSERT INTO `walikelas` (`kelas`, `idguru`) VALUES
('IX A', 1),
('VII C', 1),
('VIII B', 1),
('VII B', 4),
('X A', 5),
('VIII C', 6),
('VIII A', 7),
('IX B', 9),
('VII A', 11),
('X B', 15);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`idadmin`);

--
-- Indeks untuk tabel `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`idguru`);

--
-- Indeks untuk tabel `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`idsiswa`),
  ADD KEY `fk_kelas` (`kelas`);

--
-- Indeks untuk tabel `spp`
--
ALTER TABLE `spp`
  ADD PRIMARY KEY (`idspp`),
  ADD KEY `fk_admin` (`idadmin`),
  ADD KEY `fk_siswa` (`idsiswa`);

--
-- Indeks untuk tabel `walikelas`
--
ALTER TABLE `walikelas`
  ADD PRIMARY KEY (`kelas`),
  ADD KEY `fk_guru` (`idguru`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `idadmin` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `guru`
--
ALTER TABLE `guru`
  MODIFY `idguru` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `siswa`
--
ALTER TABLE `siswa`
  MODIFY `idsiswa` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT untuk tabel `spp`
--
ALTER TABLE `spp`
  MODIFY `idspp` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `siswa`
--
ALTER TABLE `siswa`
  ADD CONSTRAINT `fk_kelas` FOREIGN KEY (`kelas`) REFERENCES `walikelas` (`kelas`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `spp`
--
ALTER TABLE `spp`
  ADD CONSTRAINT `fk_admin` FOREIGN KEY (`idadmin`) REFERENCES `admin` (`idadmin`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_siswa` FOREIGN KEY (`idsiswa`) REFERENCES `siswa` (`idsiswa`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `walikelas`
--
ALTER TABLE `walikelas`
  ADD CONSTRAINT `fk_guru` FOREIGN KEY (`idguru`) REFERENCES `guru` (`idguru`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
