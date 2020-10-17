-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 17, 2020 at 02:32 PM
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
-- Database: `workio_report`
--

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `emp_id` int(11) NOT NULL,
  `emp_pin` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `emp_firstname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `emp_lastname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `emp_status` int(1) DEFAULT NULL,
  `emp_salary` int(10) DEFAULT NULL,
  `emp_last_day` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`emp_id`, `emp_pin`, `emp_firstname`, `emp_lastname`, `emp_status`, `emp_salary`, `emp_last_day`) VALUES
(1, '001', 'พี่ซัง', '', 1, 21000, '2020-10-02 12:17:07'),
(2, '002', 'เพ็ญนภา', 'ตาปัน', 1, 18000, '2020-10-01 12:07:41'),
(3, '003', 'ฐิติพงษ์', 'อินลม', 1, 19000, '2020-10-03 09:16:18');

-- --------------------------------------------------------

--
-- Table structure for table `finger`
--

CREATE TABLE `finger` (
  `finger_id` int(11) NOT NULL,
  `finger_date_work` date DEFAULT NULL,
  `finger_date_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `finger_punch_time` datetime DEFAULT NULL,
  `finger_work_every` varchar(5) COLLATE utf8_unicode_ci DEFAULT '0',
  `finger_work_bonus` varchar(5) COLLATE utf8_unicode_ci DEFAULT '0',
  `finger_work_bonus_remark` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `finger_emp_id` int(11) DEFAULT NULL,
  `finger_days_money` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `finger`
--

INSERT INTO `finger` (`finger_id`, `finger_date_work`, `finger_date_name`, `finger_punch_time`, `finger_work_every`, `finger_work_bonus`, `finger_work_bonus_remark`, `finger_emp_id`, `finger_days_money`) VALUES
(70, '2020-10-02', 'Friday', '2020-10-02 09:30:00', '1', '0', NULL, 1, '677.41935483871'),
(71, '2020-10-02', 'Friday', '2020-10-02 09:16:15', '0.5', '0', NULL, 3, '306.45161290323'),
(94, '2020-10-02', 'Friday', NULL, '0', '0', NULL, 2, '0'),
(95, '2020-10-01', 'Thursday', '2020-10-01 17:15:13', '1', '0', NULL, 1, '677.41935483871'),
(96, '2020-10-01', 'Thursday', NULL, '0', '0', NULL, 2, '0'),
(97, '2020-10-01', 'Thursday', '2020-10-01 07:46:37', '1', '0', NULL, 3, '612.90322580645'),
(117, '2020-10-03', 'Saturday', NULL, '0', '1', 'ทดสอบ', 1, '677.41935483871'),
(118, '2020-10-03', 'Saturday', '2020-10-03 10:53:05', '1', '1', 'ทดสอบ', 2, '1161.2903225806'),
(119, '2020-10-03', 'Saturday', '2020-10-03 10:53:05', '1', '1', 'ทดสอบ', 3, '1225.8064516129'),
(123, '2020-10-09', 'Friday', NULL, '0', '0', NULL, 1, '0'),
(124, '2020-10-09', 'Friday', NULL, '0', '0', NULL, 2, '0'),
(125, '2020-10-09', 'Friday', NULL, '0', '0', NULL, 3, '0');

-- --------------------------------------------------------

--
-- Table structure for table `month_item_emp_report`
--

CREATE TABLE `month_item_emp_report` (
  `month_item_id` int(11) NOT NULL,
  `emp_pin` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `month_item_date` date DEFAULT NULL,
  `days_work_in` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `days_work_not_in` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `days_work_ot` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `money_of_day` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `totel_money` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `month_salary` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `month_item_emp_report`
--

INSERT INTO `month_item_emp_report` (`month_item_id`, `emp_pin`, `month_item_date`, `days_work_in`, `days_work_not_in`, `days_work_ot`, `money_of_day`, `totel_money`, `month_salary`) VALUES
(7, '001', '2020-10-01', '2', '2', '1', '645.16129032258', '2032.2580645161', '21000'),
(8, '002', '2020-10-01', '1', '3', '1', '580.64516129032', '1161.2903225806', '18000'),
(9, '003', '2020-10-01', '3', '1', '1', '596.77419354839', '2145.1612903226', '19000');

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `setting_id` int(11) NOT NULL,
  `setting_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `setting_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`setting_id`, `setting_name`, `setting_value`) VALUES
(1, 'work_in_days', '31');

-- --------------------------------------------------------

--
-- Table structure for table `special_day`
--

CREATE TABLE `special_day` (
  `special_day_id` int(11) NOT NULL,
  `special_day_date` date DEFAULT NULL,
  `special_day_remark` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `special_day_status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `special_day`
--

INSERT INTO `special_day` (`special_day_id`, `special_day_date`, `special_day_remark`, `special_day_status`) VALUES
(4, '2020-10-13', 'วันคล้ายวันสวรรคต พระบาทสมเด็จพระบรมชนกาธิเบศร มหาภูมิพลอดุลยเดชมหาราช บรมนาถบพิตร         ', 1),
(5, '2020-10-23', 'วันปิยมหาราช', 1),
(6, '2020-12-07', 'ชดเชยวันคล้ายวันพระบรมราชสมภพของพระบาทสมเด็จพระบรมชนกาธิเบศร มหาภูมิพลอดุลยเดชมหาราช บรมนาถบพิตร วันชาติ และวันพ่อแห่งชาติ', 1),
(7, '2020-12-10', 'วันพระราชทานรัฐธรรมนูญ', 1),
(8, '2020-12-31', 'วันสิ้นปี', 1),
(9, '2020-10-03', 'ทดสอบ', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Thitipong Inlom', 'nice', '$2y$10$sCtYmFQ8cQ60nE5EnADi/.18l4f.5ijkJzvepF9iEjakCZhs2tLoi', NULL, '2020-10-01 03:52:01', '2020-10-01 03:52:01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`emp_id`);

--
-- Indexes for table `finger`
--
ALTER TABLE `finger`
  ADD PRIMARY KEY (`finger_id`);

--
-- Indexes for table `month_item_emp_report`
--
ALTER TABLE `month_item_emp_report`
  ADD PRIMARY KEY (`month_item_id`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`setting_id`);

--
-- Indexes for table `special_day`
--
ALTER TABLE `special_day`
  ADD PRIMARY KEY (`special_day_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `emp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `finger`
--
ALTER TABLE `finger`
  MODIFY `finger_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT for table `month_item_emp_report`
--
ALTER TABLE `month_item_emp_report`
  MODIFY `month_item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `setting_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `special_day`
--
ALTER TABLE `special_day`
  MODIFY `special_day_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
