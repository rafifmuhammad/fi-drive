-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 12 Apr 2023 pada 10.29
-- Versi server: 10.4.20-MariaDB
-- Versi PHP: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `barang`
--
CREATE DATABASE IF NOT EXISTS `barang` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `barang`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_barang`
--

CREATE TABLE `master_barang` (
  `kode_barang` char(5) NOT NULL,
  `nama_barang` varchar(30) DEFAULT NULL,
  `harga` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `master_barang`
--

INSERT INTO `master_barang` (`kode_barang`, `nama_barang`, `harga`) VALUES
('BR001', 'Pena', 3000),
('BR002', 'Pensil', 1000),
('BR003', 'Penggaris', 4000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `no_transaksi` int(11) NOT NULL,
  `kode_barang` char(5) NOT NULL,
  `tgl_transaksi` date DEFAULT NULL,
  `jumlah_barang` int(11) DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  `total_harga` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`no_transaksi`, `kode_barang`, `tgl_transaksi`, `jumlah_barang`, `harga`, `total_harga`) VALUES
(8, 'BR002', '2021-07-22', 4, 1000, 4000),
(9, 'BR001', '2021-07-24', 12, 2000, 24000),
(11, 'BR002', '2021-07-22', 15, 1000, 15000);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `master_barang`
--
ALTER TABLE `master_barang`
  ADD PRIMARY KEY (`kode_barang`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`no_transaksi`),
  ADD KEY `kode_barang` (`kode_barang`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `no_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_ibfk_1` FOREIGN KEY (`kode_barang`) REFERENCES `master_barang` (`kode_barang`);
--
-- Database: `bukutamu`
--
CREATE DATABASE IF NOT EXISTS `bukutamu` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `bukutamu`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `bukutamu`
--

CREATE TABLE `bukutamu` (
  `nama` varchar(44) NOT NULL,
  `email` varchar(25) NOT NULL,
  `komentar` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `bukutamu`
--

INSERT INTO `bukutamu` (`nama`, `email`, `komentar`) VALUES
('1', '1', '1'),
('Rafif Muhammad', 'rafifbanner@gmail.com', 'ffsfas');
--
-- Database: `cakap`
--
CREATE DATABASE IF NOT EXISTS `cakap` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `cakap`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_message`
--

