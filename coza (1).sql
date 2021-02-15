-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 15, 2021 at 08:44 PM
-- Server version: 5.7.26
-- PHP Version: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `coza`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `username` varchar(1000) NOT NULL,
  `password` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'ChildCare', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

DROP TABLE IF EXISTS `attendance`;
CREATE TABLE IF NOT EXISTS `attendance` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `name` varchar(1000) NOT NULL,
  `image` varchar(100) NOT NULL,
  `gender` varchar(1000) NOT NULL,
  `dob` varchar(1000) NOT NULL,
  `Pid` varchar(4) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`id`, `name`, `image`, `gender`, `dob`, `Pid`, `date_created`) VALUES
(1, 'James john Jimi', 'IMG_1985.jpg', 'Female', '2021-01-23', '2', '2021-02-06 05:03:04');

-- --------------------------------------------------------

--
-- Table structure for table `children`
--

DROP TABLE IF EXISTS `children`;
CREATE TABLE IF NOT EXISTS `children` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `name` varchar(1000) NOT NULL,
  `image` varchar(100) NOT NULL,
  `gender` varchar(1000) NOT NULL,
  `dob` date NOT NULL,
  `Pid` varchar(4) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `children`
--

INSERT INTO `children` (`id`, `name`, `image`, `gender`, `dob`, `Pid`, `date_created`) VALUES
(5, 'Tye Tribbet', '01.jpg', 'Male', '1966-06-15', '1', '2021-02-06 05:03:04'),
(4, 'Mojola Ike', '17F24583-DD5B-4475-9FF6-2EA629932647L0001.jpeg', 'Male', '2020-12-28', '3', '2021-02-06 05:03:04'),
(21, 'Jimi Abraham', '07.jpg', 'Female', '2021-02-11', '1', '2021-02-07 01:05:58'),
(23, 'Jide', 'FB_IMG_1571381623126.jpg', 'Male', '2021-02-09', '3', '2021-02-09 02:01:12'),
(24, 'cubana', '01e47845e81c4994b12646a852258beb.jpg', 'Female', '2021-02-16', '1', '2021-02-09 02:25:49');

-- --------------------------------------------------------

--
-- Table structure for table `parents`
--

DROP TABLE IF EXISTS `parents`;
CREATE TABLE IF NOT EXISTS `parents` (
  `Pid` int(4) NOT NULL AUTO_INCREMENT,
  `Pname` varchar(1000) NOT NULL,
  `username` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `dept` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`Pid`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `parents`
--

INSERT INTO `parents` (`Pid`, `Pname`, `username`, `address`, `dept`, `phone`, `email`, `password`) VALUES
(1, 'Jimi Abraham', 'admin', 'Abuja Nigeria', 'Protocol', '07061050176', 'adesokanjimmy@gmail.com', 'admin'),
(6, 'Adefaga Favour', 'favour', 'Apo Resettlemts area', 'Sparkles', '0940342', 're@iok', 'favour'),
(3, 'Mr Tobi', 'Tobi', 'awolowo, Ibadan', 'Protocol', '0904747 ', 'to@ik', '4321'),
(5, '', '', '', 'Nil', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `queue`
--

DROP TABLE IF EXISTS `queue`;
CREATE TABLE IF NOT EXISTS `queue` (
  `Qid` int(11) NOT NULL AUTO_INCREMENT,
  `status` varchar(100) NOT NULL,
  `Pid` varchar(4) NOT NULL,
  PRIMARY KEY (`Qid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
