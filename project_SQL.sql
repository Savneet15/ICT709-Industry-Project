-- phpMyAdmin SQL Dump
-- version 3.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 06, 2018 at 05:38 AM
-- Server version: 5.5.25a
-- PHP Version: 5.4.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `fname` varchar(200) NOT NULL,
  `lname` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `username` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL,
  `image` varchar(500) NOT NULL DEFAULT 'uploads/favicon.jpg',
  `user` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `fname`, `lname`, `email`, `username`, `password`, `image`, `user`) VALUES
(1, 'Admin', 'admin', 'admin@domain.com', 'admin', '827ccb0eea8a706c4c34a16891f84e7b', '', 'Administrator');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE IF NOT EXISTS `events` (
  `event_id` int(11) NOT NULL AUTO_INCREMENT,
  `event_name` varchar(200) NOT NULL,
  `event_description` varchar(500) NOT NULL,
  `event_location` varchar(300) NOT NULL,
  `event_date` date NOT NULL,
  `event_start_time` varchar(50) NOT NULL,
  `event_end_time` varchar(50) NOT NULL,
  PRIMARY KEY (`event_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`event_id`, `event_name`, `event_description`, `event_location`, `event_date`, `event_start_time`, `event_end_time`) VALUES
(6, 'Test', 'doing test', 'melbourne', '0000-00-00', '11:45 AM', '11:45 AM'),
(7, 'design', 'design website', 'brisban', '2018-06-13', '12:00 PM', '11:45 AM');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE IF NOT EXISTS `staff` (
  `staff_id` int(11) NOT NULL AUTO_INCREMENT,
  `staff_fname` varchar(50) NOT NULL,
  `staff_lname` varchar(50) NOT NULL,
  `staff_email` varchar(100) NOT NULL,
  `staff_username` varchar(50) NOT NULL,
  `staff_password` varchar(512) NOT NULL,
  `staff_mobile` varchar(20) NOT NULL,
  `staff_dob` date NOT NULL,
  PRIMARY KEY (`staff_id`),
  UNIQUE KEY `staff_username` (`staff_username`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`staff_id`, `staff_fname`, `staff_lname`, `staff_email`, `staff_username`, `staff_password`, `staff_mobile`, `staff_dob`) VALUES
(5, 'savneet', 'kaur', 'savneetkaur@gmail.com', 'science', '12345', '83477189', '1991-11-19'),
(6, 'Rimpy', 'Dhillon', 'rimpy@gmail.com', 'Rimpy', '12345', '090078601', '1992-04-29'),
(9, 'anu', 'shika', 'anu@gmail.com', 'tech', '12345', '6789023', '2026-04-14'),
(10, 'varun', 'Kataria', 'varunkataria88@gmail.com', 'varun', '001008', '3456789', '2025-05-07'),
(11, 'varun', 'kataria', 'varun@gmail.com', 'tt', '01008', '567894', '2018-04-29'),
(12, 'Staff', 'Default', 'Staff@domain.com', 'staff', '12345', '0987654321', '1990-01-01');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
