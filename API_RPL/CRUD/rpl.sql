-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 05, 2023 at 12:12 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rpl`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id` int(10) NOT NULL,
  `nama_pemesan` varchar(50) NOT NULL,
  `Tanggal` date NOT NULL,
  `Alamat` varchar(100) NOT NULL,
  `Paket` enum('Gold','Platinum','Silver','Gedung','MakeUp') NOT NULL,
  `Status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `nama_pemesan`, `Tanggal`, `Alamat`, `Paket`, `Status`) VALUES
(1, 'Agung', '2023-04-02', 'PEKALONGAN', 'Gold', 'KONFIRMASI'),
(2, 'Iqbal', '2023-04-02', 'TULUNGAGUNG', 'Platinum', 'KONFIRMASI'),
(3, 'tika', '2023-04-02', 'Curug', 'Gold', 'KONFIRMASI'),
(4, 'RAHMATIKA KUSUMA WARDANI', '2023-04-02', 'Tegowanu', 'MakeUp', 'KONFIRMASI'),
(5, 'YHONA NATASYA PRAMESTI', '2023-04-02', 'Tegowanu', 'MakeUp', 'KONFIRMASI'),
(11, '', '0000-00-00', '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
