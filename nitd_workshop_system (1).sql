-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 17, 2023 at 01:10 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nitd_workshop_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `chief_coordinator`
--

CREATE TABLE `chief_coordinator` (
  `chiefcoordinator_id` int(15) DEFAULT NULL,
  `management_skill` varchar(30) NOT NULL,
  `staff_id` int(15) NOT NULL,
  `email` varchar(30) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `chief_coordinator`
--

INSERT INTO `chief_coordinator` (`chiefcoordinator_id`, `management_skill`, `staff_id`, `email`, `name`) VALUES
(10001, 'Good Leadership', 10000101, 'nuwan2@gmail.com', 'nuwan perera'),
(10002, 'Decision-making', 10000102, 'ashen5@gmail.com', 'ashen deshapriya'),
(10003, 'Planning and organization', 10000103, 'pasindu2021@gmail.com', 'pasindu silva'),
(10004, 'Emotional intelligence', 10000104, 'avisha23@gmail.com', 'avisha ravindi');

-- --------------------------------------------------------

--
-- Table structure for table `meeting_room`
--

CREATE TABLE `meeting_room` (
  `Room_ID` int(10) NOT NULL,
  `Capacity` int(10) NOT NULL,
  `floor_number` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `meeting_room`
--

INSERT INTO `meeting_room` (`Room_ID`, `Capacity`, `floor_number`) VALUES
(1, 40, 'F1'),
(2, 30, 'F2'),
(3, 60, 'F3'),
(4, 80, 'F4'),
(5, 150, 'F5');

-- --------------------------------------------------------

--
-- Table structure for table `participant`
--

CREATE TABLE `participant` (
  `participant_ID` int(15) NOT NULL,
  `first_name` varchar(15) NOT NULL,
  `last_name` varchar(15) NOT NULL,
  `Edu_Qualification` varchar(50) NOT NULL,
  `Pro_Qualification` varchar(50) NOT NULL,
  `designation` varchar(40) NOT NULL,
  `mobile_number` int(12) NOT NULL,
  `land_number` int(12) NOT NULL,
  `email` varchar(30) NOT NULL,
  `Work_Place_Location` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `participant`
--

INSERT INTO `participant` (`participant_ID`, `first_name`, `last_name`, `Edu_Qualification`, `Pro_Qualification`, `designation`, `mobile_number`, `land_number`, `email`, `Work_Place_Location`) VALUES
(1001, 'dewmi', 'silva', 'Advanced Level', 'Chartered Accountant (CA)', 'sales manager', 761328236, 119876543, 'dewmisilva1@gmail.com', 'kandy'),
(1002, 'vihindi', 'perera', 'Executive MBA (EMBA)', 'Certified Public Accountant (CPA)', 'HR manager', 778201138, 386745534, 'vihindiperera2@gmail.com', 'colombo'),
(1003, 'vinuka', 'silva', 'Bachelor of Commerce ', 'Certified Information Systems Auditor (CISA)', 'Production manager', 786756453, 113423456, 'vinukasilva3@gmail.com', 'galle'),
(1004, 'thariq', 'musthapha', 'Master of Science in Management', 'Certified Internal Auditor', 'Markerting manager', 754511579, 112734567, 'thariqq1@gmail.com', 'jaffna'),
(1005, 'sanali', 'menushi', 'Project Management Professional', 'Professional Engineer', 'Financial manager', 712345678, 0, 'sanalimenushi9@gmail.com', 'mathara');

-- --------------------------------------------------------

--
-- Table structure for table `resource_person`
--

CREATE TABLE `resource_person` (
  `resource_person_id` int(10) NOT NULL,
  `staff_id` int(10) NOT NULL,
  `catagory` varchar(15) NOT NULL,
  `specialization` varchar(50) NOT NULL,
  `hourly_rate` int(10) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `resource_person`
--

INSERT INTO `resource_person` (`resource_person_id`, `staff_id`, `catagory`, `specialization`, `hourly_rate`, `name`, `email`) VALUES
(100001, 10000105, 'entrepreneur', 'leadership', 10000, 'Samantha perera', 'samantha1@gmaill.com'),
(100002, 10000106, 'academic', 'Time management', 6000, 'Anil Kumara', 'anil99@gmail.com'),
(100003, 10000107, 'industry expert', 'Problem-solving', 20000, 'Niromi Kodithuwakku', 'niromi123@gmail.com'),
(100004, 10000108, 'entrepreneur', 'Time management', 12000, 'jayantha rodrigo', 'jayanthaj@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `session`
--

CREATE TABLE `session` (
  `session_id` int(15) NOT NULL,
  `discussion_topic` varchar(30) NOT NULL,
  `venue` date NOT NULL,
  `start_time` varchar(15) NOT NULL,
  `end_time` varchar(15) NOT NULL,
  `room_id` int(15) DEFAULT NULL,
  `workshop_id` int(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `session`
--

INSERT INTO `session` (`session_id`, `discussion_topic`, `venue`, `start_time`, `end_time`, `room_id`, `workshop_id`) VALUES
(10000001, 'introduction to programming', '0000-00-00', '09.00', '11.00', 5, 10101),
(10000002, 'Sales techniques for salesmen', '0000-00-00', '11.00', '13.00', 5, 10104),
(10000003, 'introduction to digital market', '0000-00-00', '10.00', '12.00', 3, 10102),
(10000004, '1st stage of strategic plannin', '0000-00-00', '14.00', '17.00', 5, 10103),
(10000005, 'introduction to human resource', '0000-00-00', '13.00', '15.00', 3, 10105);

-- --------------------------------------------------------

--
-- Table structure for table `session_participant`
--

CREATE TABLE `session_participant` (
  `session_id` int(15) NOT NULL,
  `participant_id` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `session_participant`
--

INSERT INTO `session_participant` (`session_id`, `participant_id`) VALUES
(10000001, 1001),
(10000002, 1002),
(10000003, 1003),
(10000004, 1004),
(10000005, 1005);

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `Staff_ID` int(10) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Pro_Qualification` varchar(50) NOT NULL,
  `Edu_Qualification` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`Staff_ID`, `Name`, `Pro_Qualification`, `Edu_Qualification`) VALUES
(10000101, 'Gawesh Gomes', '3 years working experiance in management industry', 'BSc Hons data management'),
(10000102, 'Radil damsara', 'Project Management Professional (PMP) for project ', 'Certificate in Human Resources Management'),
(10000103, 'Dinushi Wanniarachchie', 'Experience using Salesforce for sales roles', 'Bachelors degree of political Science'),
(10000104, 'Diyathma Wijewardana', 'Proficiency in Microsoft Office Suite for administ', 'Fluency in multiple programming languages for soft'),
(10000105, 'Sehandu Siriwardhana', '2 years working experiance ', 'Certified Public Accountant (CPA) for accounting a'),
(10000106, 'Yeran rajapaksha', 'Certified Manager', 'Bachelor of Business Administration (BBA)'),
(10000107, 'tharusha silva', 'Certified Supply Chain Professional ', 'Bachelor of Commerce (B.Com)'),
(10000108, 'sandeep thisath', 'Certified Information Systems Security Professiona', 'Executive MBA (EMBA)'),
(10000109, 'vanuja de silva', 'charted manager', 'Postgraduate Diploma in Management (PGDM)'),
(10000110, 'devidi perera', '6 years working experiance', 'Master of Management Studies (MMS)'),
(10000111, 'maneesha costa', 'Project manager in ABC company', 'Project Management Professional (PMP)'),
(10000112, 'chandima kadagoda', 'Resource manager in XYZ company', 'Certified Management Accountant (CMA)');

-- --------------------------------------------------------

--
-- Table structure for table `workshop`
--

CREATE TABLE `workshop` (
  `workshop_id` int(15) NOT NULL,
  `name` varchar(30) NOT NULL,
  `type` varchar(30) NOT NULL,
  `max_capacity` int(10) NOT NULL,
  `reg_fee` decimal(20,0) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `staff_id` int(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `workshop`
--

INSERT INTO `workshop` (`workshop_id`, `name`, `type`, `max_capacity`, `reg_fee`, `start_date`, `end_date`, `staff_id`) VALUES
(10101, 'Introduction to Data Science', 'Educational Workshops', 100, '2000', '2023-01-03', '2023-01-05', 10000101),
(10102, 'Digital Marketing', 'Entrepreneurship Workshops', 60, '3500', '2023-01-19', '2023-01-22', 10000102),
(10103, 'Strategic Planning and Executi', 'Educational Workshops', 80, '1000', '2023-02-02', '2023-02-05', 10000103),
(10104, 'Sales Techniques for Success', 'Business Workshops', 100, '4000', '2023-02-18', '2023-02-21', 10000104),
(10105, 'Human Resources Fundamentals', 'Educational Workshops', 50, '1000', '2023-03-20', '2023-03-23', 10000105);

-- --------------------------------------------------------

--
-- Table structure for table `workshop_coordinator`
--

CREATE TABLE `workshop_coordinator` (
  `workshop_coordinator_id` int(15) DEFAULT NULL,
  `staff_id` int(10) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `workshop_coordinator`
--

INSERT INTO `workshop_coordinator` (`workshop_coordinator_id`, `staff_id`, `name`, `email`) VALUES
(11101, 10000109, 'Ayesh kumara', 'ayesh21@gmail.com'),
(11102, 10000110, 'ayush tishan', 'ayush111@gmail.com'),
(11103, 10000111, 'Dinithi sewmini', 'dinithi2005@gmail.com'),
(11104, 10000112, 'hivin perera', 'hivin88@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `workshop_meetingroom`
--

CREATE TABLE `workshop_meetingroom` (
  `workshop_id` int(15) NOT NULL,
  `room_id` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `workshop_meetingroom`
--

INSERT INTO `workshop_meetingroom` (`workshop_id`, `room_id`) VALUES
(10101, 5),
(10102, 5),
(10103, 3),
(10104, 5),
(10105, 5);

-- --------------------------------------------------------

--
-- Table structure for table `workshop_participant`
--

CREATE TABLE `workshop_participant` (
  `workshop_id` int(15) NOT NULL,
  `participant_id` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `workshop_participant`
--

INSERT INTO `workshop_participant` (`workshop_id`, `participant_id`) VALUES
(10101, 1001),
(10102, 1002),
(10103, 1003),
(10104, 1004),
(10105, 1005);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chief_coordinator`
--
ALTER TABLE `chief_coordinator`
  ADD PRIMARY KEY (`staff_id`);

--
-- Indexes for table `meeting_room`
--
ALTER TABLE `meeting_room`
  ADD PRIMARY KEY (`Room_ID`);

--
-- Indexes for table `participant`
--
ALTER TABLE `participant`
  ADD PRIMARY KEY (`participant_ID`);

--
-- Indexes for table `resource_person`
--
ALTER TABLE `resource_person`
  ADD PRIMARY KEY (`staff_id`);

--
-- Indexes for table `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`session_id`),
  ADD KEY `room_id` (`room_id`),
  ADD KEY `workshop_id` (`workshop_id`);

--
-- Indexes for table `session_participant`
--
ALTER TABLE `session_participant`
  ADD PRIMARY KEY (`session_id`,`participant_id`),
  ADD KEY `participant_id` (`participant_id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`Staff_ID`);

--
-- Indexes for table `workshop`
--
ALTER TABLE `workshop`
  ADD PRIMARY KEY (`workshop_id`),
  ADD KEY `staff_id` (`staff_id`);

--
-- Indexes for table `workshop_coordinator`
--
ALTER TABLE `workshop_coordinator`
  ADD PRIMARY KEY (`staff_id`);

--
-- Indexes for table `workshop_meetingroom`
--
ALTER TABLE `workshop_meetingroom`
  ADD PRIMARY KEY (`workshop_id`,`room_id`),
  ADD KEY `room_id` (`room_id`);

--
-- Indexes for table `workshop_participant`
--
ALTER TABLE `workshop_participant`
  ADD PRIMARY KEY (`workshop_id`,`participant_id`),
  ADD KEY `participant_id` (`participant_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `chief_coordinator`
--
ALTER TABLE `chief_coordinator`
  ADD CONSTRAINT `chief_coordinator_ibfk_1` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`Staff_ID`);

--
-- Constraints for table `resource_person`
--
ALTER TABLE `resource_person`
  ADD CONSTRAINT `resource_person_ibfk_1` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`Staff_ID`);

--
-- Constraints for table `session`
--
ALTER TABLE `session`
  ADD CONSTRAINT `session_ibfk_1` FOREIGN KEY (`room_id`) REFERENCES `meeting_room` (`Room_ID`),
  ADD CONSTRAINT `session_ibfk_2` FOREIGN KEY (`workshop_id`) REFERENCES `workshop` (`workshop_id`);

--
-- Constraints for table `session_participant`
--
ALTER TABLE `session_participant`
  ADD CONSTRAINT `session_participant_ibfk_1` FOREIGN KEY (`session_id`) REFERENCES `session` (`session_id`),
  ADD CONSTRAINT `session_participant_ibfk_2` FOREIGN KEY (`participant_id`) REFERENCES `participant` (`participant_ID`);

--
-- Constraints for table `workshop`
--
ALTER TABLE `workshop`
  ADD CONSTRAINT `workshop_ibfk_1` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`Staff_ID`);

--
-- Constraints for table `workshop_coordinator`
--
ALTER TABLE `workshop_coordinator`
  ADD CONSTRAINT `workshop_coordinator_ibfk_1` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`Staff_ID`);

--
-- Constraints for table `workshop_meetingroom`
--
ALTER TABLE `workshop_meetingroom`
  ADD CONSTRAINT `workshop_meetingroom_ibfk_1` FOREIGN KEY (`workshop_id`) REFERENCES `workshop` (`workshop_id`),
  ADD CONSTRAINT `workshop_meetingroom_ibfk_2` FOREIGN KEY (`room_id`) REFERENCES `meeting_room` (`Room_ID`);

--
-- Constraints for table `workshop_participant`
--
ALTER TABLE `workshop_participant`
  ADD CONSTRAINT `workshop_participant_ibfk_1` FOREIGN KEY (`workshop_id`) REFERENCES `workshop` (`workshop_id`),
  ADD CONSTRAINT `workshop_participant_ibfk_2` FOREIGN KEY (`participant_id`) REFERENCES `participant` (`participant_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
