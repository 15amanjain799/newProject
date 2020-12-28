-- phpMyAdmin SQL Dump
-- version 3.2.0.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 12, 2020 at 08:59 AM
-- Server version: 5.1.36
-- PHP Version: 5.3.0

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `custoinfo`
--

-- --------------------------------------------------------

--
-- Table structure for table `custo`
--

CREATE TABLE IF NOT EXISTS `custo` (
  `cuid` varchar(50) NOT NULL,
  `cuname` varchar(50) NOT NULL,
  `cuaddress` varchar(50) NOT NULL,
  `cucon` int(20) NOT NULL,
  `cuemail` varchar(20) NOT NULL,
  PRIMARY KEY (`cuid`,`cuname`,`cuaddress`,`cucon`,`cuemail`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `custo`
--

INSERT INTO `custo` (`cuid`, `cuname`, `cuaddress`, `cucon`, `cuemail`) VALUES
('aa', 'aaa', 'aa', 2334, 'dsf'),
('aa', 'satyam', 'varanasi', 4567, 'amanjain@gmail.com'),
('Aman Jain1001', 'Aman Jain', 'Mirjapur', 1234567788, 'amanjain@gmail.com'),
('vaibhav jain1101', 'vaibhav jain', 'varanasi', 12234, 'amanjai@gmail.com');
