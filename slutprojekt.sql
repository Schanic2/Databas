-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 24, 2019 at 11:34 AM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `slutprojekt`
--

-- --------------------------------------------------------

--
-- Table structure for table `anvandare`
--

CREATE TABLE `anvandare` (
  `anvnamn` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `kundID` int(11) NOT NULL,
  `password` varchar(100) COLLATE utf8_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data for table `anvandare`
--

INSERT INTO `anvandare` (`anvnamn`, `kundID`, `password`) VALUES
('Johan', 3, 'Bergstrand');

-- --------------------------------------------------------

--
-- Table structure for table `blogg`
--

CREATE TABLE `blogg` (
  `commentID` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_swedish_ci NOT NULL,
  `text` longtext COLLATE utf8_swedish_ci NOT NULL,
  `date` varchar(255) COLLATE utf8_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anvandare`
--
ALTER TABLE `anvandare`
  ADD PRIMARY KEY (`kundID`),
  ADD KEY `password` (`password`);

--
-- Indexes for table `blogg`
--
ALTER TABLE `blogg`
  ADD PRIMARY KEY (`commentID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `anvandare`
--
ALTER TABLE `anvandare`
  MODIFY `kundID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `blogg`
--
ALTER TABLE `blogg`
  MODIFY `commentID` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
