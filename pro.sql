-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 28, 2019 at 01:07 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pro`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `spGettest` ()  BEGIN
SELECT Id, Stn, Stroll, Class, Marks, (Marks/5) AS Percentage FROM `test`;
END$$

--
-- Functions
--
CREATE DEFINER=`root`@`localhost` FUNCTION `tandan` (`f` INT) RETURNS INT(11) BEGIN
DECLARE func int;
DECLARE x int;
SET x := f;
SET func = (SELECT (Marks/5) FROM `test` WHERE Id = x);
RETURN func;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE `test` (
  `Id` int(11) NOT NULL,
  `Stn` varchar(50) DEFAULT NULL,
  `Stroll` int(11) DEFAULT NULL,
  `Class` varchar(15) DEFAULT NULL,
  `Marks` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test`
--

INSERT INTO `test` (`Id`, `Stn`, `Stroll`, `Class`, `Marks`) VALUES
(1, 'Mahesh Tandan', 100, '12th', 458),
(2, 'Kiran', 101, '11th', 489),
(3, 'Sudhanshu', 102, '9th', 300),
(4, 'Rahul', 103, '10th', 410);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `test`
--
ALTER TABLE `test`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
