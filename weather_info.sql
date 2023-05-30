-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 05, 2023 at 04:16 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `isa_prototype2`
--

-- --------------------------------------------------------

--
-- Table structure for table `weather_info`
--

CREATE TABLE `weather_info` (
  `id` int(6) UNSIGNED NOT NULL,
  `City` varchar(50) DEFAULT NULL,
  `Temperature` float DEFAULT NULL,
  `Weather` varchar(50) DEFAULT NULL,
  `Humidity` float DEFAULT NULL,
  `Pressure` float DEFAULT NULL,
  `Wind_Speed` float DEFAULT NULL,
  `Rainfall` float DEFAULT NULL,
  `Date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `weather_info`
--

INSERT INTO `weather_info` (`id`, `City`, `Temperature`, `Weather`, `Humidity`, `Pressure`, `Wind_Speed`, `Rainfall`, `Date`) VALUES
(50, 'Scottsdale', 23.6, 'clear sky', 24, 1009, 2.2, NULL, '2023-04-30 04:29:28'),
(51, 'Scottsdale', 29.2, 'clear sky', 12, 1004, 6.8, NULL, '2023-05-01 04:46:25'),
(52, 'Scottsdale', 22.2, 'clear sky', 20, 1006, 5.5, NULL, '2023-05-02 03:47:51'),
(53, 'Scottsdale', 23.2, 'clear sky', 24, 1008, 0, NULL, '2023-05-03 03:48:55'),
(54, 'Scottsdale', 20.2, 'overcast clouds', 20, 1008, 7.3, NULL, '2023-05-04 11:49:09'),
(55, 'Scottsdale', 21.5, 'overcast clouds', 22, 1010, 4.12, NULL, '2023-05-05 03:49:14'),
(56, 'Scottsdale', 21.5, 'clear sky', 24, 1010, 4.12, NULL, '2023-05-05 03:49:29'),
(57, 'Scottsdale', 21.5, 'clear sky', 24, 1010, 4.12, NULL, '2023-05-05 03:49:50'),
(58, 'Scottsdale', 19.97, 'clear sky', 27, 1011, 3.09, NULL, '2023-05-05 05:09:39'),
(59, 'Scottsdale', 19.97, 'clear sky', 27, 1011, 3.09, NULL, '2023-05-05 05:10:34'),
(60, 'Scottsdale', 19.97, 'clear sky', 27, 1011, 3.09, NULL, '2023-05-05 05:10:58'),
(61, 'Scottsdale', 19.97, 'clear sky', 27, 1011, 3.09, NULL, '2023-05-05 05:11:06'),
(62, 'Scottsdale', 19.97, 'clear sky', 27, 1011, 3.09, NULL, '2023-05-05 05:14:08'),
(63, 'Scottsdale', 19.97, 'clear sky', 27, 1011, 3.09, NULL, '2023-05-05 05:14:42'),
(64, 'Scottsdale', 19.97, 'clear sky', 27, 1011, 3.09, NULL, '2023-05-05 05:15:42'),
(65, 'Scottsdale', 19.62, 'clear sky', 27, 1011, 3.09, NULL, '2023-05-05 05:28:22'),
(66, 'Scottsdale', 19.47, 'clear sky', 28, 1011, 3.09, NULL, '2023-05-05 05:44:34'),
(67, 'Scottsdale', 19.47, 'clear sky', 28, 1011, 3.09, NULL, '2023-05-05 05:45:41'),
(68, 'Scottsdale', 19.47, 'clear sky', 28, 1011, 3.09, NULL, '2023-05-05 05:46:52'),
(71, 'Scottsdale', 19.07, 'clear sky', 29, 1011, 0.89, NULL, '2023-05-05 05:56:10'),
(72, 'Scottsdale', 19.07, 'clear sky', 29, 1011, 0.89, NULL, '2023-05-05 05:57:03'),
(73, 'Scottsdale', 19.07, 'clear sky', 29, 1011, 0.89, NULL, '2023-05-05 05:57:50'),
(74, 'Scottsdale', 19.07, 'clear sky', 29, 1011, 0.89, NULL, '2023-05-05 06:02:35'),
(75, 'Scottsdale', 19.07, 'clear sky', 29, 1011, 0.89, NULL, '2023-05-05 06:02:58'),
(76, 'Scottsdale', 18.55, 'clear sky', 30, 1011, 1.54, NULL, '2023-05-05 06:21:05'),
(77, 'Scottsdale', 18.55, 'clear sky', 30, 1011, 1.54, NULL, '2023-05-05 06:21:20'),
(78, 'Scottsdale', 18.55, 'clear sky', 30, 1011, 1.54, NULL, '2023-05-05 06:21:35'),
(79, 'Scottsdale', 18.55, 'clear sky', 30, 1011, 1.54, NULL, '2023-05-05 06:21:40'),
(80, 'Scottsdale', 18.55, 'clear sky', 30, 1011, 1.54, NULL, '2023-05-05 06:29:26'),
(81, 'Scottsdale', 18.36, 'clear sky', 30, 1011, 1.54, NULL, '2023-05-05 06:31:08'),
(82, 'Scottsdale', 18.1, 'clear sky', 30, 1011, 0.45, NULL, '2023-05-05 06:41:53'),
(83, 'Scottsdale', 18.1, 'clear sky', 30, 1011, 0.45, NULL, '2023-05-05 06:42:41'),
(84, 'Scottsdale', 17.8, 'clear sky', 32, 1011, 1.79, NULL, '2023-05-05 06:55:36'),
(85, 'Scottsdale', 17.8, 'clear sky', 32, 1011, 1.79, NULL, '2023-05-05 06:56:08'),
(86, 'Scottsdale', 17.8, 'clear sky', 32, 1011, 1.79, NULL, '2023-05-05 06:57:01'),
(87, 'Scottsdale', 17.8, 'clear sky', 32, 1011, 1.79, NULL, '2023-05-05 06:58:53'),
(88, 'Scottsdale', 17.8, 'clear sky', 32, 1011, 1.79, NULL, '2023-05-05 06:59:35'),
(89, 'Scottsdale', 17.8, 'clear sky', 32, 1011, 1.79, NULL, '2023-05-05 07:00:20'),
(90, 'Scottsdale', 17.8, 'clear sky', 32, 1011, 1.79, NULL, '2023-05-05 07:00:40'),
(91, 'Scottsdale', 17.8, 'clear sky', 32, 1011, 1.79, NULL, '2023-05-05 07:01:54'),
(92, 'Scottsdale', 17.8, 'clear sky', 32, 1011, 1.79, NULL, '2023-05-05 07:03:00'),
(93, 'Scottsdale', 17.8, 'clear sky', 32, 1011, 1.79, NULL, '2023-05-05 07:03:47'),
(94, 'Scottsdale', 17.8, 'clear sky', 32, 1011, 1.79, NULL, '2023-05-05 07:04:52');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `weather_info`
--
ALTER TABLE `weather_info`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `weather_info`
--
ALTER TABLE `weather_info`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
