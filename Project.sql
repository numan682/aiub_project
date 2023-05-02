-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 03, 2023 at 12:51 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Project`
--

-- --------------------------------------------------------

--
-- Table structure for table `Transaction`
--

CREATE TABLE `Transaction` (
  `id` int(11) NOT NULL,
  `email` varchar(1000) NOT NULL,
  `trx_date` date NOT NULL DEFAULT current_timestamp(),
  `trx_amount` int(11) NOT NULL,
  `trx_name` varchar(11) NOT NULL,
  `trx_type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Transaction`
--

INSERT INTO `Transaction` (`id`, `email`, `trx_date`, `trx_amount`, `trx_name`, `trx_type`) VALUES
(1, 'jhnuman00@gmail.com', '2022-05-03', 1000, 'Numan', 'Send Money'),
(2, 'jhnuman00@gmail.com', '2023-05-03', 100, 'Numan', 'Send Money'),
(3, 'jhnuman00@gmail.com', '2023-05-03', 100, 'Numan', 'Send Money'),
(4, 'jhnuman00@gmail.com', '2023-05-03', 10000, 'bkash', 'Deposit'),
(5, 'jhnuman00@gmail.com', '2023-05-03', 100000, 'rocket', 'Deposit'),
(6, 'jhnuman00@gmail.com', '2023-05-04', 100000, 'Numan Demo', 'Send Money'),
(7, 'jhnuman00@gmail.com', '2023-05-03', 123, 'Numan', 'Send Money');

-- --------------------------------------------------------

--
-- Table structure for table `Users`
--

CREATE TABLE `Users` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `dob` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `confirm_password` varchar(100) NOT NULL,
  `user_type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Users`
--

INSERT INTO `Users` (`id`, `name`, `email`, `gender`, `dob`, `password`, `confirm_password`, `user_type`) VALUES
(1, 'Numan', 'jhnuman00@gmail.com', 'male', '', 'numanand123', 'numanand123', 'Admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Transaction`
--
ALTER TABLE `Transaction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Users`
--
ALTER TABLE `Users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Transaction`
--
ALTER TABLE `Transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `Users`
--
ALTER TABLE `Users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
