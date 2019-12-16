-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Dec 16, 2019 at 06:09 AM
-- Server version: 5.7.26
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_folio`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_piece`
--

CREATE TABLE `tbl_piece` (
  `ID` tinyint(4) NOT NULL,
  `ProjectID` tinyint(4) NOT NULL,
  `Project` varchar(100) NOT NULL,
  `Description` varchar(400) NOT NULL,
  `Process` varchar(200) NOT NULL,
  `Tools` varchar(200) NOT NULL,
  `Content` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_piece`
--

INSERT INTO `tbl_piece` (`ID`, `ProjectID`, `Project`, `Description`, `Process`, `Tools`, `Content`) VALUES
(1, 1, 'BIG DATA INFOGRAPHIC', 'this is a description', 'process regreg', 'tools rhougre', 'infographic.png'),
(2, 2, 'project 2', 'desc 2', 'process 2', 'tools 2', ''),
(3, 3, 'project 3', 'desc 3', 'process 3', 'tools 3', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_preview`
--

CREATE TABLE `tbl_preview` (
  `ID` tinyint(4) NOT NULL,
  `Project` varchar(100) NOT NULL,
  `ProjKey` varchar(100) NOT NULL,
  `Preview` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_preview`
--

INSERT INTO `tbl_preview` (`ID`, `Project`, `ProjKey`, `Preview`) VALUES
(1, 'BIG DATA INFOGRAPHIC', 'ux/ui', 'infographic_preview.png'),
(2, 'project 2', 'projkey 2', ''),
(3, 'project 3', 'projkey 3', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_piece`
--
ALTER TABLE `tbl_piece`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_preview`
--
ALTER TABLE `tbl_preview`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_piece`
--
ALTER TABLE `tbl_piece`
  MODIFY `ID` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_preview`
--
ALTER TABLE `tbl_preview`
  MODIFY `ID` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
