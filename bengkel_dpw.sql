-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 25, 2023 at 01:44 PM
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
-- Database: `bengkel_dpw`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id_customer` int(3) NOT NULL,
  `nama_customer` varchar(50) NOT NULL,
  `email_customer` varchar(70) NOT NULL,
  `nomor_telepon_customer` int(14) NOT NULL,
  `alamat_customer` varchar(200) NOT NULL,
  `kecamatan_customer` varchar(75) NOT NULL,
  `jenis_motor_customer` varchar(30) NOT NULL,
  `varian_motor_customer` varchar(40) NOT NULL,
  `tahun_pembuatan_motor_customer` int(4) NOT NULL,
  `jenis_service_customer` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jenis_motor`
--

CREATE TABLE `jenis_motor` (
  `id_jenis_motor` int(3) NOT NULL,
  `nama_jenis_motor` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jenis_motor`
--

INSERT INTO `jenis_motor` (`id_jenis_motor`, `nama_jenis_motor`) VALUES
(1, 'Matic'),
(2, 'Bebek'),
(3, 'Sport'),
(4, 'Big Bike');

-- --------------------------------------------------------

--
-- Table structure for table `jenis_service`
--

CREATE TABLE `jenis_service` (
  `id_jenis_service` int(3) NOT NULL,
  `nama_jenis_service` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jenis_service`
--

INSERT INTO `jenis_service` (`id_jenis_service`, `nama_jenis_service`) VALUES
(1, 'Servis Ringan'),
(2, 'Servis Berat');

-- --------------------------------------------------------

--
-- Table structure for table `kecamatan`
--

CREATE TABLE `kecamatan` (
  `id_kecamatan` int(2) NOT NULL,
  `nama_kecamatan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kecamatan`
--

INSERT INTO `kecamatan` (`id_kecamatan`, `nama_kecamatan`) VALUES
(1, 'Andir'),
(2, 'Astana Anyar'),
(3, 'Antapani'),
(4, 'Arcamanik'),
(5, 'Babakan Ciparay'),
(6, 'Bandung Kidul'),
(7, 'Bandung Kulon'),
(8, 'Bandung Wetan'),
(9, 'Batununggal'),
(10, 'Bojongloa Kaler'),
(11, 'Bojongloa Kidul'),
(12, 'Buahbatu'),
(13, 'Cibeunying Kaler'),
(14, 'Cibeunying Kidul'),
(15, 'Cibiru'),
(16, 'Cicendo'),
(17, 'Cidadap'),
(18, 'Cinambo'),
(19, 'Coblong'),
(20, 'Gedebage'),
(21, 'Kiaracondong'),
(22, 'Lengkong'),
(23, 'Mandalajati'),
(24, 'Panyileukan'),
(25, 'Rancasari'),
(26, 'Regol'),
(27, 'Sukajadi'),
(28, 'Sukasari'),
(29, 'Sumur Bandung'),
(30, 'Ujungberung');

-- --------------------------------------------------------

--
-- Table structure for table `tahun_pembuatan_motor`
--

CREATE TABLE `tahun_pembuatan_motor` (
  `id_tahun_pembuatan_motor` int(3) NOT NULL,
  `tahun_pembuatan_motor` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tahun_pembuatan_motor`
--

INSERT INTO `tahun_pembuatan_motor` (`id_tahun_pembuatan_motor`, `tahun_pembuatan_motor`) VALUES
(1, '2008'),
(2, '2009'),
(3, '2010'),
(4, '2011'),
(5, '2012'),
(6, '2013'),
(7, '2014'),
(8, '2015'),
(9, '2016'),
(10, '2017'),
(11, '2018'),
(12, '2019'),
(13, '2020'),
(14, '2021'),
(15, '2022'),
(16, '2023');

-- --------------------------------------------------------

--
-- Table structure for table `varian_motor_bebek`
--

CREATE TABLE `varian_motor_bebek` (
  `id_motor_bebek` int(3) NOT NULL,
  `nama_motor_bebek` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `varian_motor_bebek`
--

INSERT INTO `varian_motor_bebek` (`id_motor_bebek`, `nama_motor_bebek`) VALUES
(1, 'Honda Supra X 125'),
(2, 'Honda Supra X 125 Helm In'),
(3, 'Honda Revo 110'),
(4, 'Honda Revo 125'),
(5, 'Honda GTR 150'),
(6, 'Honda Supercub C125'),
(7, 'Honda CT125'),
(8, 'Lainnya');

-- --------------------------------------------------------

--
-- Table structure for table `varian_motor_bigbike`
--

CREATE TABLE `varian_motor_bigbike` (
  `id_motor_bigbike` int(3) NOT NULL,
  `nama_motor_bigbike` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `varian_motor_bigbike`
--

INSERT INTO `varian_motor_bigbike` (`id_motor_bigbike`, `nama_motor_bigbike`) VALUES
(1, 'Honda CB650R'),
(2, 'Honda CBR600RR'),
(3, 'Honda CBR1000RR-R'),
(4, 'Honda CB500X'),
(5, 'Honda CRF1100L Africa Twin'),
(6, 'Honda X-ADV 750'),
(7, 'Honda Rebel'),
(8, 'Honda Gold Wing 1800'),
(9, 'Lainnya');

-- --------------------------------------------------------

--
-- Table structure for table `varian_motor_matic`
--

CREATE TABLE `varian_motor_matic` (
  `id_motor_matic` int(3) NOT NULL,
  `nama_motor_matic` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `varian_motor_matic`
--

INSERT INTO `varian_motor_matic` (`id_motor_matic`, `nama_motor_matic`) VALUES
(1, 'Honda Beat'),
(2, 'Honda Vario 110'),
(3, 'Honda Vario 125'),
(4, 'Honda Vario 150'),
(5, 'Honda Genio'),
(6, 'Honda Scoopy'),
(7, 'Honda Spacy'),
(8, 'Honda PCX 125'),
(9, 'Honda PCX 150'),
(10, 'Honda ADV 150'),
(11, 'Honda Forza'),
(12, 'Lainnya');

-- --------------------------------------------------------

--
-- Table structure for table `varian_motor_sport`
--

CREATE TABLE `varian_motor_sport` (
  `id_motor_sport` int(3) NOT NULL,
  `nama_motor_sport` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `varian_motor_sport`
--

INSERT INTO `varian_motor_sport` (`id_motor_sport`, `nama_motor_sport`) VALUES
(1, 'Honda CB150 Verza'),
(2, 'Honda Sonic 150R'),
(3, 'Honda CB150R Streetfire'),
(4, 'Honda CB150X'),
(5, 'Honda CBR150R'),
(6, 'Honda CRF150L'),
(7, 'Honda CBR250RR'),
(8, 'Honda CRF250L'),
(9, 'Honda CRF250 Rally'),
(10, 'Lainnya');

-- --------------------------------------------------------

--
-- Table structure for table `waktu_booking`
--

CREATE TABLE `waktu_booking` (
  `id_waktu_service` int(5) NOT NULL,
  `tanggal_service` date NOT NULL,
  `jam_service` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id_customer`);

--
-- Indexes for table `jenis_motor`
--
ALTER TABLE `jenis_motor`
  ADD PRIMARY KEY (`id_jenis_motor`);

--
-- Indexes for table `jenis_service`
--
ALTER TABLE `jenis_service`
  ADD PRIMARY KEY (`id_jenis_service`);

--
-- Indexes for table `kecamatan`
--
ALTER TABLE `kecamatan`
  ADD PRIMARY KEY (`id_kecamatan`);

--
-- Indexes for table `tahun_pembuatan_motor`
--
ALTER TABLE `tahun_pembuatan_motor`
  ADD PRIMARY KEY (`id_tahun_pembuatan_motor`);

--
-- Indexes for table `varian_motor_bebek`
--
ALTER TABLE `varian_motor_bebek`
  ADD PRIMARY KEY (`id_motor_bebek`);

--
-- Indexes for table `varian_motor_bigbike`
--
ALTER TABLE `varian_motor_bigbike`
  ADD PRIMARY KEY (`id_motor_bigbike`);

--
-- Indexes for table `varian_motor_matic`
--
ALTER TABLE `varian_motor_matic`
  ADD PRIMARY KEY (`id_motor_matic`);

--
-- Indexes for table `varian_motor_sport`
--
ALTER TABLE `varian_motor_sport`
  ADD PRIMARY KEY (`id_motor_sport`);

--
-- Indexes for table `waktu_booking`
--
ALTER TABLE `waktu_booking`
  ADD PRIMARY KEY (`id_waktu_service`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id_customer` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jenis_motor`
--
ALTER TABLE `jenis_motor`
  MODIFY `id_jenis_motor` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `jenis_service`
--
ALTER TABLE `jenis_service`
  MODIFY `id_jenis_service` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `kecamatan`
--
ALTER TABLE `kecamatan`
  MODIFY `id_kecamatan` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `tahun_pembuatan_motor`
--
ALTER TABLE `tahun_pembuatan_motor`
  MODIFY `id_tahun_pembuatan_motor` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `varian_motor_bebek`
--
ALTER TABLE `varian_motor_bebek`
  MODIFY `id_motor_bebek` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `varian_motor_bigbike`
--
ALTER TABLE `varian_motor_bigbike`
  MODIFY `id_motor_bigbike` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `varian_motor_matic`
--
ALTER TABLE `varian_motor_matic`
  MODIFY `id_motor_matic` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `varian_motor_sport`
--
ALTER TABLE `varian_motor_sport`
  MODIFY `id_motor_sport` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `waktu_booking`
--
ALTER TABLE `waktu_booking`
  MODIFY `id_waktu_service` int(5) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