CREATE TABLE `tb_message` (
  `id` int(11) NOT NULL,
  `id_chat` varchar(20) NOT NULL,
  `id_sender` int(11) NOT NULL,
  `id_receiver` int(11) NOT NULL,
  `message` text NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_message`
--

INSERT INTO `tb_message` (`id`, `id_chat`, `id_sender`, `id_receiver`, `message`, `created_at`) VALUES
(1, '1_2', 1, 2, 'p, udah ada kelompok?', '2022-09-16 14:32:15'),
(2, '2_1', 2, 1, 'Udah cuk', '2022-09-16 14:32:15'),
(3, '1_2', 1, 2, 'okelah', '2022-09-16 22:34:10'),
(4, '1_2', 1, 2, 'lag', '2022-09-16 22:34:18'),
(5, '1_2', 1, 2, 'kirim lagi', '2022-09-16 22:34:25'),
(6, '1_2', 1, 2, 'asd', '2022-09-16 23:16:01'),
(7, '1_2', 1, 2, 'lagi', '2022-09-16 23:16:14'),
(8, '2_2', 2, 2, 'kapan', '2022-09-17 17:16:51'),
(9, '1_2', 1, 2, 'yoi]', '2022-09-17 17:17:04');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_user`
--

CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `nama_user` varchar(40) NOT NULL,
  `email` varchar(30) NOT NULL,
  `no_hp` varchar(12) NOT NULL,
  `password` varchar(30) NOT NULL,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_user`
--

INSERT INTO `tb_user` (`id`, `username`, `nama_user`, `email`, `no_hp`, `password`, `created_at`) VALUES
(1, 'rafifbanner', 'Rafif Muhammad', 'rafifbanner@gmail.com', '082169554842', 'tes123', '2022-09-16'),
(2, 'robert', 'Robert Paython', 'robert@gmail.com', '0821696969', 'tes123', '2022-09-16');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_message`
--
ALTER TABLE `tb_message`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_message`
--
ALTER TABLE `tb_message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Database: `coffe_shop`
--
CREATE DATABASE IF NOT EXISTS `coffe_shop` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `coffe_shop`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `cashier`
--

CREATE TABLE `cashier` (
  `kd_user` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `cashier`
--

INSERT INTO `cashier` (`kd_user`, `username`, `password`) VALUES
(1, 'rafif', 'rafif123');

-- --------------------------------------------------------

--
-- Struktur dari tabel `costumer_order`
--

CREATE TABLE `costumer_order` (
  `kd_pesan` varchar(8) NOT NULL,
  `nama_pelanggan` varchar(25) NOT NULL,
  `jenis_kopi` varchar(20) NOT NULL,
  `jumlah_pesan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `cashier`
--
ALTER TABLE `cashier`
  ADD PRIMARY KEY (`kd_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `cashier`
--
ALTER TABLE `cashier`
  MODIFY `kd_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `data_pabrik`
--
CREATE DATABASE IF NOT EXISTS `data_pabrik` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `data_pabrik`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_barang`
--

CREATE TABLE `data_barang` (
  `kode_barang` varchar(6) NOT NULL,
  `nama_barang` varchar(25) NOT NULL,
  `jenis_barang` varchar(25) NOT NULL,
  `harga_barang` int(11) NOT NULL,
  `stok_barang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `data_barang`
--

INSERT INTO `data_barang` (`kode_barang`, `nama_barang`, `jenis_barang`, `harga_barang`, `stok_barang`) VALUES
('BRG01', 'Lifeboy', 'Alat Mandi', 8000, 25),
('BRG02', 'Kopi Kapal Api', 'Minuman', 1500, 50),
('', 'DSADSA', 'SADASD', 2222, 2222),
('BRG03', 'DSADSA', 'SADASD', 2222, 2222),
('BRG03', 'DSADSA', 'SADASD', 2222, 2222);
--
-- Database: `db_barang`
--
CREATE DATABASE IF NOT EXISTS `db_barang` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db_barang`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_barang`
--

CREATE TABLE `tb_barang` (
  `kode_barang` int(11) NOT NULL,
  `nama_barang` varchar(25) NOT NULL,
  `harga_barang` int(11) NOT NULL,
  `stok_barang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_barang`
--

INSERT INTO `tb_barang` (`kode_barang`, `nama_barang`, `harga_barang`, `stok_barang`) VALUES
(1, 'Indomie Goreng', 12000, 12),
(2, 'Pop Mie Bebas', 3000, 24);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_barang`
--
ALTER TABLE `tb_barang`
  ADD PRIMARY KEY (`kode_barang`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_barang`
--
ALTER TABLE `tb_barang`
  MODIFY `kode_barang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Database: `db_buku`
--
CREATE DATABASE IF NOT EXISTS `db_buku` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db_buku`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_buku`
--

CREATE TABLE `tb_buku` (
  `id_buku` int(11) NOT NULL,
  `judul_buku` varchar(40) NOT NULL,
  `penerbit` varchar(30) NOT NULL,
  `tahun_terbit` int(5) NOT NULL,
  `pengarang` varchar(30) NOT NULL,
  `isbn` varchar(25) NOT NULL,
  `tebal_halaman` int(11) NOT NULL,
  `lebar_buku` int(11) NOT NULL,
  `panjang_buku` int(11) NOT NULL,
  `foto` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_buku`
--

INSERT INTO `tb_buku` (`id_buku`, `judul_buku`, `penerbit`, `tahun_terbit`, `pengarang`, `isbn`, `tebal_halaman`, `lebar_buku`, `panjang_buku`, `foto`) VALUES
(1, 'Petualangan Masuk Barang Aceh', 'Hasnan', 2020, 'Wicaksono Santoso', '23123212', 120, 12, 9, 'icon7.png'),
(3, 'Flowers For Algernoon', 'Gramedia Inc.', 2020, 'Daniel Keyes', '99123144112', 520, 12, 18, 'buku1.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pinjam`
--

CREATE TABLE `tb_pinjam` (
  `id_pinjam` int(11) NOT NULL,
  `id_buku` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `judul_buku` varchar(30) NOT NULL,
  `tanggal_pinjam` date NOT NULL,
  `tanggal_kembali` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_pinjam`
--

INSERT INTO `tb_pinjam` (`id_pinjam`, `id_buku`, `id_user`, `judul_buku`, `tanggal_pinjam`, `tanggal_kembali`) VALUES
(1, 3, 2, 'Flowers For Algernoon', '2022-08-31', '2022-09-12');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_user`
--

CREATE TABLE `tb_user` (
  `id_user` int(11) NOT NULL,
  `nama_user` varchar(30) NOT NULL,
  `role` varchar(15) NOT NULL,
  `password` varchar(30) NOT NULL,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_user`
--

INSERT INTO `tb_user` (`id_user`, `nama_user`, `role`, `password`, `created_at`) VALUES
(1, 'rafifbanner', 'admin', 'tes123', '2022-08-31'),
(2, 'visitor', 'user', 'tes123', '2022-08-31'),
(3, 'Hasnan mantap', 'user', 'asade123', '2022-09-07'),
(4, 'tes', 'admin', 'tes123', '2022-09-07');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_buku`
--
ALTER TABLE `tb_buku`
  ADD PRIMARY KEY (`id_buku`);

--
-- Indeks untuk tabel `tb_pinjam`
--
ALTER TABLE `tb_pinjam`
  ADD PRIMARY KEY (`id_pinjam`),
  ADD KEY `id_buku` (`id_buku`),
  ADD KEY `id_user` (`id_user`);

--
-- Indeks untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_buku`
--
ALTER TABLE `tb_buku`
  MODIFY `id_buku` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tb_pinjam`
--
ALTER TABLE `tb_pinjam`
  MODIFY `id_pinjam` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `tb_pinjam`
--
ALTER TABLE `tb_pinjam`
  ADD CONSTRAINT `tb_pinjam_ibfk_1` FOREIGN KEY (`id_buku`) REFERENCES `tb_buku` (`id_buku`),
  ADD CONSTRAINT `tb_pinjam_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `tb_user` (`id_user`);
--
-- Database: `db_drive`
--
CREATE DATABASE IF NOT EXISTS `db_drive` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db_drive`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_files`
--

CREATE TABLE `tb_files` (
  `id_file` int(11) NOT NULL,
  `nama_file` text NOT NULL,
  `format_file` varchar(12) NOT NULL,
  `ukuran` int(11) NOT NULL,
  `path` text NOT NULL,
  `diubah_tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_files`
--

INSERT INTO `tb_files` (`id_file`, `nama_file`, `format_file`, `ukuran`, `path`, `diubah_tanggal`) VALUES
(18, 'Kali_Linux_2_Assuring_Security_by_Penetration_Testing_(_PDFDrive_).pdf', 'pdf', 28493, 'E:/DasarPemrogramanWeb/xampp/htdocs/fi-drive/upload/Kali_Linux_2_Assuring_Security_by_Penetration_Testing_(_PDFDrive_).pdf', '2023-04-12');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_history_download`
--

CREATE TABLE `tb_history_download` (
  `id_unduh` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `nama_file` text NOT NULL,
  `tanggal_unduh` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_user`
--

CREATE TABLE `tb_user` (
  `id_user` int(11) NOT NULL,
  `nama_user` text NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` text NOT NULL,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_files`
--
ALTER TABLE `tb_files`
  ADD PRIMARY KEY (`id_file`);

--
-- Indeks untuk tabel `tb_history_download`
--
ALTER TABLE `tb_history_download`
  ADD PRIMARY KEY (`id_unduh`),
  ADD KEY `id_user` (`id_user`);

--
-- Indeks untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_files`
--
ALTER TABLE `tb_files`
  MODIFY `id_file` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `tb_history_download`
--
ALTER TABLE `tb_history_download`
  MODIFY `id_unduh` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `tb_history_download`
--
ALTER TABLE `tb_history_download`
  ADD CONSTRAINT `tb_history_download_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `tb_user` (`id_user`);
--
-- Database: `db_jabatan`
--
CREATE DATABASE IF NOT EXISTS `db_jabatan` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db_jabatan`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_bidang`
--

CREATE TABLE `tb_bidang` (
  `kd_bidang` char(10) NOT NULL,
  `nama_bidang` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_bidang`
--

INSERT INTO `tb_bidang` (`kd_bidang`, `nama_bidang`) VALUES
('bd01', 'Ekonomi'),
('bd02', 'Manajemen'),
('bd03', 'Akuntansi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_jabatan`
--

CREATE TABLE `tb_jabatan` (
  `kd_jabatan` char(10) NOT NULL,
  `kd_bidang` char(10) NOT NULL,
  `kd_tingkat_pendidikan` char(10) NOT NULL,
  `nama_jabatan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pendidikan`
--

CREATE TABLE `tb_pendidikan` (
  `kd_tingkat_pendidikan` char(10) NOT NULL,
  `tingkat_pendidikan` char(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_pendidikan`
--

INSERT INTO `tb_pendidikan` (`kd_tingkat_pendidikan`, `tingkat_pendidikan`) VALUES
('tpd01', 'S2'),
('tpd02', 'S1'),
('tpd03', 'D4'),
('tpd04', 'D3'),
('tpd05', 'D2'),
('tpd06', 'D1'),
('tpd07', 'SLTA');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_bidang`
--
ALTER TABLE `tb_bidang`
  ADD PRIMARY KEY (`kd_bidang`);

--
-- Indeks untuk tabel `tb_jabatan`
--
ALTER TABLE `tb_jabatan`
  ADD PRIMARY KEY (`kd_jabatan`),
  ADD KEY `kd_bidang` (`kd_bidang`),
  ADD KEY `tb_jabatan_ibfk_1` (`kd_tingkat_pendidikan`);

--
-- Indeks untuk tabel `tb_pendidikan`
--
ALTER TABLE `tb_pendidikan`
  ADD PRIMARY KEY (`kd_tingkat_pendidikan`);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `tb_jabatan`
--
ALTER TABLE `tb_jabatan`
  ADD CONSTRAINT `tb_jabatan_ibfk_1` FOREIGN KEY (`kd_tingkat_pendidikan`) REFERENCES `tb_pendidikan` (`kd_tingkat_pendidikan`);
--
-- Database: `db_karyawan`
--
CREATE DATABASE IF NOT EXISTS `db_karyawan` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db_karyawan`;
--
-- Database: `db_manajemen_file`
--
CREATE DATABASE IF NOT EXISTS `db_manajemen_file` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db_manajemen_file`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_file`
--

CREATE TABLE `tb_file` (
  `id` int(11) NOT NULL,
  `nama` varchar(40) NOT NULL,
  `nama_file` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_file`
--

INSERT INTO `tb_file` (`id`, `nama`, `nama_file`) VALUES
(1, 'Format Baru', 'Format Baru.xlsx'),
(2, 'Nomenklatur', 'NOMENKLATUR JABATAN PELAKSANA PERMENPAN NO 41 TAHUN 2018.xlsx'),
(8, 'Data baru', 'LAPORAN UJIAN AKHIR SEMESTER (UAS).pdf'),
(9, 'Useless Data', 'IMK BELAJAR UTS.docx');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_file`
--
ALTER TABLE `tb_file`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_file`
--
ALTER TABLE `tb_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- Database: `db_mhs`
--
CREATE DATABASE IF NOT EXISTS `db_mhs` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db_mhs`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_mhs`
--

CREATE TABLE `tb_mhs` (
  `id` int(11) NOT NULL,
  `nama` text NOT NULL,
  `nim` int(11) NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_mhs`
--

INSERT INTO `tb_mhs` (`id`, `nama`, `nim`, `alamat`) VALUES
(1, 'Rafif Muhammad', 193510767, 'BLP'),
(2, 'Hasnan', 193510800, 'Ya');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_mhs`
--
ALTER TABLE `tb_mhs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_mhs`
--
ALTER TABLE `tb_mhs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Database: `db_mitra_kerja`
--
CREATE DATABASE IF NOT EXISTS `db_mitra_kerja` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db_mitra_kerja`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_analisis_gap`
--

CREATE TABLE `tb_analisis_gap` (
  `id` int(11) NOT NULL,
  `selisih` int(11) NOT NULL,
  `bobot_nilai` double NOT NULL,
  `keterangan` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_analisis_gap`
--

INSERT INTO `tb_analisis_gap` (`id`, `selisih`, `bobot_nilai`, `keterangan`) VALUES
(1, 0, 5, 'Tidak ada Selisih'),
(2, 1, 4.5, 'Kompetensi Individu Kelebihan 1 Tingkat'),
(3, -1, 4, 'Kompetensi Individu Kekurangan 1 Tingkat'),
(4, 2, 3.5, 'Kompetensi Individu Kelebihan 2 Tingkat'),
(5, -2, 3, 'Kompetensi Individu Kekurangan 2 Tingkat'),
(6, 3, 2.5, 'Kompetensi Individu Kelebihan 3 Tingkat'),
(7, -3, 2, 'Kompetensi Individu Kekurangan 3 Tingkat'),
(8, 4, 1.5, 'Kompetensi Individu Kelebihan 4 Tingkat'),
(9, -4, 1, 'Kompetensi Individu Kekurangan 4 Tingkat');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_bobot`
--

CREATE TABLE `tb_bobot` (
  `id` int(11) NOT NULL,
  `kriteria` varchar(25) NOT NULL,
  `keterangan` varchar(20) NOT NULL,
  `bobot` double NOT NULL,
  `nilai_standart` int(11) NOT NULL,
  `jenis` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_bobot`
--

INSERT INTO `tb_bobot` (`id`, `kriteria`, `keterangan`, `bobot`, `nilai_standart`, `jenis`) VALUES
(3, 'Harga', 'Biaya', 0.3, 5, 'Core Factor'),
(4, 'Kualitas', 'Keuntungan', 0.15, 4, 'Core Factor'),
(5, 'Pelayanan', 'keuntungan', 0.05, 3, 'Secondary Factor'),
(6, 'Pengemasan', 'Keuntungan', 0.05, 3, 'Secondary Factor'),
(7, 'Ketepatan Pengiriman', 'Keuntungan', 0.15, 4, 'Core Factor'),
(8, 'Fleksibilitas Pembayaran', 'Keuntungan', 0.15, 4, 'Secondary Factor'),
(9, 'Kebijakan Klaim', 'Biaya', 0.15, 4, 'Core Factor');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_mitra`
--

CREATE TABLE `tb_mitra` (
  `id` int(11) NOT NULL,
  `nama` varchar(25) NOT NULL,
  `c1` int(11) NOT NULL,
  `c2` int(11) NOT NULL,
  `c3` int(11) NOT NULL,
  `c4` int(11) NOT NULL,
  `c5` int(11) NOT NULL,
  `c6` int(11) NOT NULL,
  `c7` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_mitra`
--

INSERT INTO `tb_mitra` (`id`, `nama`, `c1`, `c2`, `c3`, `c4`, `c5`, `c6`, `c7`) VALUES
(2, 'SPII', 4, 4, 3, 3, 3, 3, 3),
(4, 'BPI', 3, 3, 3, 3, 3, 3, 2),
(5, 'KPI', 4, 3, 3, 2, 3, 3, 1),
(6, 'BKSI', 3, 3, 2, 3, 3, 1, 1),
(7, 'ISP', 3, 3, 3, 3, 2, 3, 3),
(8, 'TI', 4, 3, 4, 3, 3, 1, 2),
(9, 'DYSP', 3, 3, 3, 2, 3, 1, 3),
(10, 'JSC', 3, 4, 4, 4, 3, 3, 1),
(11, 'HRBC', 4, 3, 3, 3, 3, 3, 1),
(12, 'NS', 3, 3, 3, 3, 3, 3, 2),
(23, 'SAPI', 3, 3, 4, 3, 3, 3, 2),
(26, 'Hasnan Corp', 4, 4, 4, 4, 4, 4, 4),
(35, 'Dwi Sumber Arcana Wijaya', 3, 4, 4, 5, 4, 4, 3);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_analisis_gap`
--
ALTER TABLE `tb_analisis_gap`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_bobot`
--
ALTER TABLE `tb_bobot`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_mitra`
--
ALTER TABLE `tb_mitra`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_analisis_gap`
--
ALTER TABLE `tb_analisis_gap`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `tb_bobot`
--
ALTER TABLE `tb_bobot`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `tb_mitra`
--
ALTER TABLE `tb_mitra`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- Database: `db_pegawai`
--
CREATE DATABASE IF NOT EXISTS `db_pegawai` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db_pegawai`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_bezetting`
--

CREATE TABLE `tb_bezetting` (
  `id` int(11) NOT NULL,
  `id_spp` int(11) NOT NULL,
  `id_unit` int(11) NOT NULL,
  `id_jabatan` int(11) NOT NULL,
  `berisi` int(11) NOT NULL,
  `kebutuhan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_bezetting`
--

INSERT INTO `tb_bezetting` (`id`, `id_spp`, `id_unit`, `id_jabatan`, `berisi`, `kebutuhan`) VALUES
(1, 58, 974, 1, 1, 1),
(2, 58, 974, 2, 0, 1),
(3, 58, 974, 3, 0, 1),
(4, 58, 974, 4, 0, 2),
(5, 58, 974, 5, 1, 1),
(6, 58, 974, 6, 0, 1),
(7, 58, 974, 7, 1, 1),
(8, 58, 974, 8, 1, 1),
(9, 58, 974, 9, 1, 1),
(10, 58, 974, 10, 1, 1),
(11, 58, 978, 11, 1, 2),
(12, 58, 978, 12, 1, 3),
(13, 58, 978, 13, 0, 3),
(14, 58, 978, 14, 0, 2),
(15, 58, 978, 15, 1, 1),
(16, 58, 978, 16, 0, 2),
(17, 58, 977, 18, 0, 1),
(18, 58, 977, 19, 0, 2),
(19, 58, 977, 20, 0, 2),
(20, 58, 977, 21, 1, 1),
(21, 58, 977, 22, 1, 1),
(22, 58, 977, 23, 0, 1),
(23, 58, 977, 24, 0, 1),
(24, 58, 977, 25, 1, 1),
(25, 58, 977, 26, 0, 2),
(26, 58, 977, 27, 0, 1),
(27, 58, 977, 28, 0, 1),
(28, 58, 979, 29, 0, 2),
(29, 58, 979, 30, 1, 1),
(30, 58, 979, 31, 1, 2),
(31, 58, 979, 32, 0, 1),
(32, 58, 979, 33, 0, 1),
(33, 58, 979, 34, 0, 1),
(34, 58, 979, 35, 1, 1),
(35, 58, 979, 36, 0, 2),
(36, 58, 979, 37, 1, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_jabatan`
--

CREATE TABLE `tb_jabatan` (
  `id_jabatan` int(11) NOT NULL,
  `nama` varchar(80) NOT NULL,
  `grade` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_jabatan`
--

INSERT INTO `tb_jabatan` (`id_jabatan`, `nama`, `grade`) VALUES
(1, 'Penata Laporan Keuangan', 7),
(2, 'Penyusun Rencana Keuangan', 7),
(3, 'Pengelola Program dan Kegiatan', 7),
(4, 'Penyusun Rencana Kegiatan dan Anggaran', 7),
(5, 'Pengelola Data Transaksi', 6),
(6, 'Pengelola Kepegawaian', 5),
(7, 'Analis Sumber Daya Manusia Aparatur', 7),
(8, 'Pengaminidstrasi Umum', 5),
(9, 'Analis Tata Usaha', 7),
(10, 'Pengadministrasi Sarana dan Prasarana', 5),
(11, 'Analis Pelanggaran Disiplin', 7),
(12, 'Pegadministrasi Kepegawaian', 5),
(13, 'Pengelola Disiplin Pegawai', 6),
(14, 'Analis Kesejahteraan Sumber Daya Manusia Aparatur', 7),
(15, 'Analis Penegakkan Integritas dan Disiplin Sumber Daya Manusia Aparatur', 7),
(16, 'Analis Kinerja', 7),
(18, 'ANALIS PEMBAYARAN PROGRAM PENSIUN', 7),
(19, 'ANALIS PENGEMBANGAN KARIR', 7),
(20, 'ANALIS JABATAN', 7),
(21, 'PENGELOLA KEPEGAWAIAN', 6),
(22, 'PENGADMINISTRASI KEPEGAWAIAN', 5),
(23, 'PENYUSUN RENCANA MUTASI', 7),
(24, 'PERANCANG SISTEM INFORMASI KEPEGAWAIAN', 7),
(25, 'PENGELOLA SISTEM INFORMASI MANAJEMEN KEPEGAWAIAN', 6),
(26, 'PENGELOLA TATA NASKAH', 6),
(27, 'PENGOLAH DATA', 6),
(28, 'PRANATA KEARSIPAN', 6),
(29, 'ANALIS PERENCANAAN SUMBER DAYA MANUSIA APARATUR', 7),
(30, 'PENGELOLA FORMASI DAN  PENGADAAN PEGAWAI ', 7),
(31, 'ANALIS KOMPETENSI', 7),
(32, 'ANALIS PENGEMBANGAN SUMBER DAYA MANUSIA APARATUR', 7),
(33, 'PRANATA PENILAIAN KOMPETENSI', 6),
(34, 'PENGADMINISTRASI TUGAS BELAJAR DAN IZIN BELAJAR', 5),
(35, 'PENYUSUN PROGRAM PENYELENGGARAAN DIKLAT', 7),
(36, 'ANALIS DIKLAT', 7),
(37, 'PENGADMINISTRASI PELATIHAN', 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_jabatan_jurusan`
--

CREATE TABLE `tb_jabatan_jurusan` (
  `id` int(11) NOT NULL,
  `id_jabatan` int(11) NOT NULL,
  `id_jurusan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_jabatan_jurusan`
--

INSERT INTO `tb_jabatan_jurusan` (`id`, `id_jabatan`, `id_jurusan`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 2, 1),
(5, 2, 2),
(6, 2, 3),
(7, 3, 1),
(8, 3, 2),
(9, 3, 3),
(10, 4, 4),
(11, 4, 3),
(12, 4, 2),
(13, 5, 3),
(14, 5, 2),
(15, 5, 5),
(16, 5, 6),
(17, 5, 7),
(18, 6, 2),
(19, 6, 8),
(20, 6, 9),
(21, 7, 2),
(22, 7, 8),
(23, 7, 9),
(24, 8, 10),
(25, 8, 11),
(26, 8, 12),
(27, 9, 2),
(28, 9, 1),
(29, 9, 13),
(30, 9, 5),
(31, 9, 14),
(32, 9, 15),
(33, 10, 7),
(34, 10, 11),
(35, 10, 12),
(36, 9, 2),
(37, 9, 1),
(38, 9, 13),
(39, 9, 5),
(40, 9, 14),
(41, 9, 15),
(56, 10, 10),
(57, 10, 11),
(58, 10, 12),
(59, 11, 3),
(60, 11, 2),
(61, 11, 15),
(62, 12, 10),
(63, 12, 11),
(64, 12, 12),
(65, 13, 5),
(66, 13, 2),
(67, 14, 2),
(68, 14, 1),
(69, 14, 5),
(70, 14, 16),
(71, 15, 2),
(72, 15, 1),
(73, 15, 5),
(74, 15, 16),
(75, 16, 2),
(76, 16, 8),
(77, 16, 9),
(78, 18, 3),
(79, 18, 2),
(80, 19, 2),
(81, 19, 5),
(82, 19, 16),
(83, 20, 2),
(84, 20, 1),
(85, 20, 5),
(86, 20, 16),
(87, 21, 8),
(88, 21, 8),
(89, 21, 9),
(90, 22, 10),
(91, 22, 11),
(92, 22, 12),
(93, 23, 2),
(94, 23, 1),
(95, 23, 5),
(96, 23, 16),
(97, 24, 2),
(98, 24, 1),
(99, 24, 5),
(100, 24, 16),
(101, 24, 6),
(102, 24, 7),
(103, 25, 2),
(104, 25, 5),
(105, 25, 16),
(106, 25, 6),
(107, 25, 7),
(108, 26, 2),
(109, 26, 5),
(110, 26, 13),
(111, 26, 6),
(112, 26, 7),
(149, 27, 6),
(150, 27, 7),
(151, 28, 17),
(152, 29, 2),
(153, 29, 1),
(154, 29, 5),
(155, 29, 16),
(156, 30, 2),
(157, 30, 5),
(158, 30, 16),
(159, 31, 2),
(160, 31, 1),
(161, 31, 5),
(162, 31, 16),
(163, 32, 2),
(164, 32, 1),
(165, 32, 5),
(166, 32, 16),
(167, 33, 2),
(168, 33, 8),
(169, 33, 9),
(170, 34, 10),
(171, 34, 11),
(172, 34, 12),
(173, 35, 2),
(174, 35, 1),
(175, 35, 5),
(176, 35, 16),
(177, 36, 2),
(178, 36, 1),
(179, 36, 5),
(180, 36, 16),
(181, 37, 10),
(182, 37, 11),
(183, 37, 12),
(184, 1, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_jabatan_terpilih`
--

CREATE TABLE `tb_jabatan_terpilih` (
  `id` int(11) NOT NULL,
  `id_jabatan` int(11) NOT NULL,
  `id_pegawai` int(11) NOT NULL,
  `nama_jabatan` varchar(80) NOT NULL,
  `nama_pegawai` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_jabatan_terpilih`
--

INSERT INTO `tb_jabatan_terpilih` (`id`, `id_jabatan`, `id_pegawai`, `nama_jabatan`, `nama_pegawai`) VALUES
(2, 18, 1, 'ANALIS PEMBAYARAN PROGRAM PENSIUN', 'Hasnan Alfan Shuri'),
(3, 26, 17, 'PENGELOLA TATA NASKAH', 'Anak TI D3'),
(4, 19, 21, 'ANALIS PENGEMBANGAN KARIR', 'Nanda Alfath'),
(5, 2, 5, 'Penyusun Rencana Keuangan', 'Robert Setiawan'),
(6, 3, 3, 'Pengelola Program dan Kegiatan', 'David Fernando'),
(7, 24, 1, 'PERANCANG SISTEM INFORMASI KEPEGAWAIAN', 'Hasnan Alfan Shuri'),
(8, 24, 13, 'PERANCANG SISTEM INFORMASI KEPEGAWAIAN', 'Coba Lagi'),
(9, 36, 1, 'ANALIS DIKLAT', 'Hasnan Alfan Shuri'),
(10, 19, 1, 'ANALIS PENGEMBANGAN KARIR', 'Hasnan Alfan Shuri'),
(11, 13, 11, 'Pengelola Disiplin Pegawai', 'Pasti Kosong'),
(12, 11, 14, 'Analis Pelanggaran Disiplin', 'Omen'),
(13, 3, 3, 'Pengelola Program dan Kegiatan', 'David Fernando'),
(14, 24, 16, 'PERANCANG SISTEM INFORMASI KEPEGAWAIAN', 'Sova'),
(15, 24, 25, 'PERANCANG SISTEM INFORMASI KEPEGAWAIAN', 'Nama 4'),
(16, 24, 19, 'PERANCANG SISTEM INFORMASI KEPEGAWAIAN', 'M. Dapid'),
(17, 24, 13, 'PERANCANG SISTEM INFORMASI KEPEGAWAIAN', 'Coba Lagi'),
(18, 26, 18, 'PENGELOLA TATA NASKAH', 'M. Fauzan'),
(19, 26, 20, 'PENGELOLA TATA NASKAH', 'Ridho Gas'),
(20, 16, 26, 'Analis Kinerja', 'Nama 5'),
(21, 18, 1, 'ANALIS PEMBAYARAN PROGRAM PENSIUN', 'Hasnan Alfan Shuri'),
(22, 2, 3, 'Penyusun Rencana Keuangan', 'David Fernando'),
(23, 18, 1, 'ANALIS PEMBAYARAN PROGRAM PENSIUN', 'Hasnan Alfan Shuri'),
(24, 11, 14, 'Analis Pelanggaran Disiplin', 'Omen');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_jurusan`
--

CREATE TABLE `tb_jurusan` (
  `id_jurusan` int(11) NOT NULL,
  `nama_jurusan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_jurusan`
--

INSERT INTO `tb_jurusan` (`id_jurusan`, `nama_jurusan`) VALUES
(1, 'Ekonomi'),
(2, 'Manajemen'),
(3, 'Akuntansi'),
(4, 'Ekonomi Pembangunan'),
(5, 'Administrasi'),
(6, 'Teknik Informatika'),
(7, 'Manajemen Teknik Informatika'),
(8, 'Administrasi Negara'),
(9, 'Administrasi Publik'),
(10, 'Manajemen Perkantoran'),
(11, 'Administrasi Perkantoran'),
(12, 'Tata Perkantoran'),
(13, 'Pemerintahan'),
(14, 'Kebijakan Publik'),
(15, 'Hukum'),
(16, 'Psikologi'),
(17, 'Kearsipan'),
(18, 'Sosiologi'),
(19, 'IPA'),
(20, 'IPS'),
(21, 'Sistem Informasi'),
(22, 'Teknik Elektro'),
(23, 'Teknik Perminyakan'),
(24, 'Pendidikan Matematika');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pegawai`
--

CREATE TABLE `tb_pegawai` (
  `id` int(11) NOT NULL,
  `nip` char(14) NOT NULL,
  `nama_pegawai` varchar(30) NOT NULL,
  `tingkat_pendidikan` char(5) NOT NULL,
  `jurusan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_pegawai`
--

INSERT INTO `tb_pegawai` (`id`, `nip`, `nama_pegawai`, `tingkat_pendidikan`, `jurusan`) VALUES
(1, '1001', 'Hasnan Alfan Shuri', 'S1', 'Manajemen'),
(2, '1002', 'Hendrata Putra Pratama', 'D3', 'Ekonomi'),
(3, '1003', 'David Fernando', 'S1', 'Akuntansi'),
(5, '1004', 'Robert Setiawan', 'S1', 'Ekonomi'),
(9, '1005', 'Fernando', 'S1', 'Administrasi Negara'),
(10, '1006', 'Fernando Palsu', 'D3', 'Administrasi Publik'),
(11, '1007', 'Pasti Kosong', 'D3', 'Administrasi'),
(12, '1008', 'Tes Lagi', 'S1', 'Administrasi Perkantoran'),
(13, '1009', 'Coba Lagi', 'D4', 'Teknik Informatika'),
(14, '1010', 'Omen', 'S1', 'Hukum'),
(16, '1012', 'Sova', 'S1', 'Teknik Informatika'),
(17, '1013', 'Anak TI D3', 'D3', 'Teknik Informatika'),
(18, '1014', 'M. Fauzan', 'D3', 'Manajemen Teknik Informatika'),
(19, '1015', 'M. Dapid', 'D4', 'Manajemen Teknik Informatika'),
(20, '1016', 'Ridho Gas', 'D3', 'Manajemen'),
(21, '1011', 'Nanda Alfath', 'S1', 'Psikologi'),
(22, '1017', 'Nama 2', 'S1', 'Ekonomi Pembangunan'),
(23, '1018', 'Nama 3', 'D3', 'Ekonomi Pembangunan'),
(24, '1019', 'tes', 'SLTA', 'Sosiologi'),
(25, '1020', 'Nama 4', 'S2', 'Teknik Informatika'),
(26, '1021', 'Nama 5', 'S1', 'Administrasi Negara'),
(27, '1022', 'Coba SLTA', 'SLTA', 'IPA'),
(28, '1023', 'Nama 5', 'D2', 'Manajemen'),
(29, '1024', 'Jefry Kurniawan', 'S1', 'Pemerintahan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pembobotan`
--

CREATE TABLE `tb_pembobotan` (
  `id` int(11) NOT NULL,
  `gap` int(11) NOT NULL,
  `bobot` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_pembobotan`
--

INSERT INTO `tb_pembobotan` (`id`, `gap`, `bobot`) VALUES
(1, 0, 8),
(2, 1, 7.5),
(3, -1, 7),
(4, 2, 6.5),
(5, -2, 6),
(6, 3, 5.5),
(7, -3, 5),
(8, 4, 4.5),
(9, -4, 4),
(10, 5, 3.5),
(11, -5, 3),
(12, 6, 2.5),
(13, -6, 2),
(14, 7, 1.5),
(15, -7, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_spp`
--

CREATE TABLE `tb_spp` (
  `id_spp` int(11) NOT NULL,
  `spp` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_spp`
--

INSERT INTO `tb_spp` (`id_spp`, `spp`) VALUES
(1, 'spp'),
(2, 'DINAS KESEHATAN'),
(4, 'DINAS PEKERJAAN UMUM DAN PENATAAN RUANG'),
(7, 'DINAS PERHUBUNGAN'),
(8, 'DINAS LINGKUNGAN HIDUP'),
(9, 'DINAS KEPENDUDUKAN DAN PENCATATAN SIPIL'),
(10, 'DINAS PEMBERDAYAAN PEREMPUAN, PERLINDUNGAN ANAK, PENGENDALIAN PENDUDUK DAN KELUA'),
(11, 'DINAS SOSIAL'),
(12, 'DINAS TENAGA KERJA'),
(13, 'DINAS KOPERASI, USAHA KECIL DAN MENENGAH, PERINDUSTRIAN DAN PERDAGANGAN'),
(14, 'DINAS PENANAMAN MODAL DAN PELAYANAN TERPADU SATU PINTU'),
(15, 'BADAN KESATUAN BANGSA DAN POLITIK '),
(16, 'SATUAN POLISI PAMONG PRAJA DAN PEMADAM KEBAKARAN'),
(19, 'SEKRETARIAT DAERAH'),
(20, 'SEKRETARIAT DEWAN PERWAKILAN RAKYAT DAERAH'),
(21, 'DINAS PENDAPATAN DAERAH'),
(22, 'INSPEKTORAT KABUPATEN PELALAWAN'),
(23, 'KECAMATAN PELALAWAN'),
(24, 'KECAMATAN PANGKALAN KERINCI'),
(25, 'KECAMATAN BANDAR SEI KIJANG'),
(26, 'KECAMATAN PANGKALAN KURAS'),
(27, 'KECAMATAN KUALA KAMPAR'),
(28, 'KECAMATAN TELUK MERANTI'),
(29, 'KECAMATAN UKUI'),
(30, 'KECAMATAN BANDAR PETALANGAN'),
(31, 'KECAMATAN LANGGAM'),
(32, 'KECAMATAN BUNUT'),
(33, 'KECAMATAN PANGKALAN LESUNG'),
(34, 'KECAMATAN KERUMUTAN'),
(37, 'DINAS KETAHANAN PANGAN, TANAMAN PANGAN DAN HORTIKULTURA'),
(38, 'DINAS PEMBERDAYAAN MASYARAKAT DAN DESA'),
(39, 'DINAS KEARSIPAN DAN PERPUSTAKAAN'),
(40, 'DINAS PERTANIAN TANAMAN PANGAN'),
(42, 'DINAS PETERNAKAN'),
(43, 'DINAS PERKEBUNAN DAN PETERNAKAN'),
(46, 'DINAS PERIKANAN DAN KELAUTAN'),
(48, 'BADAN PERENCANAAN PEMBANGUNAN DAERAH'),
(50, 'BADAN PENANGGULANGAN BENCANA DAERAH'),
(51, 'BADAN PENELITIAN DAN PENGEMBANGAN '),
(52, 'SEKRETARIAT KORPRI'),
(53, 'BADAN PENGELOLAAN KEUANGAN DAN ASET DAERAH'),
(54, 'DINAS KOMUNIKASI DAN INFORMATIKA'),
(55, 'BADAN NARKOTIKA NASIONAL'),
(56, 'DINAS PERIKANAN'),
(57, 'DINAS PARIWISATA, PEMUDA DAN OLAHRAGA'),
(58, 'BADAN KEPEGAWAIAN DAN PENGEMBANGAN SUMBER DAYA MANUSIA'),
(59, 'DINAS PENDIDIKAN DAN KEBUDAYAAN'),
(60, 'DINAS TATA KOTA PERTAMANAN DAN KEBERSIHAN'),
(61, 'BADAN PENGAWAS DAERAH'),
(62, 'DINAS KEHUTANAN'),
(63, 'DINAS PERKEBUNAN'),
(64, 'DINAS KEHUTANAN DAN PERKEBUNAN'),
(65, 'DINAS PETERNAKAN, PERIKANAN DAN KELAUTAN'),
(66, 'Dinas Pertambangan Dan Energi'),
(67, 'Akademi Komunitas Negeri Pelalawan'),
(68, 'DINAS PENGELOLA KEUANGAN DAN KEKAYAAN DAERAH'),
(69, 'DINAS CIPTA KARYA DAN TATA RUANG'),
(70, 'BADAN KEPEGAWAIAN DAERAH'),
(71, 'BADAN PERTANAHAN DAERAH'),
(72, 'DINAS PEMUKIMAN DAN PRASARANA'),
(73, 'Badan Informasi Komunikasi Dan Pengelolaan Data Elektronik'),
(74, 'DINAS BINA MARGA DAN SUMBER DAYA AIR'),
(75, 'DINAS PEKERJAAN UMUM');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_unit`
--

CREATE TABLE `tb_unit` (
  `id_unit` int(11) NOT NULL,
  `unit_spp` int(11) NOT NULL,
  `unit` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_unit`
--

INSERT INTO `tb_unit` (`id_unit`, `unit_spp`, `unit`) VALUES
(1, 19, 'BAGIAN PEMERINTAHAN DAN OTONOMI DAERAH'),
(2, 19, 'BAGIAN HUMAS DAN PDE'),
(3, 2, 'DINAS KESEHATAN'),
(4, 11, 'DINAS SOSIAL'),
(5, 12, 'DINAS TENAGA KERJA'),
(6, 7, 'DINAS PERHUBUNGAN'),
(7, 19, 'BAGIAN PROGRAM PEMBANGUNAN'),
(8, 19, 'BAGIAN PEREKONOMIAN DAN SDA'),
(9, 19, 'BAGIAN KESEJAHTERAAN RAKYAT'),
(10, 19, 'BAGIAN SUMBER DAYA ALAM'),
(11, 9, 'DINAS KEPENDUDUKAN DAN PENCATATAN SIPIL'),
(12, 19, 'BAGIAN ORGANISASI'),
(13, 19, 'BAGIAN UMUM'),
(14, 19, 'BAGIAN KEUANGAN SEKRETARIAT DAERAH'),
(16, 19, 'BAGIAN PENGELOLAAN DATA ELEKTRONIK'),
(18, 4, 'DINAS PEKERJAAN UMUM DAN TATA RUANG'),
(19, 42, 'DINAS PETERNAKAN'),
(20, 46, 'DINAS PERIKANAN DAN KELAUTAN'),
(21, 13, 'DINAS KOPERASI, UKM, PERDAGANGAN DAN PERINDUSTRIAN'),
(23, 40, 'DINAS PERTANIAN TANAMAN PANGAN'),
(24, 43, 'DINAS PERKEBUNAN DAN PETERNAKAN'),
(27, 21, 'DINAS PENDAPATAN DAERAH'),
(29, 15, 'BADAN KESATUAN BANGSA DAN POLITIK '),
(30, 8, 'DINAS LINGKUNGAN HIDUP'),
(31, 37, 'DINAS KETAHANAN PANGAN, TANAMAN PANGAN DAN HORTIKULTURA'),
(32, 38, 'DINAS PEMBERDAYAAN MASYARAKAT DAN DESA'),
(33, 10, 'DINAS PEMBERDAYAAN PEREMPUAN, PERLINDUNGAN ANAK, PENGENDALIAN PENDUDUK DAN KB '),
(34, 14, 'DINAS PENANAMAN MODAL DAN PELAYANAN TERPADU SATU PINTU'),
(36, 22, 'INSPEKTORAT'),
(37, 39, 'DINAS KEARSIPAN DAN PERPUSTAKAAN'),
(39, 16, 'SATUAN POLISI PAMONG PRAJA '),
(41, 23, 'KEC.PELALAWAN'),
(42, 23, 'KEL.PELALAWAN'),
(43, 24, 'KEC.PANGKALAN KERINCI'),
(44, 24, 'KEL.PANGKALAN KERINCI KOTA'),
(45, 24, 'KEL.  PANGKALAN KERINCI BARAT'),
(46, 24, 'KEL.PANGKALAN KERINCI TIMUR'),
(47, 32, 'KECAMATAN BUNUT'),
(48, 32, 'KEL. BUNUT'),
(49, 26, 'KEC. PANGKALAN KURAS'),
(50, 26, 'KEL.PANGKALAN KURAS'),
(51, 31, 'KECAMATAN LANGGAM'),
(52, 31, 'KELURAHAN LANGGAM'),
(53, 25, 'KEC. BANDAR SEI.KIJANG'),
(54, 25, 'KEL. BANDAR SEI KIJANG'),
(55, 33, 'KECAMATAN PANGKALAN LESUNG'),
(56, 33, 'KEL.PANGKALAN LESUNG'),
(57, 30, 'KECAMATAN BANDAR PETALANGAN'),
(58, 30, 'KEL. BANDAR PETALANGAN'),
(59, 29, 'KEC. UKUI'),
(60, 29, 'KEL.UKUI'),
(61, 34, 'KECAMATAN KERUMUTAN'),
(62, 34, 'KEL. KERUMUTAN'),
(63, 28, 'KEC.TELUK MERANTI'),
(64, 28, 'KEL.TELUK MERANTI'),
(65, 27, 'KEC. KUALA KAMPAR'),
(66, 27, 'KEL.KUALA KAMPAR'),
(67, 27, 'KEL.TELUK DALAM'),
(68, 29, 'KEL. SOREK SATU'),
(69, 20, 'BAGIAN PERSIDANGAN DAN PRODUK HUKUM'),
(70, 20, 'BAGIAN UMUM'),
(71, 20, 'BAGIAN KEUANGAN'),
(72, 20, 'BAGIAN HUMAS'),
(73, 1, 'DINAS PENDIDIKAN'),
(74, 21, 'BAGIAN PROGRAM'),
(75, 21, 'BAGIAN UMUM DAN KEPEGAWAIAN'),
(76, 21, 'BAGIAN KEUANGAN'),
(78, 2, 'UPT. PUSKESMAS LANGGAM'),
(80, 20, 'SEKRETARIAT DPRD'),
(85, 2, 'UPT. PUSKESMAS PKL.KERINCI'),
(86, 2, 'UPT. PUSKESMAS BANDAR SEIKIJANG'),
(87, 2, 'UPT. PUSKESMAS PELALAWAN'),
(88, 2, 'UPT. PUSKESMAS BUNUT'),
(89, 2, 'UPT. PUSKESMAS PANGKALAN LESUNG'),
(90, 2, 'UPT. PUSKESMAS PANGKALAN KURAS SATU'),
(91, 2, 'UPT. PUSKESMAS BANDAR PETALANGAN'),
(92, 2, 'UPT. PUSKESMAS UKUI'),
(93, 2, 'UPT. PUSKESMAS KERUMUTAN'),
(94, 2, 'UPT. PUSKESMAS TELUK MERANTI'),
(95, 2, 'UPT. PUSKESMAS KUALA KAMPAR'),
(96, 21, 'BIDANG PENDAPATAN'),
(97, 21, 'BIDANG ANGGARAN DAN PERBENDAHARAAN'),
(98, 21, 'BIDANG PENGELOLAAN ASET'),
(99, 21, 'BIDANG PEMBUKUAN DAN VERIFIKASI'),
(100, 1, 'SEKRETARIAT DINAS PENDIDIKAN'),
(101, 1, 'BIDANG KURIKULUM DAN KESISWAAN'),
(102, 1, 'BIDANG PENDIDIK DAN TENAGA KEPENDIDIKAN'),
(103, 1, 'BIDANG SARANA,PRASARANA DAN KELEMBAGAAN'),
(104, 1, 'SD NEGERI 028 PANGKALAN KERINCI'),
(105, 2, 'BIDANG PELAYANAN KESEHATAN'),
(106, 2, 'BIDANG PENGENDALIAN PENYAKIT DAN KESEHATAN LINGKUNGAN'),
(107, 2, 'BIDANG KESEHATAN KELUARGA DAN PROMOSI KESEHATAN'),
(108, 2, 'BIDANG PENGEMBANGAN SUMBER DAYA DAN INFORMASI KESEHATAN'),
(109, 1, 'BIDANG PENDIDIKAN NON FORMAL DAN INFORMAL'),
(110, 11, 'BIDANG PELAYANAN SOSIAL'),
(111, 11, 'BIDANG REHABILITASI SOSIAL'),
(112, 11, 'BIDANG BANTUAN SOSIAL'),
(113, 11, 'BIDANG PEMBERDAYAAN SOSIAL'),
(114, 12, 'BIDANG PENEMPATAN DAN PELATIHAN TENAGA KERJA'),
(115, 12, 'BIDANG HUBUNGAN INDUSTRIAL DAN PERSYARATAN KERJA'),
(116, 12, 'BIDANG PENGAWASAN DAN PERLINDUNGAN TENAGA KERJA'),
(117, 12, 'BIDANG TRANSMIGRASI PEMUKIMAN BARU'),
(118, 7, 'UPTD PANGKALAN KERINCI'),
(119, 7, 'UPTD KUALA KAMPAR'),
(120, 7, 'UPTD TELUK MERANTI'),
(121, 1, 'SMP NEGERI  1 BUNUT'),
(122, 1, 'SMP NEGERI 1 LANGGAM'),
(123, 1, 'SMP NEGERI 2 LANGGAM'),
(124, 1, 'SMP NEGERI 3 LANGGAM'),
(126, 1, 'SMP NEGERI 2 KUALA KAMPAR'),
(127, 1, 'SMP NEGERI 3 KUALA KAMPAR'),
(128, 1, 'SMP NEGERI 1 SERAPUNG'),
(129, 1, 'SMP NEGERI BINAAN SUNGAI UPIH'),
(130, 1, 'SMP NEGERI SATU ATAP TELUK'),
(131, 1, 'SMP NEGERI 1 KJT BAKAU'),
(132, 1, 'SMP NEGERI 1 PKL.KERINCI'),
(133, 1, 'SMP NEGERI 2 PKL.KERINCI'),
(134, 1, 'SMP NEGERI 1 PKL.KURAS'),
(135, 1, 'SMP NGERI 2 PKL.KURAS'),
(136, 1, 'SMP NEGERI 3 PANGKALAN KURAS'),
(137, 1, 'SMP NEGERI SOREK SATU'),
(138, 1, 'SMP NEGERI SATU ATAP B.KESUMA'),
(139, 1, 'SMP NEGERI SATU ATAP KEMANG'),
(140, 1, 'SMP NEGERI 1 PANGKALAN LESUNG'),
(141, 1, 'SMP NEGERI 2 PANGKALAN LESUNG'),
(142, 1, 'SMP NEGERI 1 UKUI'),
(143, 1, 'SMP NEGERI 2 UKUI'),
(144, 1, 'SMP NEGERI 3 UKUI'),
(145, 1, 'SMP NEGERI BUKIT GAJAH'),
(146, 1, 'SMP NEGERI BUKIT JAYA'),
(147, 1, 'SMP NEGERI 001 KERUMUTAN'),
(148, 1, 'SMP NEGERI 1 PELALAWAN'),
(149, 1, 'SMP NEGERI 002 PELALAWAN'),
(150, 1, 'SMP NEGERI KUALA PANDUK'),
(152, 1, 'SMP NEGERI SATU ATAP RANSANG'),
(153, 1, 'SMP NEGERI PULAU MUDA'),
(154, 1, 'SMP NEGERI 1 TELUK MERANTI'),
(155, 1, 'SMP GAMBUT MUTIARA'),
(156, 1, 'SMP NEGERI 1 BANDAR SEKIJANG'),
(157, 1, 'SMP NEGERI 2 BANDAR SEIKIJANG'),
(158, 1, 'SMP TARUNA ANDALAN'),
(159, 1, 'SMP MUTIARA HARAPAN'),
(160, 1, 'SMP DARUL TOYYIBAH'),
(161, 1, 'SMP NEGERI BERNAS'),
(162, 1, 'SMP C9'),
(163, 1, 'SMP MARGINAL MAWAR LESTARI'),
(164, 1, 'SMP GLOBAL ANDALAN'),
(165, 1, 'SMP BIDADARI'),
(166, 1, 'SMP PERINTIS SWADAYA UP VII SP'),
(167, 1, 'SMP LKMD PANGKALAN PANDUK'),
(168, 1, 'SMP ASHABUL MUKMININ'),
(169, 1, 'SMP ISLAM TERPADU INSAN MADANI'),
(170, 1, 'SMP SWADAYA BUKIT JAYA'),
(172, 1, 'SDN 006 PENARIKAN'),
(173, 1, 'SDN 013 SEGATI'),
(174, 1, 'SDN 044 KERUMUTAN'),
(175, 1, 'UPTD KERUMUTAN'),
(176, 1, 'UPTD BANDAR SEIKIJANG'),
(177, 46, 'UPTD KUALA KAMPAR'),
(178, 46, 'UPTD TELUK MERANTI'),
(179, 46, 'UPTD PANGKALAN KURAS'),
(180, 46, 'UPTD PKL. KERINCI'),
(181, 1, 'UPTD KUALA KAMPAR'),
(182, 1, 'UPTD LANGGAM'),
(183, 1, 'UPTD PANGKALAN KERINCI'),
(184, 1, 'UPTD TELUK MERANTI'),
(185, 1, 'UPTD UKUI'),
(186, 1, 'UPTD PANGKALAN KURAS'),
(187, 1, 'UPTD PELALAWAN'),
(188, 1, 'UPTD PANGKALAN LESUNG'),
(189, 1, 'UPTD BUNUT'),
(190, 1, 'UPTD BANDAR PETALANGAN'),
(194, 15, 'BIDANG KESATUAN BANGSA'),
(195, 15, 'BIDANG FASILITAS ORGANISASI POLITIK'),
(196, 15, 'BIDANG PERLINDUNGAN MASYARAKAT'),
(197, 8, 'BIDANG ANALISIS DAN PENCEGAHAN DAMPAK LINGKUNGAN'),
(198, 8, 'BIDANG PENANGGULANGAN DAN PEMULIHAN KUALITAS LINGKUNGAN'),
(199, 8, 'BIDANG PENGAWASAN DAN PENEGAKAN HUKUM'),
(200, 37, 'BIDANG PRASARANA, SARANA DAN PENYULUHAN'),
(201, 37, 'BIDANG KETERSEDIAAN DAN DISTRIBUSI PANGAN'),
(202, 37, 'BIDANG TANAMAN HORTIKULTURA'),
(203, 38, 'BIDANG PENGEMBANGAN KELEMBAGAAN MASYARAKAT'),
(204, 38, 'BIDANG USAHA EKONOMI MASYARAKAT'),
(205, 38, 'BIDANG PEMERINTAHAN DESA'),
(209, 10, 'SEKRETARIAT DINAS DINAS PEMBERDAYAAN PEREMPUAN, PERLINDUNGAN ANAK, PENGENDALIAN '),
(212, 14, 'BIDANG PROMOSI'),
(213, 14, 'BIDANG FASILITASI DAN KERJASAMA PENANAMAN  MODAL'),
(214, 14, 'BIDANG PENGEMBANGAN PROMOSI DAN PENANAMAN MODAL'),
(222, 22, 'SEKRETARIAT INSPEKTORAT'),
(226, 15, 'SEKRETARIAT BADAN KESATUAN BANGSA DAN POLITIK'),
(227, 8, 'SEKRETARIAT DINAS LINGKUNGAN HIDUP'),
(228, 37, 'BIDANG TANAMAN PANGAN'),
(229, 37, 'SEKRETARIAT DINAS KETAHANAN PANGAN, TANAMAN PANGAN DAN HORTIKULTURA'),
(231, 1, 'SDN 050 KERUMUTAN'),
(234, 43, 'UPTD KECAMATAN KUALA KAMPAR'),
(236, 43, 'UPTD KECAMATAN LANGGAM'),
(237, 43, 'UPTD KECAMATAN UKUI'),
(240, 19, 'SEKRETARIAT DAERAH'),
(245, 1, 'SDN 024 PANGKALAN KERINCI'),
(246, 1, 'SDN 018 PANGKALAN KERINCI'),
(247, 1, 'SDN 012 KUALA TERUSAN'),
(248, 1, 'SDN 027 SOKOI KEC.KUALA KAMAPAR'),
(249, 1, 'SDN 028 SOKOI KUALA KAMPAR'),
(250, 42, 'UPTD PANGKALAN KERINCI'),
(251, 42, 'UPTD LANGGAM'),
(252, 42, 'UPTD PANGKALAN KURAS'),
(253, 42, 'UPTD KERUMUTAN'),
(254, 48, 'BADAN PERENCANAAN PEMBANGUNAN DAERAH'),
(255, 1, 'SDN 001 RANTAU BARU '),
(256, 1, 'SDN 002 KUALA TERUSAN'),
(257, 1, 'SDN 003 PANGKALAN KERINCI'),
(258, 1, 'SDN 004 BUKIT AGUNG'),
(259, 1, 'SDN 005 MAKMUR'),
(260, 1, 'SDN 006 PANGKALAN KERINCI'),
(261, 1, 'SDN 007 PANGKALAN KERINCI'),
(262, 1, 'SDN 008 PANGKALAN KERINCI'),
(263, 1, 'SDN 009 KUALA TERUSAN'),
(264, 1, 'SDN 010 PANGKALAN KERINCI'),
(265, 1, 'SDN 011 TEPIAN BATU'),
(266, 1, 'SD GLOBAL ANDALAN'),
(267, 1, 'SD TARUNA ANDALAN'),
(268, 1, 'SD BERNAS'),
(269, 1, 'SDIT AL BAYAN'),
(270, 1, 'SD C9 KIDS'),
(271, 1, 'SDIT AT-TAQWA'),
(272, 1, 'SD MUTIARA HARAPAN'),
(273, 1, 'SDN 001 LANGGAM'),
(274, 1, 'SDN 002 TAMBAK'),
(275, 1, 'SDN 003 SOTOL'),
(276, 1, 'SDN 004 LANGGAM'),
(277, 1, 'SDN 005 SEGATI'),
(278, 1, 'SDN 007 PANGKALAN GONDAI'),
(279, 1, 'SDN 008 LANGGAM'),
(280, 1, 'SDN 009 LANGKAN'),
(281, 1, 'SDN 010 LANGGAM'),
(282, 1, 'SDN 011 PENARIKAN'),
(283, 1, 'SDN 012 TAMBAK'),
(284, 1, 'SDN 014 SEGATI'),
(285, 1, 'SDN 015 LANGKAN'),
(286, 1, 'SDN 016 SEGATI'),
(287, 1, 'SDN 017 MAMAHAN GONDAI'),
(288, 1, 'SDN 001 PANGKALAN BUNUT'),
(289, 1, 'SDN 002 BALAM MERAH'),
(290, 1, 'SDN 003 LUBUK MAS'),
(291, 1, 'SDN 004 MERBAU'),
(292, 1, 'SDN 005 BAGAN LAGUH'),
(293, 1, 'SDN 006 PETANI'),
(295, 1, 'SDN 008 TAMBUN'),
(296, 1, 'SDN 009 SUNGAI BULUH'),
(297, 1, 'SDN 010 LOGAS'),
(298, 1, 'SDN 011 KERIUNG'),
(299, 1, 'SDN 012 SIMPANG LEBUH'),
(300, 1, 'SDN 013 TONOK'),
(301, 1, 'SDN 014 SIALANG KAYU BATU'),
(302, 1, 'SDN 001 TELUK DALAM'),
(303, 1, 'SDN 002 TANJUNG SUM'),
(304, 1, 'SDN 003 TELUK DALAM'),
(305, 1, 'SDN 004 TELUK DALAM'),
(306, 1, 'SDN 005 SERAPUNG'),
(307, 1, 'SDN 006 TANJUNG SUM'),
(308, 1, 'SDN 007 TELUK DALAM'),
(309, 1, 'SDN 008 SUNGAI SOLOK'),
(310, 1, 'SDN 009 TELUK'),
(311, 1, 'SDN 010 SUNGAI EMAS'),
(312, 1, 'SDN 011 TELUK DALAM'),
(313, 1, 'SDN 012 SUNGAI UPIH'),
(314, 1, 'SDN 013 SUNGAI EMAS'),
(315, 1, 'SDN 014 SOKOI'),
(316, 1, 'SDN 015 SOKOI'),
(317, 1, 'SDN 016 TELUK DALAM'),
(318, 1, 'SDN 017 SUNGAI SOLOK'),
(319, 1, 'SDN 018 SUNGAI UPIH'),
(320, 1, 'SDN 019 TELUK BERINGIN'),
(321, 1, 'SDN 020 TELUK'),
(322, 1, 'SDN 021 SERAPUNG'),
(323, 1, 'SDN 022 TANJUNG SUM'),
(324, 1, 'SDN 023 TELUK'),
(325, 1, 'SDN 024 TELUK DALAM'),
(326, 1, 'SDN 001 KEMANG'),
(327, 1, 'SDN 002 KESUMA'),
(328, 1, 'SDN 003 SOREK SATU'),
(329, 1, 'SDN 004 TERANTANG MANUK'),
(330, 1, 'SDN 005 PALAS'),
(331, 1, 'SDN 006 SOREK DUA'),
(332, 1, 'SDN 007 BETUNG'),
(333, 1, 'SDN 008 DUNDANGAN'),
(334, 1, 'SDN 009 TALAU'),
(335, 1, 'SDN 010 BERINGIN INDAH'),
(336, 1, 'SDN 011 SOREK SATU'),
(337, 1, 'SDN 012 SURYA INDAH'),
(338, 1, 'SDN 013 SURYA INDAH'),
(339, 1, 'SDN 014 SIALANG INDAH'),
(340, 1, 'SDN 015 BERINGIN INDAH'),
(341, 1, 'SDN 016 MERANTI'),
(342, 1, 'SDN 017 SOREK SATU'),
(343, 1, 'SDN 018 SOREK SATU'),
(344, 1, 'SDN 019 BATANG KULIM'),
(345, 1, 'SDN 020 BETUNG'),
(346, 1, 'SDN 021 KEMANG'),
(347, 1, 'SDN 022 HARAPAN JAYA'),
(348, 1, 'SDN 023 KESUMA'),
(349, 1, 'SDN 024 SOREK SATU'),
(350, 1, 'SDN 025 DUNDANGAN'),
(351, 1, 'SDN 026 MACANG'),
(352, 1, 'SDN 027 BUKIT KESUMA'),
(353, 1, 'SDS MAJU MANDIRI 01'),
(354, 1, 'SD BIDADARI'),
(355, 1, 'SDN 001 PANGKALAN LESUNG'),
(356, 1, 'SDN 002 PAYO ATAP'),
(357, 1, 'SDN 003 TANJUNG KUYO'),
(358, 1, 'SDN 004 GENDUANG'),
(359, 1, 'SDN 005 RAWANG SARI'),
(360, 1, 'SDN 006 SARI MAKMUR'),
(361, 1, 'SDN 007 MAYANG SARI'),
(362, 1, 'SDN 008 MULYA SUBUR'),
(363, 1, 'SDN 009 SARI MULYA'),
(364, 1, 'SDN 010 SARI MULYA'),
(365, 1, 'SDN 011 DUSUN TUA'),
(366, 1, 'SDN 012 SARI MAKMUR'),
(367, 1, 'SDN 013 GENDUANG'),
(368, 1, 'SDN 014 KAMPUNG BARU'),
(369, 1, 'SDS MAJU MANDIRI II'),
(370, 1, 'SDN 001 UKUI'),
(371, 1, 'SDN 002 UKUI DUA'),
(372, 1, 'SDN 003 LBK.KEMBANG BUNGA'),
(373, 1, 'SDN 004 SIMPANG PULAI'),
(374, 1, 'SDN 005 BUKIT JAYA'),
(375, 1, 'SDN 006 TRI MULYA JAYA'),
(376, 1, 'SDN 007 KAMPUNG BARU'),
(377, 1, 'SDN 008 LBK. KEMBANG SARI'),
(378, 1, 'SDN 009 AIR EMAS'),
(379, 1, 'SDN 010 SILIKUAN HULU'),
(380, 1, 'SDN 011 BUKIT GAJAH'),
(381, 1, 'SDN 012 AIR PUTIH'),
(382, 1, 'SDN 013 LBK. KEMBANG SARI'),
(383, 1, 'SDN 014 SILIKUAN HULU'),
(384, 1, 'SDN 015 BUKIT GAJAH'),
(385, 1, 'SDN 016 AIR HITAM'),
(386, 1, 'SDN 017 BAGAN LIMAU'),
(387, 1, 'SDN 001 PELALAWAN'),
(388, 1, 'SDN 002 RANSANG'),
(389, 1, 'SDN 003 SUNGAI ARA'),
(390, 1, 'SDN 004 PELALAWAN'),
(391, 1, 'SDN 005 KUALA TOLAM'),
(392, 1, 'SDN 006 SERING'),
(393, 1, 'SDN 007 TELAYAP'),
(394, 1, 'SDN 008 BATANG NILO KECIL'),
(395, 1, 'SDN 009 DELIK'),
(396, 1, 'SDN 010 DELIMA JAYA'),
(397, 1, 'SDN 011 SERING BARAT'),
(398, 1, 'SDN 012 LALANG KABUNG'),
(399, 1, 'SDN 013 PEKAN TUA'),
(400, 1, 'SDN 014 PANGKALAN DELIK'),
(401, 1, 'SD GLOBAL ANDALAN PELALAWAN'),
(402, 1, 'SDN 001 PANGKALAN TERAP'),
(403, 1, 'SDN 002 PETODAAN'),
(404, 1, 'SDN 003 TELUK MERANTI'),
(405, 1, 'SDN 004 PULAU MUDA'),
(406, 1, 'SDN 005 KUALA PANDUK'),
(407, 1, 'SDN 006 SEGAMAI'),
(408, 1, 'SDN 007 PULAU MUDA'),
(409, 1, 'SDN 008 GAMBUT MUTIARA'),
(410, 1, 'SDN 009 LABUHAN BILIK'),
(411, 1, 'SDN 010 TELUK BINJAI'),
(412, 1, 'SDN 011 KUALA PANDUK'),
(413, 1, 'SDN 012 GAMBUT MUTIARA'),
(414, 1, 'SDN 013 TELUK MERANTI'),
(415, 1, 'SDN 001 PANGKALAN PANDUK'),
(416, 1, 'SDN 002 KERUMUTAN'),
(417, 1, 'SDN 003 KERUMUTAN'),
(418, 1, 'SDN 004 PANGKALAN TAMPOI'),
(419, 1, 'SDN 005 KERUMUTAN'),
(420, 1, 'SDN 006 KERUMUTAN'),
(421, 1, 'SDN 007 TANJUNG AIR HITAM'),
(422, 1, 'SDN 008 KERUMUTAN'),
(423, 1, 'SDN 009 BUKIT LEMBAH SUBUR'),
(424, 1, 'SDN 010 BANJAR PANJANG'),
(425, 1, 'SDN 011 BERINGIN MAKMUR'),
(426, 1, 'SDN 012 PEMATANG TINGGI'),
(427, 1, 'SDN 013 BUKIT LEMBAH SUBUR'),
(428, 1, 'SDN 014 BERINGIN MAKMUR'),
(429, 1, 'SDN 015 PANGKALAN TAMPOI'),
(430, 1, 'SDN 016 LIPAI BULAN'),
(431, 1, 'SDN 017 KERUMUTAN'),
(432, 1, 'SDN 018 KERUMUTAN'),
(433, 1, 'SDN 019 PEMATANG TINGGI'),
(434, 1, 'SDN 020 PANGKALAN TAMPOI'),
(435, 1, 'SDN 021 PANGKALAN PANDUK'),
(436, 1, 'SDN 001 LUBUK TERAP'),
(437, 1, 'SDN 002 LUBUK KERANJI'),
(438, 1, 'SDN 003 TAMBUN'),
(439, 1, 'SDN 004 LUBUK KERANJI'),
(440, 1, 'SDN 005 TERBANGIANG'),
(441, 1, 'SDN 006 POMPA AIR'),
(442, 1, 'SDN 007 SIALANG GODANG'),
(443, 1, 'SDN 008 ANGKASA'),
(444, 1, 'SDN 009 TERBANGIANG'),
(445, 1, 'SDN 010 LUBUK KERANJI'),
(446, 1, 'SDS PUTRA MANDIRI'),
(447, 1, 'SDN 001 SEIKIJANG'),
(448, 1, 'SDN 002 KIYAP JAYA'),
(449, 1, 'SDN 003 LUBUK OGUNG'),
(450, 1, 'SDN 004 LUBUK OGUNG'),
(451, 1, 'SDN 005 KIYAP JAYA'),
(452, 1, 'SDN 006 MUDA SETIA'),
(453, 1, 'SDN 007 SIMPANG BERINGIN'),
(454, 1, 'SDN 008 SEKIJANG'),
(455, 1, 'SLB NEGERI PELALAWAN'),
(456, 1, 'SMP SATU ATAP LBK.MANDIAN GAJAH'),
(457, 1, 'SMP NEGERI 1 KUALA KAMPAR'),
(460, 1, 'SMP NEGERI ANDALAN'),
(461, 1, 'SMP NEGERI 2 PANGKALAN KURAS'),
(462, 1, 'SMP SWADAYA MERANTI'),
(463, 1, 'SMP NEGERI 4 UKUI'),
(464, 1, 'SMP NEGERI 5 UKUI'),
(465, 1, 'SMP SATU ATAP SUNGAI ARA'),
(466, 1, 'SMP NEGERI 2 TELUK MERANTI'),
(467, 1, 'SMP NEGERI 3 TELUK MERANTI'),
(468, 1, 'SMP NEGERI 2 KERUMUTAN'),
(469, 1, 'SMP NEGERI 1 BANDAR PETALANGAN'),
(470, 1, 'SMP PUTRA MANDIRI'),
(471, 1, 'SMPT MADINATUL MUNAWWARAH'),
(472, 1, 'SMA NEGERI 1 PANGKALAN KERINCI'),
(473, 1, 'SMA NEGERI 2 PANGKALAN KERINCI'),
(474, 1, 'SMA NEGERI 1 PANGKALAN KURAS'),
(475, 1, 'SMA NEGERI TERANTANG MANUK'),
(476, 1, 'SMA NEGERI 1 LANGGAM'),
(477, 1, 'SMA NEGERI 1 PANGKALAN LESUNG'),
(478, 1, 'SMA NEGERI 1 UKUI'),
(479, 1, 'SMA NEGERI 1 BUNUT'),
(480, 1, 'SMA NEGERI 1 PELALAWAN'),
(481, 1, 'SMA NEGERI 1 BANDAR PETALANGAN'),
(482, 1, 'SMA NEGERI 1 KERUMUTAN'),
(483, 1, 'SMA NEGERI 1 TELUK MERANTI'),
(484, 1, 'SMA NEGERI 1 BANDAR SEIKIJANG'),
(485, 1, 'SMA NEGERI 1 KUALA KAMPAR'),
(486, 1, 'SMA AL-MUSLIMUN SEIKIJANG'),
(487, 1, 'SMA BERNAS'),
(488, 1, 'SMA PLUS TARUNA ANDALAN'),
(489, 1, 'TK NEGERI PEMBINA'),
(490, 1, 'TK PGRI'),
(491, 1, 'TK GLOBAL ANDALAN'),
(492, 1, 'TK TARUNA ANDALAN'),
(493, 1, 'TK MUTIARA HARAPAN'),
(494, 1, 'TK NURUL IKHLAS'),
(495, 1, 'TK TUNAS BANGSA'),
(496, 1, 'TK TUNAS HARAPAN'),
(497, 1, 'TK AT-TAQWA'),
(498, 1, 'TK AL-JIHAD'),
(499, 1, 'TK AL-FAIZEIN'),
(500, 1, 'TK AL-BAYAN'),
(501, 1, 'TK C9 KIDS'),
(502, 1, 'TK NURUL HALIZA PUTRI'),
(503, 1, 'TK EKKLESIA'),
(504, 1, 'TK MUJAHID SETIA'),
(505, 1, 'TK KUNCUP MEKAR'),
(506, 1, 'TK AL-MADINAH'),
(507, 1, 'TK AMANAH'),
(508, 1, 'TK MAKMUR'),
(509, 1, 'TK MARFU\'AH'),
(510, 1, 'TK NEGERI PEMBINA BANDAR PETALANGAN'),
(511, 1, 'TK ANDALAN NEGERI'),
(512, 1, 'TK PUTRA MANDIRI I'),
(513, 1, 'TK PUTRA MANDIRI II'),
(514, 1, 'TK PUTRA MANDIRI III'),
(515, 1, 'TK TUNAS HARAPAN BANDAR PETALANGAN'),
(516, 1, 'TK HARAPAN JAYA'),
(517, 1, 'TK PERTIWI'),
(518, 1, 'TK DHARMA BAKTI'),
(519, 1, 'TK NURUL HIKMAH'),
(520, 1, 'TK PERMATA BUNDA'),
(521, 1, 'TK PERTIWI KERUMUTAN'),
(522, 1, 'TK TUNAS BANGSA KERUMUTAN'),
(523, 1, 'TK NURUL DIAN'),
(524, 1, 'TK DHARMA WANITA'),
(525, 1, 'TK SARI BUNDA'),
(526, 1, 'TK TUNAS BARU'),
(527, 1, 'TK AL-ISLAMIYAH'),
(528, 1, 'TK PERMATA BUNDA UKUI'),
(529, 1, 'TK PERTIWI UKUI'),
(530, 1, 'TK MELATI'),
(531, 1, 'TK ABA'),
(532, 1, 'TK AL-HIDAYAH'),
(533, 1, 'TK TUNAS BANGSA UKUI'),
(534, 1, 'TK TUNAS PUTRA'),
(535, 1, 'TK PERSADA NUSANTARA'),
(536, 1, 'TK MELATI LANGGAM'),
(537, 1, 'TK AL-FAJAR'),
(538, 1, 'TK SEGATI CERDAS'),
(539, 1, 'TK PUTRI TUJUH'),
(540, 1, 'TK BERMINAT'),
(541, 1, 'TK BERSERI'),
(542, 1, 'TK PGRI LANGGAM'),
(543, 1, 'TK TUNAS HARAPAN LANGGAM'),
(544, 1, 'TK AL-MUSLIMUN'),
(545, 1, 'TK PERMATA BUNDA BANDAR SEIKIJANG'),
(546, 1, 'TK NURUL KHASANA'),
(547, 1, 'TK KARYA BUNDA'),
(548, 1, 'TK TUNAS KARTINI'),
(549, 1, 'TK TUNAS HARAPAN PANGKALAN KURAS'),
(550, 1, 'TK MUTIARA'),
(551, 1, 'TK SURYA PERTIWI I'),
(552, 1, 'TK SURYA PERTIWI II'),
(553, 1, 'TK BUDI ASIH'),
(554, 1, 'TK PERTIWI MERANTI'),
(555, 1, 'TK MAJU MANDIRI I'),
(556, 1, 'TK TUNAS HARAPAN PANGKALAN KURAS'),
(557, 1, 'TK PERSADA INDAH'),
(558, 1, 'TK TUNAS BANGSA PANGKALAN KURAS'),
(559, 1, 'TK SARI MADU'),
(560, 1, 'TK BIDADARI'),
(561, 1, 'TK AMANA PANGKALAN KURAS'),
(562, 1, 'TK AL-QOSIMIYAH'),
(563, 1, 'TK KASIH BUNDA'),
(564, 1, 'TK KESUMA INDAH'),
(565, 1, 'TK MELATI HARAPAN'),
(566, 1, 'TK PERTIWI PELALAWAN'),
(567, 1, 'TK GLOBAL ANDALAN PELALAWAN'),
(568, 1, 'TK PESAGUAN INDAH'),
(569, 1, 'TK CITRA MAYANG'),
(570, 1, 'TK MAJU MANDIRI II'),
(571, 1, 'TK TUNAS BANGSA PANGKALAN LESUNG'),
(572, 1, 'TK LESUNG BERTUAH'),
(573, 1, 'TK MEKAR SARI'),
(574, 1, 'TK MELATI PANGKALAN LESUNG'),
(575, 1, 'TK NURUL FALAH'),
(576, 1, 'TK MIFTAHUL HUDA'),
(577, 1, 'TK BONO SAKTI'),
(588, 40, 'UPTD KERUMUTAN'),
(589, 40, 'UPTD KUALA KAMPAR'),
(590, 40, 'UPTD PANGKALAN KERINCI'),
(592, 40, 'UPTD LANGGAM'),
(594, 2, 'UPT INSTALASI GUDANG FARMASI'),
(596, 19, 'BAGIAN HUKUM'),
(597, 40, 'UPTD BUNUT'),
(598, 43, 'BIDANG REHABILITASI HUTAN DAN LAHAN'),
(600, 43, 'P3KB PT. RAPP'),
(601, 10, 'UPTD KECAMATAN PANGKALAN KURAS'),
(602, 40, 'UPTD TELUK MERANTI'),
(603, 40, 'UPTD PANGKALAN KURAS'),
(605, 40, 'UPTD PELALAWAN'),
(606, 40, 'UPTD BANDAR PETALANGAN'),
(607, 40, 'UPTD PANGKALAN LESUNG'),
(608, 40, 'UPTD UKUI'),
(609, 40, 'UPTD BANDAR SEIKIJANG'),
(610, 50, 'BADAN PENANGGULANGAN BENCANA'),
(615, 1, 'SMK NEGERI 1 PANGKALAN KERINCI'),
(616, 1, 'SMK NEGERI 1 KUALA KAMPAR'),
(617, 1, 'SDN 008 KUALA TERUSAN'),
(618, 1, 'SDN 012 PANGKALAN KERINCI'),
(619, 1, 'SDN '),
(620, 1, 'SDN 007 LUBUK MANDIAN GAJAH'),
(621, 1, 'SDN 015 LANGGAM'),
(622, 1, 'SDN 012 LANGGAM'),
(623, 1, 'SDN 009 AIR TERJUN'),
(624, 1, 'SDN 012 LUBUK MANDIAN GAJAH'),
(625, 1, 'SDN 012 LANGGAM'),
(626, 1, 'SDN 013 PANGKALAN KERINCI'),
(627, 1, 'SDN 011 PANGKALAN KERINCI'),
(628, 1, 'SDN 010 TANJUNG BERINGIN'),
(629, 1, 'SDN 028 TAPUI INDAH'),
(630, 1, 'SMK NEGERI 1 PANGKALAN LESUNG'),
(631, 1, 'SMK NEGERI 1 PANGKALAN KURAS'),
(632, 1, 'SMK NEGERI 1 KERUMUTAN'),
(634, 1, 'SMP NEGERI 4 KUALA KAMPAR'),
(635, 1, 'TK PERTIWI SARI II'),
(636, 1, 'TK PEMBINA KEC.BANDAR PETALANGAN'),
(637, 1, 'TK PEMBINA PKL KURAS'),
(638, 1, 'SMA NEGERI 2 PANGKALAN KURAS'),
(639, 1, 'SMK NEGERI 1 BUNUT'),
(640, 1, 'SMK NEGERI 1 UKUI'),
(641, 1, 'SMA NEGERI 2 LANGGAM'),
(642, 1, 'SMK NEGERI 1 BANDAR SEIKIJANG'),
(643, 1, 'SMK BIDADARI'),
(644, 1, 'SMK MAKMUR'),
(645, 1, 'SMP NEGERI 3 KERUMUTAN'),
(646, 1, 'SMP NEGERI GAMBUT MUTIARA'),
(647, 1, 'SMP KELAS JAUH PKL. GONDAI'),
(648, 1, 'MADRASAH IBTIDAIYAH NEGERI LUBUK KEMBANG SARI'),
(649, 1, 'MIS 015 LUBUK KEMBANG SARI'),
(650, 1, 'SMP PERINTIS BAGAN LAGUH'),
(651, 1, 'MTs AL-HAMIDIYAH'),
(652, 1, 'SMP NEGERI SOREK 2'),
(653, 1, 'TK PEMBINA PANGKALAN KERINCI'),
(655, 1, 'SDN 003 LUBUK KERANJI'),
(656, 1, 'SDN 014 LUBUK KERANJI'),
(658, 1, 'SDN 010 SOKOI'),
(660, 26, 'KELURAHAN SOREK SATU'),
(663, 40, 'UPTD KEC. KERUMUTAN'),
(664, 21, 'UPTD KASDA'),
(665, 30, 'KANTOR KEPALA DESA LUBUK RAJA'),
(666, 1, 'SDN 011 PADANG LUAS'),
(667, 42, 'UPTD BANDAR SEIKIJANG'),
(668, 1, 'SMPN 6 PANGKALAN KURAS'),
(669, 1, 'SMPN 4 PANGKALAN KURAS'),
(670, 1, 'SMP NEGERI 4 LANGGAM'),
(671, 1, 'SMP NEGERI 2 BUNUT'),
(673, 43, 'UPTD KECAMATAN PANGKALAN KURAS'),
(677, 10, 'UPTD KECAMATAN PANGKALAN LESUNG'),
(678, 1, 'SDN 014 PULAU MUDA'),
(679, 1, 'SDN 013 LANGGAM'),
(680, 1, 'SDN 021 PKL KERINCI'),
(681, 1, 'SMP SATU ATAP RANSANG'),
(682, 1, 'UPTD PERPUSTAKAAN NEGERI'),
(683, 1, 'SMK PPYHM'),
(684, 1, 'TK KARTINI'),
(685, 1, 'SDN 015 MERBAU'),
(686, 1, 'SD 024 KUALA KAMPAR'),
(687, 27, 'DESA SUNGAI SOLOK'),
(688, 27, 'DESA TELUK'),
(689, 31, 'KANTOR KEPALA DESA SOTOL'),
(691, 1, 'SMPN 1 TELUK DALAM'),
(692, 1, 'SMP NEGERI 1 TELUK DALAM'),
(695, 1, 'SMPN 2 KUMTO DARUSSALAM'),
(696, 1, 'SLTP DHARMA BAKTI'),
(697, 23, 'KANTOR DESA BATANG NILO KECIL'),
(699, 1, 'SDN 030 SERING BARAT'),
(700, 1, 'SDN 034 SEI UPIH'),
(702, 1, 'SDN 039 EQUATOR'),
(703, 1, 'SDN 008 SOREK DUA'),
(704, 1, 'SDN 034 SEI UPIH'),
(705, 1, 'SDN 005 PANGKALAN LESUNG'),
(706, 1, 'SDN 039 EQUATOR'),
(707, 1, 'SDN 008 SOREK DUA'),
(708, 1, 'SDN 039 EQUATOR'),
(710, 1, 'SDN 021 DELIK'),
(711, 1, 'UPT PENDIDIKAN NON FORMAL'),
(712, 50, 'SEKRETARIAT BADAN BPBD'),
(713, 50, 'BIDANG REHABILITASI DAN REKONSTRUKSI'),
(714, 50, 'BIDANG PENCEGAHAN DAN KESIAPSIAGAAN'),
(715, 50, 'BIDANG KEDARURATAN DAN LOGISTIK'),
(717, 40, 'UPTD KEBUN PLASMA NUTFAH'),
(718, 1, 'SDN 009 PANGKALAN KERINCI'),
(724, 1, 'MADRASAH ALIYAH AL-QASIMIYAH'),
(725, 1, 'SMP NEGERI 5 PANGKALAN KURAS'),
(728, 15, 'BADAN KESATUAN BANGSA DAN POLITIK'),
(729, 19, 'BAGIAN PROTOKOL'),
(730, 19, 'BAGIAN ASET'),
(734, 50, 'BIDANG PEMADAM KEBAKARAN'),
(735, 10, 'UPTD KECAMATAN KUALA KAMPAR'),
(736, 10, 'UPTD KECAMATAN BANDAR SEKIJANG'),
(737, 10, 'UPTD KECAMATAN PANGKALAN KERINCI'),
(738, 10, 'UPTD KECAMATAN PANGKALAN BUNUT'),
(739, 10, 'UPTD KECAMATAN LANGGAM'),
(740, 10, 'UPTD KECAMATAN BANDAR PETALANGAN'),
(741, 1, 'SDN 008 BATANG NILO KECIL'),
(742, 4, 'UPT-BPAB.PKL.BUNUT'),
(743, 4, 'UPT-BPAB TELUK MERANTI'),
(744, 1, 'SDN 021 SERAPUNG'),
(745, 1, 'SMAN 3 LANGGAM'),
(746, 4, 'UPT-BPAB LANGGAM'),
(747, 43, 'UPTD KECAMATAN BANDAR SEI KIJANG'),
(748, 43, 'UPTD KECAMATAN PANGKALAN LESUNG'),
(749, 43, 'UPTD KECAMATAN TELUK MERANTI'),
(750, 46, 'UPTD SOREK'),
(751, 42, 'UPTD SOREK 1'),
(752, 10, 'UPTD KECAMATAN PELALAWAN'),
(753, 30, 'KEL.RAWANG EMPAT'),
(755, 1, 'SMP NEGERI 7 PANGKALAN KURAS'),
(756, 1, 'SMP N SATU ATAP BUKIT KESUMA'),
(757, 48, 'BIDANG PENGENDALIAN, EVALUASI DAN INOVASI DAERAH'),
(758, 48, 'BIDANG SOSIAL DAN PEMERINTAHAN'),
(759, 48, 'BIDANG INFRASTRUKTUR DAN LINGKUNGAN HIDUP'),
(760, 48, 'BIDANG EKONOMI DAN KERJASAMA'),
(762, 51, 'BIDANG PENELITIAN DAN PENGEMBANGAN PEMERINTAHAN SOSBUD '),
(763, 51, 'BIDANG PENELITIAN DAN PENGEMBANGAN ILMU PENGETAHUAN TEKNOLOGI'),
(764, 51, 'BIDANG PENELITIAN DAN PENGEMBANGAN EKONOMI PEMBANGUNAN DAN SDA'),
(766, 52, 'SEKRETARIAT KORPRI'),
(767, 51, 'BADAN PENELITIAN DAN PENGEMBANGAN'),
(768, 1, 'SDN 018 UKUI'),
(769, 1, 'SDN 010 BANJAR PANJANG'),
(770, 1, 'SDN 011 LUBUK RAJA'),
(771, 1, 'SMP NEGERI BERNAS'),
(773, 1, 'SDN 008 LUBUK KERANJI'),
(774, 2, 'UPT. PUSKESMAS PANGKALAN KURAS DUA'),
(777, 1, 'SDN 18 PANGKALAN KURAS'),
(778, 1, 'SDN 015 KERUMUTAN'),
(780, 53, 'BADAN PENGELOLAAN KEUANGAN DAN ASET DAERAH'),
(781, 53, 'SEKRETARIAT BADAN PENGELOLAAN KEUANGAN DAN ASET DAERAH'),
(782, 19, 'BAGIAN LAYANAN PENGADAAN BARANG DAN JASA'),
(783, 19, 'BAGIAN PERLENGKAPAN DAN RUMAH TANGGA'),
(784, 1, 'BIDANG PEMBINAAN DAN PENGEMBANGAN PAUD DAN DIKMAS'),
(785, 1, 'BIDANG PEMBINAAN DAN PENGEMBANGAN SEKOLAH DASAR (MAX 2020)'),
(786, 1, 'BIDANG PEMBINAAN DAN PENGEMBANGAN SEKOLAH MENENGAH PERTAMA (KOSONG 2)'),
(787, 2, 'BIDANG KESEHATAN MASYARAKAT'),
(788, 2, 'BIDANG PENCEGAHAN DAN PENGENDALIAN PENYAKIT'),
(789, 2, 'BIDANG SUMBER DAYA KESEHATAN KEFARMASIAN'),
(790, 4, 'BIDANG SUMBER DAYA AIR'),
(791, 4, 'BIDANG BINA MARGA'),
(792, 4, 'BIDANG AIR MINUM DAN PLP'),
(793, 4, 'BIDANG JASA KONSTRUKSI'),
(794, 4, 'BIDANG TATA RUANG'),
(795, 4, 'BIDANG PENATAAN BANGUNAN DAN BANGKIM'),
(796, 2, 'SEKRETARIAT DINAS KESEHATAN'),
(797, 4, 'SEKRETARIAT DINAS PEKERJAAN UMUM'),
(798, 16, 'BIDANG OPERASIONAL TRANTIBUM'),
(799, 16, 'BIDANG PENEGAKAN PERATURAN PERUNDANG-UNDANGAN DAERAH'),
(800, 16, 'BIDANG PEMBINAAN SATUAN LINMAS'),
(801, 16, 'BIDANG PEMADAM KEBAKARAN'),
(802, 16, 'SEKRETARIAT SATPOL PP DAN DAMKAR'),
(803, 11, 'SEKRETARIAT DINAS SOSIAL'),
(804, 11, 'BIDANG PEMBERDAYAAN SOSIAL DAN PENANGANAN FAKIR MISKIN'),
(805, 12, 'BIDANG PENEMPATAN DAN PERLUASAN KERJA'),
(806, 12, 'SEKRETARIAT DINAS TENAGA KERJA'),
(807, 10, 'BIDANG KESETARAAN GENDER'),
(808, 10, 'BIDANG PERLINDUNGAN PEREMPUAN'),
(809, 10, 'BIDANG PEMENUHAN HAK DAN PERLINDUNGAN ANAK'),
(810, 10, 'BIDANG PENGENDALIAN PENDUDUK DAN KELUARGA BERENCANA'),
(811, 8, 'BIDANG TATA LINGKUNGAN DAN PENINGKATAN KAPASITAS LINGKUNGAN HIDUP'),
(812, 8, 'BIDANG PENGELOLAAN SAMPAH, B3 DAN LIMBAH B3'),
(813, 8, 'BIDANG PENGENDALIAN PENCEMARAN DAN KERUSAKAN LINGKUNGAN HIDUP'),
(814, 8, 'BIDANG PENATAAN DAN PEMELIHARAAN LINGKUNGAN HIDUP'),
(815, 9, 'SEKRETARIAT DINAS KEPENDUDUKAN DAN PENCATATAN SIPIL'),
(816, 9, 'BIDANG PELAYANAN PENDAFTARAN PENDUDUK'),
(817, 9, 'BIDANG PELAYANAN PENCATATAN SIPIL'),
(818, 9, 'BIDANG PENGELOLAAN INFORMASI ADMINISTRASI KEPENDUDUKAN'),
(819, 9, 'BIDANG PEMANFAATAN DATA DAN INOVASI PELAYANAN'),
(820, 38, 'SEKRETARIAT DINAS PEMBERDAYAAN MASYARAKAT DAN DESA'),
(821, 38, 'BIDANG PEMBERDAYAAN MASYARAKAT DESA'),
(822, 38, 'BIDANG PENDAYAGUNAAN SDA, TTG DAN UEM'),
(823, 7, 'SEKRETARIAT DINAS PERHUBUNGAN'),
(824, 7, 'BIDANG LALU LINTAS DAN ANGKUTAN JALAN'),
(825, 7, 'BIDANG PELAYARAN'),
(826, 7, 'BIDANG SARANA DAN PRASARANA'),
(827, 54, 'DINAS KOMUNIKASI DAN INFORMATIKA'),
(828, 54, 'SEKRETARIAT DINAS KOMUNIKASI DAN INFORMATIKA'),
(829, 54, 'BIDANG KOMUNIKASI'),
(830, 54, 'BIDANG INFORMASI'),
(831, 54, 'BIDANG PENGELOLAAN INFRASTRUKTUR DAN LAYANAN E-GOVERNMENT'),
(832, 54, 'BIDANG PERSANDIAN DAN STATISTIK'),
(833, 13, 'SEKRETARIAT DINAS KOPERASI, UKM, PERDAGANGAN DAN PERINDUSTRIAN'),
(834, 13, 'BIDANG KOPERASI'),
(835, 13, 'BIDANG UMKM'),
(836, 13, 'BIDANG PERINDUSTRIAN'),
(837, 13, 'BIDANG PERDAGANGAN'),
(838, 14, 'SEKRETARIAT DINAS PENANAMAN MODAL DAN PELAYANAN TERPADU SATU PINTU'),
(839, 14, 'BIDANG PERENCANAAN DAN PENGEMBANGAN IKLIM PENANAMAN MODAL'),
(840, 14, 'BIDANG PENANAMAN MODAL'),
(841, 14, 'BIDANG PENGENDALIAN PELAKSANAAN DAN INFORMASI PENANAMAN MODAL'),
(842, 14, 'BIDANG PENYELENGGARAAN PELAYANAN PERIZINAN NON PERIZINAN'),
(843, 14, 'BIDANG PENGADUAN KEBIJAKAN DAN PELAPORAN PELAYANAN'),
(849, 39, 'SEKRETARIAT DINAS KEARSIPAN DAN PERPUSTAKAAN'),
(850, 39, 'BIDANG PEMBINAAN ARSIP'),
(851, 39, 'BIDANG PENGELOLAAN ARSIP'),
(852, 39, 'BIDANG PERPUSTAKAAN'),
(853, 46, 'SEKRETARIAT DINAS PERIKANAN DAN KELAUTAN'),
(854, 46, 'BIDANG PEMBERDAYAAN USAHA PERIKANAN (2020)'),
(855, 46, 'BIDANG DATA DAN PENGELOLAAN PERIKANAN'),
(856, 46, 'BIDANG PERIKANAN BUDIDAYA'),
(857, 37, 'BIDANG KONSUMSI DAN KEAMANAN PANGAN'),
(858, 43, 'SEKRETARIAT DINAS PERKEBUNAN DAN PETERNAKAN'),
(859, 43, 'BIDANG SARANA DAN PRASARANA'),
(860, 43, 'BIDANG PERKEBUNAN'),
(861, 43, 'BIDANG PETERNAKAN DAN KESEHATAN HEWAN'),
(862, 43, 'BIDANG PENYULUHAN, PENGOLAHAN DAN PEMASARAN'),
(863, 48, 'SEKRETARIAT BADAN PERENCANAAN PEMBANGUNAN DAERAH'),
(864, 53, 'BIDANG ANGGARAN DAN INFORMASI KEUANGAN DAERAH'),
(865, 53, 'BIDANG PERBENDAHARAAN'),
(866, 53, 'BIDANG AKUNTANSI DAN BINA KEUANGAN'),
(867, 53, 'BIDANG PENDATAAN DAN PELAYANAN PAJAK DAERAH'),
(868, 53, 'BIDANG PENAGIHAN, KEBERATAN DAN BANDING'),
(869, 53, 'BIDANG ASET'),
(870, 51, 'BIDANG SOSIAL DAN PEMERINTAHAN'),
(871, 51, 'BIDANG EKONOMI DAN PEMBANGUNAN'),
(872, 51, 'BIDANG INOVASI DAN TEKNOLOGI'),
(873, 51, 'SEKRETARIAT BADAN PENELITIAN DAN PENGEMBANGAN'),
(877, 11, 'BIDANG PERLINDUNGAN DAN JAMINAN SOSIAL'),
(878, 43, 'UPT RUMAH POTONG HEWAN DAN PASAR HEWAN KEMANG'),
(879, 19, 'BAGIAN PEREKONOMIAN DAN SDA SETDA'),
(880, 43, 'UPTD KECAMATAN BANDAR PETALANGAN'),
(881, 43, 'UPTD KECAMATAN BUNUT'),
(882, 43, 'UPTD KECAMATAN PANGKALAN KERINCI'),
(883, 43, 'UPTD KECAMATAN KERUMUTAN'),
(884, 43, 'UPTD KECAMATAN PELALAWAN'),
(885, 37, 'UPT PERLINDUNGAN TANAMAN HIAS'),
(886, 37, 'UPTD KECAMATAN UKUI'),
(887, 33, 'KELURAHAN PANGKALAN LESUNG'),
(888, 34, 'UPTD KEC.KERUMUTAN'),
(889, 37, 'UPTD KEC.KERUMUTAN'),
(890, 37, 'UPTD. KEBUN PLASMA NUTFAH'),
(891, 37, 'UPTD KECAMATAN KUALA KAMPAR'),
(892, 37, 'UPTD KEC.PELALAWAN'),
(893, 37, 'UPTD KEC.PKL.KURAS'),
(894, 37, 'UPTD KEC.BUNUT'),
(895, 37, 'UPTD KEC.BANDAR SEIKIJANG'),
(896, 37, 'UPTD KEC.PKL.KERINCI'),
(897, 37, 'UPTD KEC.LANGGAM'),
(898, 37, 'UPTD KEC.KERUMUTAN'),
(899, 37, 'UPTD KEC.PKL.LESUNG'),
(900, 37, 'UPTD KEC.TELUK MERANTI'),
(901, 37, 'UPTD KEC.BANDAR PETALANGAN'),
(902, 10, 'KECAMATAN UKUI'),
(903, 10, 'KECAMATAN UKUI'),
(904, 10, 'UPTD KECAMATAN UKUI'),
(905, 8, 'UPT KEC.PANGKALAN KURAS'),
(906, 8, 'UPT KEC.PANGKALAN KERINCI'),
(907, 10, 'UPTD KECAMATAN KERUMUTAN'),
(908, 2, 'UPTD.PUSKESMAS  PANGKALAN KERINCI II'),
(914, 55, 'BNN'),
(915, 55, 'BADAN NARKOTIKA NASIONAL'),
(916, 55, 'BADAN NARKOTIKA NASIONAL'),
(917, 1, 'SD NEGERI 015 PANGKALAN KURAS'),
(918, 1, 'SMP NEGERI 03 PANGKALAN KERINCI'),
(919, 1, 'TKN PEMBINA SOREK DUA'),
(920, 1, 'SMPN 8 PANGKALAN KURAS'),
(921, 1, 'SDN 023 TELUK BAKAU'),
(922, 1, 'SMPN SERAPUNG'),
(923, 1, 'SMPN 5 KUALA KAMPAR'),
(924, 1, 'SMP NEGERI 6 KUALA KAMPAR'),
(925, 1, 'TK KARYA BHAKTI'),
(926, 1, 'SDN 017 MAMAHAN JAYA'),
(927, 1, 'SMP NEGERI 5 LANGGAM'),
(928, 1, 'SDN 012 SILIKUAN HULU'),
(929, 1, 'MIN LUMBUK KEMANG'),
(930, 1, 'MTS BAHRUL ULUM'),
(931, 1, 'SMPN 3 SEIKIJANG'),
(932, 1, 'SMP NEGERI 3 PELALAWAN'),
(933, 1, 'SMP NEGERI 4 PELALAWAN'),
(934, 1, 'SMP NEGERI 5 PELALAWAN'),
(935, 1, 'SMP NEGERI 6 PELALAWAN'),
(936, 1, 'SMP IT MUHAMMADIYAH'),
(937, 1, 'SDN 009 LEMBAH SUBUR'),
(938, 1, 'SDN 016 PANGKALAN TAMPOI'),
(939, 1, 'TK TUNAS PALMA'),
(940, 1, 'SMP NEGERI 4 KERUMUTAN'),
(942, 1, 'SDN 005 BUKIT RAYA'),
(943, 1, 'SD PERINTIS'),
(944, 2, 'INSTALASI FARMASI '),
(945, 2, 'PUSKESMAS PANGKALAN KURAS 2'),
(946, 2, 'PUSKESMAS PANGKALAN TELUK MERANTI'),
(947, 2, 'PUSKESMAS PANGKALAN KERINCI II'),
(948, 1, 'SDN 07 AIR HITAM'),
(949, 1, 'SDN 016 KEC.BUNUT'),
(950, 2, 'PJ. KASUBBAG TU UPTD KE.PELALAWAN'),
(951, 1, 'SMP NEGERI 3 PANGKALAN KERINCI'),
(952, 1, 'SDN 16 SOREK I'),
(953, 15, 'BIDANG KEWASPADAAN DAERAH'),
(954, 46, 'BIDANG PENGELOLAAN BUDIDAYA PERIKANAN'),
(955, 1, 'SMP NEGERI 2 LANGGAM'),
(956, 1, 'SMP NEGERI 2 PELALAWAN'),
(957, 37, 'BALAI PENYULUH PERTANIAN (BPP) KEC.PANGKALAN KERINCI'),
(958, 1, 'SDN 023 SUNGAI MODANG'),
(959, 2, 'BLUD RSUD SELASIH'),
(960, 1, 'SMP NEGERI 3 BANDAR SEIKIJANG'),
(961, 1, 'SMP NEGERI 3 PANGKALAN LESUNG'),
(962, 1, 'SDN 003 GENDUANG'),
(964, 16, 'PERBANTUAN BADAN PENGAWAS PEMILIHAN UMUM KABUPATEN PELALAWAN'),
(965, 46, 'PERBANTUAN BADAN PENGAWAS PEMILIHAN UMUM KABUPATEN PELALAWAN'),
(966, 14, 'PERBANTUAN BADAN PENGAWAS PEMILIHAN UMUM KABUPATEN PELALAWAN'),
(967, 56, 'DINAS PERIKANAN'),
(968, 57, 'DINAS PARIWISATA, PEMUDA DAN OLAHRAGA'),
(969, 19, 'BAGIAN ADMINISTRASI PEMBANGUNAN'),
(970, 19, 'BAGIAN PROTOKOL DAN KOMUNIKASI PIMPINAN'),
(971, 19, 'BAGIAN PERENCANAAN DAN KEUANGAN'),
(972, 56, 'SEKRETARIAT DINAS PERIKANAN'),
(973, 57, 'SEKRETARIAT DINAS PARIWISATA, PEMUDA DAN OLAHRAGA'),
(974, 58, 'SEKRETARIAT BADAN KEPEGAWAIAN DAN PENGEMBANGAN SUMBER DAYA MANUSIA'),
(975, 59, 'SEKRETARIAT DINAS PENDIDIKAN DAN KEBUDAYAAN'),
(977, 58, 'BIDANG MUTASI DAN INFORMASI KEPEGAWAIAN'),
(978, 58, 'BIDANG PEMBINAAN DAN KINERJA APARATUR'),
(979, 58, 'BIDANG PENGEMBANGAN APARATUR'),
(980, 59, 'BIDANG PEMBINAAN DAN PENGEMBANGAN PAUD DAN DIKMAS'),
(981, 59, 'BIDANG KEBUDAYAAN'),
(982, 59, 'DINAS PENDIDIKAN DAN KEBUDAYAAN'),
(983, 59, 'BIDANG PEMBINAAN DAN PENGEMBANGAN SEKOLAH MENENGAH PERTAMA DP'),
(984, 54, 'BIDANG PERSANDIAN'),
(985, 54, 'BIDANG STATISTIK'),
(986, 59, 'BIDANG PEMBINAAN DAN PENGEMBANGAN SEKOLAH DASAR'),
(987, 59, 'UPT DINAS'),
(988, 57, 'BIDANG PARIWISATA'),
(989, 57, 'BIDANG PEMUDA'),
(990, 57, 'BIDANG OLAHRAGA'),
(991, 57, 'BIDANG  SARANA DAN PRASARANA'),
(992, 56, 'BIDANG PERIKANAN BUDIDAYA'),
(993, 56, 'BIDANG PERIKANAN TANGKAP'),
(994, 56, 'BIDANG PEMBERDAYAAN USAHA PERIKANAN'),
(995, 15, 'BIDANG IDEOLOGI, WAWASAN KEBANGSAAN DAN KARAKTER'),
(996, 15, 'BIDANG POLITIK DALAM NEGERI'),
(997, 15, 'BIDANG KETAHANAN EKONOMI, SOSIAL, BUDAYA, AGAMA DAN ORGANISASI KEMASYARAKATAN'),
(998, 15, 'BIDANG KEWASPADAAN NASIONAL DAN PENANGANAN KONFLIK'),
(999, 7, 'BIDANG LALU LINTAS'),
(1000, 7, 'BIDANG ANGKUTAN'),
(1001, 37, 'BIDANG KETAHANAN PANGAN'),
(1002, 37, 'BIDANG PRASARANA DAN SARANA PERTANIAN'),
(1003, 37, 'BIDANG PENYULUHAN PERTANIAN'),
(1004, 19, 'BAGIAN TATA PEMERINTAHAN DAN KERJA SAMA'),
(1005, 7, 'BIDANG INFORMASI DAN KOMUNIKASI PUBLIK'),
(1006, 19, 'BAGIAN MENTAL SPRITUAL'),
(1007, 58, 'BADAN KEPEGAWAIAN DAN PENGEMBANGAN SUMBER DAYA MANUSIA'),
(1008, 59, 'DINAS PENDIDIKAN - LAMA'),
(1009, 59, 'SEKRETARIAT DINAS PENDIDIKAN'),
(1010, 59, 'BIDANG KURIKULUM DAN KESISWAAN'),
(1011, 59, 'BIDANG PENDIDIK DAN TENAGA KEPENDIDIKAN'),
(1012, 59, 'BIDANG SARANA,PRASARANA DAN KELEMBAGAAN DP'),
(1013, 59, 'SD NEGERI 028 PANGKALAN KERINCI'),
(1014, 59, 'BIDANG PENDIDIKAN NON FORMAL DAN INFORMAL'),
(1015, 59, 'SMP NEGERI  1 BUNUT'),
(1016, 59, 'SMP NEGERI 1 LANGGAM'),
(1017, 59, 'SMP NEGERI 2 LANGGAM'),
(1018, 59, 'SMP NEGERI 3 LANGGAM'),
(1019, 59, 'SMP NEGERI 2 KUALA KAMPAR'),
(1020, 59, 'SMP NEGERI 3 KUALA KAMPAR'),
(1021, 59, 'SMP NEGERI 1 SERAPUNG'),
(1022, 59, 'SMP NEGERI BINAAN SUNGAI UPIH'),
(1023, 59, 'SMP NEGERI SATU ATAP TELUK'),
(1024, 59, 'SMP NEGERI 1 KJT BAKAU'),
(1025, 59, 'SMP NEGERI 1 PKL.KERINCI'),
(1026, 59, 'SMP NEGERI 2 PKL.KERINCI'),
(1027, 59, 'SMP NEGERI 1 PKL.KURAS'),
(1028, 59, 'SMP NGERI 2 PKL.KURAS'),
(1029, 59, 'SMP NEGERI 3 PANGKALAN KURAS'),
(1030, 59, 'SMP NEGERI SOREK SATU'),
(1031, 59, 'SMP NEGERI SATU ATAP B.KESUMA'),
(1032, 59, 'SMP NEGERI SATU ATAP KEMANG'),
(1033, 59, 'SMP NEGERI 1 PANGKALAN LESUNG'),
(1034, 59, 'SMP NEGERI 2 PANGKALAN LESUNG'),
(1035, 59, 'SMP NEGERI 1 UKUI'),
(1036, 59, 'SMP NEGERI 2 UKUI'),
(1037, 59, 'SMP NEGERI 3 UKUI'),
(1038, 59, 'SMP NEGERI BUKIT GAJAH'),
(1039, 59, 'SMP NEGERI BUKIT JAYA'),
(1040, 59, 'SMP NEGERI 001 KERUMUTAN'),
(1041, 59, 'SMP NEGERI 1 PELALAWAN'),
(1042, 59, 'SMP NEGERI 002 PELALAWAN'),
(1043, 59, 'SMP NEGERI KUALA PANDUK'),
(1044, 59, 'SMP NEGERI SATU ATAP RANSANG'),
(1045, 59, 'SMP NEGERI PULAU MUDA'),
(1046, 59, 'SMP NEGERI 1 TELUK MERANTI'),
(1047, 59, 'SMP GAMBUT MUTIARA'),
(1048, 59, 'SMP NEGERI 1 BANDAR SEKIJANG'),
(1049, 59, 'SMP NEGERI 2 BANDAR SEIKIJANG'),
(1050, 59, 'SMP TARUNA ANDALAN'),
(1051, 59, 'SMP MUTIARA HARAPAN'),
(1052, 59, 'SMP DARUL TOYYIBAH'),
(1053, 59, 'SMP NEGERI BERNAS'),
(1054, 59, 'SMP C9'),
(1055, 59, 'SMP MARGINAL MAWAR LESTARI'),
(1056, 59, 'SMP GLOBAL ANDALAN'),
(1057, 59, 'SMP BIDADARI'),
(1058, 59, 'SMP PERINTIS SWADAYA UP VII SP'),
(1059, 59, 'SMP LKMD PANGKALAN PANDUK'),
(1060, 59, 'SMP ASHABUL MUKMININ'),
(1061, 59, 'SMP ISLAM TERPADU INSAN MADANI'),
(1062, 59, 'SMP SWADAYA BUKIT JAYA'),
(1063, 59, 'SDN 006 PENARIKAN'),
(1064, 59, 'SDN 013 SEGATI'),
(1065, 59, 'SDN 044 KERUMUTAN'),
(1066, 59, 'UPTD KERUMUTAN'),
(1067, 59, 'UPTD BANDAR SEIKIJANG'),
(1068, 59, 'UPTD KUALA KAMPAR'),
(1069, 59, 'UPTD LANGGAM'),
(1070, 59, 'UPTD PANGKALAN KERINCI'),
(1071, 59, 'UPTD TELUK MERANTI'),
(1072, 59, 'UPTD UKUI'),
(1073, 59, 'UPTD PANGKALAN KURAS'),
(1074, 59, 'UPTD PELALAWAN'),
(1075, 59, 'UPTD PANGKALAN LESUNG'),
(1076, 59, 'UPTD BUNUT'),
(1077, 59, 'UPTD BANDAR PETALANGAN'),
(1078, 59, 'SDN 050 KERUMUTAN'),
(1079, 59, 'SDN 024 PANGKALAN KERINCI'),
(1080, 59, 'SDN 018 PANGKALAN KERINCI'),
(1081, 59, 'SDN 012 KUALA TERUSAN'),
(1082, 59, 'SDN 027 SOKOI KEC.KUALA KAMAPAR'),
(1083, 59, 'SDN 028 SOKOI KUALA KAMPAR'),
(1084, 59, 'SDN 001 RANTAU BARU '),
(1085, 59, 'SDN 002 KUALA TERUSAN'),
(1086, 59, 'SDN 003 PANGKALAN KERINCI'),
(1087, 59, 'SDN 004 BUKIT AGUNG'),
(1088, 59, 'SDN 005 MAKMUR'),
(1089, 59, 'SDN 006 PANGKALAN KERINCI'),
(1090, 59, 'SDN 007 PANGKALAN KERINCI'),
(1091, 59, 'SDN 008 PANGKALAN KERINCI'),
(1092, 59, 'SDN 009 KUALA TERUSAN'),
(1093, 59, 'SDN 010 PANGKALAN KERINCI'),
(1094, 59, 'SDN 011 TEPIAN BATU'),
(1095, 59, 'SD GLOBAL ANDALAN'),
(1096, 59, 'SD TARUNA ANDALAN'),
(1097, 59, 'SD BERNAS'),
(1098, 59, 'SDIT AL BAYAN'),
(1099, 59, 'SD C9 KIDS'),
(1100, 59, 'SDIT AT-TAQWA'),
(1101, 59, 'SD MUTIARA HARAPAN'),
(1102, 59, 'SDN 001 LANGGAM'),
(1103, 59, 'SDN 002 TAMBAK');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_user`
--

CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL,
  `nama` varchar(25) NOT NULL,
  `role` varchar(10) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_user`
--

INSERT INTO `tb_user` (`id`, `nama`, `role`, `password`) VALUES
(1, 'admin', 'admin', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_bezetting`
--
ALTER TABLE `tb_bezetting`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_spp` (`id_spp`),
  ADD KEY `id_jabatan` (`id_jabatan`),
  ADD KEY `id_unit` (`id_unit`);

--
-- Indeks untuk tabel `tb_jabatan`
--
ALTER TABLE `tb_jabatan`
  ADD PRIMARY KEY (`id_jabatan`);

--
-- Indeks untuk tabel `tb_jabatan_jurusan`
--
ALTER TABLE `tb_jabatan_jurusan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_jabatan` (`id_jabatan`),
  ADD KEY `id_jurusan` (`id_jurusan`);

--
-- Indeks untuk tabel `tb_jabatan_terpilih`
--
ALTER TABLE `tb_jabatan_terpilih`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_jurusan`
--
ALTER TABLE `tb_jurusan`
  ADD PRIMARY KEY (`id_jurusan`);

--
-- Indeks untuk tabel `tb_pegawai`
--
ALTER TABLE `tb_pegawai`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_pembobotan`
--
ALTER TABLE `tb_pembobotan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_spp`
--
ALTER TABLE `tb_spp`
  ADD PRIMARY KEY (`id_spp`);

--
-- Indeks untuk tabel `tb_unit`
--
ALTER TABLE `tb_unit`
  ADD PRIMARY KEY (`id_unit`),
  ADD KEY `id_spp` (`unit_spp`);

--
-- Indeks untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_bezetting`
--
ALTER TABLE `tb_bezetting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT untuk tabel `tb_jabatan`
--
ALTER TABLE `tb_jabatan`
  MODIFY `id_jabatan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT untuk tabel `tb_jabatan_jurusan`
--
ALTER TABLE `tb_jabatan_jurusan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=185;

--
-- AUTO_INCREMENT untuk tabel `tb_jabatan_terpilih`
--
ALTER TABLE `tb_jabatan_terpilih`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT untuk tabel `tb_jurusan`
--
ALTER TABLE `tb_jurusan`
  MODIFY `id_jurusan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT untuk tabel `tb_pegawai`
--
ALTER TABLE `tb_pegawai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT untuk tabel `tb_pembobotan`
--
ALTER TABLE `tb_pembobotan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `tb_spp`
--
ALTER TABLE `tb_spp`
  MODIFY `id_spp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT untuk tabel `tb_unit`
--
ALTER TABLE `tb_unit`
  MODIFY `id_unit` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1104;

--
-- AUTO_INCREMENT untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `tb_bezetting`
--
ALTER TABLE `tb_bezetting`
  ADD CONSTRAINT `tb_bezetting_ibfk_1` FOREIGN KEY (`id_spp`) REFERENCES `tb_spp` (`id_spp`),
  ADD CONSTRAINT `tb_bezetting_ibfk_2` FOREIGN KEY (`id_jabatan`) REFERENCES `tb_jabatan` (`id_jabatan`),
  ADD CONSTRAINT `tb_bezetting_ibfk_3` FOREIGN KEY (`id_unit`) REFERENCES `tb_unit` (`id_unit`);

--
-- Ketidakleluasaan untuk tabel `tb_jabatan_jurusan`
--
ALTER TABLE `tb_jabatan_jurusan`
  ADD CONSTRAINT `tb_jabatan_jurusan_ibfk_1` FOREIGN KEY (`id_jabatan`) REFERENCES `tb_jabatan` (`id_jabatan`),
  ADD CONSTRAINT `tb_jabatan_jurusan_ibfk_2` FOREIGN KEY (`id_jurusan`) REFERENCES `tb_jurusan` (`id_jurusan`);

--
-- Ketidakleluasaan untuk tabel `tb_unit`
--
ALTER TABLE `tb_unit`
  ADD CONSTRAINT `tb_unit_ibfk_1` FOREIGN KEY (`unit_spp`) REFERENCES `tb_spp` (`id_spp`);
--
-- Database: `db_salesman`
--
CREATE DATABASE IF NOT EXISTS `db_salesman` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db_salesman`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_aspek`
--

CREATE TABLE `tb_aspek` (
  `id` int(11) NOT NULL,
  `kriteria` varchar(25) NOT NULL,
  `jenis_faktor` varchar(25) NOT NULL,
  `nilai_standart` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_aspek`
--

INSERT INTO `tb_aspek` (`id`, `kriteria`, `jenis_faktor`, `nilai_standart`) VALUES
(1, 'Penguasaan Product Knowle', 'Core Factor', 4),
(2, 'Penguasaan Area', 'Core Factor', 4),
(3, 'Kreatif', 'Secondary Factor', 3),
(4, 'Logika', 'Core Factor', 3),
(5, 'Inovatif', 'Secondary Factor', 3),
(6, 'Komitmen', 'Core Factor', 3),
(7, 'Fokus', 'Secondary Factor', 3),
(8, 'Terukur', 'Core Factor', 4),
(9, 'Jujur', 'Core Factor', 5),
(10, 'Teliti dan Bertanggung Ja', 'Core Factor', 4),
(11, 'Disiplin', 'Secondary Factor', 4),
(12, 'Pandai Berkomunikasi', 'Core Factor', 4),
(13, 'Kerja Sama', 'Secondary Factor', 3),
(14, 'Percaya Diri', 'Core Factor', 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pembobotan`
--

CREATE TABLE `tb_pembobotan` (
  `id` int(11) NOT NULL,
  `selisih` int(11) NOT NULL,
  `bobot` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_pembobotan`
--

INSERT INTO `tb_pembobotan` (`id`, `selisih`, `bobot`) VALUES
(2, 0, 5),
(3, 1, 4.5),
(4, -1, 4),
(5, 2, 3.5),
(6, -2, 3),
(7, 3, 2.5),
(8, -3, 2),
(9, 4, 1.5),
(10, -4, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_salesman`
--

CREATE TABLE `tb_salesman` (
  `id` int(11) NOT NULL,
  `nama` varchar(25) NOT NULL,
  `a1` int(11) NOT NULL,
  `a2` int(11) NOT NULL,
  `a3` int(11) NOT NULL,
  `a4` int(11) NOT NULL,
  `a5` int(11) NOT NULL,
  `a6` int(11) NOT NULL,
  `a7` int(11) NOT NULL,
  `a8` int(11) NOT NULL,
  `a9` int(11) NOT NULL,
  `a10` int(11) NOT NULL,
  `a11` int(11) NOT NULL,
  `a12` int(11) NOT NULL,
  `a13` int(11) NOT NULL,
  `a14` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_salesman`
--

INSERT INTO `tb_salesman` (`id`, `nama`, `a1`, `a2`, `a3`, `a4`, `a5`, `a6`, `a7`, `a8`, `a9`, `a10`, `a11`, `a12`, `a13`, `a14`) VALUES
(1, 'Carsa', 2, 3, 3, 3, 2, 5, 3, 5, 3, 5, 5, 3, 5, 2),
(2, 'Irfan', 5, 3, 5, 5, 3, 5, 5, 2, 3, 5, 2, 4, 2, 4),
(3, 'Ahmad', 5, 4, 5, 5, 3, 5, 3, 5, 2, 2, 4, 2, 5, 4),
(7, 'Syair', 3, 3, 2, 5, 3, 2, 3, 3, 3, 4, 2, 5, 2, 3),
(8, 'Asep', 4, 5, 2, 5, 5, 5, 3, 3, 5, 2, 4, 3, 5, 3),
(9, 'Nanan', 3, 3, 3, 4, 2, 5, 3, 5, 3, 5, 4, 3, 5, 2),
(10, 'Ucok', 4, 3, 3, 2, 5, 3, 4, 3, 2, 4, 2, 2, 3, 5),
(11, 'Encep', 5, 5, 2, 4, 4, 3, 2, 2, 2, 4, 3, 5, 5, 5),
(12, 'Sapri', 4, 4, 2, 5, 2, 2, 2, 2, 5, 4, 4, 3, 3, 2),
(13, 'Hasnan', 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4),
(14, 'David', 5, 4, 4, 4, 4, 5, 4, 3, 5, 4, 5, 4, 4, 4),
(17, 'Paling Jago', 4, 4, 3, 3, 3, 3, 3, 4, 5, 4, 4, 4, 3, 3);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_aspek`
--
ALTER TABLE `tb_aspek`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_pembobotan`
--
ALTER TABLE `tb_pembobotan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_salesman`
--
ALTER TABLE `tb_salesman`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_aspek`
--
ALTER TABLE `tb_aspek`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `tb_pembobotan`
--
ALTER TABLE `tb_pembobotan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `tb_salesman`
--
ALTER TABLE `tb_salesman`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- Database: `db_siswa`
--
CREATE DATABASE IF NOT EXISTS `db_siswa` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db_siswa`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pembobotan`
--

CREATE TABLE `tb_pembobotan` (
  `id` int(11) NOT NULL,
  `selisih` int(11) NOT NULL,
  `bobot` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_pembobotan`
--

INSERT INTO `tb_pembobotan` (`id`, `selisih`, `bobot`) VALUES
(1, 0, 5),
(2, 1, 4.5),
(3, -1, 4),
(4, 2, 3.5),
(5, -2, 3),
(6, 3, 2.5),
(7, -3, 2),
(8, 4, 1.5),
(9, -4, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_profile_ipa`
--

CREATE TABLE `tb_profile_ipa` (
  `id` int(11) NOT NULL,
  `kriteria` char(10) NOT NULL,
  `jenis_faktor` varchar(25) NOT NULL,
  `nilai_standart` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_profile_ipa`
--

INSERT INTO `tb_profile_ipa` (`id`, `kriteria`, `jenis_faktor`, `nilai_standart`) VALUES
(1, 'mat', 'Core Factor', 4),
(2, 'bin', 'Core Factor', 3),
(3, 'ing', 'Secondary Factor', 2),
(4, 'fis', 'Core Factor', 3),
(5, 'kim', 'Core Factor', 3),
(6, 'sej', 'Secondary Factor', 1),
(7, 'geo', 'Secondary Factor', 1),
(8, 'eko', 'Secondary Factor', 1),
(9, 'sos', 'Secondary Factor', 1),
(10, 'bio', 'Core Factor', 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_profile_ips`
--

CREATE TABLE `tb_profile_ips` (
  `id` int(11) NOT NULL,
  `kriteria` char(10) NOT NULL,
  `jenis_faktor` varchar(25) NOT NULL,
  `nilai_standart` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_profile_ips`
--

INSERT INTO `tb_profile_ips` (`id`, `kriteria`, `jenis_faktor`, `nilai_standart`) VALUES
(1, 'mat', 'Secondary Factor', 3),
(2, 'bin', 'Core Factor', 3),
(3, 'ing', 'Secondary Factor', 3),
(4, 'fis', 'Secondary Factor', 1),
(5, 'kim', 'Secondary Factor', 1),
(6, 'sej', 'Core Factor', 4),
(7, 'geo', 'Core Factor', 4),
(8, 'eko', 'Core Factor', 3),
(9, 'sos', 'Core Factor', 3),
(10, 'bio', 'Secondary Factor', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_siswa`
--

CREATE TABLE `tb_siswa` (
  `id` int(11) NOT NULL,
  `nama` varchar(25) NOT NULL,
  `mat` int(11) NOT NULL,
  `bin` int(11) NOT NULL,
  `ing` int(11) NOT NULL,
  `fis` int(11) NOT NULL,
  `kim` int(11) NOT NULL,
  `sej` int(11) NOT NULL,
  `geo` int(11) NOT NULL,
  `eko` int(11) NOT NULL,
  `sos` int(11) NOT NULL,
  `bio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_siswa`
--

INSERT INTO `tb_siswa` (`id`, `nama`, `mat`, `bin`, `ing`, `fis`, `kim`, `sej`, `geo`, `eko`, `sos`, `bio`) VALUES
(1, 'Hasnan ', 3, 4, 2, 4, 2, 3, 4, 3, 3, 3),
(2, 'David', 4, 3, 4, 4, 3, 4, 4, 4, 4, 3),
(3, 'Robert', 3, 3, 3, 4, 3, 3, 4, 3, 4, 3),
(4, 'John Doe', 4, 4, 3, 5, 5, 2, 3, 2, 3, 5),
(7, 'Click', 4, 4, 4, 4, 4, 4, 4, 4, 4, 4),
(8, 'Giorgio de Anteras', 4, 4, 1, 4, 4, 1, 1, 1, 1, 4),
(9, 'MHS DUO', 5, 4, 3, 4, 4, 1, 1, 1, 1, 5),
(10, 'Abdul ', 2, 3, 3, 2, 2, 3, 3, 3, 3, 3),
(11, 'Jane Doe', 4, 3, 3, 3, 3, 3, 4, 2, 3, 2),
(12, 'Pasti Ipa', 4, 4, 3, 4, 4, 0, 0, 0, 0, 4),
(13, 'Test', 4, 3, 2, 1, 1, 2, 3, 4, 3, 2),
(14, 'Riptide', 5, 4, 3, 5, 5, 2, 2, 2, 2, 5),
(15, 'Ucok', 6, 3, 4, 3, 3, 1, 2, 1, 3, 4),
(16, 'VMWare', 5, 4, 4, 2, 4, 2, 2, 3, 3, 2),
(18, 'Cheater', 5, 4, 0, 5, 5, 0, 0, 0, 0, 5),
(20, 'Lalap', 3, 4, 1, 3, 3, 3, 3, 4, 3, 4),
(21, 'Coba Test', 4, 4, 4, 4, 4, 4, 4, 4, 4, 4),
(22, 'Hasil Konversi', 1, 1, 1, 1, 1, 1, 1, 1, 3, 1),
(23, 'Rafif Banner', 4, 2, 4, 3, 3, 4, 3, 4, 3, 4);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_pembobotan`
--
ALTER TABLE `tb_pembobotan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_profile_ipa`
--
ALTER TABLE `tb_profile_ipa`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_profile_ips`
--
ALTER TABLE `tb_profile_ips`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_siswa`
--
ALTER TABLE `tb_siswa`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_pembobotan`
--
ALTER TABLE `tb_pembobotan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `tb_profile_ipa`
--
ALTER TABLE `tb_profile_ipa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `tb_profile_ips`
--
ALTER TABLE `tb_profile_ips`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `tb_siswa`
--
ALTER TABLE `tb_siswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- Database: `laundry`
--
CREATE DATABASE IF NOT EXISTS `laundry` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `laundry`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `costum`
--

CREATE TABLE `costum` (
  `kd_pesan` char(10) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `jenis` varchar(20) NOT NULL,
  `berat` int(11) NOT NULL,
  `tgl_ambil` date NOT NULL,
  `total_bayar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `costum`
--

INSERT INTO `costum` (`kd_pesan`, `nama`, `jenis`, `berat`, `tgl_ambil`, `total_bayar`) VALUES
('PMSN01', 'Rafif Muhammad', 'Cuci dan Setrika', 5, '2021-07-27', 25000);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `costum`
--
ALTER TABLE `costum`
  ADD PRIMARY KEY (`kd_pesan`);
--
-- Database: `mahasiswa`
--
CREATE DATABASE IF NOT EXISTS `mahasiswa` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `mahasiswa`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `npm` varchar(11) NOT NULL,
  `nama` varchar(25) NOT NULL,
  `email` varchar(24) NOT NULL,
  `jurusan` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `mahasiswa`
--

INSERT INTO `mahasiswa` (`npm`, `nama`, `email`, `jurusan`) VALUES
('193510767', 'Rafif Muhammad', 'rafifm@student.uir.ac.id', 'Teknik Informatika'),
('193510700', 'Hasnan Alfan S.', 'hasnan@student.uir.ac.id', 'Teknik Informatika'),
('193510393', 'Hendrata Putra P.', 'hendra@student.uir.ac.id', 'Teknik Informatika'),
('asd', 'asd', 'asda', 'asdas'),
('asd', 'asd', 'asda', 'asdas'),
('adas', 'sddasf', 't443', '12312312');
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

--
-- Dumping data untuk tabel `pma__central_columns`
--

INSERT INTO `pma__central_columns` (`db_name`, `col_name`, `col_type`, `col_length`, `col_collation`, `col_isNull`, `col_extra`, `col_default`) VALUES
('db_jabatan', 'kd_jabatan', 'char', '10', 'utf8mb4_general_ci', 0, ',', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

--
-- Dumping data untuk tabel `pma__column_info`
--

INSERT INTO `pma__column_info` (`id`, `db_name`, `table_name`, `column_name`, `comment`, `mimetype`, `transformation`, `transformation_options`, `input_transformation`, `input_transformation_options`) VALUES
(1, 'bukutamu', 'bukutamu', 'email', '', '', '', '', '', 'komentar');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data untuk tabel `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"db_drive\",\"table\":\"tb_files\"},{\"db\":\"db_drive\",\"table\":\"tb_history_download\"},{\"db\":\"db_drive\",\"table\":\"tb_user\"},{\"db\":\"siakad\",\"table\":\"tb_mahasiswa\"},{\"db\":\"db_mhs\",\"table\":\"tb_mhs\"},{\"db\":\"cakap\",\"table\":\"tb_user\"},{\"db\":\"cakap\",\"table\":\"tb_message\"},{\"db\":\"db_chatting\",\"table\":\"tb_chat\"},{\"db\":\"db_chatting\",\"table\":\"tb_user\"},{\"db\":\"db_buku\",\"table\":\"tb_user\"}]');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

--
-- Dumping data untuk tabel `pma__table_info`
--

INSERT INTO `pma__table_info` (`db_name`, `table_name`, `display_field`) VALUES
('db_buku', 'tb_pinjam', 'judul_buku'),
('db_drive', 'tb_history_download', 'nama_file'),
('db_jabatan', 'tb_jabatan', 'kd_jabatan'),
('db_pegawai', 'tb_unit', 'unit');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data untuk tabel `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'db_buku', 'tb_buku', '[]', '2022-08-31 11:47:10'),
('root', 'db_mitra_kerja', 'tb_bobot', '[]', '2022-07-28 08:31:33');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data untuk tabel `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2023-04-12 08:29:24', '{\"Console\\/Mode\":\"collapse\",\"Console\\/Height\":444.9895,\"NavigationWidth\":0,\"lang\":\"id\"}');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indeks untuk tabel `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indeks untuk tabel `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indeks untuk tabel `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indeks untuk tabel `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indeks untuk tabel `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indeks untuk tabel `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indeks untuk tabel `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indeks untuk tabel `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indeks untuk tabel `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indeks untuk tabel `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indeks untuk tabel `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indeks untuk tabel `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indeks untuk tabel `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `project`
--
CREATE DATABASE IF NOT EXISTS `project` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `project`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `iris`
--

CREATE TABLE `iris` (
  `SepalLength` double NOT NULL,
  `SepalWidth` double NOT NULL,
  `PetalLength` double NOT NULL,
  `PetalWidth` double NOT NULL,
  `Species` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `iris`
--

INSERT INTO `iris` (`SepalLength`, `SepalWidth`, `PetalLength`, `PetalWidth`, `Species`) VALUES
(4.8, 3, 1.4, 0.3, 'Setosa'),
(5.1, 3.8, 1.6, 0.2, 'Setosa'),
(4.6, 3.2, 1.4, 0.2, 'Setosa'),
(5.7, 3, 4.2, 1.2, 'Versicolor'),
(5.7, 2.9, 4.3, 1.3, 'Versicolor'),
(6.2, 2.9, 4.3, 1.3, 'Versicolor'),
(6.7, 3, 5.2, 2.3, 'Virginica'),
(6.3, 2.5, 5, 1.9, 'Virginica'),
(6.5, 3, 5.2, 2, 'Virginica');
--
-- Database: `pweb`
--
CREATE DATABASE IF NOT EXISTS `pweb` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `pweb`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `liga`
--

CREATE TABLE `liga` (
  `kode` char(3) NOT NULL,
  `negara` char(15) NOT NULL,
  `champion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `liga`
--

INSERT INTO `liga` (`kode`, `negara`, `champion`) VALUES
('eng', 'english', 4),
('jer', 'jerman', 4),
('spa', 'spanyol', 4);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `liga`
--
ALTER TABLE `liga`
  ADD PRIMARY KEY (`kode`);
--
-- Database: `siakad`
--
CREATE DATABASE IF NOT EXISTS `siakad` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `siakad`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_mahasiswa`
--

CREATE TABLE `tb_mahasiswa` (
  `id` int(11) NOT NULL,
  `nama` text NOT NULL,
  `nim` int(11) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jurusan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_mahasiswa`
--

INSERT INTO `tb_mahasiswa` (`id`, `nama`, `nim`, `tgl_lahir`, `jurusan`) VALUES
(1, 'Rafif Muhammad', 193510767, '2001-06-23', 'Teknik Informatika');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_mahasiswa`
--
ALTER TABLE `tb_mahasiswa`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_mahasiswa`
--
ALTER TABLE `tb_mahasiswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Database: `sikad`
--
CREATE DATABASE IF NOT EXISTS `sikad` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `sikad`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_mahasiswa`
--

CREATE TABLE `tb_mahasiswa` (
  `id` int(11) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `npm` varchar(11) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `jurusan` varchar(40) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `email` varchar(20) NOT NULL,
  `no_telp` varchar(13) NOT NULL,
  `foto` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_mahasiswa`
--

INSERT INTO `tb_mahasiswa` (`id`, `nama`, `npm`, `tanggal_lahir`, `jurusan`, `alamat`, `email`, `no_telp`, `foto`) VALUES
(1, 'Rafif Muhammad', '193510767', '2001-06-23', 'Teknik Informatika', 'Bumi Lago Nontol', 'rafifbanner@gmail.co', '082169554842', '0'),
(4, 'Pilek Anjing Kontol', '193510800', '2022-08-30', 'Teknik Elektro', 'BLP', 'hackedth4@gmail.com', '082169554444', '0'),
(5, 'I Can\'t', '1111111', '2022-08-30', 'Sistem Informasi', 'Ampun', 'ampun@mail.com', '0821241123', '0'),
(6, 'ada', 'adads', '2022-08-31', 'Teknik Informatika', 'adasd', 'asasfwr@mail.com', '2131321', 'icon8.png');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_mahasiswa`
--
ALTER TABLE `tb_mahasiswa`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_mahasiswa`
--
ALTER TABLE `tb_mahasiswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
