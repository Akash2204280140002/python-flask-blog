-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 18, 2024 at 10:43 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `codingthunder`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `s.no.` int(50) NOT NULL,
  `name` text NOT NULL,
  `phone_num` varchar(50) NOT NULL,
  `msg` text NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`s.no.`, `name`, `phone_num`, `msg`, `date`, `email`) VALUES
(1, 'It is first post', '9125543129', 'How are you everyone', '2024-11-13 20:59:14', ''),
(2, 'vikas', '567677777', '', '2024-11-15 14:58:21', ''),
(4, 'Akash Kumar Yadav', '09125543129', 'df', '2024-11-16 12:39:30', 'admin@gmail.com'),
(5, 'xfvd', '09125543129', 'xdf', '2024-11-16 12:41:04', 'akash22071@gmail.com'),
(6, 'ascuysac', '88997', 'hh', '2024-11-16 12:43:29', 'ay8310594@gmail.com'),
(7, 'dffdddddddddddh', '09125543129', 'dfgfd', '2024-11-16 12:48:22', 'ay8310594@gmail.com'),
(8, 'Vikas', '09125543129', 'lsjdnoqjne', '2024-11-16 13:50:59', 'vky21@gmail.com'),
(9, 'Prakash', '9794081216', 'All is Well', '2024-11-16 13:52:40', 'py12037@gmail.com'),
(10, 'Akash Kumar Yadav', '09125543129', 'fgf', '2024-11-16 17:06:57', 'admin@gmail.com'),
(11, 'vikas', '8765434567876', 'dffd', '2024-11-16 17:08:55', 'akash22071@gmail.com'),
(12, 'Atharv', '8080808080', 'Good morning everyone', '2024-11-17 09:35:25', 'atharv@gmail.com'),
(13, 'AAAAAAAA', '108347923', 'kjqkjbqjbfq', '2024-11-22 10:09:02', 'ay8310594@gmail.com'),
(14, 'Akash Kumar Yadav', '09125543129', 'kvjbslkjvlks', '2024-11-25 16:44:44', 'admin@gmail.com'),
(15, 'Akash Kumar Yadav', '09125543129', 'lanc;laknc', '2024-11-25 16:46:38', 'admin@gmail.com'),
(16, 'akash', '93487593098', 'aosjdhfq[jf', '2024-11-25 16:56:18', 'up65vip@gmail.com'),
(17, 'aaakash', '9125543129', 'dckjewkfwke', '2024-11-26 06:41:16', 'akash22071@gmail.com'),
(18, 'Atharv', '9125543129', 'All is well', '2024-11-26 13:09:09', 'akash22071@gmail.com'),
(19, 'Akash Kumar Yadav', '09125543129', 'd', '2024-11-28 20:56:13', 'soc_support@ariacybersecurity.com'),
(20, 'Akash Kumar Yadav', '09125543129', 'd', '2024-11-28 21:02:43', 'soc_support@ariacybersecurity.com'),
(21, 'Akash Kumar Yadav', '09125543129', 'xc', '2024-11-28 21:04:52', 'soc_support@ariacybersecurity.com'),
(22, 'Akash Kumar Yadav', '09125543129', 'c', '2024-11-28 21:10:13', 'admin@gmail.com'),
(23, 'Akash Kumar Yadav', '09125543129', 'c', '2024-11-28 21:12:25', '2204280140002@kashiit.ac.in'),
(24, 'Akash Kumar Yadav', '09125543129', 'c', '2024-11-28 21:14:04', 'admin@gmail.com'),
(25, 'xvx', '45675432', 'j', '2024-11-28 21:19:45', 'sam@gmail.com'),
(26, 'ath', '9125543129', 'hhhh', '2024-11-29 07:23:05', 'atharv@gmail.com'),
(27, 'Akash Kumar Yadav', '09125543129', 'JDHOSD', '2024-11-29 14:46:01', 'admin@gmail.com'),
(28, 'Akash Kumar Yadav', '09125543129', 'uwyegrkwjrhfo2uyrow', '2024-12-15 09:17:47', 'akash22071@gmail.com'),
(29, 'Akash Kumar Yadav', '09125543129', 'uwyegrkwjrhfo2uyrow', '2024-12-15 09:18:03', 'akash22071@gmail.com'),
(30, 'athrav', '09125543129', 'uhu', '2024-12-15 09:35:52', 'arh@gmail.com'),
(31, 'athravseftewt', '09125543129', 'uhu', '2024-12-15 09:39:22', 'arhzdsf@gmail.com'),
(32, 'BCA', '9125543129', 'j', '2024-12-15 10:16:50', 'up65vip@gmail.com'),
(33, 'BCS', '09125543129', 'n', '2024-12-15 10:18:58', 'ay8310594@gmail.com'),
(34, 'dsbv', '9125543129', 'j', '2024-12-15 10:19:50', 'ay8310594@gmail.com'),
(35, 'Atha', '', '', '2024-12-15 11:23:50', ''),
(36, 'Atharveee', '09125543129', 'skdjblkbwbfjbskjbs', '2024-12-15 11:24:24', 'admin@gmail.com'),
(37, 'Atharveee', '09125543129', 'skdjblkbwbfjbskjbs', '2024-12-15 11:24:29', 'admin@gmail.com'),
(38, 'Atharveee', '09125543129', 'skdjblkbwbfjbskjbs', '2024-12-15 11:24:35', 'admin@gmail.com'),
(39, 'ttttttttttt', '5555555555555555555', 'ttttttttttttttttttttttttt', '2024-12-15 11:25:56', 'ay8310594@gmail.com'),
(40, 'ttttttttttt', '5555555555555555555', 'ttttttttttttttttttttttttt', '2024-12-15 11:26:03', 'ay8310594@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `sno` int(11) NOT NULL,
  `title` text NOT NULL,
  `content` text NOT NULL,
  `img_file` varchar(12) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `slug` varchar(25) NOT NULL,
  `tagline` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`sno`, `title`, `content`, `img_file`, `date`, `slug`, `tagline`) VALUES
(13, 'sdvdsdsdss', 'contentsdgds', 'xffd', '2024-12-15 11:20:11', 'slugdffd', 'xbvbfb'),
(15, 'Add By Akash', 'contenttttttttttttttttttttttttttttttttt', 'tttttt', '2024-12-15 11:27:58', 'slugfffff', 'ddddddddddd'),
(16, 'Add By Atharv', 'How are you My Dear All Freinds', 'no-jpg', '2024-12-15 14:12:40', 'slug OnlyOne', 'Atharv Don'),
(17, 'Add By Prakash', 'Create Sometimes new and find the other extra', 'no-jpg', '2024-12-15 14:14:51', 'slugOM', 'OKKKK'),
(19, 'AKAsh Yadav', 'contents,djfslfzzzzzzzzzzzzzzzzz', '', '2024-12-15 14:53:43', 'slugskjr', 'Yadhsfjs'),
(20, 'AKAsh Yadav', 'contents,djfslf', 'kjshe', '2024-12-15 14:31:03', 'slugskjr', 'Yadhsfjs'),
(21, 'dfgd', 'content', 's', '2024-12-15 19:11:22', 'slug', 'dsgdsgds'),
(22, 'dfgdgdgdfdgdgg', 'contentsdfdsf', 'dgrd', '2024-12-15 19:12:03', 'slug', 'zdsvs'),
(23, 'samkumar', 'contentsdgdsg', 'dytre', '2024-12-15 19:13:43', 'slugsg', 'sam');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`s.no.`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `s.no.` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
