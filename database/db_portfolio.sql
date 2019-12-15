-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Dec 15, 2019 at 01:35 AM
-- Server version: 5.7.26
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_portfolio`
--

-- --------------------------------------------------------

--
-- Table structure for table `portfolio_pieces`
--

CREATE TABLE `portfolio_pieces` (
  `ID` int(10) NOT NULL,
  `Project` varchar(100) NOT NULL,
  `Preview` varchar(100) NOT NULL,
  `Description` varchar(400) NOT NULL,
  `Process` varchar(200) NOT NULL,
  `Tools` varchar(200) NOT NULL,
  `Content` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `portfolio_pieces`
--

INSERT INTO `portfolio_pieces` (`ID`, `Project`, `Preview`, `Description`, `Process`, `Tools`, `Content`) VALUES
(1, 'BIG DATA INFOGRAPHIC', 'infographic_preview.png', 'dummy desc', 'process', 'tools', 'infographic.png'),
(2, '', '', '', '', '', ''),
(3, '', '', '', '', '', ''),
(4, '', '', '', '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `portfolio_pieces`
--
ALTER TABLE `portfolio_pieces`
  ADD PRIMARY KEY (`ID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
