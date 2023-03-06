-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 24, 2021 at 02:19 AM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `studentmanage`
--
CREATE DATABASE IF NOT EXISTS `studentmanage` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `studentmanage`;

-- --------------------------------------------------------

--
-- Table structure for table `result`
--

DROP TABLE IF EXISTS `result`;
CREATE TABLE IF NOT EXISTS `result` (
  `stuNo` int(15) NOT NULL AUTO_INCREMENT,
  `db` varchar(10) NOT NULL,
  `web` varchar(10) NOT NULL,
  `ep` varchar(10) NOT NULL,
  `se` varchar(10) NOT NULL,
  `obj` varchar(10) NOT NULL,
  PRIMARY KEY (`stuNo`)
) ENGINE=MyISAM AUTO_INCREMENT=40009 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `result`
--

INSERT INTO `result` VALUES(10001, '50', '86', '52', '70', '65');
INSERT INTO `result` VALUES(30005, '80', '55', '77', '84', '65');
INSERT INTO `result` VALUES(10006, '85', '70', '65', '58', '66');
INSERT INTO `result` VALUES(40008, '78', '80', '96', '42', '38');
INSERT INTO `result` VALUES(40001, '75', '56', '42', '48', '30');
INSERT INTO `result` VALUES(30007, '58', '84', '70', '71', '56');
INSERT INTO `result` VALUES(20005, '45', '26', '78', '45', '87');
INSERT INTO `result` VALUES(10008, '45', '56', '78', '85', '78');
INSERT INTO `result` VALUES(10009, '78', '86', '61', '90', '84');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
CREATE TABLE IF NOT EXISTS `student` (
  `stuNo` int(15) NOT NULL AUTO_INCREMENT,
  `course` varchar(20) NOT NULL,
  `branch` varchar(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `gardiansName` varchar(100) NOT NULL,
  PRIMARY KEY (`stuNo`)
) ENGINE=MyISAM AUTO_INCREMENT=40009 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` VALUES(10001, 'Diploma', 'Software', 'Ashan Bandara', 'male', 'Saman Bandara');
INSERT INTO `student` VALUES(30005, 'HND', 'Network', 'Samith Fernando', 'male', 'Sisira Fernando');
INSERT INTO `student` VALUES(10006, 'HND', 'Network', 'Sanka Hansaka', 'Male', 'Ajith Kumara');
INSERT INTO `student` VALUES(30008, 'HND', 'Software', 'Saduni Tharaka', 'Female', 'Saman Nishantha');
INSERT INTO `student` VALUES(40008, 'Certificate', 'Software', 'Nayana Tharuka', 'Female', 'Amila Perera');
INSERT INTO `student` VALUES(40001, 'Degree', 'Network', 'Pasidu Mahesh', 'Male', 'Vinitha de Silva');
INSERT INTO `student` VALUES(20005, 'Diploma', 'System Design', 'Kasuni maneesha', 'Female', 'Piyal jayalal');
INSERT INTO `student` VALUES(10008, 'Certificate', 'Network', 'Avishka fernando', 'Male', 'Sunil fernando');
INSERT INTO `student` VALUES(40006, 'Degree', 'System Design', 'Nilu pathirana', 'Female', 'Priyantha pathirana');
INSERT INTO `student` VALUES(30007, 'HND', 'Network', 'Gayan Perera', 'Male', 'Saman Perera');
INSERT INTO `student` VALUES(10009, 'Certificate', 'Software', 'Dayan Tharindu', 'Male', 'Asela Dissanayake');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
