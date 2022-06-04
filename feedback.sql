-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 04, 2022 at 02:49 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `feedback`
--

-- --------------------------------------------------------

--
-- Table structure for table `feedbackdata`
--

CREATE TABLE `feedbackdata` (
  `feedback_ID` int(100) NOT NULL,
  `product_ID` int(100) NOT NULL,
  `customer_ID` int(100) NOT NULL,
  `Rating` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `feedbackdata`
--
ALTER TABLE `feedbackdata`
  ADD PRIMARY KEY (`feedback_ID`),
  ADD KEY `customer_ID` (`customer_ID`),
  ADD KEY `product_ID` (`product_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `feedbackdata`
--
ALTER TABLE `feedbackdata`
  MODIFY `feedback_ID` int(100) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `feedbackdata`
--
ALTER TABLE `feedbackdata`
  ADD CONSTRAINT `feedbackdata_ibfk_1` FOREIGN KEY (`customer_ID`) REFERENCES `customer`.`customerdata` (`customer_ID`),
  ADD CONSTRAINT `feedbackdata_ibfk_2` FOREIGN KEY (`product_ID`) REFERENCES `product`.`products1` (`prod_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
