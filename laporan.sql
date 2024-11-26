-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 26, 2024 at 08:13 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pt_bendicar`
--

-- --------------------------------------------------------

--
-- Table structure for table `laporan`
--

CREATE TABLE `laporan` (
  `Id_Laporan` int(30) NOT NULL,
  `Id_Peminjam` int(100) NOT NULL,
  `Id_Petugas` int(100) NOT NULL,
  `Tanggal_laporan` date NOT NULL,
  `keterangan` varchar(150) NOT NULL,
  `total_denda` varchar(130) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `laporan`
--

INSERT INTO `laporan` (`Id_Laporan`, `Id_Peminjam`, `Id_Petugas`, `Tanggal_laporan`, `keterangan`, `total_denda`) VALUES
(101, 123, 999, '0000-00-00', 'baik', 'Rp 100.000,00'),
(102, 121, 998, '0000-00-00', 'baik', 'Rp 150.000,00'),
(103, 111, 997, '0000-00-00', 'sangat baik', 'Rp 100.000,00'),
(104, 112, 996, '0000-00-00', 'baik', 'Rp 200.000,00');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
