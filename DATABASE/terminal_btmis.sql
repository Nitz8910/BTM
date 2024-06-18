-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 12, 2019 at 05:31 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `terminal_btmis`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
`adminid` int(11) NOT NULL,
  `branchid` int(11) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `confirm_password` varchar(100) NOT NULL,
  `user_type` varchar(100) NOT NULL,
  `date_added` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adminid`, `branchid`, `firstname`, `lastname`, `username`, `password`, `confirm_password`, `user_type`, `date_added`) VALUES
(1, , '', '', '', '', '', '', ''),
(2, , '', '', '', '', '', '', ''),
(3, , '', '', '', '', '', '', ''),
(4, , '', '', '', '', '', '', ''),
(5, , '', '', '', '', '', '', ''),
(6, , '', '', '', '', '', '', ''),
(9, , '', '', '', '', '', '', ''),
(10, ,'', '', '', '', '', '', ''),
(11, ,'', '', '', '', '', '', ''),
(12, , '', '', '', '', '', '', ''),
(13, , '', '', '', '', '', '', ''),
(14, , '', '', '', '', '', '', ''),
(15, , '', '', '', '', '', '', ''),
(16, , '', '', '', '', '', '', ''),
(17, , '', '', '', '', '', '', ''),
(18, , '', '', '', '', '', '', ''),
(19, , '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE IF NOT EXISTS `branch` (
`branchid` int(11) NOT NULL,
  `branch_location` varchar(100) NOT NULL,
  `date_added` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`branchid`, `branch_location`, `date_added`) VALUES
(1, '', ''),
(2, '', ''),
(3, '', ''),
(4, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `bus`
--

CREATE TABLE IF NOT EXISTS `bus` (
`busid` int(11) NOT NULL,
  `bus_number` varchar(100) NOT NULL,
  `bus_type` varchar(100) NOT NULL,
  `date_added` varchar(100) NOT NULL,
  `bus_travel` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bus`
--

INSERT INTO `bus` (`busid`, `bus_number`, `bus_type`, `date_added`, `bus_travel`) VALUES
(3, '', '', '', ''),
(4, '', '', '', ''),
(5, '', '', '', ''),
(6, '', '', '', ''),
(7, '', '', '', ''),
(8, '', '', '', ''),
(9, '', '', '', ''),
(10, '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `driver`
--

CREATE TABLE IF NOT EXISTS `driver` (
`driverid` int(11) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `contact_number` varchar(100) NOT NULL,
  `profile` varchar(100) NOT NULL,
  `date_added` varchar(100) NOT NULL,
  `driver_travel` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `driver`
--

INSERT INTO `driver` (`driverid`, `firstname`, `lastname`, `contact_number`, `profile`, `date_added`, `driver_travel`) VALUES
(1, '', '', '', '', '', ''),
(2, '', '', '', '', '', ''),
(3, '', '', '', '', '', ''),
(4, '', '', '', '', '', ''),
(5, '', '', '', '', '', ''),
(6, '', '', '', '', '', ''),
(7, '', '', '', '', '', ''),
(9, '', '', '', '', '', ''),
(10, '', '', '', '', '', '');


-- --------------------------------------------------------

--
-- Table structure for table `bus_conductor`
--

CREATE TABLE IF NOT EXISTS `conductor` (
`conductorid` int(11) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `contact_number` varchar(100) NOT NULL,
  `profile` varchar(100) NOT NULL,
  `date_added` varchar(100) NOT NULL,
  `conductor_travel` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `conductor`
--

INSERT INTO `conductor` (`conductorid`, `firstname`, `lastname`, `contact_number`, `profile`, `date_added`, `conductor_travel`) VALUES
(1, '', '', '', '', '', ''),
(2, '', '', '', '', '', ''),
(3, '', '', '', '', '', ''),
(4, '', '', '', '', '', ''),
(5, '', '', '', '', '', ''),
(6, '', '', '', '', '', ''),
(7, '', '', '', '', '', ''),
(9, '', '', '', '', '', ''),
(10, '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

CREATE TABLE IF NOT EXISTS `schedule` (
`scheduleid` int(11) NOT NULL,
  `busid` varchar(100) NOT NULL,
  `driverid` varchar(100) NOT NULL,
  `from_location` varchar(100) NOT NULL,
  `destination_location` varchar(100) NOT NULL,
  `departure_time` datetime NOT NULL,
  `arrival_time` datetime NOT NULL,
  `terminal_location` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `status_operation` varchar(100) NOT NULL,
  `arrived_at_destination` varchar(100) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schedule`
--

INSERT INTO `schedule` (`scheduleid`, `busid`, `driverid`, 'conductorid', `from_location`, `destination_location`, `departure_time`, `arrival_time`, `terminal_location`, `status`, `status_operation`, `arrived_at_destination`, `date_added`) VALUES
(1, '', '', '', '', '', '', '', '', '', '', ''),
(2, '', '', '', '', '', '', '', '', '', '', ''),
(3, '', '', '', '', '', '', '', '', '', '', ''),
(4, '', '', '', '', '', '', '', '', '', '', ''),
(5, '', '', '', '', '', '', '', '', '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
 ADD PRIMARY KEY (`adminid`);

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
 ADD PRIMARY KEY (`branchid`);

--
-- Indexes for table `bus`
--
ALTER TABLE `bus`
 ADD PRIMARY KEY (`busid`);

--
-- Indexes for table `driver`
--
ALTER TABLE `driver`
 ADD PRIMARY KEY (`driverid`);

--
-- Indexes for table `conductor`
--
ALTER TABLE 'conductor'
ADD PRIMARY KEY ('conductorid')
--
-- Indexes for table `schedule`
--
ALTER TABLE `schedule`
 ADD PRIMARY KEY (`scheduleid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
MODIFY `adminid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `branch`
--
ALTER TABLE `branch`
MODIFY `branchid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `bus`
--
ALTER TABLE `bus`
MODIFY `busid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `driver`
--
ALTER TABLE `driver`
MODIFY `driverid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `conductor`
--
ALTER TABLE `conductor`
MODIFY `conductorid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `schedule`
--
ALTER TABLE `schedule`
MODIFY `scheduleid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
