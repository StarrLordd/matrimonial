-- phpMyAdmin SQL Dump
-- version 3.2.0.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 07, 2019 at 02:36 AM
-- Server version: 5.1.36
-- PHP Version: 5.3.0

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `application`
--
CREATE DATABASE `application` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `application`;

-- --------------------------------------------------------

--
-- Table structure for table `adlog`
--

CREATE TABLE IF NOT EXISTS `adlog` (
  `Id` int(10) NOT NULL AUTO_INCREMENT,
  `Email` varchar(300) NOT NULL,
  `Password` varchar(300) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `adlog`
--

INSERT INTO `adlog` (`Id`, `Email`, `Password`) VALUES
(1, 'Amit@gmail.com', 'qwertas');

-- --------------------------------------------------------

--
-- Table structure for table `enq`
--

CREATE TABLE IF NOT EXISTS `enq` (
  `Enid` int(10) NOT NULL AUTO_INCREMENT,
  `Name` varchar(300) NOT NULL,
  `Email` varchar(300) NOT NULL,
  `Contact` varchar(15) NOT NULL,
  `massage` text NOT NULL,
  `Date` varchar(200) NOT NULL,
  PRIMARY KEY (`Enid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `enq`
--

INSERT INTO `enq` (`Enid`, `Name`, `Email`, `Contact`, `massage`, `Date`) VALUES
(2, '"+a+"', '"+b+"', '"+c+"', '"+d+"', '2018-07-22'),
(3, 'asdfgh', 'sfdsdg@dgd.dfgd', '2345678', 'lkjhgfd', '2018-07-22'),
(4, '', '', 'null', 'null', '2018-07-22'),
(5, '', '', '', '', '2018-07-22'),
(6, '', '', '', '', '2018-07-22'),
(7, '', '', '', '', '2018-07-22'),
(8, '', '', 'null', 'null', '2018-07-22'),
(9, '', '', 'null', 'null', '2018-07-22');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `No` int(10) NOT NULL AUTO_INCREMENT,
  `Email` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  PRIMARY KEY (`No`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`No`, `Email`, `Password`) VALUES
(1, 'Amittripathi2233@gmail.com', '1234'),
(2, 'sonalggpa@gmail.com', 'SONAVIDDU'),
(3, 'neharavi@gmail.com', '2709'),
(4, 'ritu@gmail.com', '9415873434'),
(5, 'abhilashchatterjee212@gmail.com', '12345'),
(6, 'klamzaidi145@gmail.com', '123456'),
(7, 'ravishukla8808@gmail.com', '12345678'),
(8, 'raiprashant648@gmail', 'naina'),
(9, 'ps5307461@gmail.com', 'PRIYANKA'),
(10, 'rajputshivani@gmail.com', 'mybrothermohit'),
(11, 'jprasad639@gmail.com', '1234'),
(12, 'diksharai081@gmail.com', '1234'),
(13, 'sakshi23@gmail.com', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `mreq`
--

CREATE TABLE IF NOT EXISTS `mreq` (
  `ReqId` int(11) NOT NULL AUTO_INCREMENT,
  `ReqBy` varchar(200) NOT NULL,
  `ReqTo` varchar(200) NOT NULL,
  `ReqDate` varchar(20) NOT NULL,
  `Status` varchar(50) NOT NULL,
  PRIMARY KEY (`ReqId`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `mreq`
--

INSERT INTO `mreq` (`ReqId`, `ReqBy`, `ReqTo`, `ReqDate`, `Status`) VALUES
(1, 'amittripathi2233@gmail.com', 'null', '2018-07-31', 'Pending'),
(2, 'amittripathi2233@gmail.com', 'null', '2018-07-31', 'Pending'),
(3, 'amittripathi2233@gmail.com', 'ps5307461@gmail.com', '2018-07-31', 'Pending'),
(4, 'amittripathi2233@gmail.com', 'ritu@gmail.com', '2018-07-31', 'Pending'),
(5, 'ps5307461@gmail.com', 'Amittripathi2233@gmail.com', '2018-08-03', 'Accepted'),
(6, 'amittripathi2233@gmail.com', 'rajputshivani@gmail.com', '2019-04-14', 'Pending'),
(7, 'rajputshivani@gmail.com', 'abhilashchatterjee212@gmail.com', '2019-04-15', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE IF NOT EXISTS `notification` (
  `Sr` int(10) NOT NULL AUTO_INCREMENT,
  `Notification` text NOT NULL,
  `Date` varchar(20) NOT NULL,
  PRIMARY KEY (`Sr`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`Sr`, `Notification`, `Date`) VALUES
(1, 'sdghdfivudfhhg', '2018-07-29');

-- --------------------------------------------------------

--
-- Table structure for table `reg`
--

CREATE TABLE IF NOT EXISTS `reg` (
  `Id` int(10) NOT NULL AUTO_INCREMENT,
  `Name` varchar(300) NOT NULL,
  `FName` varchar(300) NOT NULL,
  `Gender` varchar(30) NOT NULL,
  `Quali` varchar(300) NOT NULL,
  `Email` varchar(300) NOT NULL,
  `Contact` varchar(12) NOT NULL,
  `Occupation` varchar(500) NOT NULL,
  `Designation` varchar(300) NOT NULL,
  `FOccupation` varchar(500) NOT NULL,
  `Height` varchar(40) NOT NULL,
  `Nationality` varchar(100) NOT NULL,
  `Rel` varchar(100) NOT NULL,
  `MToungh` varchar(100) NOT NULL,
  `DOB` varchar(20) NOT NULL,
  `Photo` varchar(300) NOT NULL,
  `Address` text NOT NULL,
  `Date` varchar(20) NOT NULL,
  `req` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=32 ;

--
-- Dumping data for table `reg`
--

INSERT INTO `reg` (`Id`, `Name`, `FName`, `Gender`, `Quali`, `Email`, `Contact`, `Occupation`, `Designation`, `FOccupation`, `Height`, `Nationality`, `Rel`, `MToungh`, `DOB`, `Photo`, `Address`, `Date`, `req`) VALUES
(26, 'shivani rajput', 'karan singh', 'FEMALE', 'DEPLOMA', 'rajputshivani@gmail.com', '9876459834', 'CS Student', 'Engineer', 'decorator', '159 Inch', 'INDIAN', 'HINDU', 'HINDI', '1998-12-08', 'diks.jpg', 'Meerut', '2018-07-31', '1'),
(25, 'Glory Shukla', 'Mr. Akhilesh Shukla', 'FEMALE', 'DEPLOMA', 'ps5307461@gmail.com', '9648073994', 'CS Student', 'Engineer', 'business man', '155 Inch', 'INDIAN', 'HINDU', 'HINDI', '1999-05-03', 'WhatsApp Image 2019-04-15 at 9.21.17 PM.jpeg', 'Pandeypur,Saranath,Varanasi.', '2018-07-31', '1'),
(11, 'AMIT kumar TRIPATHI', 'PRAMOD TRIPATHI', 'MALE', 'POST GRADUATE', 'Amittripathi2233@gmail.com', '8052277647', 'CS Student', 'ENGINEERddd', 'dfhdfgdf', '155 Inch', 'INDIAN', 'MUSLIM', 'GUJRAATI', '0555-12-05', 'IMG_20180619_144106.jpg', '', '2018-07-28', '1'),
(20, 'divya', 'Ratan kumar', 'FEMALE', 'DEPLOMA', 'ritu@gmail.com', '9026838106', 'CS Student', 'Engineer', 'bussiness man', '149 Inch', 'INDIAN', 'HINDU', 'HINDI', '1998-07-06', '26633415.jpg', 'hno.-252, pandeypur varansi', '2018-07-30', NULL),
(19, 'Neha Sharma', 'Dr. JayPrakash Sharma', 'FEMALE', 'DEPLOMA', 'neharavi@gmail.com', '7310382350', 'CS Student', 'student', 'Doctor', '150 Inch', 'INDIAN', 'HINDU', 'HINDI', '2000-02-27', '26632635.jpg', 'Gali no-05 ,brahmanagar ,Robertsganj ,Sonebhadra, U.P.', '2018-07-30', NULL),
(18, 'SONAL GUPTA', 'Mr. SANTOSH GUPTA', 'FEMALE', 'DEPLOMA', 'sonalggpa@gmail.com', '9005572317', 'CS Student', 'SOFTWARE ENGINEER', 'BUSINESS MAN', '150 Inch', 'INDIAN', 'HINDU', 'HINDI', '1999-07-01', '26632579.jpg', 'KAPSETHI ,SEWAPURI VARANASI', '2018-07-30', '1'),
(21, 'ABHILASH CHATTERJEE', 'D.D CHATTERJEE', 'MALE', 'DEPLOMA', 'abhilashchatterjee212@gmail.com', '7376790449', 'CS Student', 'Engineer', 'service', '167 Inch', 'INDIAN', 'HINDU', 'HINDI', '1996-09-08', '51489280_1870638826392034_9031829109772124160_o.jpg', '465/402 shahganj allahabad', '2018-07-30', NULL),
(22, 'KLAM ZEHRA ZAIDI', 'Mr.Gaffar Mahmood Zaidi', 'FEMALE', 'DEPLOMA', 'klamzaidi145@gmail.com', '8953678114', 'CS Student', 'Engineer', 'Teacher', '165 Inch', 'INDIAN', 'MUSLIM', 'HINDI', '2002-01-04', 'kalam.jpg', 'MERATH', '2018-07-30', NULL),
(23, 'Ravi Shukla', 'Mr.Brahm sevak', 'MALE', 'DEPLOMA', 'ravishukla8808@gmail.com', '7398252357', 'CS Student', 'Engineer', 'Docter', '172 Inch', 'INDIAN', 'HINDU', 'HINDI', '1996-03-04', '33383682_649314695400449_1174053430897934336_n.jpg', 'Pratap Garh Jathwara ', '2018-07-30', '1'),
(24, 'Prashant Rai', 'VN Rai', 'MALE', 'BACHLAR IN DEGREE', 'raiprashant648@gmail', '8353955954', 'CS Student', 'Engineer', 'officer', '155 Inch', 'INDIAN', '--Select--', '--Select--', '2018-12-01', 'Capture.PNG', 'ghazipur', '2018-07-30', NULL),
(29, 'Jagdish Prasad', 'Vindeshwari Prasad', 'FEMALE', 'UNDERGRADUATE', 'jprasad639@gmail.com', '345678', 'Software Development', 'Software Developer', 'Goverment servent', '151 Inch', 'OTHER', 'HINDU', 'ENGLISH', '1111-02-01', 'IMG_20180615_1620121.jpg', 'retrhgjhgffd', '2019-04-11', NULL),
(30, 'Diksha rai', 'Akhilesh rai', 'FEMALE', 'MASTER IN DEGREE', 'diksharai081@gmail.com', '7607101498', 'Dental Docter', 'Teacher', 'School teacher', '147 Inch', 'INDIAN', 'HINDU', 'HINDI', '2000-12-31', 'diks.jpg', 'Balliya', '2019-04-15', NULL),
(31, 'Sakshi Mishra', 'Samrat Mishra', 'FEMALE', 'BACHLAR IN DEGREE', 'sakshi23@gmail.com', '8299284695', 'null', 'Software Developer', 'Goverment Employ', '164 Inch', 'INDIAN', 'HINDU', 'HINDI', '2001-10-22', 'photo.jpg', 'VAranasi', '2019-05-05', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `story`
--

CREATE TABLE IF NOT EXISTS `story` (
  `Name` varchar(200) NOT NULL,
  `NDate` varchar(50) NOT NULL,
  `Story` text NOT NULL,
  `photo` varchar(100) NOT NULL,
  `date` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `story`
--

INSERT INTO `story` (`Name`, `NDate`, `Story`, `photo`, `date`) VALUES
('dfghjkl', '2018-09-14', 'zsdxfcgvbjmk ', '23926479_1999877060290046_5018020893406595404_o.jpg', '2018-09-05'),
('dfghjkl', '2018-09-14', 'zsdxfcgvbjmk ', 'aa.jpg', '2018-09-05'),
('dfghjkl', '2018-09-14', 'zsdxfcgvbjmk ', 'aa.jpg', '2018-09-05');
