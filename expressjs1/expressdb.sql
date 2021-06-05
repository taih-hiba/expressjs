-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 06, 2021 at 12:57 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `expressdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `etudiant`
--

CREATE TABLE `etudiant` (
  `id` int(10) NOT NULL,
  `nom` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `etudiant`
--

INSERT INTO `etudiant` (`id`, `nom`) VALUES
(0, 'abassi zin'),
(1, 'ouahdane'),
(2, 'chaymae');

-- --------------------------------------------------------

--
-- Table structure for table `monuments`
--

CREATE TABLE `monuments` (
  `id` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `latitude` varchar(100) NOT NULL,
  `longitude` varchar(100) NOT NULL,
  `ville` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `monuments`
--

INSERT INTO `monuments` (`id`, `nom`, `latitude`, `longitude`, `ville`) VALUES
(0, 'MELAH', '48.856614', '2.3522219', 'jdida'),
(1, 'ENSA JDIDA', '-7.250977', '32.971804', 'jdida'),
(2, 'DAR', '23.12312', '-23.231231', 'New Haven'),
(4, 'CurrentLocatrion', '-7.52358', '33.58924', 'CASA');

-- --------------------------------------------------------

--
-- Table structure for table `visite`
--

CREATE TABLE `visite` (
  `id` int(11) NOT NULL,
  `visteurs` varchar(100) NOT NULL,
  `monuments` varchar(100) NOT NULL,
  `dateDeVisite` varchar(100) NOT NULL,
  `valid` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `visite`
--

INSERT INTO `visite` (`id`, `visteurs`, `monuments`, `dateDeVisite`, `valid`) VALUES
(1, 'ayoub', 'C\'EST ENSA JDIDA', 'Tue May 04 2021 23:04:38 GMT+0000 (UTC)', 'valid'),
(2, 'jjjj', 'C\'EST ENSA JDIDA', 'Tue May 04 2021 23:06:48 GMT+0000 (UTC)', 'valid');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `etudiant`
--
ALTER TABLE `etudiant`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `monuments`
--
ALTER TABLE `monuments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `visite`
--
ALTER TABLE `visite`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `visite`
--
ALTER TABLE `visite`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
