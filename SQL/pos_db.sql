-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 20, 2022 at 03:32 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pos_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `NIM` int(11) NOT NULL,
  `Nama` varchar(128) NOT NULL,
  `Program_Studi` varchar(48) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`NIM`, `Nama`, `Program_Studi`) VALUES
(12208890, 'Dani Bilah', 'Sistem Informasi'),
(12221168, 'Mansyur Mahmud', 'Ilmu Agama Islam'),
(12221169, 'Beni Marusahun', 'Ilmu Komputer Manajement');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(100) DEFAULT NULL,
  `product_price` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `product_price`) VALUES
(12, 'Coca cola', 5000),
(13, 'Teh Botol', 3700),
(14, 'Rexona Men', 13000),
(15, 'You C 1000', 6300),
(16, 'Pods Mens ', 15000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`NIM`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `NIM` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12221170;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
