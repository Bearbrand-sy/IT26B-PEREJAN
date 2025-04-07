-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 07, 2025 at 08:21 AM
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
-- Database: `group1ddl`
--

-- --------------------------------------------------------

--
-- Table structure for table `orderdetails`
--

CREATE TABLE `orderdetails` (
  `ProductID` int(10) NOT NULL,
  `OrderID` int(5) NOT NULL,
  `Quantity` int(99) NOT NULL,
  `UnitPrice` double NOT NULL,
  `Discount` double NOT NULL,
  `StatusID` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `OrderID` int(5) NOT NULL,
  `EmployeeID` int(8) NOT NULL,
  `CustomerID` int(8) NOT NULL,
  `Customer` varchar(25) NOT NULL,
  `OrderDate` date DEFAULT NULL,
  `Shipped` date DEFAULT NULL,
  `ShipperID` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `ID` int(5) NOT NULL,
  `ProductCode` int(12) NOT NULL,
  `ProductName` varchar(50) NOT NULL,
  `Description` varchar(100) DEFAULT NULL,
  `StandardCost` int(10) NOT NULL,
  `ListPrice` int(15) NOT NULL,
  `ReorderLevel` int(5) NOT NULL,
  `TargetLevel` int(5) NOT NULL,
  `QuantityPerUnit` int(99) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD UNIQUE KEY `unique_id` (`OrderID`,`ProductID`),
  ADD KEY `fk_id` (`ProductID`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`OrderID`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`ID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD CONSTRAINT `fk_id` FOREIGN KEY (`ProductID`) REFERENCES `products` (`ID`),
  ADD CONSTRAINT `fk_id2` FOREIGN KEY (`OrderID`) REFERENCES `orders` (`OrderID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
