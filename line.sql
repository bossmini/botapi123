-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 29, 2020 at 10:06 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `line`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `UserID` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `CustomerID` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Surname` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`UserID`, `CustomerID`, `Name`, `Surname`) VALUES
('U1efbc797c7174dd636c047f5ca8eba42', '123ABCD', 'กวนซ้น', 'แซ่เตียน');

-- --------------------------------------------------------

--
-- Table structure for table `log`
--

CREATE TABLE `log` (
  `UserID` text COLLATE utf8_unicode_ci NOT NULL,
  `Text` text COLLATE utf8_unicode_ci NOT NULL,
  `Timestamp` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `log`
--

INSERT INTO `log` (`UserID`, `Text`, `Timestamp`) VALUES
('U1efbc797c7174dd636c047f5ca8eba42', 'สวัสดีครับ', '1564327729309'),
('U1efbc797c7174dd636c047f5ca8eba42', 'ทพสอบ', '1564327735236'),
('U1efbc797c7174dd636c047f5ca8eba42', 'Hello 1234', '1564327738324'),
('U1efbc797c7174dd636c047f5ca8eba42', 'สวัสดีครับ', '1564327924023'),
('U1efbc797c7174dd636c047f5ca8eba42', 'Yo', '1564328241209');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`UserID`(5));

--
-- Indexes for table `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`Timestamp`(15));
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
