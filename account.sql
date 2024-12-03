-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 15, 2023 at 10:22 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `account`
--

-- --------------------------------------------------------

--
-- Table structure for table `acc_regs`
--

CREATE TABLE `acc_regs` (
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `user` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `acc_regs`
--

INSERT INTO `acc_regs` (`name`, `address`, `email`, `user`, `pass`) VALUES
('chelzie', 'pampanga', 'chelzie@gmail.com', 'chelzie', 'chelzie123'),
('kaithlin', 'arayat', 'kaith@gmail.com', 'kaithy', 'kaith15');

-- --------------------------------------------------------

--
-- Table structure for table `reserved_accs`
--

CREATE TABLE `reserved_accs` (
  `name` varchar(255) NOT NULL,
  `cp_num` varchar(255) NOT NULL,
  `r_type` varchar(255) NOT NULL,
  `check_in` varchar(255) NOT NULL,
  `check_out` varchar(255) NOT NULL,
  `amount` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reserved_accs`
--

INSERT INTO `reserved_accs` (`name`, `cp_num`, `r_type`, `check_in`, `check_out`, `amount`) VALUES
('chelzie', '09974521508', 'Regency', 'jan 9', 'jan 12', '3500'),
('kaith', '09773784630', 'Deluxe', 'dec 26', 'dec 27', '2000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `acc_regs`
--
ALTER TABLE `acc_regs`
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `reserved_accs`
--
ALTER TABLE `reserved_accs`
  ADD UNIQUE KEY `name` (`name`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
