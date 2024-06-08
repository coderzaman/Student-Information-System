-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 08, 2024 at 05:45 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sms_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `username` varchar(127) NOT NULL,
  `password` varchar(255) NOT NULL,
  `fname` varchar(127) NOT NULL,
  `lname` varchar(127) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `username`, `password`, `fname`, `lname`) VALUES
(1, 'admin', '$2y$10$H7obJEdmLzqqcPy7wQWhsOLUvrgzC8f1Y1or2Gxaza5z1PT0tvLy6', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `courseCode` varchar(10) NOT NULL,
  `courseTitle` varchar(100) NOT NULL,
  `credit` varchar(5) NOT NULL,
  `type` varchar(10) NOT NULL,
  `semester` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`courseCode`, `courseTitle`, `credit`, `type`, `semester`) VALUES
('CSE E-1CSE', 'Elective Course', '3.0', 'Theory', '5th'),
('CSE101', 'Introduction to Computer Science', '3.0', 'Theory', '1st'),
('CSE102', 'Programming Fundamentals', '3.0', 'Theory', '1st'),
('CSE102L', 'Programming Fundamentals Lab', '1.5', 'Lab', '1st'),
('CSE111', 'Data Structures and Algorithms', '3.0', 'Theory', '2nd'),
('CSE111L', 'Data Structures and Algorithms Lab', '1.5', 'Lab', '2nd'),
('CSE121', 'Object-Oriented Programming', '3.0', 'Theory', '2nd'),
('CSE121L', 'Object-Oriented Programming Lab', '1.5', 'Lab', '2nd'),
('CSE201', 'Digital Logic Design', '3.0', 'Theory', '3rd'),
('CSE201L', 'Digital Logic Design Lab', '1.5', 'Lab', '3rd'),
('CSE211', 'Computer Organization and Architecture', '3.0', 'Theory', '3rd'),
('CSE211L', 'Computer Organization and Architecture Lab', '1.5', 'Lab', '3rd'),
('CSE221', 'Operating Systems', '3.0', 'Theory', '3rd'),
('CSE221L', 'Operating Systems Lab', '1.5', 'Lab', '3rd'),
('CSE231', 'Database Systems', '3.0', 'Theory', '4th'),
('CSE231L', 'Database Systems Lab', '1.5', 'Lab', '4th'),
('CSE241', 'Computer Networks', '3.0', 'Theory', '4th'),
('CSE241L', 'Computer Networks Lab', '1.5', 'Lab', '4th'),
('CSE251', 'Software Engineering', '3.0', 'Theory', '4th'),
('CSE251P', 'Software Engineering Project', '1.0', 'Project', '4th'),
('CSE301', 'Algorithm Design and Analysis', '3.0', 'Theory', '5th'),
('CSE311', 'Artificial Intelligence', '3.0', 'Theory', '5th'),
('CSE321', 'Computer Graphics', '3.0', 'Theory', '5th'),
('CSE321L', 'Computer Graphics Lab', '1.5', 'Lab', '5th'),
('CSE331', 'Web Technologies', '3.0', 'Theory', '6th'),
('CSE331L', 'Web Technologies Lab', '1.5', 'Lab', '6th'),
('CSE341', 'Computer Security', '3.0', 'Theory', '6th'),
('CSE341L', 'Computer Security Lab', '1.5', 'Lab', '6th'),
('CSE401', 'Compiler Design', '3.0', 'Theory', '7th'),
('CSE411', 'Machine Learning', '3.0', 'Theory', '7th'),
('CSE411L', 'Machine Learning Lab', '1.5', 'Lab', '7th'),
('CSE421', 'Data Mining', '3.0', 'Theory', '7th'),
('CSE421L', 'Data Mining Lab', '1.5', 'Lab', '7th'),
('CSE431', 'Cloud Computing', '3.0', 'Theory', '8th'),
('CSE431L', 'Cloud Computing Lab', '1.5', 'Lab', '8th'),
('CSE441', 'Mobile Computing', '3.0', 'Theory', '8th'),
('CSE441L', 'Mobile Computing Lab', '1.5', 'Lab', '8th'),
('CSE451', 'Capstone Project', '3.0', 'Project', '8th'),
('CSEE02', 'Elective Course-02', '3.0', 'Theory', '6th'),
('MAT101', 'Calculus I', '3.0', 'Theory', '1st'),
('MAT102', 'Calculus II', '3.0', 'Theory', '2nd'),
('PHY101', 'Physics I', '3.0', 'Theory', '1st'),
('PHY101L', 'Physics I Lab', '1.5', 'Lab', '1st'),
('PHY102', 'Physics II', '3.0', 'Theory', '2nd'),
('PHY102L', 'Physics II Lab', '1.5', 'Lab', '2nd');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `depId` int(11) NOT NULL,
  `deptName` varchar(255) DEFAULT NULL,
  `deptHead` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`depId`, `deptName`, `deptHead`) VALUES
