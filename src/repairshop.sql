-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 10, 2021 at 05:00 PM
-- Server version: 5.7.24
-- PHP Version: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `repairshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `COUNTRY` varchar(50) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `email` varchar(254) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `type` varchar(20) NOT NULL,
  `MESSAGE` varchar(254) NOT NULL,
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `COUNTRY`, `phone`, `email`, `subject`, `type`, `MESSAGE`, `create_at`) VALUES
(1, 'yousef', 'Anguilla', '0507859778', 'youese@gmail.com', 'how i can get my laptop ', 'Suggestion', 'test sdf dsafffffffffffds                  ddddddddddddddd', '2021-04-08 09:19:23'),
(2, 'yousef', 'Anguilla', '0507859778', 'youese@gmail.com', 'how i can get my laptop ', 'Suggestion', 'test sdf dsafffffffffffds                  ddddddddddddddd', '2021-04-08 09:24:45'),
(3, 'dfe', 'Algeria', '0507859778', 'youese@gmail.com', 'how i can get my laptop ', 'Suggestion', 'sdfefdsa asdssddddddddddddddddddd', '2021-04-09 04:58:40'),
(4, 'Ù?Ù?Ø³Ù? Ù?Ø­Ù?Ø¯ Ø¹Ø¨Ø¯Ø§Ù?Ø­Ù? Ø³Ø±Ù?Ø± ', 'Lebanon', '0507859778', 'youese@gmail.com', 'how i can get my laptop ', 'Suggestion', 'te@fio.com', '2021-04-10 14:43:43'),
(5, '', 'none', '', '', '', 'none', '', '2021-04-10 15:02:55'),
(6, '', 'none', '', '', '', 'none', '', '2021-04-10 15:03:33'),
(7, '', 'none', '', '', '', 'none', '', '2021-04-10 15:09:02'),
(8, '', 'none', '', '', '', 'none', '', '2021-04-10 15:10:00'),
(9, '', 'none', '', '', '', 'none', '', '2021-04-10 15:10:58'),
(10, '', 'none', '', '', '', 'none', '', '2021-04-10 15:12:05'),
(11, '', 'none', '', '', '', 'none', '', '2021-04-10 15:12:32'),
(12, '', 'none', 'asdfe', '', '', 'none', '', '2021-04-10 15:12:50'),
(13, '', 'none', '', '', '', 'none', '', '2021-04-10 15:13:15'),
(14, '', 'none', '', '', '', 'none', '', '2021-04-10 15:14:16'),
(15, '', 'none', '', '', '', 'none', '', '2021-04-10 15:15:01'),
(16, '', 'none', '', '', '', 'none', '', '2021-04-10 15:16:12'),
(17, '', 'none', '', '', '', 'none', '', '2021-04-10 15:18:42'),
(18, '', 'none', '', '', '', 'none', '', '2021-04-10 15:19:56'),
(19, '', 'none', '', '', '', 'none', '', '2021-04-10 15:20:00'),
(20, '', 'none', '', '', '', 'none', '', '2021-04-10 15:20:50'),
(21, '', 'none', '', '', '', 'none', '', '2021-04-10 15:24:43'),
(22, '', 'none', '', '', '', 'none', '', '2021-04-10 15:25:26'),
(23, '', 'none', '', '', '', 'none', '', '2021-04-10 15:26:49'),
(24, '', 'none', '', '', '', 'none', '', '2021-04-10 15:27:01'),
(25, '', 'none', '', '', '', 'none', '', '2021-04-10 16:00:21'),
(26, '', 'none', '', '', '', 'none', '', '2021-04-10 16:01:30'),
(27, '', 'none', '', '', '', 'none', '', '2021-04-10 16:05:43'),
(28, '', 'none', '', '', '', 'none', '', '2021-04-10 16:07:59'),
(29, '', 'none', '', '', '', 'none', '', '2021-04-10 16:08:57'),
(30, '', 'none', '', '', '', 'none', '', '2021-04-10 16:13:28'),
(31, '', 'none', '', '', '', 'none', '', '2021-04-10 16:16:50'),
(32, '', 'none', '', '', '', 'none', '', '2021-04-10 16:17:16'),
(33, '', 'none', '', '', '', 'none', '', '2021-04-10 16:18:03'),
(34, '', 'none', '', '', '', 'none', '', '2021-04-10 16:19:42'),
(35, '', 'none', '', '', '', 'none', '', '2021-04-10 16:20:19'),
(36, '', 'none', '', '', '', 'none', '', '2021-04-10 16:21:36'),
(37, '', 'none', '', '', '', 'none', '', '2021-04-10 16:21:55'),
(38, '', 'none', '', '', '', 'none', '', '2021-04-10 16:22:09'),
(39, '', 'none', '', '', '', 'none', '', '2021-04-10 16:22:47'),
(40, '', 'none', '', '', '', 'none', '', '2021-04-10 16:23:14'),
(41, '', 'none', '', '', '', 'none', '', '2021-04-10 16:23:45'),
(42, '', 'none', '', '', '', 'none', '', '2021-04-10 16:24:04'),
(43, '', 'none', '', '', '', 'none', '', '2021-04-10 16:24:37'),
(44, '', 'none', '', '', '', 'none', '', '2021-04-10 16:25:17'),
(45, '', 'none', '', '', '', 'none', '', '2021-04-10 16:25:44'),
(46, '', 'none', '', '', '', 'none', '', '2021-04-10 16:26:05'),
(47, '', 'none', '', '', '', 'none', '', '2021-04-10 16:26:07'),
(48, '', 'none', '', '', '', 'none', '', '2021-04-10 16:26:54'),
(49, '', 'none', '', '', '', 'none', '', '2021-04-10 16:27:14'),
(50, '', 'none', '', '', '', 'none', '', '2021-04-10 16:28:11'),
(51, '', 'none', '', '', '', 'none', '', '2021-04-10 16:28:39'),
(52, '', 'none', '', '', '', 'none', '', '2021-04-10 16:29:22'),
(53, '', 'none', '', '', '', 'none', '', '2021-04-10 16:30:24'),
(54, '', 'none', '', '', '', 'none', '', '2021-04-10 16:30:42'),
(55, '', 'none', '', '', '', 'none', '', '2021-04-10 16:32:32'),
(56, '', 'none', '', '', '', 'none', '', '2021-04-10 16:42:23'),
(57, '', 'none', '', '', '', 'none', '', '2021-04-10 16:43:16'),
(58, '', 'none', '', '', '', 'none', '', '2021-04-10 16:43:30'),
(59, '', 'none', '', '', '', 'none', '', '2021-04-10 16:45:41'),
(60, '', 'none', '', '', '', 'none', '', '2021-04-10 16:55:10'),
(61, '', 'none', '', '', '', 'none', '', '2021-04-10 16:58:59');

-- --------------------------------------------------------

--
-- Table structure for table `repair`
--

CREATE TABLE `repair` (
  `id` int(11) NOT NULL,
  `Computer_Owner` varchar(254) NOT NULL,
  `Computer_Serial_Number` varchar(254) NOT NULL,
  `Type` varchar(254) NOT NULL,
  `Model` varchar(254) NOT NULL,
  `Memory_GB` int(11) NOT NULL,
  `HardDisk_GB` int(11) NOT NULL,
  `Problems` varchar(254) NOT NULL,
  `Repair_Cost` float NOT NULL,
  `Repair_Status` varchar(254) NOT NULL,
  `Repair_Finish_DateTime` datetime NOT NULL,
  `Repair_Delivery_DateTime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `repair`
