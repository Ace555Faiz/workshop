-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 23, 2023 at 02:12 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `workshopdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `Booking_ID` int NOT NULL,
  `Booking_Date` date NOT NULL,
  `Booking_Time` time NOT NULL,
  `Created_At` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `User_ID` int NOT NULL,
  `Workshop_ID` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`Booking_ID`, `Booking_Date`, `Booking_Time`, `Created_At`, `User_ID`, `Workshop_ID`) VALUES
(1, '2023-07-26', '10:00:00', '2023-07-19 11:16:34', 7, 2),
(2, '2023-08-16', '06:30:00', '2023-07-19 11:19:24', 11, 1),
(3, '2023-08-02', '19:00:00', '2023-07-19 17:04:25', 12, 1),
(4, '2023-07-21', '08:42:00', '2023-07-20 23:41:22', 7, 2),
(5, '2023-07-21', '08:11:00', '2023-07-21 00:11:40', 7, 1),
(6, '2023-07-22', '08:31:00', '2023-07-21 00:31:33', 7, 1),
(7, '2023-07-28', '17:15:00', '2023-07-21 08:14:22', 7, 1),
(8, '2023-07-28', '17:15:00', '2023-07-21 08:26:02', 7, 1),
(9, '2023-07-22', '16:27:00', '2023-07-21 08:27:09', 7, 1),
(10, '2023-07-22', '08:42:00', '2023-07-21 08:38:39', 7, 1),
(11, '2023-07-22', '05:45:00', '2023-07-21 08:44:06', 7, 1),
(12, '2023-07-26', '10:00:00', '2023-07-22 06:11:24', 7, 2),
(13, '2023-07-26', '22:00:00', '2023-07-22 06:13:28', 7, 2),
(14, '2023-07-26', '10:00:00', '2023-07-22 06:14:02', 7, 2),
(15, '2023-07-26', '10:00:00', '2023-07-22 06:17:17', 7, 2),
(16, '2023-07-26', '10:00:00', '2023-07-22 06:22:17', 7, 2),
(17, '2023-07-26', '10:00:00', '2023-07-22 06:22:41', 7, 2),
(18, '2023-07-26', '10:00:00', '2023-07-22 06:27:17', 7, 2),
(19, '2023-07-26', '10:00:00', '2023-07-22 06:29:01', 7, 2),
(20, '2023-07-26', '10:00:00', '2023-07-22 06:30:55', 7, 2),
(21, '2023-07-26', '10:00:00', '2023-07-22 06:51:47', 7, 2),
(22, '2023-07-26', '10:00:00', '2023-07-22 06:59:25', 7, 2),
(23, '2023-07-26', '10:00:00', '2023-07-22 07:05:17', 7, 1),
(24, '2023-07-26', '10:00:00', '2023-07-22 07:07:06', 7, 2),
(25, '2023-07-26', '10:00:00', '2023-07-22 07:07:48', 7, 2),
(26, '2023-07-26', '10:00:00', '2023-07-22 07:08:37', 7, 2),
(27, '2023-07-26', '10:00:00', '2023-07-22 07:09:08', 7, 2),
(28, '2023-07-26', '10:00:00', '2023-07-22 07:10:08', 7, 2),
(29, '2023-07-26', '07:16:00', '2023-07-22 07:12:09', 7, 2),
(30, '2023-07-04', '05:36:00', '2023-07-22 08:35:21', 7, 1),
(31, '2023-07-22', '08:40:00', '2023-07-22 08:36:33', 7, 1),
(32, '2023-07-22', '20:41:00', '2023-07-22 08:37:55', 7, 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset`
--

