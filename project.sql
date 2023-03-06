-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 24, 2021 at 02:07 AM
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
-- Database: `project`
--
CREATE DATABASE IF NOT EXISTS `project` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `project`;

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
CREATE TABLE IF NOT EXISTS `patient` (
  `patientID` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `contactNumber` varchar(10) NOT NULL,
  `age` varchar(3) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `bloodGroup` varchar(20) NOT NULL,
  `address` varchar(100) NOT NULL,
  `anyMajorDisease` varchar(500) NOT NULL,
  PRIMARY KEY (`patientID`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` VALUES(1, 'Sadini De Silva', '0714568211', '21', 'Female', 'A+', 'ALuthgama', 'No');
INSERT INTO `patient` VALUES(2, 'Sumith ', '0714829654', '45', 'Male', 'AB', 'Kalutara', 'Yes, blood pressure patient');
INSERT INTO `patient` VALUES(5, 'Heladini Ththsarani', '0718951230', '20', 'Female', 'O+', 'Gamagoda', 'yes, Asthma Patient');
INSERT INTO `patient` VALUES(3, 'Somadasa', '0451237890', '54', 'Male', 'A-', 'Gampala', 'yes, Diabetic patient');
INSERT INTO `patient` VALUES(6, 'Sumana Dissanayake', '0459632154', '58', 'Female', 'O-', 'Panthiya', 'Yes, heart patient');
INSERT INTO `patient` VALUES(8, 'Piyal perera', '0741238962', '50', 'Male', 'O+', 'Mathugama', 'No');
INSERT INTO `patient` VALUES(9, 'Saman De Silva', '0347894561', '48', 'Male', 'A+', 'Beruwala', 'No');
INSERT INTO `patient` VALUES(10, 'Sandya Malkanthi', '0714289369', '49', 'Female', 'A-', 'maggona', 'Yes, cancer patient');
INSERT INTO `patient` VALUES(11, 'Anura Bandara', '0778965412', '51', 'Male', 'A+', 'Aluthgama', 'yes, heart patient');
INSERT INTO `patient` VALUES(12, 'Kasun dilshan', '0714561230', '25', 'Male', 'O+', 'Dodangoda', 'No');

-- --------------------------------------------------------

--
-- Table structure for table `patientreport`
--

DROP TABLE IF EXISTS `patientreport`;
CREATE TABLE IF NOT EXISTS `patientreport` (
  `patientID` int(10) NOT NULL AUTO_INCREMENT,
  `symptom` varchar(200) NOT NULL,
  `diagnosis` varchar(200) NOT NULL,
  `medicines` varchar(200) NOT NULL,
  `wardReq` varchar(5) NOT NULL,
  `typeWard` varchar(10) NOT NULL,
  PRIMARY KEY (`patientID`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patientreport`
--

INSERT INTO `patientreport` VALUES(1, 'Fever', 'virul fever', 'Penadol,Vitamin c', 'YES', 'General');
INSERT INTO `patientreport` VALUES(5, 'coughing,breathlessness', 'allergies,eczema', 'Alvesco,Flovent HFA,Mometasone', 'NO', '');
INSERT INTO `patientreport` VALUES(3, 'Cloudy urine,General urination,Fever and chills', 'including the distinctive sugar smell of his sweat and urine', 'Trimethoprime,fosfomycin', 'YES', 'Emergency');
INSERT INTO `patientreport` VALUES(10, 'Belly pain,vomiting blood', 'fever', 'asprin, Penadol', 'YES', 'Emergency');
INSERT INTO `patientreport` VALUES(12, 'Fever', 'vomiting,coughing', 'Penadol,Amocsilin', 'YES', 'General');
INSERT INTO `patientreport` VALUES(11, 'chest pain,feeling weak,shortness of breath', 'should be test ECG test', 'ACE inhibitors,Thrombolytics', 'YES', 'Emergency');
INSERT INTO `patientreport` VALUES(9, 'Diarhea,Rashes,stiff neck', 'Bacterial disease', 'Antibiotics,Penadol', 'YES', 'General');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
