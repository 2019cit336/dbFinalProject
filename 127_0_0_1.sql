-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 17, 2019 at 10:04 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `flags`
--
CREATE DATABASE IF NOT EXISTS `flags` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `flags`;

-- --------------------------------------------------------

--
-- Table structure for table `flags`
--

CREATE TABLE `flags` (
  `ID` int(5) NOT NULL,
  `type` varchar(255) NOT NULL,
  `Flag` varchar(255) NOT NULL,
  `Points` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `flags`
--

INSERT INTO `flags` (`ID`, `type`, `Flag`, `Points`) VALUES
(1, 'utility', '5ab255e310de485834221399e90c0c7f', 15),
(2, 'hospital', '9e17b797c99e959feb58a3b3ace48163', 15),
(3, 'transitR', '8a3178ba82a89515954fdf11521b25f4', 15),
(4, 'transitA', '35b1ff758c8c706994f7883a89351821', 35),
(5, 'powerG', 'df552eb28dcd0a9345ce207e0f598b2e', 35),
(6, 'powerN', '68ec6e62c5fcbbb68b5ce093bdd60717', 100);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `flags`
--
ALTER TABLE `flags`
  ADD PRIMARY KEY (`ID`);
--
-- Database: `lab6_data`
--
CREATE DATABASE IF NOT EXISTS `lab6_data` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `lab6_data`;

-- --------------------------------------------------------

--
-- Table structure for table `markers`
--

CREATE TABLE `markers` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `address` varchar(80) NOT NULL,
  `lat` float(10,6) NOT NULL,
  `lng` float(10,6) NOT NULL,
  `type` varchar(30) NOT NULL,
  `description` varchar(300) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `markers`
--

INSERT INTO `markers` (`id`, `name`, `address`, `lat`, `lng`, `type`, `description`) VALUES
(1, 'Water Treatment Plant', '3895  Snowbird Lane, Small-Town, USA', 40.044376, -83.167770, 'utility', 'Please add a location (IP Addresss) & description of the tasks'),
(2, 'Nuclear Power Plant', '76 Wilford Street, Small-Town, USA', 39.794983, -83.155144, 'powerN', 'Please add a location (IP Addresss) & description of the tasks'),
(3, 'Hospital', '4796  Clark Street, Small-Town, USA', 39.979519, -82.842537, 'hospital', 'Please add a location (IP Addresss) & description of the tasks'),
(4, 'Air Port', '7A, 2 Huntley Street, Small-Town, USA', 39.822102, -82.940018, 'transitA', 'Please add a location (IP Addresss) & description of the tasks'),
(5, 'Rail Station', '16 Foster Street, Small-Town, USA', 39.973320, -82.995689, 'transitR', 'Please add a location (IP Addresss) & description of the tasks'),
(6, 'Power Grid', '43 Macpherson Street, Small-Town, USA', 39.974689, -83.032928, 'powerG', 'Please add a location (IP Addresss) & description of the tasks');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `markers`
--
ALTER TABLE `markers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `markers`
--
ALTER TABLE `markers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