--

INSERT INTO `repair` (`id`, `Computer_Owner`, `Computer_Serial_Number`, `Type`, `Model`, `Memory_GB`, `HardDisk_GB`, `Problems`, `Repair_Cost`, `Repair_Status`, `Repair_Finish_DateTime`, `Repair_Delivery_DateTime`) VALUES
(1, 'test', '12adfed', 'Desktop', 'Samsung Galaxy Tab S5e', 240, 280, '', 2015, '', '2021-04-10 00:00:00', '2021-04-10 00:00:00'),
(2, 'test', '12adfed', 'Desktop', 'Samsung Galaxy Tab S5e', 50, 215, '', 2500, '', '2021-04-10 00:00:00', '2021-04-10 00:00:00'),
(3, 'test', '12adfed', 'Desktop', 'Samsung Galaxy Tab S5e', 50, 215, '', 2500, '', '2021-04-10 00:00:00', '2021-04-10 00:00:00'),
(4, 'test', '12adfed', 'Desktop', 'Samsung Galaxy Tab S5e', 50, 215, 'dffffffd', 2500, 'no', '2021-04-10 00:00:00', '2021-04-10 00:00:00'),
(5, 'test', '12adfed', 'Desktop', 'Samsung Galaxy Tab S5e', 50, 215, 'dffffffd', 2500, 'no', '2021-04-10 09:53:05', '2021-04-10 00:00:00'),
(6, 'tes', '2122ft', 'Desktop', 'Samsung Galaxy Tab S5e', 50, 250, 'df', 250, 'done', '2021-04-10 09:58:22', '2021-04-10 00:00:00'),
(7, 'tes', '2122ft', 'Desktop', 'Samsung Galaxy Tab S5e', 50, 250, 'df', 250, 'done', '2021-04-10 10:00:26', '2021-04-10 00:00:00'),
(8, 'tes', '2122ft', 'Desktop', 'Samsung Galaxy Tab S5e', 50, 250, 'df', 250, 'done', '2021-04-10 10:03:58', '2021-04-10 00:00:00'),
(9, 'tes', '2122ft', 'Desktop', 'Samsung Galaxy Tab S5e', 50, 250, 'df', 250, 'done', '2021-04-10 10:08:15', '2021-04-10 00:00:00'),
(10, 'tes', '2122ft', 'Desktop', 'Samsung Galaxy Tab S5e', 50, 250, 'df', 250, 'done', '2021-04-08 09:57:00', '2021-04-10 00:00:00'),
(11, 'tes', '2122ft', 'Desktop', 'Samsung Galaxy Tab S5e', 50, 250, 'df', 250, 'done', '2021-04-08 09:57:00', '2021-04-25 09:57:00'),
(12, 'tes', '2122ft', 'Desktop', 'Samsung Galaxy Tab S5e', 50, 250, 'df', 250, 'done', '2021-04-08 09:57:00', '2021-04-25 09:57:00'),
(13, 'tes', '2122ft', 'Desktop', 'Samsung Galaxy Tab S5e', 50, 250, 'df', 250, 'done', '2021-04-08 09:57:00', '2021-04-25 09:57:00'),
(14, 'Test', '20ffff', 'Desktop', 'IBM Think pad L430 Core i5', 8, 512, 'pdfdfdfdfdf ', 200, 'no', '2021-04-14 19:42:00', '2021-04-14 20:43:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `repair`
--
ALTER TABLE `repair`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `repair`
--
ALTER TABLE `repair`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