CREATE TABLE `password_reset` (
  `id` int NOT NULL,
  `email` varchar(255) NOT NULL,
  `reset_token` varchar(64) NOT NULL,
  `request_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `is_used` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `password_reset`
--

INSERT INTO `password_reset` (`id`, `email`, `reset_token`, `request_time`, `is_used`) VALUES
(1, 'ashrafrosli6b@gmail.com', '40e3a0fd3bbbb0c49da3009c6fe60761792c2ae14d5ecd4bda0b9c38c8711f96', '2023-07-22 01:33:09', 0),
(2, 'mrpotatoes19@gmail.com', '82aaf7190cf49caa6ea1f5b8309c16a25c0b0424c9b3aca9f90e8de10f0c9df2', '2023-07-22 01:46:50', 0),
(3, 'mrpotatoes19@gmail.com', '0673e63d39f8593bee6bc90e42e303f099051f3fe9c72cbc4b08176e8f4a8dfc', '2023-07-22 01:54:14', 0),
(4, 'mrpotatoes19@gmail.com', '8ba2d69fb8cfc4e3129a415efb47b855cf1e206ff2acc5e37d517207d921b7d8', '2023-07-22 01:57:55', 0),
(5, 'mrpotatoes19@gmail.com', '40d4d6e6723ff1a23058288d754aa936a48138d32813adc9d95aca9613f42415', '2023-07-22 01:58:12', 0),
(6, 'mrpotatoes19@gmail.com', '02e3ecebe62ec9b27a5db68009006bbf5435603a9d368ceb4d046026c8819f71', '2023-07-22 02:02:35', 0),
(7, 'mrpotatoes19@gmail.com', '29ceeb88c8e127322147f89f2de359bcd8470fb792d0f6e29a6d757049b3cec1', '2023-07-22 02:05:39', 0),
(8, 'ali58@gmail.com', '8752d49e6d139de64fa3e7cac3e680ab4c783b18e3fdeaaf6d50c97d860731d8', '2023-07-22 02:07:15', 0),
(9, 'ali58@gmail.com', 'f97dee55817fcccdbb1e32eb9a0066e9abca4d80c7817ef5db75e24901ddab8c', '2023-07-22 02:08:05', 0),
(10, 'ali58@gmail.com', '3206819488139d9176794c0270683507b1d45e2b28d9c927032d9532c1a09de5', '2023-07-22 02:09:04', 0),
(11, 'ali58@gmail.com', '2b431a09507ec3d5b0e0b984457f33eca1bc842d97fa1613820cf68ac8faba89', '2023-07-22 02:09:46', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `User_ID` int NOT NULL,
  `profile_picture` mediumblob NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` text NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone_number` varchar(11) NOT NULL,
  `vehicle_type` varchar(50) NOT NULL,
  `license_plate` varchar(10) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `email` varchar(100) NOT NULL,
  `user_type` enum('user','admin') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`User_ID`, `profile_picture`, `username`, `password`, `name`, `address`, `phone_number`, `vehicle_type`, `license_plate`, `created_at`, `updated_at`, `email`, `user_type`) VALUES
(1, '', 'Abu', 'abc123', 'Abu Bin Bakar', 'Lot 566 Kampung Belukar', '0186556890', 'SUV', 'CBD5686', '2023-07-12 02:58:43', '2023-07-12 02:58:43', 'abubeanbakar@gmail.com', 'user'),
(2, '', 'Ash', '12345', 'Ashraf Rosli', 'Lot 3047 Taman Geliga Intan', '0186556890', 'SUV', 'CBD3047', '2023-07-15 21:29:02', '2023-07-15 21:29:02', 'mrpotatoes19@gmail.com', 'user'),
(5, '', 'Raihan', 'abc1234', 'Raihan Kabir', 'Lot 87 Taman Kenangan', '0149571637', 'Sedan', 'CBA8867', '2023-07-16 05:27:56', '2023-07-16 05:27:56', 'rain01@gmail.com', 'user'),
(6, '', 'Ali', '$2y$10$qnwY8FImDkgGjvoB6hWABOOIzBEYk6LUM8qpK9vS67MIvEjv53haW', 'Ali Bin Salman', 'PT3858 Taman Perumahan', '0139588667', 'MPV', 'DDA789', '2023-07-16 07:42:06', '2023-07-16 07:42:06', 'ali58@gmail.com', 'user'),
(7, 0x75706c6f6164732f4a6f686e2e706e67, 'Ahmad888', '$2y$10$ff0obAJy2RF6jT/r9kMXh.GMdxUPOEBP2oppbh6gFurx7u0fv38Au', 'Ahmad Muzakkir', 'No 36 Lorong Taman Tanah Putih 2', '01118687825', 'Sport Car', 'CBS360', '2023-07-16 07:47:29', '2023-07-16 07:47:29', 'muzack@gmail.com', 'user'),
(8, '', 'Amir', '$2y$10$ntKyXt14cxW0JyTV7UejNOvzr/7qrhUhlovIOIPcwXLRl7k5UdOeC', 'Amir Braim', 'Lorong 69, Jalan Karat', '0189986878', 'SUV', 'BRM888', '2023-07-16 17:37:51', '2023-07-16 17:37:51', 'amir69@gmail.com', 'user'),
(9, '', 'Aswad', '$2y$10$kMhpI6XkwngM8CdHcRIJm.06oTq6fhvjErHJQB2NQzMew/hTdI4Je', 'Muhammad Aswad Bin Aziz', '356 Taman Sri Nyior, Jalan Kodiang', '0185764166', '4WD', 'KCE8696', '2023-07-16 22:52:21', '2023-07-16 22:52:21', 'aswad@gmail.com', 'user'),
(10, '', 'Lisa89', '$2y$10$61eifVyMvPG07EhpxXbg9eW7Srl3BfWWQ0OL9k95spMJLDbnA39Qe', 'Lisa Binti Mazlan', 'Jalan Bahagia, Machang, Kelantan', '0128689849', 'SUV', 'LIS1280', '2023-07-18 01:34:25', '2023-07-18 01:34:25', 'lis@gmail.com', 'user'),
(11, '', 'Helmidakbar', '$2y$10$kXw4E4L3wla74Cyk2DRyJ.WcEZ2XAzkHlJt4ki8THcMPGCIbh8Y66', 'Helmi Ottoman ', 'No 537 Kampung MySarah Bahagia', '011456456', '4WD', 'HDB7777', '2023-07-19 19:18:39', '2023-07-19 19:18:39', 'helmihensem@gmail.com', 'user'),
(12, 0x75706c6f6164732f70686f746f5f323032332d30372d32305f32322d33302d31392e6a7067, 'Ikmal56', '$2y$10$DAjUsyf08uXesCKG5kryW.fsJgBCDvyGqog51SBWc4M00gdYEBG7C', 'Muhammad Ikmal Bin Ahbar', 'No 70 Felda Sungai Tekam 27070 Jerantut Pahang', '0185234090', 'Sedan', 'MAL5666', '2023-07-20 01:03:25', '2023-07-20 01:03:25', 'ikmalrezz02@gmail.com', 'user'),
(13, 0x75706c6f6164732f536173756b652e706e67, 'Sasuke07', '$2y$10$Ao1L5F4aDBO5DSbdE.nLd.O4.9LNDxd.Q1KZcYpS8STJfGSHHOJj6', 'Muhammad Farris Bin Kamarsuparin', 'Lot 87 Taman Kenangan', '0129687835', 'Sport Car', 'RIC666', '2023-07-22 17:35:21', '2023-07-22 17:35:21', 'ric.nt@gmail.com', 'user'),
(14, 0x75706c6f6164732f494d472d32303139313131372d5741303033322e6a7067, 'farhan32', '$2y$10$2.APZNvnmL1cOOawy1IMi.pf5.PqAQyI7LYIrX7PfbkMirjBDn0yG', 'Muhammad Farhan Wafiq Bin Rahim', 'Lorong 69, Jalan Karat', '01117543210', 'MPV', 'CAR890', '2023-07-22 17:47:38', '2023-07-22 17:47:38', 'paan32@gmail.com', 'admin'),
(15, 0x75706c6f6164732f494d472d32303139313131362d5741303031312e6a7067, 'Mirul10', '$2y$10$COD0BI4U37U8UvqZln5NOugv4Fp69KQKe/tpdYJ35WM5QK0TQHc9C', 'Amirul Aiman Bin Azman', 'Lorong 10, Taman Kenangan', '014324865', '4WD', 'VAP1888', '2023-07-22 19:19:15', '2023-07-22 19:19:15', 'mirul10@gmail.com', 'admin'),
(16, 0x75706c6f6164732f494d472d32303139313131382d5741303033392e6a7067, 'AbuJa', '$2y$10$IRFbz2xI0WnpTSmGRvCXDuCl/8fs3Vl.VQDdrSS3321dGXA.S4ZyG', 'Abu Bin Ali', 'Lorong 89, Jalan Karat', '0185245009', 'Sedan', 'ABA200', '2023-07-22 20:22:36', '2023-07-22 20:22:36', 'abu02@gmail.com', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `workshop`
--

CREATE TABLE `workshop` (
  `Workshop_ID` int NOT NULL,
  `Workshop_Name` varchar(50) NOT NULL,
  `Location` text NOT NULL,
  `Contact_Info` varchar(11) NOT NULL,
  `Description` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `workshop`
--

INSERT INTO `workshop` (`Workshop_ID`, `Workshop_Name`, `Location`, `Contact_Info`, `Description`) VALUES
(1, 'Ambatukam', 'MySarah Hostel', '6098786534', 'Group Untuk Lelaki Gay'),
(2, 'Al Barakah Garage', 'Kampung Ulu Sat, Machang', '0146758901', 'wak suko2 deh'),
(3, 'Maju Garage', 'Kampung Belukar, Machang', '0186758901', 'sajo2'),
(4, 'Rumah Burung', 'Tepi Rumah Saya', '6098685879', 'Dikhaskan untuk raihan bagi tujuan musim mengawan'),
(5, 'Bottol Garage', 'Kampung Ulu Sat', '609875432', 'A garage specialist in car tuning'),
(6, 'Pok Mat Garage', 'Kampung Sungai Kemuning', '60986858796', 'The old school workshop focusing on workforce not the machine in maintaining the vehicles');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`Booking_ID`),
  ADD KEY `User_ID` (`User_ID`),
  ADD KEY `Workshop_ID` (`Workshop_ID`);

--
-- Indexes for table `password_reset`
--
ALTER TABLE `password_reset`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_reset_token` (`reset_token`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`User_ID`);

--
-- Indexes for table `workshop`
--
ALTER TABLE `workshop`
  ADD PRIMARY KEY (`Workshop_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `Booking_ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `password_reset`
--
ALTER TABLE `password_reset`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `User_ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `workshop`
--
ALTER TABLE `workshop`
  MODIFY `Workshop_ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `booking_ibfk_1` FOREIGN KEY (`User_ID`) REFERENCES `user` (`User_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `booking_ibfk_2` FOREIGN KEY (`Workshop_ID`) REFERENCES `workshop` (`Workshop_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
