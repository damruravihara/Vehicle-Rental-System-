-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 23, 2020 at 07:30 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vehicle rental system`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `type` varchar(20) NOT NULL,
  `location` varchar(20) NOT NULL,
  `from` date NOT NULL,
  `to` date NOT NULL,
  `name` varchar(20) NOT NULL,
  `cardno` int(12) NOT NULL,
  `expmonth` varchar(10) NOT NULL,
  `expyear` int(4) NOT NULL,
  `cvv` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `car`
--

CREATE TABLE `car` (
  `NAME` varchar(20) NOT NULL,
  `YEAR` int(4) NOT NULL,
  `COLOR` varchar(20) NOT NULL,
  `per 1KM price` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `car`
--

INSERT INTO `car` (`NAME`, `YEAR`, `COLOR`, `per 1KM price`) VALUES
('1 gen prius', 2002, 'white', 75),
('3 gen orius', 2010, 'white/black', 78),
('4 gen prius', 2015, 'black/white', 80),
('5 gen prius', 2020, 'white/black', 82);

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `name` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `number` bigint(10) NOT NULL,
  `massage` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`name`, `email`, `number`, `massage`) VALUES
('Roshan', 'anhgafa@.com', 123546987, 'good '),
('gayan', 'gayathennakooon@gmail.com', 1594872630, 'bad '),
('gayan', 'gayathennakooon@gmail.com', 1594872630, 'bad '),
('madu', 'asdf@gmail.com', 768030577, 'best '),
('monadi', 'monadI@gmail.com', 1598472630, 'good '),
('damruu', '', 0, ' '),
('nilmini', 'nilubannaka@gmail.com', 769823514, 'best one '),
('', '', 0, ' ');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `First name` varchar(20) DEFAULT NULL,
  `Last name` varchar(20) DEFAULT NULL,
  `Gender` varchar(5) DEFAULT NULL,
  `Phone no` int(10) DEFAULT NULL,
  `Address` varchar(40) DEFAULT NULL,
  `DateOfBirth` date DEFAULT NULL,
  `Email` varchar(20) DEFAULT NULL,
  `Password` varchar(10) NOT NULL DEFAULT '',
  `RepeatPassword` varchar(10) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`cardno`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`Password`,`RepeatPassword`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
