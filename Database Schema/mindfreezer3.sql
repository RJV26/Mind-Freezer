-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 21, 2018 at 01:20 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `mindfreezer3`
--

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE IF NOT EXISTS `questions` (
  `qid` int(10) NOT NULL AUTO_INCREMENT,
  `q_title` varchar(500) NOT NULL DEFAULT 'Sample question title.',
  `q_description` varchar(500) NOT NULL DEFAULT 'Sample question description.',
  `q_image` varchar(100) DEFAULT NULL,
  `explanation` varchar(500) NOT NULL DEFAULT 'Sample explaination text.',
  `date` timestamp NOT NULL,
  `added_by` varchar(50) NOT NULL,
  `total_submissions` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`qid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=57 ;

-- --------------------------------------------------------

--
-- Table structure for table `submissions`
--

CREATE TABLE IF NOT EXISTS `submissions` (
  `subid` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) NOT NULL,
  `qid` int(10) NOT NULL,
  `submission` varchar(1000) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `points` int(10) NOT NULL DEFAULT '0',
  `status` int(10) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`subid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=33 ;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `uid` int(10) NOT NULL AUTO_INCREMENT,
  `uname` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `colg_name` varchar(30) NOT NULL,
  `city` varchar(30) NOT NULL,
  `reg_no` varchar(30) NOT NULL,
  `mob_no` int(10) NOT NULL,
  `activated` int(5) NOT NULL DEFAULT '0',
  `ver_code` varchar(10) NOT NULL,
  `acc_type` int(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
