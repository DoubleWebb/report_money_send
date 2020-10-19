-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 19, 2020 at 01:06 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `workio_send`
--

-- --------------------------------------------------------

--
-- Table structure for table `employee_send`
--

CREATE TABLE `employee_send` (
  `employee_id` int(12) NOT NULL,
  `emp_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `emp_firstname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `emp_lastname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `employee_send`
--

INSERT INTO `employee_send` (`employee_id`, `emp_code`, `emp_firstname`, `emp_lastname`) VALUES
(1, '001', 'พี่', 'ซัง'),
(2, '002', 'เพ็ญนภา', 'ตาปัน'),
(3, '003', 'ฐิติพงษ์', 'อินลม');

-- --------------------------------------------------------

--
-- Table structure for table `finger_send`
--

CREATE TABLE `finger_send` (
  `finger_id` int(12) NOT NULL,
  `emp_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `punch_time` datetime DEFAULT NULL,
  `sned_status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '1 = ยังไม่ส่งข้อมูล 0 = ส่งข้อมูลแล้ว'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `finger_send`
--

INSERT INTO `finger_send` (`finger_id`, `emp_code`, `punch_time`, `sned_status`) VALUES
(1, '3', '2020-10-17 09:10:10', '0'),
(2, '2', '2020-10-17 09:42:52', '0'),
(3, '1', '2020-10-17 10:00:14', '0'),
(4, '2', '2020-09-23 12:07:41', '0'),
(5, '3', '2020-09-23 12:10:40', '0'),
(6, '3', '2020-09-23 12:14:48', '0'),
(7, '1', '2020-09-23 12:17:17', '0'),
(8, '2', '2020-09-23 13:19:44', '0'),
(9, '2', '2020-09-23 13:26:18', '0'),
(10, '1', '2020-09-23 13:37:34', '0'),
(11, '2', '2020-09-23 14:01:24', '0'),
(12, '2', '2020-09-23 18:18:58', '0'),
(13, '3', '2020-09-23 18:27:47', '0'),
(14, '1', '2020-09-23 18:32:59', '0'),
(15, '1', '2020-09-23 13:51:17', '0'),
(16, '2', '2020-09-24 09:18:34', '0'),
(17, '3', '2020-09-24 09:19:36', '0'),
(18, '1', '2020-09-24 12:18:15', '0'),
(19, '1', '2020-09-24 19:16:07', '0'),
(20, '3', '2020-09-24 19:16:58', '0'),
(21, '2', '2020-09-24 19:35:14', '0'),
(22, '2', '2020-09-25 09:08:57', '0'),
(23, '3', '2020-09-25 09:11:17', '0'),
(24, '2', '2020-09-25 18:01:28', '0'),
(25, '3', '2020-09-25 18:02:19', '0'),
(26, '2', '2020-09-26 09:10:51', '0'),
(27, '3', '2020-09-26 09:12:14', '0'),
(28, '2', '2020-09-26 18:17:28', '0'),
(29, '3', '2020-09-26 18:17:40', '0'),
(30, '3', '2020-09-28 09:09:35', '0'),
(31, '2', '2020-09-28 09:19:23', '0'),
(32, '1', '2020-09-28 13:57:33', '0'),
(33, '2', '2020-09-28 18:06:19', '0'),
(34, '1', '2020-09-28 18:09:59', '0'),
(35, '3', '2020-09-28 18:10:09', '0'),
(36, '2', '2020-09-29 08:55:02', '0'),
(37, '3', '2020-09-29 09:13:08', '0'),
(38, '1', '2020-09-29 15:05:14', '0'),
(39, '2', '2020-09-29 18:25:28', '0'),
(40, '1', '2020-09-29 18:25:41', '0'),
(41, '3', '2020-09-29 18:27:54', '0'),
(42, '2', '2020-09-30 09:06:52', '0'),
(43, '3', '2020-09-30 09:50:33', '0'),
(44, '2', '2020-09-30 18:13:47', '0'),
(45, '3', '2020-09-30 21:28:10', '0'),
(46, '1', '2020-09-30 21:42:37', '0'),
(47, '3', '2020-10-01 07:46:37', '0'),
(48, '2', '2020-10-01 10:04:43', '0'),
(49, '1', '2020-10-01 17:15:13', '0'),
(50, '2', '2020-10-01 18:35:29', '0'),
(51, '3', '2020-10-01 18:38:48', '0'),
(52, '3', '2020-10-02 09:16:15', '0'),
(53, '1', '2020-10-02 12:17:07', '0'),
(54, '3', '2020-10-02 18:35:55', '0'),
(55, '3', '2020-10-03 09:16:18', '0'),
(56, '1', '2020-10-03 10:49:29', '0'),
(57, '1', '2020-10-03 18:09:53', '0'),
(58, '3', '2020-10-03 18:15:49', '0'),
(59, '2', '2020-10-05 09:06:33', '0'),
(60, '3', '2020-10-05 09:19:48', '0'),
(61, '2', '2020-10-05 18:10:40', '0'),
(62, '3', '2020-10-05 18:10:47', '0'),
(63, '2', '2020-10-06 09:11:04', '0'),
(64, '3', '2020-10-06 09:19:35', '0'),
(65, '1', '2020-10-06 10:27:26', '0'),
(66, '1', '2020-10-06 18:10:06', '0'),
(67, '3', '2020-10-06 18:20:14', '0'),
(68, '2', '2020-10-06 18:21:40', '0'),
(69, '3', '2020-10-07 09:12:41', '0'),
(70, '2', '2020-10-07 09:18:18', '0'),
(71, '1', '2020-10-07 18:13:52', '0'),
(72, '3', '2020-10-07 18:17:39', '0'),
(73, '2', '2020-10-07 18:20:18', '0'),
(74, '3', '2020-10-08 09:15:03', '0'),
(75, '2', '2020-10-08 09:18:48', '0'),
(76, '3', '2020-10-08 18:02:47', '0'),
(77, '2', '2020-10-08 18:02:56', '0'),
(78, '2', '2020-10-09 09:13:17', '0'),
(79, '3', '2020-10-09 09:17:28', '0'),
(80, '2', '2020-10-09 18:04:44', '0'),
(81, '3', '2020-10-09 18:06:10', '0'),
(82, '2', '2020-10-10 09:10:18', '0'),
(83, '3', '2020-10-10 09:16:45', '0'),
(84, '2', '2020-10-10 18:16:46', '0'),
(85, '3', '2020-10-10 18:21:27', '0'),
(86, '2', '2020-10-12 08:53:44', '0'),
(87, '3', '2020-10-12 09:23:09', '0'),
(88, '1', '2020-10-12 09:59:40', '0'),
(89, '1', '2020-10-12 17:43:01', '0'),
(90, '3', '2020-10-12 18:25:37', '0'),
(91, '2', '2020-10-12 20:24:28', '0'),
(92, '2', '2020-10-13 08:35:55', '0'),
(93, '3', '2020-10-13 09:14:56', '0'),
(94, '1', '2020-10-13 18:40:35', '0'),
(95, '3', '2020-10-13 18:41:51', '0'),
(96, '2', '2020-10-13 18:48:43', '0'),
(97, '2', '2020-10-14 09:15:21', '0'),
(98, '3', '2020-10-14 09:21:45', '0'),
(99, '1', '2020-10-14 10:06:40', '0'),
(100, '2', '2020-10-14 18:04:52', '0'),
(101, '3', '2020-10-14 19:02:26', '0'),
(102, '1', '2020-10-14 19:07:52', '0'),
(103, '2', '2020-10-15 09:03:32', '0'),
(104, '3', '2020-10-15 09:26:15', '0'),
(105, '1', '2020-10-15 18:13:53', '0'),
(106, '2', '2020-10-15 18:22:03', '0'),
(107, '1', '2020-10-15 18:22:40', '0'),
(108, '3', '2020-10-15 18:24:18', '0'),
(109, '1', '2020-10-15 18:24:31', '0'),
(110, '1', '2020-10-15 18:30:05', '0'),
(111, '3', '2020-10-16 09:19:07', '0'),
(112, '2', '2020-10-16 09:37:12', '0'),
(113, '1', '2020-10-16 12:56:53', '0'),
(114, '1', '2020-10-16 18:38:53', '0'),
(115, '2', '2020-10-16 18:39:10', '0'),
(116, '3', '2020-10-16 20:15:20', '0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employee_send`
--
ALTER TABLE `employee_send`
  ADD PRIMARY KEY (`employee_id`);

--
-- Indexes for table `finger_send`
--
ALTER TABLE `finger_send`
  ADD PRIMARY KEY (`finger_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employee_send`
--
ALTER TABLE `employee_send`
  MODIFY `employee_id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `finger_send`
--
ALTER TABLE `finger_send`
  MODIFY `finger_id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
