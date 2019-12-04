-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 04, 2019 at 03:57 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `travel`
--

-- --------------------------------------------------------

--
-- Table structure for table `airplane`
--

CREATE TABLE `airplane` (
  `ID` varchar(10) NOT NULL,
  `type` varchar(10) NOT NULL,
  `company` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `airplane`
--

INSERT INTO `airplane` (`ID`, `type`, `company`) VALUES
('1170', 'B738', 'Boeing'),
('1201', 'A320', 'Airbus'),
('2250', 'D123', 'Douglas'),
('2313', 'W231', 'Wright Flyer');

-- --------------------------------------------------------

--
-- Table structure for table `airport`
--

CREATE TABLE `airport` (
  `code` varchar(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `city` varchar(20) NOT NULL,
  `state` varchar(20) NOT NULL,
  `country` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
-- Error reading data for table travel.airport: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `travel`.`airport`' at line 1

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `ID` int(11) NOT NULL,
  `time` datetime NOT NULL,
  `date` date NOT NULL,
  `flightno` varchar(10) NOT NULL,
  `username` varchar(45) NOT NULL,
  `classtype` varchar(20) NOT NULL,
  `paid` int(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`ID`, `time`, `date`, `flightno`, `username`, `classtype`, `paid`) VALUES
(1, '2015-12-01 17:22:00', '2015-12-01', 'AA986', 'song', 'Economy', 0),
(2, '2015-12-01 17:23:00', '2015-12-01', 'AA986', 'song', 'Economy', 1),
(3, '2015-12-01 17:24:00', '2015-12-02', 'AA986', 'abc', 'Economy', 0),
(4, '2015-12-01 17:25:00', '2015-12-01', 'AA986', 'song', 'Business', 1),
(5, '2015-12-01 17:26:00', '2015-12-01', 'AA986', 'abc', 'Business', 1),
(6, '2015-12-01 17:27:00', '2015-12-01', 'AA986', 'abc', 'Business', 1),
(7, '2015-12-01 17:27:00', '2015-12-01', 'AA1512', 'song', 'Economy', 1),
(8, '2015-12-02 04:22:32', '2015-12-02', 'AA986', 'song', 'Economy', 0),
(9, '2015-12-02 04:26:29', '2015-12-02', 'AA120', 'song', 'Economy', 0),
(10, '2015-12-02 04:26:29', '2015-12-02', 'AA100', 'song', 'Economy', 0),
(11, '2015-12-02 04:27:36', '2015-12-02', 'AA1512', 'abc', 'Economy', 0),
(12, '2015-12-02 04:27:36', '2015-12-03', 'AA1512', 'abc', 'Economy', 0),
(13, '2015-12-02 05:55:15', '2015-12-02', 'AA1512', 'abc', 'Economy', 1),
(14, '2015-12-02 05:55:15', '2015-12-03', 'AA1512', 'abc', 'Economy', 1),
(15, '2015-12-02 05:57:27', '2015-12-02', 'AA1512', 'abc', 'Economy', 1),
(16, '2015-12-02 05:57:27', '2015-12-03', 'AA1512', 'abc', 'Economy', 1),
(17, '2015-12-02 05:58:11', '2015-12-02', 'AA1512', 'abc', 'Economy', 1),
(18, '2015-12-02 05:58:11', '2015-12-03', 'AA1512', 'abc', 'Economy', 1),
(19, '2015-12-02 06:05:52', '2015-12-02', 'AA6861', 'song', 'Economy', 0),
(20, '2015-12-02 11:46:57', '2015-12-02', 'AA100', 'song', 'Business', 0),
(21, '2015-12-02 11:56:31', '2015-12-02', 'AA986', 'song', 'Economy', 0),
(22, '2015-12-02 01:24:08', '2015-12-02', 'AA120', 'xianchu', 'Economy', 1),
(23, '2015-12-02 01:24:08', '2015-12-02', 'AA100', 'xianchu', 'Economy', 1),
(24, '2015-12-02 01:24:42', '2015-12-02', 'AA6861', 'xianchu', 'Economy', 1),
(25, '2015-12-02 01:26:46', '2015-12-02', 'AA986', 'xianchu', 'Economy', 1),
(26, '2015-12-02 01:26:46', '2013-12-03', 'AA986', 'xianchu', 'Economy', 1),
(27, '2015-12-02 02:34:02', '2015-12-02', 'AA986', 'song', 'Economy', 0),
(28, '2015-12-02 02:34:02', '2015-12-02', 'AA6927', 'song', 'Economy', 0),
(29, '2015-12-06 06:48:46', '2015-12-06', 'AA986', 'abc', 'Economy', 1),
(30, '2015-12-06 07:26:56', '2015-12-06', 'AA1512', 'qun', 'Economy', 0),
(32, '2015-12-06 07:27:20', '2015-12-06', 'AA6861', 'qun', 'Economy', 0),
(34, '2015-12-06 10:04:30', '2015-12-06', 'AA120', 'abc', 'Economy', 1),
(45, '2015-12-07 01:46:49', '2015-12-06', 'AA986', 'tao', 'Economy', 1),
(54, '2015-12-07 02:12:07', '2015-12-06', 'AA100', 'tao', 'Economy', 1),
(55, '2015-12-07 02:13:40', '2015-12-06', 'AA100', 'tao', 'Economy', 0),
(56, '2015-12-07 12:50:44', '2015-12-06', 'AA180', 'abc', 'Economy', 1),
(60, '2015-12-07 12:57:53', '2015-12-06', 'AA100', 'abc', 'Economy', 0),
(61, '2015-12-07 01:50:05', '2015-12-07', 'AA600', 'eve', 'Economy', 1),
(63, '2015-12-07 01:53:03', '2015-12-07', 'AA100', 'eve', 'Economy', 1),
(66, '2015-12-07 01:55:51', '2015-12-07', 'AA986', 'eve', 'Business', 1),
(67, '2015-12-07 01:55:51', '2015-12-08', 'AA1512', 'eve', 'Business', 1),
(70, '2019-11-30 11:32:21', '2019-11-14', 'AA100', 'sul', 'Business', 1),
(72, '2019-11-30 12:01:20', '2019-11-08', 'AA100', 'sul', 'Business', 1),
(73, '2019-12-02 08:05:16', '2019-12-13', 'AA6927', 'sul', 'Economy', 1),
(75, '2019-12-03 06:30:27', '2019-12-13', 'AA180', 'sul', 'Business', 1),
(76, '2019-12-03 06:57:23', '2019-12-20', 'AA600', 'sul', 'Business', 1),
(77, '2019-12-03 07:00:31', '2019-12-06', 'AA100', 'vipul', 'Economy', 1),
(78, '2019-12-03 08:42:57', '2019-12-05', 'AA6861', 'eden@gmail.com', 'Economy', 1),
(79, '2019-12-03 08:44:17', '2019-12-05', 'AA6861', 'eden@gmail.com', 'Economy', 1),
(80, '2019-12-03 08:44:53', '2019-12-05', 'AA6861', 'eden@gmail.com', 'Economy', 1),
(83, '2019-12-03 09:04:04', '2019-12-11', 'AA6861', 'eden@gmail.com', 'Economy', 1),
(84, '2019-12-03 09:05:45', '2019-12-05', 'AA6861', 'Eden', 'Economy', 1),
(85, '2019-12-03 09:08:30', '2019-12-05', 'AA100', 'Eden', 'Business', 1),
(86, '2019-12-03 09:45:34', '2019-12-05', 'AA6861', 'Eden', 'Economy', 1),
(87, '2019-12-03 09:49:48', '2019-12-05', 'AA6861', 'Eden', 'Economy', 1),
(88, '2019-12-03 10:30:56', '2019-12-05', 'AA6861', 'Eden', 'Economy', 1),
(89, '2019-12-03 10:35:32', '2019-12-05', 'AA6861', 'Eden', 'Economy', 1),
(90, '2019-12-03 10:35:32', '2019-12-06', 'AA6927', 'Eden', 'Economy', 1),
(91, '2019-12-03 10:55:08', '2019-12-05', 'AA6861', 'Eden', 'Economy', 1),
(92, '2019-12-03 12:46:26', '2019-12-05', 'AA6861', 'Eden', 'Economy', 1),
(93, '2019-12-04 01:11:28', '2019-12-05', 'AA6861', 'edenn', 'Economy', 1),
(94, '2019-12-04 02:13:51', '2019-12-05', 'AA6861', 'edenn', 'Economy', 1);

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `booking_id` int(200) NOT NULL,
  `total_adult` int(50) NOT NULL,
  `total_children` int(50) NOT NULL,
  `checkin_date` date NOT NULL,
  `checkout_date` date NOT NULL,
  `special_requirement` text NOT NULL,
  `payment_status` varchar(50) NOT NULL,
  `total_amount` double DEFAULT NULL,
  `deposit` double NOT NULL,
  `booking_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `telephone_no` varchar(30) NOT NULL,
  `add_line1` varchar(100) NOT NULL,
  `add_line2` varchar(100) NOT NULL,
  `city` varchar(30) NOT NULL,
  `state` varchar(30) NOT NULL,
  `postcode` varchar(30) NOT NULL,
  `country` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`booking_id`, `total_adult`, `total_children`, `checkin_date`, `checkout_date`, `special_requirement`, `payment_status`, `total_amount`, `deposit`, `booking_date`, `first_name`, `last_name`, `email`, `telephone_no`, `add_line1`, `add_line2`, `city`, `state`, `postcode`, `country`) VALUES
(127, 2, 0, '2014-12-05', '2014-12-07', '', 'pending', 440, 66, '2014-12-04 20:52:53', 'Mohd Zulkarnain', 'Jaranee', 'mrzulkarnine@gmail.com', '0128951744', '307 Kpg Kanchong Jaya Gedong', 'None', 'Serian', 'Sarawak', '50600', 'Malaysia'),
(128, 1, 0, '2014-12-05', '2014-12-06', '', 'pending', 360, 54, '2014-12-05 03:49:58', 'Mohd Zulkarnain', 'Jaranee', 'mrzulkarnine@gmail.com', '0128951744', '307 Kpg Kanchong Jaya Gedong', 'None', 'Serian', 'Sarawak', '50600', 'Malaysia'),
(129, 1, 0, '2014-12-05', '2014-12-07', '', 'pending', 240, 36, '2014-12-05 04:53:27', 'Mohd Zulkarnain', 'Jaranee', 'mrzulkarnine@gmail.com', '0128951744', '307 Kpg Kanchong Jaya Gedong', 'None', 'Serian', 'Sarawak', '50600', 'Malaysia'),
(130, 1, 0, '2014-12-05', '2014-12-07', '', 'pending', 480, 72, '2014-12-05 04:58:13', 'Mohd Zulkarnain', 'Jaranee', 'mrzulkarnine@gmail.com', '0128951744', '307 Kpg Kanchong Jaya Gedong', 'None', 'Serian', 'Sarawak', '50600', 'Malaysia'),
(131, 2, 0, '2015-05-21', '2015-05-23', '', 'pending', 240, 36, '2015-05-20 19:16:14', 'Mohd Zulkarnain', 'Jaranee', 'mrzulkarnine@gmail.com', '0128951744', '307 Kpg Kanchong Jaya Gedong', '', 'Serian', 'Sarawak', '50600', 'Malaysia'),
(132, 2, 0, '2015-05-21', '2015-05-23', '', 'pending', 920, 138, '2015-05-20 19:18:52', 'Mohd Zulkarnain', 'Jaranee', 'mrzulkarnine@gmail.com', '0128951744', '307 Kpg Kanchong Jaya Gedong', '', 'Serian', 'Sarawak', '50600', 'Malaysia'),
(133, 4, 0, '2019-11-29', '2019-11-30', '', 'pending', 120, 18, '2019-11-28 14:25:15', 'Eden', 'Tolosa', 'edenaskyonatan@gmail.com', '+6045678', 'Addis Ababa', '', 'Addis Ababa', 'Other', 'NA', 'Ethiopia'),
(134, 2, 0, '2019-11-27', '2019-11-30', '', 'pending', 720, 108, '2019-11-28 15:05:00', 'Eden', 'Tolosa', 'edenaskyonatan@gmail.com', '0934423009', 'Addis Ababa', '', 'Addis Ababa', 'Other', 'NA', 'Ethiopia'),
(135, 2, 0, '2019-11-27', '2019-11-30', '', 'pending', 2880, 432, '2019-11-28 15:50:28', 'Eden', 'Tolosa', 'edenaskyonatan@gmail.com', '+602375', 'Addis Ababa', '', 'Addis Ababa', 'Other', 'NA', 'Ethiopia'),
(136, 1, 0, '2019-11-28', '2019-11-30', '', 'pending', 9280, 1392, '2019-11-28 16:44:51', 'Eden', 'Tolosa', 'edenaskyonatan@gmail.com', '+602375', 'Addis Ababa', '', 'Addis Ababa', 'Other', 'NA', 'Ethiopia');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(3) NOT NULL,
  `cat_title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `number` varchar(10) NOT NULL,
  `name` varchar(20) NOT NULL,
  `capacity` int(11) NOT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`number`, `name`, `capacity`, `price`) VALUES
('AA100', 'Business', 5, 500),
('AA100', 'Economy', 200, 180),
('AA120', 'Business', 15, 4000),
('AA120', 'Economy', 100, 1000),
('AA1512', 'Business', 1, 200),
('AA1512', 'Economy', 100, 100),
('AA180', 'Business', 15, 800),
('AA180', 'Economy', 100, 240),
('AA181', 'Business', 10, 200),
('AA181', 'Economy', 100, 100),
('AA600', 'Business', 5, 200),
('AA600', 'Economy', 80, 50),
('AA601', 'Business', 3, 300),
('AA601', 'Economy', 50, 60),
('AA6861', 'Business', 3, 100),
('AA6861', 'Economy', 100, 40),
('AA6927', 'Business', 10, 100),
('AA6927', 'Economy', 200, 40),
('AA80', 'Business', 3, 200),
('AA80', 'Economy', 80, 50),
('AA986', 'Business', 8, 400),
('AA986', 'Economy', 120, 120);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `namu` varchar(255) NOT NULL,
  `emailu` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `submittime` datetime NOT NULL DEFAULT current_timestamp(),
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `namu`, `emailu`, `subject`, `submittime`, `status`) VALUES
(0, '', '', '', '2019-12-02 06:45:26', 'draft'),
(0, 'gbdaw', 'as@gmail.com', 'tebeda', '2019-12-02 06:47:36', 'draft'),
(0, '', '', '', '2019-12-02 06:48:11', 'draft'),
(0, '', '', '', '2019-12-02 07:15:41', 'draft'),
(0, '', '', '', '2019-12-02 07:16:12', 'draft'),
(0, '', '', '', '2019-12-02 07:18:45', 'draft'),
(0, '', '', '', '2019-12-02 07:19:10', 'draft'),
(0, '', '', '', '2019-12-02 07:20:41', 'draft'),
(0, '', '', '', '2019-12-02 07:21:42', 'draft'),
(0, 'amedam', 'amed@afer.com', 'wuuuu', '2019-12-02 07:21:59', 'draft'),
(0, '', '', '', '2019-12-02 10:07:19', 'draft'),
(0, '', '', '', '2019-12-02 10:22:09', 'draft');

-- --------------------------------------------------------

--
-- Table structure for table `cost`
--

CREATE TABLE `cost` (
  `start` varchar(255) NOT NULL,
  `stopage` varchar(255) NOT NULL,
  `category` int(3) NOT NULL,
  `cost` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cost`
--

INSERT INTO `cost` (`start`, `stopage`, `category`, `cost`) VALUES
('Kanpur', 'Unnao', 5, 100),
('Unnao', 'Lucknow', 5, 152);

-- --------------------------------------------------------

--
-- Table structure for table `flight`
--

CREATE TABLE `flight` (
  `number` varchar(20) NOT NULL,
  `airplane_id` varchar(10) NOT NULL,
  `departure` varchar(10) NOT NULL,
  `d_time` time NOT NULL,
  `arrival` varchar(10) NOT NULL,
  `a_time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `flight`
--

INSERT INTO `flight` (`number`, `airplane_id`, `departure`, `d_time`, `arrival`, `a_time`) VALUES
('AA100', '1201', 'Mekele', '18:35:00', 'Harar', '21:00:00'),
('AA120', '1201', 'Jimma', '14:35:00', 'Mekele', '17:30:00'),
('AA1512', '1170', 'Harar', '13:40:00', 'Jimma', '19:30:00'),
('AA180', '1201', 'Jimma', '07:35:00', 'Gambela', '10:30:00'),
('AA181', '1170', 'Gambela', '19:30:00', 'Jimma', '22:00:00'),
('AA600', '1201', 'Gondar', '17:00:00', 'Harar', '21:00:00'),
('AA601', '1201', 'Harar', '20:00:00', 'Gondar', '23:00:00'),
('AA6861', '1201', 'Gambela', '11:00:00', 'Harar', '13:00:00'),
('AA6927', '1201', 'Harar', '17:00:00', 'Gambela', '19:00:00'),
('AA80', '1170', 'Mekele', '20:00:00', 'Jimma', '23:00:00'),
('AA986', '1170', 'Jimma', '10:00:00', 'Harar', '14:00:00'),
('S123', '2250', 'Hawassa', '18:35:00', 'Bahir Dar', '21:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(3) NOT NULL,
  `bus_id` int(3) NOT NULL,
  `user_id` varchar(3) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_age` int(3) NOT NULL,
  `source` varchar(255) NOT NULL,
  `destination` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `cost` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `bus_id`, `user_id`, `user_name`, `user_age`, `source`, `destination`, `date`, `cost`) VALUES
(0, 2, '32', '', 0, '', '', '2019-12-01', 0),
(5, 2, '2', 'dheeraj', 20, 'kanpur', 'lucknow', '2018-03-29', 0),
(6, 2, '2', 'manish', 52, 'kanpur', 'lucknow', '2018-03-29', 0),
(7, 2, '2', 'Pratyush', 10, 'kanpur', 'Lucknow', '2018-04-14', 0),
(10, 2, '2', 'Pratyush', 10, 'Kanpur', 'Lucknow', '2018-04-14', 0),
(11, 4, '3', 'Vikas', 52, 'Chennai', 'Chittor', '2018-04-17', 0),
(14, 4, '3', 'Hemant', 45, 'Chennai', 'Chittor', '2018-04-17', 0),
(15, 6, '2', 'Ankit', 45, 'Agra', 'Mathura', '2018-04-17', 0),
(16, 6, '2', 'Pratyush', 12, 'Agra', 'Mathura', '2018-04-17', 0),
(17, 3, '2', 'Prateek', 20, 'Delhi', 'Surat', '2018-04-17', 0),
(21, 7, '3', 'Prateek', 20, 'Tundla', 'Allahabad', '2018-04-17', 0),
(22, 2, '31', 'eden', 21, 'Kanpur', 'Lucknow', '2019-11-28', 0);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `post_id` int(3) NOT NULL,
  `post_category_id` int(3) NOT NULL,
  `post_title` varchar(255) NOT NULL,
  `post_author` varchar(255) NOT NULL,
  `post_date` date NOT NULL,
  `post_image` text NOT NULL,
  `post_content` text NOT NULL,
  `post_source` varchar(255) NOT NULL,
  `post_destination` varchar(255) NOT NULL,
  `post_via` varchar(255) NOT NULL,
  `post_via_time` varchar(255) NOT NULL,
  `post_query_count` int(3) NOT NULL,
  `max_seats` int(3) NOT NULL,
  `available_seats` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `post_category_id`, `post_title`, `post_author`, `post_date`, `post_image`, `post_content`, `post_source`, `post_destination`, `post_via`, `post_via_time`, `post_query_count`, `max_seats`, `available_seats`) VALUES
(2, 3, 'AddisAbaba to Hawassa', 'Selam Bus', '2019-12-28', 'buss1.jpg', 'A/C Bus', 'Addis Ababa', 'Hawassa', 'Adama Nazret Zeway', '6:00 8:00 11:00', 3, 20, 43),
(3, 3, 'Adama to Mekelle', 'Abay Bus', '2019-12-05', 'buss2.jpg', 'A/C Bus', 'Adama', 'Mekelle', 'BahirDar Gondar Aksum', '3:00 5:00 7:00 ', 1, 30, 18),
(4, 5, 'BahirDar to Harar', 'Sky Bus', '2019-12-10', 'buss3.jpg', 'Runs every weekend', 'BahirDar', 'Harar', 'DireDawa BahirDar ', '12:00 2:00', 6, 0, -2);

-- --------------------------------------------------------

--
-- Table structure for table `query`
--

CREATE TABLE `query` (
  `query_id` int(3) NOT NULL,
  `query_bus_id` int(3) NOT NULL,
  `query_user` varchar(255) NOT NULL,
  `query_email` varchar(255) NOT NULL,
  `query_date` date NOT NULL,
  `query_content` text NOT NULL,
  `query_replied` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `query`
--

INSERT INTO `query` (`query_id`, `query_bus_id`, `query_user`, `query_email`, `query_date`, `query_content`, `query_replied`) VALUES
(0, 2, '(unknown)', 'selahadinosman1@gmail.com', '2019-12-02', 'ewjkewjkwejkwe', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `room_id` int(255) NOT NULL,
  `total_room` int(255) NOT NULL,
  `occupancy` int(255) DEFAULT NULL,
  `size` varchar(30) DEFAULT NULL,
  `view` varchar(30) DEFAULT NULL,
  `room_name` varchar(50) NOT NULL,
  `descriptions` text DEFAULT NULL,
  `rate` double NOT NULL,
  `imgpath` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`room_id`, `total_room`, `occupancy`, `size`, `view`, `room_name`, `descriptions`, `rate`, `imgpath`) VALUES
(1, 65, 37, 'Addis Ababa', 'city', 'Sheraton Hotel', 'It has health club, the Aqva Club, includes outdoor swimming pools, sauna, massage and Jacuzzi. A special feature of the pool is its underwater music. Within the Aqva Club is also found the special Simba Club, where you allow your children to play.', 800, 'img/Webp.net-resizeimage (33).jpg'),
(2, 76, 25, 'Adama', 'city', 'Adama Resort ', 'Adama Resort and Spa Marrakech offers views of the Atlas Mountains and a free shuttle service to JamaÃ¢ El Fna Square, 10 minutes away. It has a wellness center with a hammam and massages.', 400, 'img/Webp.net-resizeimage (34).jpg'),
(3, 10, 10, 'Hawassa', 'river view from window', 'South Star Hotel', 'Very suitable for honeymoon', 790, 'img/Webp.net-resizeimage (44).jpg'),
(4, 100, 3, 'Bahir Dar', 'city', 'Delano Hotel', 'Conveniently located across from the Bahir Dar International Stadium, Delano Hotel, Bahir Dar offers free WiFi throughout the hotel and free private parking on site. Relax in the sauna or spa centre, or enjoy Ethiopian and Western meals at the restaurant.', 375, 'img/Webp.net-resizeimage (37).jpg'),
(5, 45, 6, 'Gondar', 'city view', 'Gondar Hotel', 'Featuring a view, every room also comes with a seating area and TV. Rooms include a minibar and linen and towels are provided. All rooms include a private bathroom fitted with a shower.', 0, 'img/Webp.net-resizeimage (38).jpg'),
(6, 66, 4, 'Jimma', 'Abba jifar view', 'Dololo Hotel', 'The hotel rooms can accommodate from leisure to business travelers, hence our guests may choose form our luxury and furnished rooms that keeps maximum comfort beyond their expectation.', 0, 'img/Webp.net-resizeimage (40).jpg'),
(7, 78, 2, 'Mekele', 'city', 'Planet Hotel', 'The rooms feature a sofa, electric kettle and flat-screen TV with satellite channels.', 0, 'img/Webp.net-resizeimage (41).jpg'),
(8, 76, 4, 'sqft', 'city', 'Harar Ras Hotel', 'The hotel offers clean and comfortable accommodation. Each room is fitted with a mini-sitting area, a wardrobe, a TV with satellite reception and designed with an en-suite bathroom.', 0, 'img/Webp.net-resizeimage (42).jpg'),
(9, 77, 5, 'Gambela', 'Natural beauty', 'Flat Hotel', 'You will find free shuttle service at the property. The onsite restaurant features an a la carte menu and room service is offered. Guest have access to the terrace and shared lounge.', 0, 'img/Webp.net-resizeimage (43).jpg');

-- --------------------------------------------------------

--
-- Table structure for table `roombook`
--

CREATE TABLE `roombook` (
  `booking_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `totalroombook` int(11) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roombook`
--

INSERT INTO `roombook` (`booking_id`, `room_id`, `totalroombook`, `id`) VALUES
(127, 1, 1, 67),
(127, 2, 1, 68),
(128, 3, 3, 69),
(129, 1, 1, 70),
(130, 1, 1, 71),
(131, 1, 1, 72),
(132, 1, 2, 73),
(132, 2, 1, 74),
(133, 1, 1, 75),
(134, 1, 1, 76),
(135, 1, 1, 77),
(136, 1, 4, 78);

-- --------------------------------------------------------

--
-- Table structure for table `seats`
--

CREATE TABLE `seats` (
  `bus_id` int(3) NOT NULL,
  `max_seats` int(3) NOT NULL,
  `available_seats` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`) VALUES
(1, 'Eden', 'asdf');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` varchar(3) NOT NULL,
  `username` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_firstname` varchar(255) NOT NULL,
  `user_lastname` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_phoneno` varchar(255) NOT NULL,
  `user_image` text NOT NULL,
  `user_role` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `user_password`, `user_firstname`, `user_lastname`, `user_email`, `user_phoneno`, `user_image`, `user_role`) VALUES
('31', 'Eden', 'asdf', 'Eden', 'Tolosa', 'eden@gmail.com', '0934423009', 'user_default.jpg', 'admin'),
('33', 'edenn', 'eden1234', 'edenn', 'Tolosa', 'eden@gmail.com', '0934423009', 'user_default.jpg', 'subscriber'),
('32', 'sul', 'qwerty', 'sul', 'sul', 'sul@gmail.com', '7056063463', 'user_default.jpg', 'subscriber');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `airplane`
--
ALTER TABLE `airplane`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `airport`
--
ALTER TABLE `airport`
  ADD PRIMARY KEY (`code`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`ID`,`flightno`),
  ADD KEY `username_idx` (`username`),
  ADD KEY `classname_idx` (`classtype`),
  ADD KEY `flightno_idx` (`flightno`,`classtype`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`booking_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`number`,`name`),
  ADD KEY `number_idx` (`number`);

--
-- Indexes for table `flight`
--
ALTER TABLE `flight`
  ADD PRIMARY KEY (`number`),
  ADD KEY `code_idx` (`departure`,`arrival`),
  ADD KEY `airplaneid_idx` (`airplane_id`),
  ADD KEY `arrival_idx` (`arrival`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `query`
--
ALTER TABLE `query`
  ADD PRIMARY KEY (`query_id`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`room_id`);

--
-- Indexes for table `roombook`
--
ALTER TABLE `roombook`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seats`
--
ALTER TABLE `seats`
  ADD PRIMARY KEY (`bus_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
