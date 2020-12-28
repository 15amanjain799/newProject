-- phpMyAdmin SQL Dump
-- version 3.2.0.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 12, 2020 at 09:00 AM
-- Server version: 5.1.36
-- PHP Version: 5.3.0

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `empinfo`
--

-- --------------------------------------------------------

--
-- Table structure for table `empdet`
--

CREATE TABLE IF NOT EXISTS `empdet` (
  `empid` varchar(20) NOT NULL,
  `empname` varchar(50) NOT NULL,
  `department` varchar(50) NOT NULL,
  `designation` varchar(50) NOT NULL,
  `salary` int(11) NOT NULL,
  PRIMARY KEY (`empid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `empdet`
--

INSERT INTO `empdet` (`empid`, `empname`, `department`, `designation`, `salary`) VALUES
('1313', 'satyam jain', 'cse', 'my', 500000),
('1234', 'Vaibhav', 'hr', 'pro', 34500),
('spi1001', 'aaaa', 'ass', 'add', 120000);
