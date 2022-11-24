-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 24, 2022 at 04:12 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eims2`
--

-- --------------------------------------------------------

--
-- Table structure for table `grievance_remark`
--

CREATE TABLE `grievance_remark` (
  `id` int(11) NOT NULL,
  `complaint_no` bigint(20) NOT NULL,
  `remark` varchar(200) NOT NULL,
  `updatetime` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `grivence_category`
--

CREATE TABLE `grivence_category` (
  `id` bigint(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `grivence_category`
--

INSERT INTO `grivence_category` (`id`, `name`) VALUES
(1, 'Hostel'),
(2, 'College');

-- --------------------------------------------------------

--
-- Table structure for table `grivence_register`
--

CREATE TABLE `grivence_register` (
  `complaint_no` int(11) NOT NULL,
  `student_id` bigint(11) NOT NULL,
  `category` varchar(100) NOT NULL,
  `grivence_type` varchar(100) NOT NULL,
  `dean_type` varchar(100) NOT NULL,
  `noc` varchar(100) NOT NULL,
  `grivence_details` varchar(200) NOT NULL,
  `doucement` varchar(100) NOT NULL,
  `status` varchar(50) NOT NULL,
  `register_date` datetime NOT NULL DEFAULT current_timestamp(),
  `update_date` datetime NOT NULL DEFAULT current_timestamp(),
  `remark` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `grivence_register`
--

INSERT INTO `grivence_register` (`complaint_no`, `student_id`, `category`, `grivence_type`, `dean_type`, `noc`, `grivence_details`, `doucement`, `status`, `register_date`, `update_date`, `remark`) VALUES
(20, 4, 'college', 'General Query', 'administative', 'ass', 'ghghhgvj', 'Screenshot (22).png', 'Inprogress', '2022-11-23 18:40:10', '2022-11-23 18:40:10', ''),
(21, 3, 'hostel', 'General Query', 'principal', 'ffr', 'dcdd', 'Screenshot (7).png', 'Rejected', '2022-11-23 18:51:31', '2022-11-23 18:51:31', 'cxxzxxxzxxzzxzxzxxzxx'),
(22, 4, 'hostel', 'Complaint', 'student_affires', 'vvc', 'ss', 'Screenshot (19).png', 'Rejected', '2022-11-23 18:52:41', '2022-11-23 18:52:41', 'dc');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` bigint(20) NOT NULL,
  `image` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `reg_no` varchar(100) NOT NULL,
  `stream` varchar(100) NOT NULL,
  `department` varchar(100) NOT NULL,
  `admission_date` date NOT NULL,
  `dob` date NOT NULL,
  `gender` varchar(50) NOT NULL,
  `nationality` varchar(50) NOT NULL,
  `mothertounge` varchar(50) NOT NULL,
  `cast` varchar(50) NOT NULL,
  `religion` varchar(50) NOT NULL,
  `adhar_no` bigint(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `adress` varchar(200) NOT NULL,
  `city` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `pincode` bigint(20) NOT NULL,
  `country` varchar(50) NOT NULL,
  `birth_place` varchar(50) NOT NULL,
  `father_name` varchar(100) NOT NULL,
  `mother_name` varchar(100) NOT NULL,
  `contact_no` bigint(20) NOT NULL,
  `father_contact_no` bigint(20) NOT NULL,
  `mother_contact_no` bigint(20) NOT NULL,
  `father_qualification` varchar(100) NOT NULL,
  `mother_qualification` varchar(100) NOT NULL,
  `father_occupation` varchar(100) NOT NULL,
  `mother_occupation` varchar(100) NOT NULL,
  `blod_group` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `status` varchar(50) NOT NULL,
  `usertype` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `image`, `name`, `reg_no`, `stream`, `department`, `admission_date`, `dob`, `gender`, `nationality`, `mothertounge`, `cast`, `religion`, `adhar_no`, `email`, `adress`, `city`, `state`, `pincode`, `country`, `birth_place`, `father_name`, `mother_name`, `contact_no`, `father_contact_no`, `mother_contact_no`, `father_qualification`, `mother_qualification`, `father_occupation`, `mother_occupation`, `blod_group`, `password`, `status`, `usertype`) VALUES
(3, 'logo.jpg', 'Rajesh Kumar Behera', '1901326059', 'Btech', 'CSE', '2022-11-02', '2022-11-04', 'male', 'indian', 'odia', 'obc', 'hindu', 313461849487, 'beherarabi881@gmail.com', 'At-Chintamanipur, Po-kandagaradi, via-Bahanaga', 'Balasore', 'Orissa', 756042, '', 'Bhadrak', 'Madhusudan Behera', 'Malati Behera', 6290467488, 9668834544, 9668834544, '10', '10', 'Cultivation', 'Cultivation', '0-', '1234', 'active', 'student'),
(4, '', 'sasmita', '1901326058', 'Btech', 'CSE', '0000-00-00', '2022-12-03', 'female', 'indian', 'odia', 'obc', 'hindu', 313461849487, 'beherarabi881@gmail.com', 'At-Chintamanipur, Po-kandagaradi, via-Bahanaga', 'Balasore', 'Orissa', 756042, '', 'Bhadrak', 'Madhusudan Behera', 'Malati Behera', 6290467488, 6290467488, 6290467488, '10', '10', 'Cultivation', 'Cultivation', '0-', '1234', 'active', 'admin'),
(5, '', 'Chitta', '1901326040', 'Btech_Le', 'CIVIL', '0000-00-00', '2022-11-11', 'male', 'indian', 'odia', 'obc', 'hindu', 313461849487, 'c@gmail.com', 'At-Chintamanipur, Po-kandagaradi, via-Bahanaga', 'Balasore', 'Orissa', 756042, '', 'Bhadrak', 'Chittaranjan', 'Malati Behera', 6290467488, 9668834544, 9668834544, '10', '10', 'Cultivation', 'Cultivation', '0-', '1234', 'active', 'dean');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `grievance_remark`
--
ALTER TABLE `grievance_remark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `grivence_category`
--
ALTER TABLE `grivence_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `grivence_register`
--
ALTER TABLE `grivence_register`
  ADD PRIMARY KEY (`complaint_no`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `grivence_register_ibfk_2` (`category`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `grievance_remark`
--
ALTER TABLE `grievance_remark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grivence_category`
--
ALTER TABLE `grivence_category`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `grivence_register`
--
ALTER TABLE `grivence_register`
  MODIFY `complaint_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `grivence_register`
--
ALTER TABLE `grivence_register`
  ADD CONSTRAINT `grivence_register_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
