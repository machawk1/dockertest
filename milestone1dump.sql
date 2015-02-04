-- phpMyAdmin SQL Dump
-- version 3.3.10.4
-- http://www.phpmyadmin.net
--
-- Host: cs418.matkelly.com
-- Generation Time: Feb 04, 2015 at 02:13 PM
-- Server version: 5.1.56
-- PHP Version: 5.6.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `lecture4`
--

-- --------------------------------------------------------

--
-- Table structure for table `heroes`
--

CREATE TABLE IF NOT EXISTS `heroes` (
  `id` int(128) NOT NULL AUTO_INCREMENT,
  `lair_id` int(128) NOT NULL,
  `name` varchar(64) NOT NULL,
  `real_name` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `heroes`
--

INSERT INTO `heroes` (`id`, `lair_id`, `name`, `real_name`) VALUES
(1, 1, 'Clean Freak', 'John Smith'),
(2, 1, 'Soap Stud', 'Efram Jones'),
(3, 2, 'The Dustmite', 'Dustin Huff'),
(8, 0, 'asdas', 'asdasdas'),
(9, 22, 'foo', 'bar');

-- --------------------------------------------------------

--
-- Table structure for table `lairs`
--

CREATE TABLE IF NOT EXISTS `lairs` (
  `id` int(128) NOT NULL AUTO_INCREMENT,
  `zip_id` int(5) NOT NULL,
  `lair_address` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `lairs`
--

INSERT INTO `lairs` (`id`, `zip_id`, `lair_address`) VALUES
(1, 45293, '123 Poplar Ave'),
(2, 45201, '452 Elm St. #3D');

-- --------------------------------------------------------

--
-- Table structure for table `powers`
--

CREATE TABLE IF NOT EXISTS `powers` (
  `id` int(128) NOT NULL AUTO_INCREMENT,
  `power` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `powers`
--

INSERT INTO `powers` (`id`, `power`) VALUES
(1, 'Strength'),
(2, 'X-Ray vision'),
(3, 'Flight'),
(4, 'Invisibility'),
(5, 'Speed'),
(6, 'Dirtiness'),
(7, 'Laser Vision');

-- --------------------------------------------------------

--
-- Table structure for table `powers_mapping`
--

CREATE TABLE IF NOT EXISTS `powers_mapping` (
  `char_id` int(128) NOT NULL,
  `power_id` int(128) NOT NULL,
  KEY `char_id` (`char_id`,`power_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `powers_mapping`
--

INSERT INTO `powers_mapping` (`char_id`, `power_id`) VALUES
(1, 1),
(1, 1),
(1, 2),
(1, 2),
(1, 3),
(1, 4),
(2, 5),
(3, 1),
(3, 6),
(3, 7);

-- --------------------------------------------------------

--
-- Table structure for table `zip_mapping`
--

CREATE TABLE IF NOT EXISTS `zip_mapping` (
  `id` int(128) NOT NULL AUTO_INCREMENT,
  `city` varchar(128) NOT NULL,
  `state` varchar(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=45294 ;

--
-- Dumping data for table `zip_mapping`
--

INSERT INTO `zip_mapping` (`id`, `city`, `state`) VALUES
(45293, 'Townsburg', 'OH'),
(45201, 'Burgtown', 'OH');
