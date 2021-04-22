-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 18, 2021 at 01:24 AM
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
(71, 'dfeeeeeeeeeeeeeeeeeee', 'Algeria', '0507859778', 'yo@gm.omc', 'how i can get my laptop ', 'Suggestion', 'sdddddddddddddddddddddddddd', '2021-04-10 20:11:53'),
(72, 'dfeeeeeeeeeeeeeeeeeee', 'Algeria', '0507859778', 'yo@gm.omc', 'how i can get my laptop ', 'Suggestion', 'sdddddddddddddddddddddddddd', '2021-04-10 20:12:28'),
(73, 'ddddddddddddddddddd', 'Austria', '0507859778', 'df@gmial.c', 'how i can get my laptop ', 'Suggestion', 'ddddddddddddddddddddddddddddddddddddddddd', '2021-04-10 20:15:02'),
(74, 'ddddddddddddddddddd', 'Austria', '0507859778', 'df@gmial.c', 'how i can get my laptop ', 'Suggestion', 'ddddddddddddddddddddddddddddddddddddddddd', '2021-04-10 20:15:47'),
(75, 'ddddddddddddddddddd', 'Austria', '0507859778', 'df@gmial.c', 'how i can get my laptop ', 'Suggestion', 'ddddddddddddddddddddddddddddddddddddddddd', '2021-04-10 20:15:51'),
(76, 'ibraihame', 'Barbados', '0507859778', 'youese@gmail.com', 'how i can get my laptop ', 'Complaint', 'test kkkkkkkkkkkkkkkkkkkkkkkkkk', '2021-04-15 15:00:45'),
(77, 'ibraihame', 'Barbados', '0507859778', 'youese@gmail.com', 'how i can get my laptop ', 'Complaint', 'test kkkkkkkkkkkkkkkkkkkkkkkkkk', '2021-04-15 15:02:29'),
(78, 'ibraihame', 'Barbados', '0507859778', 'youese@gmail.com', 'how i can get my laptop ', 'Complaint', 'test kkkkkkkkkkkkkkkkkkkkkkkkkk', '2021-04-15 15:03:05'),
(79, 'ibraihame', 'Barbados', '0507859778', 'youese@gmail.com', 'how i can get my laptop ', 'Complaint', 'test kkkkkkkkkkkkkkkkkkkkkkkkkk', '2021-04-15 15:06:50'),
(80, 'yousef', 'Afganistan', '0507859778', 'youese@gmail.com', 'how i can get my laptop ', 'Complaint', 'sdddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd', '2021-04-17 22:24:44'),
(81, 'yousef', 'Afganistan', '0507859778', 'youese@gmail.com', 'how i can get my laptop ', 'Complaint', 'sdddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd', '2021-04-17 22:41:11'),
(82, 'yousef', 'Afganistan', '0507859778', 'youese@gmail.com', 'how i can get my laptop ', 'Complaint', 'sdddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd', '2021-04-17 22:41:34'),
(83, 'yousef', 'Afganistan', '0507859778', 'youese@gmail.com', 'how i can get my laptop ', 'Complaint', 'sdddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd', '2021-04-17 22:42:09'),
(84, 'yousef', 'Afganistan', '0507859778', 'youese@gmail.com', 'how i can get my laptop ', 'Complaint', 'sdddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd', '2021-04-17 22:42:21'),
(85, 'yousef', 'Afganistan', '0507859778', 'youese@gmail.com', 'how i can get my laptop ', 'Complaint', 'sdddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd', '2021-04-17 22:43:08'),
(86, 'yousef', 'Afganistan', '0507859778', 'youese@gmail.com', 'how i can get my laptop ', 'Complaint', 'sdddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd', '2021-04-17 22:43:56'),
(87, 'yousef', 'Afganistan', '0507859778', 'youese@gmail.com', 'how i can get my laptop ', 'Complaint', 'sdddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd', '2021-04-17 22:44:11'),
(88, 'yousef', 'Afganistan', '0507859778', 'youese@gmail.com', 'how i can get my laptop ', 'Complaint', 'sdddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd', '2021-04-17 22:44:36'),
(89, 'yousef', 'Afganistan', '0507859778', 'youese@gmail.com', 'how i can get my laptop ', 'Complaint', 'sdddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd', '2021-04-17 22:44:53'),
(90, 'yousef', 'Afganistan', '0507859778', 'youese@gmail.com', 'how i can get my laptop ', 'Complaint', 'sdddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd', '2021-04-17 22:45:07'),
(91, 'yousef', 'Afganistan', '0507859778', 'youese@gmail.com', 'how i can get my laptop ', 'Complaint', 'sdddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd', '2021-04-17 22:45:36'),
(92, 'yousef', 'Afganistan', '0507859778', 'youese@gmail.com', 'how i can get my laptop ', 'Complaint', 'sdddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd', '2021-04-17 22:45:40'),
(93, 'yousef', 'Afganistan', '0507859778', 'youese@gmail.com', 'how i can get my laptop ', 'Complaint', 'sdddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd', '2021-04-17 22:45:50');

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
(14, 'Test', '20ffff', 'Desktop', 'IBM Think pad L430 Core i5', 8, 512, 'pdfdfdfdfdf ', 200, 'no', '2021-04-14 19:42:00', '2021-04-14 20:43:00'),
(15, 'yoiiusef', '2122ft', 'tablet', 'Samsung Galaxy Tab S5e', 251, 420, '', 2500, 'no', '2021-04-28 13:11:00', '2021-04-22 20:09:00'),
(16, 'yoiiusef', '2122ft', 'tablet', 'Samsung Galaxy Tab S5e', 251, 420, '', 2500, 'no', '2021-04-28 13:11:00', '2021-04-22 20:09:00'),
(17, 'yoiiusef', 'sldfdfjieji', 'Desktop', 'Samsung Galaxy Tab S5e', 50, 500, 'ddddddddddddddddddddddddddddddddddddd', 400, 'no', '2021-04-26 23:06:00', '2021-04-23 23:06:00'),
(18, 'yoiiusef', 'sldfdfjieji', 'Desktop', 'Samsung Galaxy Tab S5e', 50, 500, 'ddddddddddddddddddddddddddddddddddddd', 400, 'no', '2021-04-26 23:06:00', '2021-04-23 23:06:00'),
(19, 'fahmed', '123ftye', 'tablet', 'IBM Think pad L430 Core i5', 512, 1024, 'How every this is test about is ', 2500, 'no', '2021-04-22 17:53:00', '2021-04-22 17:53:00'),
(20, 'ahmed khaled', '1234ff', 'tablet', 'IBM Think pad L430 Core i5', 512, 1024, 'screen damegend , any no responce when open ', 210, 'no', '2021-04-16 17:59:00', '2021-04-22 17:59:00'),
(21, 'ahmed', '1234', 'tablet', 'Samsung Galaxy Tab S5e', 512, 1024, 'ddddddddddddddddddddddddddddddddddddddddddddddddddddddddd', 2500, 'no', '2021-04-21 15:46:00', '2021-04-14 15:47:00'),
(22, 'ahmed', '1234', 'tablet', 'Samsung Galaxy Tab S5e', 512, 1024, 'ddddddddddddddddddddddddddddddddddddddddddddddddddddddddd', 2500, 'no', '2021-04-21 15:46:00', '2021-04-14 15:47:00'),
(23, 'ahmed', '1234', 'tablet', 'Samsung Galaxy Tab S5e', 512, 1024, 'ddddddddddddddddddddddddddddddddddddddddddddddddddddddddd', 2500, 'no', '2021-04-21 15:46:00', '2021-04-14 15:47:00'),
(24, 'ahmed', '1234', 'tablet', 'Samsung Galaxy Tab S5e', 512, 1024, 'ddddddddddddddddddddddddddddddddddddddddddddddddddddddddd', 2500, 'no', '2021-04-21 15:46:00', '2021-04-14 15:47:00'),
(25, 'sdfe', 'sldfdfjieji', 'Desktop', 'IBM Think pad L430 Core i5', 8, 100, 'sadfddddddddddddddddddddddddd', 120, 'no', '2021-04-24 18:30:00', '2021-04-23 18:30:00'),
(26, 'cmd', '123ss', 'tablet', 'HP Pavilion i5 7th Gen. Laptop', 4, 80, 'ddd           dddddddddddd                  dddddddddddddd           ', 100, 'no', '2021-04-21 22:53:00', '2021-04-21 22:53:00'),
(27, 'cmd', '123ss', 'tablet', 'HP Pavilion i5 7th Gen. Laptop', 4, 80, 'ddd           dddddddddddd                  dddddddddddddd           ', 100, 'no', '2021-04-21 22:53:00', '2021-04-21 22:53:00'),
(28, 'ahmed d', '123ss', 'tablet', 'HP Pavilion i5 7th Gen. Laptop', 8, 215, 'hp hp .                                             .                                                 .                                                     ..                        .                     . ', 50, 'no', '2021-04-18 04:09:00', '2021-04-19 04:09:00'),
(29, 'ahmed d', '123ss', 'tablet', 'HP Pavilion i5 7th Gen. Laptop', 8, 215, 'hp hp .                                             .                                                 .                                                     ..                        .                     . ', 50, 'no', '2021-04-18 04:09:00', '2021-04-19 04:09:00'),
(30, 'ahmed d', '123ss', 'tablet', 'HP Pavilion i5 7th Gen. Laptop', 8, 215, 'hp hp .                                             .                                                 .                                                     ..                        .                     . ', 50, 'no', '2021-04-18 04:09:00', '2021-04-19 04:09:00'),
(31, 'ahmed d', '123ss', 'tablet', 'HP Pavilion i5 7th Gen. Laptop', 8, 215, 'hp hp .                                             .                                                 .                                                     ..                        .                     . ', 50, 'no', '2021-04-18 04:09:00', '2021-04-19 04:09:00'),
(32, 'ahmed d', '123ss', 'tablet', 'HP Pavilion i5 7th Gen. Laptop', 8, 215, 'hp hp .                                             .                                                 .                                                     ..                        .                     . ', 50, 'no', '2021-04-18 04:09:00', '2021-04-19 04:09:00'),
(33, 'ahmed d', '123ss', 'tablet', 'HP Pavilion i5 7th Gen. Laptop', 8, 215, 'hp hp .                                             .                                                 .                                                     ..                        .                     . ', 50, 'no', '2021-04-18 04:09:00', '2021-04-19 04:09:00');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `UserID` int(11) NOT NULL,
  `email` varchar(254) CHARACTER SET utf8 NOT NULL,
  `username` varchar(254) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `password` varchar(128) NOT NULL,
  `create_at` varchar(254) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`UserID`, `email`, `username`, `phone`, `password`, `create_at`) VALUES