(1, 'Computer Science & Engineering', 'Ratul Khan'),
(2, 'Electrical and Electronics Enigineering', 'Abdullah'),
(4, 'Civil Engineering', 'Abdur Rahman');

-- --------------------------------------------------------

--
-- Table structure for table `fee`
--

CREATE TABLE `fee` (
  `std_id` int(20) DEFAULT NULL,
  `std_name` varchar(100) DEFAULT NULL,
  `department` varchar(100) DEFAULT NULL,
  `semester` varchar(20) DEFAULT NULL,
  `year` varchar(20) DEFAULT NULL,
  `section` varchar(10) DEFAULT NULL,
  `tution_fee` varchar(10) DEFAULT NULL,
  `lab_fee` varchar(10) DEFAULT NULL,
  `library_fee` varchar(10) DEFAULT NULL,
  `medicalFee` varchar(255) DEFAULT NULL,
  `other_fee` varchar(10) DEFAULT NULL,
  `total_fee` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `student_id` varchar(200) DEFAULT NULL,
  `student_name` varchar(255) DEFAULT NULL,
  `rating` varchar(10) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`student_id`, `student_name`, `rating`, `comment`) VALUES
('13', 'Abdullah Al Mamun', '4.6', 'Test Feedback'),
('13', 'Abdullah Al Mamun', '5', 'Good'),
('13', 'Abdullah Al Mamun', '4.6', 'sadfsa');

-- --------------------------------------------------------

--
-- Table structure for table `gpa`
--

CREATE TABLE `gpa` (
  `std_id` varchar(200) DEFAULT NULL,
  `department` varchar(200) DEFAULT NULL,
  `semester` varchar(100) DEFAULT NULL,
  `year` varchar(150) DEFAULT NULL,
  `intake` varchar(150) DEFAULT NULL,
  `sgpa` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gpa`
--

INSERT INTO `gpa` (`std_id`, `department`, `semester`, `year`, `intake`, `sgpa`) VALUES
('13', 'Computer Science & Engineering', 'Spring', '2024', '1', '3.95'),
('16', 'Computer Science & Engineering', 'Spring', '2024', '1', '3.8'),
('17', 'Computer Science & Engineering', 'Spring', '2024', '1', '3.85'),
('29', 'Computer Science & Engineering', 'Spring', '2024', '1', '3.75'),
('30', 'Computer Science & Engineering', 'Spring', '2024', '1', '3.85'),
('31', 'Computer Science & Engineering', 'Spring', '2024', '1', '2.6'),
('32', 'Computer Science & Engineering', 'Spring', '2024', '1', '3.7'),
('33', 'Computer Science & Engineering', 'Spring', '2024', '1', '3.9');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `message_id` int(11) NOT NULL,
  `sender_full_name` varchar(100) NOT NULL,
  `sender_email` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `date_time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`message_id`, `sender_full_name`, `sender_email`, `message`, `date_time`) VALUES
