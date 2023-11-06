-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 06, 2023 at 04:27 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `employee`
--

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `empid` int(10) NOT NULL,
  `name` varchar(250) NOT NULL,
  `mobile` varchar(12) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(250) NOT NULL,
  `address` varchar(400) NOT NULL,
  `job_role` varchar(20) NOT NULL,
  `isActive` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`empid`, `name`, `mobile`, `email`, `password`, `address`, `job_role`, `isActive`) VALUES
(1, 'komal', '7620174532', 'komalmay23@gmai.com', '$2b$10$XXBTec2cieirNLqkl9/Y9.WwlNE2VRmr410FYVD9uY42pKQKCTNt6', 'pune', 'nodejs devloper', 1),
(2, 'komal', '7620174532', 'komalmay2@gmail.com', '$2b$10$TeGuYghzHXLEheQN.Bcpue8amFcR3O.4jX2Ahb9Z8K3y7fi1lS15i', 'pune', 'nodejs devloper', 1),
(3, 'komal', '7620174532', 'komalmay1@gmail.com', '$2b$10$4zYvljaJnN1dUVnlUIypq.UrN/fzX70v2EbqK6eJXKGQ3z0Ltr47W', 'pune', 'nodejs devloper', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`empid`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `empid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
