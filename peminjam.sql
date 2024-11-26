-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 26, 2024 at 08:12 AM
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
-- Table structure for table `peminjam`
--

CREATE TABLE `peminjam` (
  `Id_Peminjam` int(20) NOT NULL,
  `Nama` varchar(50) NOT NULL,
  `Alamat` varchar(200) NOT NULL,
  `No_Hp` int(25) NOT NULL,
  `Identitas` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `peminjam`
--

INSERT INTO `peminjam` (`Id_Peminjam`, `Nama`, `Alamat`, `No_Hp`, `Identitas`) VALUES
(123, 'Ucok', 'Jakarta', 2147483647, 'KTP'),
(121, 'Vincent', 'Bali', 2147483647, 'KTP'),
(111, 'Mukheje', 'Prindavan', 2147483647, 'KTP'),
(112, 'Hari', 'Tangerang', 2147483647, 'KTP'),
(113, 'Agung', 'Bandar Lampung', 891123456, 'KTP'),
(114, 'Rojali', 'Bandung', 2147483647, 'KTP'),
(115, 'Aldo', 'Medan', 891123456, 'KTP');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
