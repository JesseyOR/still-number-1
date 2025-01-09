-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 09, 2025 at 04:07 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `real estate business`
--

-- --------------------------------------------------------

--
-- Table structure for table `properties`
--

CREATE TABLE `properties` (
  `PropertyID` int(11) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `City` varchar(100) NOT NULL,
  `Type` varchar(50) DEFAULT NULL CHECK (`Type` in ('Residential','Commercial','Industrial')),
  `Size` int(11) NOT NULL,
  `Price` decimal(10,2) NOT NULL,
  `Status` varchar(20) DEFAULT NULL CHECK (`Status` in ('Available','Sold','Rented'))
) ;

--
-- Dumping data for table `properties`
--

INSERT INTO `properties` (`PropertyID`, `Address`, `City`, `Type`, `Size`, `Price`, `Status`) VALUES
(1, 'Plot 12, Wampewo Avenue, Kololo', 'Kampala', 'Residential', 2500, 15000000.00, 'Available'),
(2, 'Plot 5, Bwaise Road, Bwaise', 'Kampala', 'Commercial', 1800, 5000000.00, 'Sold'),
(3, 'Plot 10, Kisementi, Kamwokya', 'Kampala', 'Residential', 1200, 10000000.00, 'Rented'),
(4, 'Plot 15, Kabalagala, Makindye', 'Kampala', 'Residential', 3500, 25000000.00, 'Available'),
(5, 'Plot 3, Bugolobi Road, Bugolobi', 'Kampala', 'Commercial', 2800, 7000000.00, 'Available'),
(6, 'Plot 22, Mbuya, Nakawa', 'Kampala', 'Industrial', 8000, 15000000.00, 'Sold'),
(7, 'Plot 8, Entebbe Road, Nansana', 'Kampala', 'Residential', 1500, 12000000.00, 'Rented'),
(8, 'Plot 14, Old Kampala, Kampala', 'Kampala', 'Commercial', 2200, 4500000.00, 'Available'),
(9, 'Plot 6, Ntinda, Nakawa', 'Kampala', 'Residential', 2100, 13000000.00, 'Sold'),
(10, 'Plot 4, Makerere Hill Road, Makerere', 'Kampala', 'Industrial', 12000, 35000000.00, 'Available');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `properties`
--
ALTER TABLE `properties`
  ADD PRIMARY KEY (`PropertyID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