(21, 'dfeddddddddddd@gmial.com', 'test', '0507859778', '4297f44b13955235245b2497399d7a93', '2021-04-17 21:45:02'),
(22, 'yousef0sarkar@gmail.com', 'yousef sarkar', '0507859778', 'e10adc3949ba59abbe56e057f20f883e', '2021-04-17 21:46:09'),
(25, 'yousef10sarkar@gmail.com', 'yousef sarkar', '0507859778', '96e79218965eb72c92a549dd5a330112', '2021-04-17 21:53:12'),
(29, 'yousef10sarkadr@gmail.com', 'yousef sarkar', '0507859778', '96e79218965eb72c92a549dd5a330112', '2021-04-17 22:05:17'),
(47, 'yousef@gmail.com', 'yousef Mohammed', '0591234561', 'e10adc3949ba59abbe56e057f20f883e', '2021-04-18 01:53:38'),
(48, 'yousef2@gmail.com', 'yousef Mohammed', '0591234561', 'b4e7a0e5fe84ad35fb5f95b9ceeac79', '2021-04-18 01:55:16'),
(62, 'df1@gmail.com', 'yousef sarkar', '0507859778', '96e79218965eb72c92a549dd5a330112', '2021-04-18 02:05:25'),
(67, 'ak5@gmail.com', 'ahmed_sami', '0512312311', '96e79218965eb72c92a549dd5a330112', '2021-04-18 02:08:30'),
(70, 'd@gmail.com', 'ah123', '0500507895', '4297f44b13955235245b2497399d7a93', '2021-04-18 02:10:31'),
(74, 'sd1d@test.com', 'yousef sarkar', '0507891235', 'b4e7a0e5fe84ad35fb5f95b9ceeac79', '2021-04-18 02:12:17'),
(83, 'you@gmail.con', 'yousef sarkar', '0507859778', '96e79218965eb72c92a549dd5a330112', '2021-04-18 02:15:29'),
(85, 'as@gmail.com', 'yousef sarkar', '0502175221', '4297f44b13955235245b2497399d7a93', '2021-04-18 02:16:25'),
(86, 'sds@gmail.com', 'ahcvdef', '0501231231', '4297f44b13955235245b2497399d7a93', '2021-04-18 04:04:48'),
(87, 'd2df@gmail.com', 'ahmed', '0504141423', '4297f44b13955235245b2497399d7a93', '2021-04-18 04:06:35');

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
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`UserID`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `repair`
--
ALTER TABLE `repair`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `UserID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
