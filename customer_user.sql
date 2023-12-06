-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 06, 2023 at 10:35 AM
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
-- Database: `group4_onlinebookstore`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer_user`
--

CREATE TABLE `customer_user` (
  `user_ID` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `emailAddress` varchar(254) NOT NULL,
  `dateOfBirth` date NOT NULL,
  `gender` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer_user`
--

INSERT INTO `customer_user` (`user_ID`, `username`, `password`, `firstName`, `lastName`, `emailAddress`, `dateOfBirth`, `gender`) VALUES
(1, 'Test', '1234', 'test', 'test', 'test@gmail.com', '2002-12-14', 0),
(2, 'RegisterTesting', 'passwordtest', 'Adam', 'Eve', 'adameve@gmail.com', '2002-12-26', 0),
(3, 'test5', 'test5', 'wter', 'iohiefh', 'esg@gmail.com', '2002-10-14', 0),
(4, 'Test2', 'awdawd', 'dd', 'aa', 'aaaa@gmail.com', '2002-10-14', 1),
(5, 'Test3', 'awdawd', 'dwadw', 'dawd', 'wdadw@gmail.com', '2002-10-14', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer_user`
--
ALTER TABLE `customer_user`
  ADD PRIMARY KEY (`user_ID`),
  ADD UNIQUE KEY `Customer_user_username_b7ab7527_uniq` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer_user`
--
ALTER TABLE `customer_user`
  MODIFY `user_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