(1, 'Aktaruzzaman', 'coder.aktar@gmail.com', 'Test', '2024-06-06 17:25:19'),
(2, 'Aktaruzzaman', 'coder.aktar@gmail.com', 'I need somthing', '2024-06-07 16:03:12'),
(3, 'Aktaruzzaman', 'coder.aktar@gmail.com', 'I want somthing', '2024-06-07 17:49:38'),
(4, 'Aktaruzzaman', 'coder.aktar@gmail.com', 'I want something now', '2024-06-07 20:27:53'),
(5, 'Aktaruzzaman', 'coder.aktar@gmail.com', 'lk;s\\', '2024-06-08 13:36:50');

-- --------------------------------------------------------

--
-- Table structure for table `register_std_course`
--

CREATE TABLE `register_std_course` (
  `std_id` int(11) DEFAULT NULL,
  `std_name` varchar(250) DEFAULT NULL,
  `courseTitle` varchar(100) DEFAULT NULL,
  `courseCode` varchar(200) DEFAULT NULL,
  `credit` varchar(5) DEFAULT NULL,
  `semester` varchar(20) DEFAULT NULL,
  `year` varchar(4) DEFAULT NULL,
  `semester_no` varchar(10) DEFAULT NULL,
  `department` varchar(100) DEFAULT NULL,
  `section` varchar(10) DEFAULT NULL,
  `intake` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `result`
--

CREATE TABLE `result` (
  `tech_id` varchar(200) DEFAULT NULL,
  `std_id` varchar(200) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `courseCode` varchar(200) DEFAULT NULL,
  `courseName` varchar(200) DEFAULT NULL,
  `credit` varchar(200) DEFAULT NULL,
  `semester` varchar(200) DEFAULT NULL,
  `year` varchar(200) DEFAULT NULL,
  `section` varchar(200) DEFAULT NULL,
  `intake` varchar(200) DEFAULT NULL,
  `mark` varchar(200) DEFAULT NULL,
  `grade` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `result`
--

INSERT INTO `result` (`tech_id`, `std_id`, `department`, `courseCode`, `courseName`, `credit`, `semester`, `year`, `section`, `intake`, `mark`, `grade`) VALUES
('8', '13', 'Computer Science & Engineering', 'CSE101', 'Introduction to Computer Science', '3.0', 'Spring', '2024', '1', '1', '85', 'A+'),
('8', '16', 'Computer Science & Engineering', 'CSE101', 'Introduction to Computer Science', '3.0', 'Spring', '2024', '1', '1', '70', 'A-'),
('8', '17', 'Computer Science & Engineering', 'CSE101', 'Introduction to Computer Science', '3.0', 'Spring', '2024', '1', '1', '85', 'A+'),
('8', '29', 'Computer Science & Engineering', 'CSE101', 'Introduction to Computer Science', '3.0', 'Spring', '2024', '1', '1', '70', 'A-'),
('8', '30', 'Computer Science & Engineering', 'CSE101', 'Introduction to Computer Science', '3.0', 'Spring', '2024', '1', '1', '85', 'A+'),
('8', '31', 'Computer Science & Engineering', 'CSE101', 'Introduction to Computer Science', '3.0', 'Spring', '2024', '1', '1', '85', 'A+'),
('8', '32', 'Computer Science & Engineering', 'CSE101', 'Introduction to Computer Science', '3.0', 'Spring', '2024', '1', '1', '70', 'A-'),
('8', '33', 'Computer Science & Engineering', 'CSE101', 'Introduction to Computer Science', '3.0', 'Spring', '2024', '1', '1', '85', 'A+'),
('8', '13', 'Computer Science & Engineering', 'CSE102', 'Programming Fundamentals', '3.0', 'Spring', '2024', '1', '1', '85', 'A+'),
('8', '16', 'Computer Science & Engineering', 'CSE102', 'Programming Fundamentals', '3.0', 'Spring', '2024', '1', '1', '70', 'A-'),
('8', '17', 'Computer Science & Engineering', 'CSE102', 'Programming Fundamentals', '3.0', 'Spring', '2024', '1', '1', '85', 'A+'),
('8', '29', 'Computer Science & Engineering', 'CSE102', 'Programming Fundamentals', '3.0', 'Spring', '2024', '1', '1', '85', 'A+'),
('8', '30', 'Computer Science & Engineering', 'CSE102', 'Programming Fundamentals', '3.0', 'Spring', '2024', '1', '1', '70', 'A-'),
('8', '31', 'Computer Science & Engineering', 'CSE102', 'Programming Fundamentals', '3.0', 'Spring', '2024', '1', '1', '50', 'C+'),
('8', '32', 'Computer Science & Engineering', 'CSE102', 'Programming Fundamentals', '3.0', 'Spring', '2024', '1', '1', '70', 'A-'),
('8', '33', 'Computer Science & Engineering', 'CSE102', 'Programming Fundamentals', '3.0', 'Spring', '2024', '1', '1', '70', 'A-'),
('8', '13', 'Computer Science & Engineering', 'CSE102L', 'Programming Fundamentals Lab', '1.5', 'Spring', '2024', '1', '1', '70', 'A-'),
('8', '16', 'Computer Science & Engineering', 'CSE102L', 'Programming Fundamentals Lab', '1.5', 'Spring', '2024', '1', '1', '85', 'A+'),
('8', '17', 'Computer Science & Engineering', 'CSE102L', 'Programming Fundamentals Lab', '1.5', 'Spring', '2024', '1', '1', '70', 'A-'),
('8', '29', 'Computer Science & Engineering', 'CSE102L', 'Programming Fundamentals Lab', '1.5', 'Spring', '2024', '1', '1', '70', 'A-'),
('8', '30', 'Computer Science & Engineering', 'CSE102L', 'Programming Fundamentals Lab', '1.5', 'Spring', '2024', '1', '1', '70', 'A-'),
('8', '31', 'Computer Science & Engineering', 'CSE102L', 'Programming Fundamentals Lab', '1.5', 'Spring', '2024', '1', '1', '85', 'A+'),
('8', '32', 'Computer Science & Engineering', 'CSE102L', 'Programming Fundamentals Lab', '1.5', 'Spring', '2024', '1', '1', '85', 'A+'),
('8', '33', 'Computer Science & Engineering', 'CSE102L', 'Programming Fundamentals Lab', '1.5', 'Spring', '2024', '1', '1', '85', 'A+'),
('14', '13', 'Computer Science & Engineering', 'MAT101', 'Calculus I', '3.0', 'Spring', '2024', '1', '1', '85', 'A+'),
('14', '16', 'Computer Science & Engineering', 'MAT101', 'Calculus I', '3.0', 'Spring', '2024', '1', '1', '85', 'A+'),
('14', '17', 'Computer Science & Engineering', 'MAT101', 'Calculus I', '3.0', 'Spring', '2024', '1', '1', '70', 'A-'),
('14', '29', 'Computer Science & Engineering', 'MAT101', 'Calculus I', '3.0', 'Spring', '2024', '1', '1', '70', 'A-'),
('14', '30', 'Computer Science & Engineering', 'MAT101', 'Calculus I', '3.0', 'Spring', '2024', '1', '1', '85', 'A+'),
('14', '31', 'Computer Science & Engineering', 'MAT101', 'Calculus I', '3.0', 'Spring', '2024', '1', '1', '13', 'F'),
('14', '32', 'Computer Science & Engineering', 'MAT101', 'Calculus I', '3.0', 'Spring', '2024', '1', '1', '70', 'A-'),
('14', '33', 'Computer Science & Engineering', 'MAT101', 'Calculus I', '3.0', 'Spring', '2024', '1', '1', '85', 'A+'),
('14', '13', 'Computer Science & Engineering', 'PHY101', 'Physics I', '3.0', 'Spring', '2024', '1', '1', '85', 'A+'),
('14', '16', 'Computer Science & Engineering', 'PHY101', 'Physics I', '3.0', 'Spring', '2024', '1', '1', '85', 'A+'),
('14', '17', 'Computer Science & Engineering', 'PHY101', 'Physics I', '3.0', 'Spring', '2024', '1', '1', '85', 'A+'),
('14', '29', 'Computer Science & Engineering', 'PHY101', 'Physics I', '3.0', 'Spring', '2024', '1', '1', '85', 'A+'),
('14', '30', 'Computer Science & Engineering', 'PHY101', 'Physics I', '3.0', 'Spring', '2024', '1', '1', '85', 'A+'),
('14', '31', 'Computer Science & Engineering', 'PHY101', 'Physics I', '3.0', 'Spring', '2024', '1', '1', '50', 'C+'),
('14', '32', 'Computer Science & Engineering', 'PHY101', 'Physics I', '3.0', 'Spring', '2024', '1', '1', '85', 'A+'),
('14', '33', 'Computer Science & Engineering', 'PHY101', 'Physics I', '3.0', 'Spring', '2024', '1', '1', '85', 'A+'),
('14', '13', 'Computer Science & Engineering', 'PHY101L', 'Physics I Lab', '1.5', 'Spring', '2024', '1', '1', '85', 'A+'),
('14', '16', 'Computer Science & Engineering', 'PHY101L', 'Physics I Lab', '1.5', 'Spring', '2024', '1', '1', '85', 'A+'),
('14', '17', 'Computer Science & Engineering', 'PHY101L', 'Physics I Lab', '1.5', 'Spring', '2024', '1', '1', '85', 'A+'),
('14', '29', 'Computer Science & Engineering', 'PHY101L', 'Physics I Lab', '1.5', 'Spring', '2024', '1', '1', '85', 'A+'),
('14', '30', 'Computer Science & Engineering', 'PHY101L', 'Physics I Lab', '1.5', 'Spring', '2024', '1', '1', '85', 'A+'),
('14', '31', 'Computer Science & Engineering', 'PHY101L', 'Physics I Lab', '1.5', 'Spring', '2024', '1', '1', '85', 'A+'),
('14', '32', 'Computer Science & Engineering', 'PHY101L', 'Physics I Lab', '1.5', 'Spring', '2024', '1', '1', '85', 'A+'),
('14', '33', 'Computer Science & Engineering', 'PHY101L', 'Physics I Lab', '1.5', 'Spring', '2024', '1', '1', '85', 'A+');

-- --------------------------------------------------------

--
-- Table structure for table `sem_course_list`
--

CREATE TABLE `sem_course_list` (
  `dept` varchar(100) DEFAULT NULL,
  `year` varchar(100) DEFAULT NULL,
  `semester` varchar(100) DEFAULT NULL,
  `intake` varchar(255) DEFAULT NULL,
  `section` varchar(255) DEFAULT NULL,
  `semno` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sem_course_list`
--

INSERT INTO `sem_course_list` (`dept`, `year`, `semester`, `intake`, `section`, `semno`) VALUES
('Computer Science & Engineering', '2024', 'Spring', '1', '1', '1st'),
('Computer Science & Engineering', '2024', 'Fall', '1', '1', '2nd'),
('Computer Science & Engineering', '2025', 'Spring', '1', '1', '3rd'),
('Computer Science & Engineering', '2025', 'Fall', '1', '1', '4th'),
('Computer Science & Engineering', '2026', 'Spring', '1', '1', '5th'),
('Computer Science & Engineering', '2026', 'Fall', '1', '1', '6th'),
('Computer Science & Engineering', '2027', 'Spring', '1', '1', '7th'),
('Computer Science & Engineering', '2027', 'Fall', '1', '1', '8th'),
('Computer Science & Engineering', '2024', 'Fall', '2', '1', '1st'),
('Computer Science & Engineering', '2025', 'Spring', '2', '1', '2nd'),
('Computer Science & Engineering', '2025', 'Fall', '2', '1', '3rd'),
('Computer Science & Engineering', '2026', 'Spring', '2', '1', '4th'),
('Computer Science & Engineering', '2026', 'Fall', '2', '1', '5th'),
('Computer Science & Engineering', '2027', 'Spring', '2', '1', '6th'),
('Computer Science & Engineering', '2027', 'Fall', '2', '1', '7th'),
('Computer Science & Engineering', '2028', 'Spring', '2', '1', '8th');

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `current_year` int(11) NOT NULL,
  `current_semester` varchar(11) NOT NULL,
  `school_name` varchar(100) NOT NULL,
  `slogan` varchar(300) NOT NULL,
  `about` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`current_year`, `current_semester`, `school_name`, `slogan`, `about`) VALUES
(2024, 'Spring', 'Student Information System', 'Your Source for Academic Information', 'This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `student_id` int(11) NOT NULL,
  `username` varchar(127) NOT NULL,
  `password` varchar(255) NOT NULL,
  `fname` varchar(127) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `section` int(11) NOT NULL,
  `address` varchar(31) NOT NULL,
  `gender` varchar(7) NOT NULL,
  `email_address` varchar(255) NOT NULL,
  `date_of_birth` date NOT NULL,
  `date_of_joined` timestamp NULL DEFAULT current_timestamp(),
  `parent_fname` varchar(127) NOT NULL,
  `parent_lname` varchar(127) NOT NULL,
  `parent_phone_number` varchar(31) NOT NULL,
  `intake` varchar(30) DEFAULT NULL,
  `department` varchar(100) DEFAULT NULL,
  `semester` varchar(100) DEFAULT NULL,
  `year` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`student_id`, `username`, `password`, `fname`, `lname`, `section`, `address`, `gender`, `email_address`, `date_of_birth`, `date_of_joined`, `parent_fname`, `parent_lname`, `parent_phone_number`, `intake`, `department`, `semester`, `year`) VALUES
(13, 'abdullah', '$2y$10$hcAHJQrMWLtcs/eEp8/JGOz.hB8PF4U0dpZe.fty5uJXk4veHEHSy', 'Abdullah', 'Al Mamun', 1, 'Mirpur', 'Male', 'abdullah@gmail.com', '2024-05-16', '2024-05-13 18:36:14', 'Parent First Name', 'Pr Last Name', '02938848392', '1', 'Computer Science & Engineering', 'Spring', '2024'),
(16, 'siam', '$2y$10$lopNnO0q0v94yb1S8zHyIOS9Nj8/tckG6sqjW.TYShUF4md49QUT6', 'Siam', 'Hossain', 1, 'Mirpur', 'Male', 'siam@gmail.com', '1992-01-01', '2024-05-15 07:47:32', 'parenrt', 'parenrt', '019245673', '1', 'Computer Science & Engineering', 'Spring', '2024'),
(17, 'prantofall', '$2y$10$e0FOUzhp2oJnrYFTNolKduYsKioNogdXY.SZ3XVgczhIB/XJAfLJC', 'Naim Hossain', 'Pranto', 1, 'Mirpur', 'Male', 'Pranto@gmail.com', '2024-05-17', '2024-05-15 07:49:42', 'Parant ', 'parenrt', '019384565', '1', 'Computer Science & Engineering', 'Spring', '2024'),
(18, 'shakib', '$2y$10$RqP.kWiKyh29CUbdoyCVpOCQOcnpKYbNv2GyGVzo7HgOrXpdMKvuK', 'Shakib Al', 'Hasan', 1, 'Mirpur', 'Male', 'shakib@gmail.com', '1998-12-21', '2024-05-15 07:51:15', 'parenrt', 'parenrt', '0192838456', '2', 'Computer Science & Engineering', 'Spring', '2024'),
(19, 'tamim', '$2y$10$SNYxr0FI8oUgpvnczwszKueBsv7yIltxCxW.46WAzze05kWzeJMRe', 'Tamim Iqbal', 'Khan', 1, 'Mirpur', 'Male', 'tamim@gmail.com', '1998-09-12', '2024-05-15 07:52:09', 'pare', 'parenrt', '0193884733', '2', 'Computer Science & Engineering', 'Spring', '2024'),
(20, 'asdfas', '$2y$10$Zl.6Y.nFu19zdy/7IKYtJ.lbyDEt96lR.RtgqjiyR2hd4.l7rNKZm', 'asdf', 'asdfasf', 1, 'sadf', 'Male', 'sdafa', '2024-05-20', '2024-05-18 15:30:07', 'Parent First Name', 'Pr Last Name', '02938848392', '2', 'Computer Science & Engineering', 'Spring', '2024'),
(21, 'sadfasf', '$2y$10$VQAI44Hoz6Ebt9D23Vjo6usqDwgjMgtu7MLnTDoxCgVy2AIoZpbB2', 'sadfsaf', 'sadfasf', 1, 'sadfsa', 'Male', 'asdfs', '2024-05-01', '2024-05-18 15:30:29', 'asdf', 'asdf', '02938848392', '2', 'Computer Science & Engineering', 'Spring', '2024'),
(22, 'asd', '$2y$10$AQgrL4NzZngzQ3KPkfyg0uT/7kxmSfILGoM..WHe1SetiA8hcnNYG', 'Asiqur', 'Rahman', 1, 'Mirpur', 'Male', 'asiqur@gmail.com', '2024-06-05', '2024-06-03 09:57:44', 'Parent First Name', 'Pr Last Name', '02938848392', '2', 'Computer Science & Engineering', 'Spring', '2024'),
(23, 'aktar', '$2y$10$3/zE/LUh.8fencXlNunGvOzbP.t/nE7pPmJRPdHFQv/JblYTbEidS', 'Md', 'Aktaruzzaman', 1, 'Coxs\'s Bazar', 'Male', 'zaman@gmail.com', '2024-06-19', '2024-06-07 11:51:51', 'Parent First Name', 'Pr Last Name', '0198782182', '2', 'Computer Science & Engineering', 'Spring', '2024'),
(28, 'aktarz', '$2y$10$ZCXfFhHFjMpqo0SVDbfHPe1rF8IRVQPstyEd7T6igPrb42axlRQ5a', 'Aktaruzzaman', 'Abdullah', 1, 'Coxs\'s Bazar', 'Male', 'zaman@gmail.com', '2024-06-13', '2024-06-07 13:11:02', 'Parent First Name', 'Pr Last Name', '0198782182', '2', 'Computer Science & Engineering', 'Spring', '2024'),
(29, 'aktare', '$2y$10$3C/4JC1D0l22PQAABFmBo.8lq79F9gWs1Jm0Ob14l6AbMsu5qzEK2', 'Aktaruzzaman', 'Alam', 1, 'Coxs\'s Bazar', 'Male', 'zaman@gmail.com', '2024-06-19', '2024-06-08 07:31:08', '', '', '015528742201', '1', 'Computer Science & Engineering', 'Spring', '2024'),
(30, 'aktarcoder', '$2y$10$cx1yVuul7RnkuicnX2O0heMmEGVNbC//umypjp9ev0/UdXXElgMQG', 'Aktaruzzaman', 'Abdullah', 1, 'Coxs\'s Bazar', 'Male', 'zaman@gmail.com', '2024-06-20', '2024-06-08 07:31:45', '', '', '0192983883', '1', 'Computer Science & Engineering', 'Spring', '2024'),
(31, 'aktarcoderz', '$2y$10$RKhSQPmuCakHW.crCd8WYeupxryYDB9hUjgpsEtGstcUmkWceFND2', 'Aktaruzzaman', 'Abdullah', 1, 'Coxs\'s Bazar', 'Male', 'zaman@gmail.com', '2024-06-20', '2024-06-08 07:33:06', '', '', '0192983883', '1', 'Computer Science & Engineering', 'Spring', '2024'),
(32, 'aktarzfds', '$2y$10$h1DFLZt.qqp7dc/yzJxwHe1.9ZJNB1Hsb12.ywHmsdeSZD8totVtm', 'Aktaruzzaman', 'Alam', 1, 'cox', 'Male', 'asiqur@gmail.com', '2024-06-16', '2024-06-08 07:35:11', '', '', '0192983883', '1', 'Computer Science & Engineering', 'Spring', '2024'),
(33, 'aktardsf', '$2y$10$XEhr4eajA42YwOWvJhe7P.BIqVgYLllrMdyP3SQvtG7nXn7Q7U52W', 'Aktaruzzaman', 'Abdullah', 1, 'asdf', 'Male', 'zaman@gmail.com', '2024-06-24', '2024-06-08 07:36:01', '', '', '0192983883', '1', 'Computer Science & Engineering', 'Spring', '2024');

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `teacher_id` int(11) NOT NULL,
  `username` varchar(127) NOT NULL,
  `password` varchar(255) NOT NULL,
  `fname` varchar(127) NOT NULL,
  `lname` varchar(127) NOT NULL,
  `address` varchar(31) NOT NULL,
  `employee_number` int(11) NOT NULL,
  `date_of_birth` date DEFAULT NULL,
  `phone_number` varchar(31) NOT NULL,
  `qualification` varchar(127) NOT NULL,
  `gender` varchar(7) NOT NULL,
  `email_address` varchar(255) NOT NULL,
  `date_of_joined` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`teacher_id`, `username`, `password`, `fname`, `lname`, `address`, `employee_number`, `date_of_birth`, `phone_number`, `qualification`, `gender`, `email_address`, `date_of_joined`) VALUES
(8, 'MRA', '$2y$10$j2Y6hZiFdkPLxysBv0UtYe/B5IQ74tPnq9avNMgMZuqnlfS8RYXfK', 'Mohammad Raisul', 'Alam', 'Mirpur', 1201454, '2024-05-20', '015528742201', 'M.  Sc', 'Male', 'mra@gmail.com', '2024-05-11 14:18:05'),
(14, 'AR', '$2y$10$F66Tmt8VVB1tiNKNkSJEgeWhn8zzpEXiXxVcEwANJnJ6.SWEMyzR2', 'Asiqur', 'Rahman', 'Mirpur', 120145, '2024-05-14', '0254411521', 'M.  Sc', 'Male', 'asiqur@gmail.com', '2024-05-13 23:21:56'),
(15, 'MSH', '$2y$10$Bw56Jw7wSFjW2mRBwBbyIuBtSfzHK.N2kVDJOEfT9TfU7w9C7KbcC', 'Md Shamim', 'Hossain', 'Mirpur', 124522, '2024-05-25', '015528742201', 'M.  Sc', 'Male', 'zaman@gmail.com', '2024-05-14 00:41:00'),
(16, 'ehan', '$2y$10$4miWIAcRAjeoY0jELordAeNkXLfAfyjjD09f5OBCietwTqdSL54pC', 'Ihan ', 'Mostanor', 'Mirpur', 7667877, '2024-06-01', '0188239934', 'M. Sc', 'Male', 'ehan@gmail.com', '2024-05-15 13:58:27');

-- --------------------------------------------------------

--
-- Table structure for table `tech_reg_courses`
--

CREATE TABLE `tech_reg_courses` (
  `teacher_id` int(11) DEFAULT NULL,
  `course_name` varchar(100) DEFAULT NULL,
  `course_code` varchar(100) DEFAULT NULL,
  `credit` varchar(15) DEFAULT NULL,
  `department` varchar(40) DEFAULT NULL,
  `semester` varchar(12) DEFAULT NULL,
  `year` varchar(10) DEFAULT NULL,
  `section` varchar(30) DEFAULT NULL,
  `intake` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`depId`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`message_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`student_id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`teacher_id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `tech_reg_courses`
--
ALTER TABLE `tech_reg_courses`
  ADD KEY `teacher_id` (`teacher_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `depId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `teacher_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tech_reg_courses`
--
ALTER TABLE `tech_reg_courses`
  ADD CONSTRAINT `tech_reg_courses_ibfk_1` FOREIGN KEY (`teacher_id`) REFERENCES `teachers` (`teacher_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
