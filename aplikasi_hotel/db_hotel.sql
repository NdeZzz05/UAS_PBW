-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 30, 2023 at 05:06 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_hotel`
--

-- --------------------------------------------------------

--
-- Table structure for table `fasilitas`
--

CREATE TABLE `fasilitas` (
  `id_fasilitas` int(10) NOT NULL,
  `nama_fasilitas` varchar(25) NOT NULL,
  `ket_fasilitas` text NOT NULL,
  `gambar_fasilitas` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fasilitas`
--

INSERT INTO `fasilitas` (`id_fasilitas`, `nama_fasilitas`, `ket_fasilitas`, `gambar_fasilitas`) VALUES
(1, '   Restaurant   ', ' Di hotel ini, terdapat sebuah restoran yang menawarkan pengalaman kuliner yang luar biasa. Restoran ini menyajikan hidangan lezat yang disiapkan oleh koki berbakat, dengan perpaduan sempurna antara cita rasa lokal dan internasional. Suasana yang elegan dan nyaman menciptakan suasana yang ideal untuk bersantap santai atau pertemuan bisnis. Layanan ramah dan profesional dari staf restoran menjadikan kunjungan Anda di sini tak terlupakan. Nikmati sajian istimewa di restoran kami yang akan memanjakan lidah Anda dan meninggalkan kesan tak terlupakan dalam setiap kunjungan Anda di hotel ini.', '6487f1fef3cfa.jpg'),
(2, '  Kolam Renang  ', ' Kolam renang hotel kami memiliki ukuran yang cukup besar dan dilengkapi dengan fasilitas kenyamanan seperti kursi berjemur dan payung yang bisa digunakan oleh tamu hotel. Kolam renang juga dikelilingi oleh pemandangan alam yang indah, sehingga tamu dapat menikmati suasana yang tenang dan menenangkan. Selain itu, kolam renang kami dilengkapi dengan sistem pengaturan suhu air yang modern, sehingga tamu dapat menikmati suhu air yang nyaman dan sesuai dengan keinginan. Staf kami yang ramah dan profesional siap membantu tamu dalam menjaga kebersihan dan keamanan kolam renang.', '6487f2213d48d.jpg'),
(3, '  Convention Center  ', ' Convention Center hotel kami merupakan tempat yang ideal untuk acara bisnis, konferensi, dan pertemuan lainnya. Fasilitas ini dilengkapi dengan ruang rapat dan pertemuan berkapasitas besar yang dapat menampung hingga ratusan tamu. Kami juga menyediakan peralatan audio visual dan teknologi terkini untuk memenuhi kebutuhan presentasi dan diskusi. Tim kami yang ahli akan membantu Anda dalam merencanakan dan mengkoordinasikan acara Anda, termasuk pilihan menu katering yang disesuaikan dengan selera Anda. Selain itu, hotel kami dilengkapi dengan koneksi Wi-Fi yang stabil dan cepat sehingga memudahkan tamu untuk mengakses internet kapan saja dan di mana saja.', '6487f23f09830.jpg'),
(4, '    Kids Club    ', ' 	Kids Club hotel kami adalah tempat yang menyenangkan dan aman untuk anak-anak Anda. Fasilitas ini dilengkapi dengan berbagai macam permainan dan aktivitas yang cocok untuk anak-anak dari usia 4 hingga 12 tahun. Anak-anak dapat bermain di area indoor atau outdoor yang luas dan diawasi oleh staf kami yang ramah dan terlatih. Kami juga menyediakan program kegiatan yang edukatif dan kreatif, seperti menggambar, membuat kerajinan tangan, dan memasak. Anda dapat bersantai dan menikmati waktu Anda sendiri, sementara anak-anak Anda menikmati waktu bermain yang menyenangkan di Kids Club kami.', '6487f251ca68a.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `kamar`
--

CREATE TABLE `kamar` (
  `id_kamar` int(5) NOT NULL,
  `nama_kamar` varchar(20) NOT NULL,
  `fasilitas_kamar` text NOT NULL,
  `jumlah_kasur` int(3) NOT NULL,
  `harga` varchar(15) NOT NULL,
  `gambar_kamar` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kamar`
--

INSERT INTO `kamar` (`id_kamar`, `nama_kamar`, `fasilitas_kamar`, `jumlah_kasur`, `harga`, `gambar_kamar`) VALUES
(9, '  Duluxe Room  ', 'Televisi LED, Sofa, View Pantai, Kulkas', 1, '125.000', '6487f280b4a5f.jpg'),
(10, '  Family Room  ', 'Televisi LED, Sofa, View Pantai, Teras Terhubung Kolam Renang', 3, '425.000', '6487f29f0c6d7.jpg'),
(11, '  Exclusif Room  ', 'Televisi LED, Sofa, View Pantai, Kulkas, Teras Terhubung Kolam Renang', 1, '225.000', '6487f2f3c038e.jpg'),
(12, ' Superior Room ', 'Televisi LED, Sofa, View Pantai, Kulkas, Teras Terhubung Kolam Renang', 1, '250.000', '6487f2cea627b.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `pemesanan`
--

CREATE TABLE `pemesanan` (
  `id_pemesanan` int(10) NOT NULL,
  `nama_pemesan` varchar(10) NOT NULL,
  `nomor_hp` int(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `nama_tamu` varchar(30) NOT NULL,
  `check_in` varchar(15) NOT NULL,
  `check_out` varchar(15) NOT NULL,
  `jumlah_kamar` int(5) NOT NULL,
  `tipe_kamar` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pemesanan`
--

INSERT INTO `pemesanan` (`id_pemesanan`, `nama_pemesan`, `nomor_hp`, `email`, `nama_tamu`, `check_in`, `check_out`, `jumlah_kamar`, `tipe_kamar`) VALUES
(3, 'Ndez', 811212, '101@gmail.com', 'Bentar', '04/30/2023', '05/01/2023', 3, 'Duluxe Room1'),
(4, 'Nandes', 21212, '121212@gmailcom', 'Nnades', '04/29/2023', '04/30/2023', 1, 'Duluxe Room');

-- --------------------------------------------------------

--
-- Table structure for table `petugas`
--

CREATE TABLE `petugas` (
  `id_petugas` int(10) NOT NULL,
  `nama_petugas` varchar(25) NOT NULL,
  `level` enum('admin','resepsionis') NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `petugas`
--

INSERT INTO `petugas` (`id_petugas`, `nama_petugas`, `level`, `username`, `password`) VALUES
(3, 'admin1', 'admin', 'admin', '827ccb0eea8a706c4c34a16891f84e7b'),
(4, 'resepsionis', 'resepsionis', 'resepsionis', '827ccb0eea8a706c4c34a16891f84e7b');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `fasilitas`
--
ALTER TABLE `fasilitas`
  ADD PRIMARY KEY (`id_fasilitas`);

--
-- Indexes for table `kamar`
--
ALTER TABLE `kamar`
  ADD PRIMARY KEY (`id_kamar`);

--
-- Indexes for table `pemesanan`
--
ALTER TABLE `pemesanan`
  ADD PRIMARY KEY (`id_pemesanan`);

--
-- Indexes for table `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`id_petugas`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `fasilitas`
--
ALTER TABLE `fasilitas`
  MODIFY `id_fasilitas` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `kamar`
--
ALTER TABLE `kamar`
  MODIFY `id_kamar` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `pemesanan`
--
ALTER TABLE `pemesanan`
  MODIFY `id_pemesanan` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `petugas`
--
ALTER TABLE `petugas`
  MODIFY `id_petugas` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
