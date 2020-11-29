-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 28, 2020 at 06:59 PM
-- Server version: 5.7.24
-- PHP Version: 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `transport`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `Email` varchar(30) DEFAULT NULL,
  `Password` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`Email`, `Password`) VALUES
('admin@gmail.com', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

DROP TABLE IF EXISTS `bookings`;
CREATE TABLE IF NOT EXISTS `bookings` (
  `Route` varchar(30) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `Email` varchar(30) DEFAULT NULL,
  `Time` varchar(10) DEFAULT NULL,
  `Code` varchar(30) DEFAULT NULL,
  `SeatNo` varchar(5) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`Route`, `Date`, `Email`, `Time`, `Code`, `SeatNo`) VALUES
('Kampala-Kasese', '2019-07-12', 'andrew@gmail.com', '12:00 am', NULL, NULL),
('Kampala-Mubende', '2019-07-12', 'andrew@gmail.com', '11:00 am', NULL, NULL),
('Kampala-Masaka', '2019-07-13', 'andrew@gmail.com', '10:00 am', NULL, NULL),
('Kampala-Masaka', '2019-07-13', 'andrew@gmail.com', '10:00 am', NULL, NULL),
('Kampala-Fort Portal', '2019-07-13', 'admin@gmail.com', '10:00 am', NULL, NULL),
('Kampala-Masindi', '2019-07-13', 'admin@gmail.com', '10:00 am', NULL, NULL),
('Kampala-Masaka', '2019-07-14', 'andrew@gmail.com', '10:00 am', NULL, NULL),
('Kampala-Masaka', '2019-07-14', 'andrew@gmail.com', '10:00 am', NULL, NULL),
('Kampala-Masaka', '2019-07-14', 'andrew@gmail.com', '10:00 am', NULL, NULL),
('Kampala-Masaka', '2019-07-14', 'conductor@gmail.com', '10:00 am', NULL, NULL),
('Kampala-Masaka', '2019-07-14', 'admin@gmail.com', '10:00 am', NULL, NULL),
('Kampala-Masaka', '2019-07-14', 'admin@gmail.com', '10:00 am', NULL, NULL),
('Kampala-Masaka', '2019-07-14', 'admin@gmail.com', '10:00 am', NULL, NULL),
('Kampala-Masaka', '2019-07-14', 'admin@gmail.com', '10:00 am', NULL, NULL),
('Kampala-Busunju', '2019-07-15', 'andrew@gmail.com', '8:00 am', NULL, NULL),
('Kampala-Katanabirwa', '2019-07-15', 'admin@gmail.com', '10:00 am', NULL, NULL),
('Kampala-Katera', '2019-07-15', 'admin@gmail.com', '11:00 am', NULL, NULL),
('Kampala-Fort Portal', '2019-07-15', 'admin@gmail.com', '10:00 am', NULL, NULL),
('Kampala-Katera', '2019-07-15', 'admin@gmail.com', '11:00 am', NULL, NULL),
('Kampala-Bwera', '2019-07-15', 'admin@gmail.com', '10:00 am', NULL, NULL),
('Kampala-Bwera', '2019-07-15', 'admin@gmail.com', '10:00 am', NULL, NULL),
('Kampala-Kikonda', '2019-07-15', 'andrew@gmail.com', '11:00 am', NULL, NULL),
('Kampala-Masindi', '2019-07-15', 'andrew@gmail.com', '10:00 am', NULL, NULL),
('Kampala-Masindi', '2019-07-15', 'andrew@gmail.com', '10:00 am', NULL, NULL),
('Kampala-Masindi', '2019-07-15', 'andrew@gmail.com', '10:00 am', NULL, NULL),
('Kampala-Masindi', '2019-07-15', 'andrew@gmail.com', '10:00 am', NULL, NULL),
('Kampala-Masindi', '2019-07-15', 'andrew@gmail.com', '10:00 am', NULL, NULL),
('Kampala-Masindi', '2019-07-15', 'andrew@gmail.com', '10:00 am', NULL, NULL),
('Kampala-Mubende', '2019-07-15', 'admin@gmail.com', '10:00 am', NULL, NULL),
('Kampala-Kyenda', '2019-07-16', 'andrew@gmail.com', '9:00 am', NULL, NULL),
('Kampala-Kyenda', '2019-07-16', 'andrew@gmail.com', '9:00 am', NULL, NULL),
('Kampala-Kipapati', '2019-07-16', 'andrew@gmail.com', '11:00 am', NULL, NULL),
('Kampala-Katanabirwa', '2019-07-16', 'andrew@gmail.com', '10:00 am', NULL, NULL),
('Kampala-Masindi', '2019-07-17', 'admin@gmail.com', '11:00 am', NULL, NULL),
('Kampala-Bukwiri', '2019-07-17', 'admin@gmail.com', '10:00 am', NULL, NULL),
('Kampala-Masindi', '2019-07-14', 'isaac@gmail.com', '10:00 am', NULL, NULL),
('Kampala-Katanabirwa', '2019-11-17', 'admin@gmail.com', '10:00 am', NULL, NULL),
('Kampala-Mutuba', '2019-07-17', 'admin@gmail.com', '9:00 am', NULL, NULL),
('Kampala-Kyenda', '2019-07-18', 'admin@gmail.com', '12:00 pm', NULL, NULL),
('Kampala-Katanabirwa', '2019-07-18', 'admin@gmail.com', '10:00 am', NULL, NULL),
('Kampala-Katera', '2019-07-18', 'admin@gmail.com', '9:00 am', NULL, NULL),
('Kampala-Lwamata', '2019-07-18', 'admin@gmail.com', '10:00 am', NULL, NULL),
('Kampala-Kikonda', '2019-07-18', 'admin@gmail.com', '9:00 am', NULL, NULL),
('Kampala-Kyenda', '2019-07-18', 'admin@gmail.com', '9:00 am', NULL, NULL),
('Kampala-Kaiso', '2019-07-18', 'admin@gmail.com', '10:00 am', NULL, NULL),
('Kampala-Kipapati', '2019-10-18', 'admin@gmail.com', '7:00 am', NULL, NULL),
('Kampala-Katanabirwa', '2019-07-18', 'admin@gmail.com', '10:00 am', NULL, NULL),
('Kampala-Wabigalo', '2019-07-18', 'admin@gmail.com', '10:00 am', NULL, NULL),
('Kampala-Bukwiri', '2019-07-18', 'admin@gmail.com', '9:00 am', NULL, NULL),
('Kampala-Busunju', '2019-07-18', 'admin@gmail.com', '11:00 am', NULL, NULL),
('Kampala-Lwamata', '2019-07-18', 'admin@gmail.com', '9:00 am', NULL, NULL),
('Kampala-Fort Portal', '2019-07-18', 'admin@gmail.com', '10:00 am', NULL, NULL),
('Kampala-Mubende', '2019-07-18', 'admin@gmail.com', '10:00 am', NULL, NULL),
('Kampala-Bukomero', '2019-07-18', 'admin@gmail.com', '11:00 am', NULL, NULL),
('Kampala-Mubende', '2019-07-18', 'admin@gmail.com', '9:00 am', NULL, NULL),
('Kampala-Lwamata', '2019-07-18', 'admin@gmail.com', '9:00 am', NULL, NULL),
('Kampala-Kasese', '2019-07-18', 'admin@gmail.com', '10:00 am', NULL, NULL),
('Kampala-Kiboga', '2019-07-19', 'admin@gmail.com', '8:00 am', NULL, NULL),
('Kampala-Bukwiri', '2019-07-19', 'admin@gmail.com', '10:00 am', NULL, NULL),
('Kampala-Kasese', '2019-07-19', 'admin@gmail.com', '10:00 am', NULL, NULL),
('Kampala-Mubende', '2019-07-19', 'admin@gmail.com', '12:00 pm', NULL, NULL),
('Kampala-Kiboga', '2019-07-19', 'admin@gmail.com', '12:00 pm', NULL, NULL),
('Kampala-Butema', '2019-07-21', 'admin@gmail.com', '9:00 am', NULL, NULL),
('Kampala-Kikonda', '2019-07-21', 'admin@gmail.com', '8:00 am', NULL, NULL),
('Kampala-Mubende', '2019-07-21', 'admin@gmail.com', '9:00 am', NULL, NULL),
('Kampala-Hoima', '2019-07-21', 'admin@gmail.com', '9:00 am', NULL, NULL),
('Kampala-Wobulenzi', '2019-07-28', 'admin@gmail.com', '9:00 am', NULL, NULL),
('Kampala-Kipapati', '2019-07-30', 'admin@gmail.com', '8:00 am', NULL, NULL),
('Kampala-Kasese', '2019-07-30', 'admin@gmail.com', '9:00 am', NULL, NULL),
('Kampala-Masindi', '2019-08-14', 'andrew@gmail.com', '9:00 am', '647581', NULL),
('route', '2020-01-07', 'time', 'email', '1294956', NULL),
('route', '2020-01-07', 'time', 'email', '1294956', NULL),
('route', '2020-01-07', 'time', 'email', '1294956', NULL),
('route', '2020-01-07', 'time', 'email', '1294956', NULL),
('route', '2020-01-07', 'time', 'email', '1294956', NULL),
('route', '2020-01-07', 'time', 'email', '1294956', NULL),
('route', '2020-01-07', 'time', 'email', '1294956', NULL),
('route', '2020-01-07', 'time', 'email', '1294956', NULL),
('route', '2020-01-07', 'time', 'email', '1294956', NULL),
('route', '2020-01-07', 'time', 'email', '1294956', NULL),
('route', '2020-01-07', 'time', 'email', '1294956', NULL),
('route', '2020-01-07', 'time', 'email', '1294956', NULL),
('route', '2020-01-07', 'time', 'email', '1294956', NULL),
('route', '2020-01-07', 'time', 'email', '1294956', NULL),
('route', '2020-01-07', 'time', 'email', '1294956', NULL),
('route', '2020-01-07', 'time', 'email', '1294956', NULL),
('route', '2020-01-07', 'time', 'email', '1294956', NULL),
('route', '2020-01-07', 'time', 'email', '1294956', NULL),
('route', '2020-01-07', 'time', 'email', '1294956', NULL),
('route', '2020-01-07', 'time', 'email', '1294956', NULL),
('route', '2020-01-07', 'time', 'email', '1294956', NULL),
('route', '2020-01-07', 'time', 'email', '1294956', NULL),
('route', '2020-01-07', 'time', 'email', '1294956', NULL),
('route', '2020-01-07', 'time', 'email', '1294956', NULL),
('route', '2020-01-07', 'time', 'email', '1294956', NULL),
('route', '2020-01-07', 'time', 'email', '1294956', NULL),
('route', '2020-01-07', 'time', 'email', '1294956', NULL),
('route', '2020-01-07', 'time', 'email', '1294956', NULL),
('route', '2020-01-07', 'time', 'email', '1294956', NULL),
('route', '2020-01-07', 'time', 'email', '1294956', NULL),
('route', '2020-01-07', 'time', 'email', '1294956', NULL),
('route', '2020-01-07', 'time', 'email', '1294956', NULL),
('route', '2020-01-07', 'time', 'email', '1294956', NULL),
('route', '2020-01-07', 'time', 'email', '1294956', NULL),
('route', '2020-01-07', 'time', 'email', '1294956', NULL),
('route', '2020-01-07', 'time', 'email', '1294956', NULL),
('route', '2020-01-07', 'time', 'email', '1294956', NULL),
('route', '2020-01-07', 'time', 'email', '1294956', NULL),
('route', '2020-01-07', 'time', 'email', '1294956', NULL),
('route', '2020-01-07', 'time', 'email', '1294956', NULL),
('route', '2020-01-07', 'time', 'email', '1294956', NULL),
('route', '2020-01-07', 'time', 'email', '1294956', NULL),
('route', '2020-01-07', 'time', 'email', '1294956', NULL),
('route', '2020-01-07', 'time', 'email', '1294956', NULL),
('route', '2020-01-07', 'time', 'email', '1294956', NULL),
('route', '2020-01-07', 'time', 'email', '1294956', NULL),
('route', '2020-01-07', 'time', 'email', '1294956', NULL),
('route', '2020-01-07', 'time', 'email', '1294956', NULL),
('route', '2020-01-07', 'time', 'email', '1294956', NULL),
('route', '2020-01-07', 'time', 'email', '1294956', NULL),
('route', '2020-01-07', 'time', 'email', '1294956', NULL),
('route', '2020-01-07', 'time', 'email', '1294956', NULL),
('route', '2020-01-07', 'time', 'email', '1294956', NULL),
('route', '2020-01-07', 'time', 'email', '1294956', NULL),
(NULL, NULL, 'Seat No.', NULL, 'myka@gmail.com', '123'),
(NULL, NULL, 'Seat No.', NULL, 'myka@gmail.com', '123'),
(NULL, NULL, 'Seat No.', NULL, 'myka@gmail.com', '123'),
(NULL, NULL, '5', NULL, 'myka@gmail.com', '123'),
(NULL, NULL, 'Seat No.', NULL, 'myka@gmail.com', '123'),
(NULL, NULL, 'myka@gmail.com', NULL, '123', '3'),
(NULL, NULL, 'myka@gmail.com', NULL, '123', '11'),
(NULL, NULL, 'myka@gmail.com', NULL, '123', '10'),
(NULL, NULL, 'myka@gmail.com', NULL, '123', '12'),
(NULL, NULL, NULL, NULL, '123', '4'),
(NULL, NULL, NULL, NULL, '123', '7'),
(NULL, NULL, 'myka@gmail.com', NULL, '123', '11'),
(NULL, NULL, 'a@gmail.com', NULL, '123', '9'),
(NULL, NULL, 'myka@gmail.com', NULL, '123', '12'),
(NULL, NULL, 'myka@gmail.com', NULL, '123', '16');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE IF NOT EXISTS `customer` (
  `FirstName` varchar(20) DEFAULT NULL,
  `LastName` varchar(20) DEFAULT NULL,
  `Contact` varchar(11) DEFAULT NULL,
  `Email` varchar(30) DEFAULT NULL,
  `Password` varchar(1000) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`FirstName`, `LastName`, `Contact`, `Email`, `Password`) VALUES
('Andrew', 'Opio', '0782597147', 'andrew@gmail.com', NULL),
('Andrew', 'Opio', '078956544', 'jkigula@gmail.com', NULL),
('Simon', 'Okello', '0782597147', 'andrew@gmail.com', NULL),
('Andrew', 'Okello', '078654323', 'jk@gmail.com', NULL),
('Jesse', 'Kigula', '078765432', 'jk@gmail.com', NULL),
('Isaac', 'Ssembatya', '0787561488', 'jon@gmail.com', NULL),
('Andrew', 'Kigula', '1234567890', 'opioandrew581@gmail.com', NULL),
('Andrew', 'bnm', '12345678', 'opioandrew581@gmail.com', NULL),
('Andrew', 'Opio', '0123456789', 'opioandrew581@gmail.com', NULL),
('Andrew', 'Opio', '0123456789', 'opioandrew581@gmail.com', NULL),
('Andrew', 'ndyabagye', '0123456789', 'opioandrew581@gmail.com', NULL),
('Andrew', 'Opio', '0782597147', 'andrew@gmail.com', NULL),
('Andrew', 'Opio', '0123455783', 'opioandrew581@gmail.com', NULL),
('Andrew', 'Opio', '0123456789', 'opioandrew581@gmail.com', NULL),
('Andrew', 'Okello', '0123456789', 'opioandrew581@gmail.com', NULL),
('Andrew', 'Kigula', '0123456789', 'opioandrew581@gmail.com', NULL),
('Andrew', 'Okello', '0123456789', 'opioandrew581@gmail.com', NULL),
('Andrew', 'James', '0782964876', 'drew@gmail.com', NULL),
('Andrew', 'James', '0234567890', 'mykadrew@gmail.com', NULL),
('Andrew', 'Okello', '0123456789', 'opioandrew581@gmail.com', NULL),
('onesmas', 'niwamanya', '0786287797', 'niwamanyaonesmas4@gmail.com', NULL),
('myk', 'joe', '0789654321', 'myk@gmail.com', NULL),
('Ojok', 'Peter', '0787561488', 'jon@gmail.com', NULL),
('Odong ', 'Emmanuel', '0789713245', 'odong@gmail.com', NULL),
('Twesigye', 'Patrick', '0123456778', 'patrick@gmail.com', NULL),
('Melissa', 'Kayeny', '0782597147', 'andrew@gmail.com', NULL),
('Andrew', 'bnm', '0785431267', 'myka@gmail.com', '12345'),
('Sali', 'Abdu', '0786543921', 'sal@gmail.com', NULL),
('Andrew', 'Opio', '08975433', 'oa@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b'),
('Andrew', 'Opio', '12345678', 'o@gmail.com', '6934105ad50010b814c933314b1da6841431bc8b'),
('Andrew', 'Opio', '1234567', 'a@gmail.com', '123');

-- --------------------------------------------------------

--
-- Table structure for table `fare`
--

DROP TABLE IF EXISTS `fare`;
CREATE TABLE IF NOT EXISTS `fare` (
  `Route` varchar(20) DEFAULT NULL,
  `Cost` varchar(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fare`
--

INSERT INTO `fare` (`Route`, `Cost`) VALUES
('Kampala-Masindi', '12000'),
('Kampala-Kasese', '25000'),
('Kampala-Hoima', '15000'),
('Kampala-Mubende', '15000'),
('Kampala-Busunju', '10000'),
('Kampala-Fort Portal', '20000'),
('Kampala-Bukomero', '12000'),
('Kampala-Katera', '12000'),
('Kampala-Lwamata', '12000'),
('Kampala-Kiboga', '12000'),
('Kampala-Mutuba', '15000'),
('Kampala-Kyenda', '15000'),
('Kampala-Bukwiri', '15000'),
('Kampala-Katanabirwa', '15000'),
('Kampala-Kikonda', '15000'),
('Kampala-Butema', '15000'),
('Kampala-Kipapati', '17000'),
('Kampala-Buseruka', '20000'),
('Kampala-Kaiso', '22000'),
('Kampala-Kyegegwa', '20000'),
('Kampala-Kyenjojo', '20000'),
('Kampala-Rugombe', '20000'),
('Kampala-Buhesi', '20000'),
('Kampala-Kibiito', '20000'),
('Kampala-Rwimi', '25000'),
('Kampala-Hima', '25000'),
('Kampala-Bwera', '25000'),
('Kampala-Karugutu', '25000'),
('Kampala-Bundibugyo', '25000'),
('Kampala-Wobulenzi', '12000'),
('Kampala-Luwero', '12000'),
('Kampala-Katugo', '12000'),
('Kampala-Wabigalo', '12000'),
('Kampala-Walusi', '12000'),
('Kampala-Migera', '12000'),
('Kampala-Kyamukonda', '12000'),
('Kampala-Nakitoma', '12000'),
('Kampala-Kafu', '12000'),
('Kampala-Kimengo', '12000'),
('Kampala-Kiryana', '12000'),
('Kampala-Kinuma', '12000'),
('Kampala-Kirasa', '12000'),
('Kampala-Kabango', '16000');

-- --------------------------------------------------------

--
-- Table structure for table `main`
--

DROP TABLE IF EXISTS `main`;
CREATE TABLE IF NOT EXISTS `main` (
  `Email` varchar(30) DEFAULT NULL,
  `Password` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `main`
--

INSERT INTO `main` (`Email`, `Password`) VALUES
('main@gmail.com', 'main');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
CREATE TABLE IF NOT EXISTS `payment` (
  `Payment` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pending`
--

DROP TABLE IF EXISTS `pending`;
CREATE TABLE IF NOT EXISTS `pending` (
  `Route` varchar(30) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `Time` varchar(10) DEFAULT NULL,
  `SeatNo` int(11) DEFAULT NULL,
  `Email` varchar(30) DEFAULT NULL,
  `FirstName` varchar(30) DEFAULT NULL,
  `LastName` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pending`
--

INSERT INTO `pending` (`Route`, `Date`, `Time`, `SeatNo`, `Email`, `FirstName`, `LastName`) VALUES
('i', '2020-01-07', 'i', 4, 'email', 'Opio', 'Andrew'),
('i', '2020-01-07', 'i', 4, 'email', 'Opio', 'Andrew'),
('i', '2020-01-07', 'i', 4, 'email', 'Opio', 'Andrew'),
('i', '2020-01-07', 'i', 4, 'email', 'Opio', 'Andrew'),
('i', '2020-01-07', 'i', 4, 'email', 'Opio', 'Andrew'),
('i', '2020-01-07', 'i', 4, 'email', 'Opio', 'Andrew'),
('i', '2020-01-07', 'i', 4, 'email', 'Opio', 'Andrew'),
('i', '2020-01-07', 'i', 4, 'email', 'Opio', 'Andrew'),
('Route', '2020-01-07', 'Time', 4, 'email', 'Opio', 'Andrew'),
('i', '2020-01-07', 'i', 4, 'email', 'Opio', 'Andrew'),
('i', '2020-01-07', 'i', 4, 'email', 'Opio', 'Andrew'),
('i', '2020-01-07', 'i', 4, 'email', 'Opio', 'Andrew'),
('i', '2020-01-07', 'i', 4, 'email', 'Opio', 'Andrew'),
('i', '2020-01-07', 'i', 4, 'email', 'Opio', 'Andrew'),
('i', '2020-01-07', 'i', 4, 'email', 'Opio', 'Andrew'),
('i', '2020-01-07', 'i', 4, 'email', 'Opio', 'Andrew'),
('i', '2020-01-07', 'i', 4, 'email', 'Opio', 'Andrew'),
('i', '2020-01-07', 'i', 4, 'email', 'Opio', 'Andrew'),
('i', '2020-01-07', 'i', 4, 'email', 'Opio', 'Andrew'),
('i', '2020-01-07', 'i', 4, 'email', 'Opio', 'Andrew'),
('i', '2020-01-07', 'i', 4, 'email', 'Opio', 'Andrew'),
('i', '2020-01-07', 'i', 4, 'email', 'Opio', 'Andrew'),
('i', '2020-01-07', 'i', 4, 'email', 'Opio', 'Andrew'),
('i', '2020-01-07', 'i', 4, 'email', 'Opio', 'Andrew'),
('i', '2020-01-07', 'i', 4, 'email', 'Opio', 'Andrew'),
('i', '2020-01-07', 'i', 4, 'email', 'Opio', 'Andrew'),
('i', '2020-01-07', 'i', 4, 'email', 'Opio', 'Andrew'),
('i', '2020-01-07', 'i', 4, 'email', 'Opio', 'Andrew'),
('i', '2020-01-07', 'i', 4, 'email', 'Opio', 'Andrew'),
('i', '2020-01-07', 'i', 4, 'email', 'Opio', 'Andrew'),
('i', '2020-01-07', 'i', 4, 'email', 'Opio', 'Andrew'),
('i', '2020-01-07', 'i', 4, 'email', 'Opio', 'Andrew'),
('i', '2020-01-07', 'i', 4, 'email', 'Opio', 'Andrew'),
('i', '2020-01-07', 'i', 4, 'email', 'Opio', 'Andrew'),
('i', '2020-01-07', 'i', 4, 'email', 'Opio', 'Andrew'),
('i', '2020-01-07', 'i', 4, 'email', 'Opio', 'Andrew'),
('i', '2020-01-07', 'i', 4, 'email', 'Opio', 'Andrew'),
('i', '2020-01-07', 'i', 4, 'email', 'Opio', 'Andrew'),
('Route', '2020-01-07', 'Time', 4, 'email', 'Opio', 'Andrew'),
('Route', '2020-01-07', 'Time', 4, 'email', 'Opio', 'Andrew'),
('Route', '2020-01-07', 'Time', 4, 'email', 'Opio', 'Andrew'),
('Route', '2020-01-07', 'Time', 4, 'email', 'Opio', 'Andrew'),
('Route', '2020-01-07', 'Time', 4, 'email', 'Opio', 'Andrew'),
('Route', '2020-01-07', 'Time', 4, 'email', 'Opio', 'Andrew'),
('Route', '2020-01-07', 'Time', 4, 'email', 'Opio', 'Andrew'),
('Route', '2020-01-07', 'Time', 4, 'email', 'Opio', 'Andrew'),
('Route', '2020-01-07', 'Time', 4, 'email', 'Opio', 'Andrew'),
('Route', '2020-01-07', 'Time', 4, 'email', 'Opio', 'Andrew'),
('Route', '2020-01-07', 'Time', 4, 'email', 'Opio', 'Andrew'),
('Route', '2020-01-07', 'Time', 4, 'email', 'Opio', 'Andrew'),
('Route', '2020-01-07', 'Time', 4, 'email', 'Opio', 'Andrew'),
('Route', '2020-01-07', 'Time', 4, 'email', 'Opio', 'Andrew'),
('Route', '2020-01-07', 'Time', 4, 'email', 'Opio', 'Andrew'),
('Route', '2020-01-07', 'Time', 4, 'email', 'Opio', 'Andrew'),
('Route', '2020-01-07', 'Time', 4, 'email', 'Opio', 'Andrew'),
('Route', '2020-01-07', 'Time', 4, 'email', 'Opio', 'Andrew'),
('Route', '2020-01-07', 'Time', 4, 'email', 'Opio', 'Andrew'),
('Route', '2020-01-07', 'Time', 4, 'email', 'Opio', 'Andrew'),
('Route', '2020-01-07', 'Time', 4, 'email', 'Opio', 'Andrew'),
('Route', '2020-01-07', 'Time', 4, 'email', 'Opio', 'Andrew'),
('Route', '2020-01-07', 'Time', 4, 'email', 'Opio', 'Andrew'),
('Route', '2020-01-07', 'Time', 4, 'email', 'Opio', 'Andrew'),
('Route', '2020-01-07', 'Time', 4, 'email', 'Opio', 'Andrew'),
('Route', '2020-01-07', 'Time', 4, 'email', 'Opio', 'Andrew'),
('Route', '2020-01-07', 'Time', 4, 'email', 'Opio', 'Andrew'),
('Route', '2020-01-07', 'Time', 4, 'email', 'Opio', 'Andrew'),
('Route', '2020-01-07', 'Time', 4, 'email', 'Opio', 'Andrew'),
('Route', '2020-01-07', 'Time', 4, 'email', 'Opio', 'Andrew'),
('Route', '2020-01-07', 'Time', 4, 'email', 'Opio', 'Andrew'),
('Route', '2020-01-07', 'Time', 4, 'email', 'Opio', 'Andrew'),
('Route', '2020-01-07', 'Time', 4, 'email', 'Opio', 'Andrew'),
('Route', '2020-01-07', 'Time', 4, 'email', 'Opio', 'Andrew'),
('Route', '2020-01-07', 'Time', 4, 'email', 'Opio', 'Andrew'),
('Route', '2020-01-07', 'Time', 4, 'email', 'Opio', 'Andrew'),
('Route', '2020-01-07', 'Time', 4, 'email', 'Opio', 'Andrew'),
('Route', '2020-01-07', 'Time', 4, 'email', 'Opio', 'Andrew'),
('Route', '2020-01-07', 'Time', 4, 'email', 'Opio', 'Andrew'),
('Route', '2020-01-07', 'Time', 4, 'email', 'Opio', 'Andrew'),
('Route', '2020-01-07', '2020-11-11', 4, 'email', 'Opio', 'Andrew'),
('Kampala-Kyenda', '2020-11-16', '2:00 pm', 0, 'email', 'Opio', 'Andrew'),
('Kampala-Kyenda', '2020-11-16', '2:00 pm', 0, 'email', 'Opio', 'Andrew'),
('Kampala-Kyenda', '2020-11-16', '2:00 pm', 0, 'email', 'Opio', 'Andrew'),
('Kampala-Kyenda', '2020-11-16', '2:00 pm', 0, 'email', 'Opio', 'Andrew'),
('Kampala-Kyenda', '2020-11-16', '2:00 pm', 0, 'email', 'Opio', 'Andrew'),
('Kampala-Kyenda', '2020-11-16', '2:00 pm', 0, 'email', 'Opio', 'Andrew'),
('Kampala-Kyenda', '2020-11-16', '2:00 pm', 0, 'email', 'Opio', 'Andrew'),
('Kampala-Kyenda', '2020-11-16', '2:00 pm', 0, 'email', 'Opio', 'Andrew'),
('Kampala-Kyenda', '2020-11-16', '2:00 pm', 0, 'email', 'Opio', 'Andrew'),
('Kampala-Kyenda', '2020-11-16', '2:00 pm', 0, 'email', 'Opio', 'Andrew'),
('Kampala-Kyenda', '2020-11-16', '2:00 pm', 0, 'email', 'Opio', 'Andrew'),
('Kampala-Kyenda', '2020-11-16', '2:00 pm', 0, 'email', 'Opio', 'Andrew'),
('Kampala-Kyenda', '2020-11-16', '2:00 pm', 0, 'email', 'Opio', 'Andrew'),
('Kampala-Kyenda', '2020-11-16', '2:00 pm', 0, 'email', 'Opio', 'Andrew'),
('Kampala-Kyenda', '2020-11-16', '2:00 pm', 0, 'email', 'Opio', 'Andrew'),
('Kampala-Kyenda', '2020-11-16', '2:00 pm', 0, 'email', 'Opio', 'Andrew'),
('Kampala-Kyenda', '2020-11-16', '2:00 pm', 0, 'email', 'Opio', 'Andrew'),
('Kampala-Kyenda', '2020-11-16', '2:00 pm', 0, 'email', 'Opio', 'Andrew'),
('Kampala-Kyenda', '2020-11-16', '2:00 pm', 0, 'email', 'Opio', 'Andrew'),
('Kampala-Kyenda', '2020-11-16', '2:00 pm', 0, 'email', 'Opio', 'Andrew'),
('Kampala-Kyenda', '2020-11-16', '2:00 pm', 0, 'email', 'Opio', 'Andrew'),
('Kampala-Kyenda', '2020-11-16', '2:00 pm', 0, 'email', 'Opio', 'Andrew'),
('Kampala-Kyenda', '2020-11-16', '2:00 pm', 0, 'email', 'Opio', 'Andrew'),
('Kampala-Kyenda', '2020-11-16', '2:00 pm', 0, 'email', 'Opio', 'Andrew'),
('Kampala-Kyenda', '2020-11-16', '2:00 pm', 0, 'email', 'Opio', 'Andrew'),
('Kampala-Kyenda', '2020-11-16', '2:00 pm', 0, 'email', 'Opio', 'Andrew'),
('Kampala-Kyenda', '2020-11-16', '2:00 pm', 0, 'email', 'Opio', 'Andrew'),
('Kampala-Kyenda', '2020-11-16', '2:00 pm', 0, 'email', 'Opio', 'Andrew'),
('Kampala-Kyenda', '2020-11-16', '2:00 pm', 0, 'email', 'Opio', 'Andrew'),
('Kampala-Kyenda', '2020-11-16', '2:00 pm', 0, 'email', 'Opio', 'Andrew'),
('Kampala-Busunju', '2020-11-06', '12:00 pm', 0, 'email', 'Opio', 'Andrew'),
('Kampala-Lwamata', '2020-11-10', '3:00 pm', 0, 'email', 'Opio', 'Andrew'),
('Kampala-Kasese', '2020-11-05', '1:00 pm', 0, 'email', 'Opio', 'Andrew'),
('Kampala-Mutuba', '2020-11-24', '2:00 pm', 0, 'email', 'Opio', 'Andrew'),
('Kampala-Kyenda', '2020-10-26', '4:00 pm', 0, 'email', 'Opio', 'Andrew'),
('Kampala-Kyenda', '2020-11-03', '1:00 pm', 0, 'email', 'Opio', 'Andrew'),
('Kampala-Kyenda', '2020-11-03', '1:00 pm', 0, 'email', 'Opio', 'Andrew'),
('Kampala-Kyenda', '2020-11-03', '1:00 pm', 0, 'email', 'Opio', 'Andrew'),
('Kampala-Mutuba', '2020-11-11', '3:00 pm', 0, 'email', 'Opio', 'Andrew'),
('Kampala-Lwamata', '2020-11-18', '1:00 pm', 0, 'email', 'Opio', 'Andrew'),
('Kampala-Lwamata', '2020-11-18', '1:00 pm', 0, 'email', 'Opio', 'Andrew'),
('Kampala-Bukwiri', '2020-11-18', '2:00 pm', 0, 'email', 'Opio', 'Andrew'),
('Kampala-Kiboga', '2020-10-28', '1:00 pm', 0, 'email', 'Opio', 'Andrew'),
('Kampala-Bukwiri', '2020-11-02', '3:00 pm', 0, 'email', 'Opio', 'Andrew'),
('Kampala-Mutuba', '2020-10-26', '7:00 am', 0, 'email', 'Opio', 'Andrew'),
('Kampala-Kyenda', '2020-11-01', '6:00 pm', 0, 'email', 'Opio', 'Andrew');

-- --------------------------------------------------------

--
-- Table structure for table `refund`
--

DROP TABLE IF EXISTS `refund`;
CREATE TABLE IF NOT EXISTS `refund` (
  `id` int(11) DEFAULT NULL,
  `Email` varchar(30) DEFAULT NULL,
  `Message` varchar(500) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `refund`
--

INSERT INTO `refund` (`id`, `Email`, `Message`) VALUES
(0, 'andrew@gmail.com', 'yes i tried it and really ii does work so good job'),
(0, 'andrew@gmail.com', 'yo i am back this is link busservices'),
(1, 'admin@gmail.com', 'njvdbngubibdfejhj'),
(0, 'andrew@gmail.com', 'gfdfgfdgkljfdlffjgjffejf'),
(1, 'admin@gmail.com', 'njvdbngubibdfejhj'),
(1, 'admin@gmail.com', 'njvdbngubibdfejhj'),
(1, 'admin@gmail.com', 'njvdbngubibdfejhj'),
(1, 'admin@gmail.com', 'njvdbngubibdfejhj'),
(1, 'admin@gmail.com', 'njvdbngubibdfejhj'),
(1, 'admin@gmail.com', 'njvdbngubibdfejhj'),
(1, 'admin@gmail.com', 'njvdbngubibdfejhj'),
(1, 'admin@gmail.com', 'njvdbngubibdfejhj');

-- --------------------------------------------------------

--
-- Table structure for table `reset`
--

DROP TABLE IF EXISTS `reset`;
CREATE TABLE IF NOT EXISTS `reset` (
  `Code` varchar(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reset`
--

INSERT INTO `reset` (`Code`) VALUES
('68964'),
('79832'),
('9404'),
('78579'),
('52168'),
('15667'),
('65004'),
('88697'),
('66334'),
('85703'),
('703'),
('10129'),
('14111'),
('51813'),
('27119');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
