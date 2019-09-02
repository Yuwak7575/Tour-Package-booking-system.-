-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 02, 2019 at 04:52 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rock`
--

-- --------------------------------------------------------

--
-- Table structure for table `loginform`
--

CREATE TABLE `loginform` (
  `id` int(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `loginform`
--

INSERT INTO `loginform` (`id`, `name`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `rio`
--

CREATE TABLE `rio` (
  `id` int(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `contact` varchar(30) NOT NULL,
  `destination` varchar(100) NOT NULL,
  `days` int(10) NOT NULL,
  `person` int(10) NOT NULL,
  `price` mediumtext NOT NULL,
  `reservedate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rio`
--

INSERT INTO `rio` (`id`, `name`, `email`, `address`, `contact`, `destination`, `days`, `person`, `price`, `reservedate`) VALUES
(2, 'yuwak', 'rfjnerug@gmail.com', 'ktm', '9800640628', 'kanyam', 7, 4, '32000', '2019-08-30'),
(6, 'ravi', 'bistyuwak46@gmail.com', 'ktm', '9800640628', 'Ghandruk', 5, 5, '32500', '2019-09-19'),
(7, 'ravi', 'olduser', 'olduser', '9800640628', 'Chitwan', 3, 5, '15000', '2019-09-12'),
(8, 'ram', 'bistyuwak46@gmail.com', 'ktm', '9800640628', 'Ghandruk', 5, 10, '65000', '2019-09-12');

-- --------------------------------------------------------

--
-- Table structure for table `rock`
--

CREATE TABLE `rock` (
  `id` int(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `supplier` varchar(255) NOT NULL,
  `supplieraddress` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rock`
--

INSERT INTO `rock` (`id`, `name`, `description`, `supplier`, `supplieraddress`) VALUES
(1, '', '', '', ''),
(2, '', '', '', ''),
(123, 'kinj', 'kjc', 'jaksc', '1223'),
(4535, 'yt', 'd54', 'gf', 'd'),
(12345, 'yuwak', 'chor', 'daku1', 'kidnaper'),
(23423, 'sdfsdf', 'sdfds`sd`', 'fdgs', 'sgdfs'),
(123123, 'KASNDKJASND', 'KJSDNFKSDN', 'KSJDNFK', ''),
(2147483647, 'hgvfvv', 'tgrtgerger', 'rgeg', 'd');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `loginform`
--
ALTER TABLE `loginform`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rio`
--
ALTER TABLE `rio`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rock`
--
ALTER TABLE `rock`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `loginform`
--
ALTER TABLE `loginform`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `rio`
--
ALTER TABLE `rio`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `rock`
--
ALTER TABLE `rock`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2147483647;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
