-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 03, 2025 at 10:13 AM
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
-- Database: `sqlcompetition`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_event`
--

CREATE TABLE `tbl_event` (
  `event_ID` int(5) NOT NULL,
  `event_name` varchar(50) NOT NULL,
  `category` varchar(25) NOT NULL,
  `event_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_event`
--

INSERT INTO `tbl_event` (`event_ID`, `event_name`, `category`, `event_date`) VALUES
(101, 'SQL Competition', 'Programming', '2025-04-15'),
(102, 'Java Programming', 'Programming', '2025-04-14'),
(103, 'Web Design', 'Design', '2025-04-15'),
(104, 'Programming Quiz Bee', 'Programming', '2025-04-15'),
(105, 'Speed Networking', 'Networking', '2025-04-15'),
(106, 'Band Competition', 'Band', '2025-04-15'),
(107, 'Chess', 'Board Games', '2025-04-15'),
(108, 'Dance Sports', 'dance', '2025-04-14');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_facilitator`
--

CREATE TABLE `tbl_facilitator` (
  `facilitator_id` int(5) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `assigned_event_id` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_facilitator`
--

INSERT INTO `tbl_facilitator` (`facilitator_id`, `fullname`, `assigned_event_id`) VALUES
(1, 'March A. Abunda', 101),
(2, 'Cliff Amadeus Evangelio', 103),
(3, 'Christine Joy Sagaosao', 102),
(5, 'Charlene Bulahan-Undag', 106),
(6, 'Justine Roland Partos', 104),
(7, 'Phoebe Ruth Alithea Sudaria', 107);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_registration`
--

CREATE TABLE `tbl_registration` (
  `reg_id` int(5) NOT NULL,
  `student_id` int(5) DEFAULT NULL,
  `event_id` int(5) DEFAULT NULL,
  `registration_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_registration`
--

INSERT INTO `tbl_registration` (`reg_id`, `student_id`, `event_id`, `registration_date`) VALUES
(1, 1, 101, '2025-04-14'),
(2, 2, 107, '2025-04-14'),
(3, 3, 103, '2025-04-14'),
(4, 18, 108, '2025-04-14'),
(5, 19, 105, '2025-04-14'),
(6, 17, 104, '2025-04-14'),
(7, 4, 102, '2025-04-13'),
(8, 6, 102, '2025-04-13'),
(9, 1, 103, '2025-04-12'),
(10, 8, 104, '2025-04-13'),
(11, 11, 104, '2025-04-12'),
(12, 20, 104, '2025-04-13'),
(13, 2, 101, '2025-04-13'),
(14, 3, 102, '2025-04-13'),
(15, 9, 101, '2025-04-12'),
(16, 13, 104, '2025-04-14'),
(17, 16, 101, '2025-04-12'),
(18, 15, 102, '2025-04-14'),
(19, 9, 105, '2025-04-14'),
(20, 1, 105, '2025-04-13'),
(21, 14, 104, '2025-04-12'),
(22, 25, 104, '2025-04-14'),
(23, 2, 105, '2025-04-13'),
(24, 22, 101, '2025-04-14'),
(25, 21, 102, '2025-04-14'),
(26, 13, 104, '2025-04-13'),
(27, 26, 101, '2025-04-14'),
(28, 26, 104, '2025-04-14'),
(29, 27, 104, '2025-04-12'),
(30, 28, 102, '2025-04-14'),
(31, 28, 104, '2025-04-12'),
(32, 29, 102, '2025-04-13'),
(33, 29, 101, '2025-04-13'),
(34, 30, 102, '2025-04-13'),
(35, 30, 101, '2025-04-13'),
(36, 30, 104, '2025-04-13');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_score`
--

CREATE TABLE `tbl_score` (
  `score_id` int(5) NOT NULL,
  `reg_id` int(5) NOT NULL,
  `score` int(5) NOT NULL,
  `level` varchar(10) NOT NULL,
  `remarks` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_score`
--

INSERT INTO `tbl_score` (`score_id`, `reg_id`, `score`, `level`, `remarks`) VALUES
(1, 1, 98, 'Easy', 'Passed'),
(2, 2, 75, 'Easy', 'Passed'),
(3, 13, 85, 'Easy', 'Passed'),
(4, 15, 68, 'Easy', 'Failed'),
(5, 17, 81, 'Easy', 'Passed'),
(6, 24, 90, 'Easy', 'Passed'),
(7, 27, 70, 'Easy', 'Passed'),
(8, 33, 79, 'Easy', 'Passed'),
(9, 35, 84, 'Easy', 'Passed'),
(10, 7, 65, 'Easy', 'Failed'),
(11, 8, 92, 'Easy', 'Passed'),
(12, 14, 78, 'Easy', 'Passed'),
(13, 18, 76, 'Easy', 'Passed'),
(14, 25, 82, 'Easy', 'Passed'),
(15, 30, 83, 'Easy', 'Passed'),
(16, 32, 90, 'Easy', 'Passed'),
(17, 34, 90, 'Easy', 'Passed'),
(18, 6, 75, 'Easy', 'Passed'),
(19, 10, 89, 'Easy', 'Passed'),
(20, 11, 70, 'Easy', 'Failed'),
(21, 12, 75, 'Easy', 'Passed'),
(22, 16, 88, 'Easy', 'Passed'),
(23, 21, 87, 'Easy', 'Passed'),
(24, 1, 96, 'Hard', 'Passed'),
(25, 13, 80, 'Hard', 'Passed'),
(26, 15, 70, 'Hard', 'Failed'),
(27, 17, 85, 'Hard', 'Passed'),
(28, 24, 84, 'Hard', 'Passed'),
(29, 27, 79, 'Hard', 'Passed'),
(30, 33, 90, 'Hard', 'Passed'),
(31, 35, 79, 'Hard', 'Passed');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_student`
--

CREATE TABLE `tbl_student` (
  `student_id` int(5) NOT NULL,
  `first_name` varchar(25) NOT NULL,
  `last_name` varchar(25) NOT NULL,
  `year_level` int(1) NOT NULL,
  `course` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_student`
--

INSERT INTO `tbl_student` (`student_id`, `first_name`, `last_name`, `year_level`, `course`) VALUES
(1, 'Marcella', 'Asal', 4, 'BSIT'),
(2, 'Marjorie Ann', 'Bornales', 1, 'BSIT'),
(3, 'Dyna Shine', 'Tamboboy', 1, 'BSIT'),
(4, 'Carl Hudson', 'Balais', 3, 'BSIT'),
(5, 'Ryan Carl', 'Balais', 2, 'BSIT'),
(6, 'Chechen', 'Abunda', 3, 'BSIT'),
(7, 'Queenie', 'Paculba', 2, 'BSIT'),
(8, 'Mark', 'Reyes', 3, 'BSIT'),
(9, 'John', 'Jaguing', 2, 'BSIT'),
(10, 'Marco', 'Asal', 1, 'BSIT'),
(11, 'Ruel', 'Sumohoy', 3, 'BSIT'),
(12, 'Maxine', 'Briones', 4, 'BSIT'),
(13, 'Merla', 'Dalunhay', 4, 'BSIT'),
(14, 'Bernadine', 'Ponce', 2, 'BSIT'),
(15, 'Jene', 'Ponngol', 1, 'BSIT'),
(16, 'Mariel', 'Dalunhay', 1, 'BSIT'),
(17, 'Andreah', 'Baconawa', 3, 'BSIT'),
(18, 'Nilo', 'Tubio', 4, 'BSIT'),
(19, 'Cristian', 'Cabugao', 4, 'BSIT'),
(20, 'Marty', 'Gulle', 3, 'BSIT'),
(21, 'Kenneth', 'Ann', 3, 'BSIT'),
(22, 'Judy Ann', 'Sulinta', 4, 'BSIT'),
(23, 'Stephany', 'Soriano', 3, 'BSIT'),
(24, 'Nora', 'Sulinta', 2, 'BSIT'),
(25, 'Purita', 'Asal', 3, 'BSIT'),
(26, 'Irene', 'Magno', 2, 'BSIT'),
(27, 'Gretchen', 'Magno', 3, 'BSIT'),
(28, 'Julia', 'Bareto', 4, 'BSIT'),
(29, 'Kathryn', 'Bernado', 4, 'BSIT'),
(30, 'Elena', 'Berns', 2, 'BSIT'),
(31, 'Angel', 'Locsin', 1, 'BSIT');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_event`
--
ALTER TABLE `tbl_event`
  ADD PRIMARY KEY (`event_ID`);

--
-- Indexes for table `tbl_facilitator`
--
ALTER TABLE `tbl_facilitator`
  ADD PRIMARY KEY (`facilitator_id`),
  ADD KEY `assigned_event_id` (`assigned_event_id`);

--
-- Indexes for table `tbl_registration`
--
ALTER TABLE `tbl_registration`
  ADD PRIMARY KEY (`reg_id`),
  ADD KEY `event_id` (`event_id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `tbl_score`
--
ALTER TABLE `tbl_score`
  ADD PRIMARY KEY (`score_id`),
  ADD KEY `reg_id` (`reg_id`);

--
-- Indexes for table `tbl_student`
--
ALTER TABLE `tbl_student`
  ADD PRIMARY KEY (`student_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_facilitator`
--
ALTER TABLE `tbl_facilitator`
  MODIFY `facilitator_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_registration`
--
ALTER TABLE `tbl_registration`
  MODIFY `reg_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `tbl_score`
--
ALTER TABLE `tbl_score`
  MODIFY `score_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `tbl_student`
--
ALTER TABLE `tbl_student`
  MODIFY `student_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_facilitator`
--
ALTER TABLE `tbl_facilitator`
  ADD CONSTRAINT `fk_facilitator_event` FOREIGN KEY (`assigned_event_id`) REFERENCES `tbl_event` (`event_ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `tbl_facilitator_ibfk_1` FOREIGN KEY (`assigned_event_id`) REFERENCES `tbl_event` (`event_ID`) ON DELETE SET NULL;

--
-- Constraints for table `tbl_registration`
--
ALTER TABLE `tbl_registration`
  ADD CONSTRAINT `tbl_registration_ibfk_1` FOREIGN KEY (`event_id`) REFERENCES `tbl_event` (`event_ID`),
  ADD CONSTRAINT `tbl_registration_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `tbl_student` (`student_id`);

--
-- Constraints for table `tbl_score`
--
ALTER TABLE `tbl_score`
  ADD CONSTRAINT `tbl_score_ibfk_1` FOREIGN KEY (`reg_id`) REFERENCES `tbl_registration` (`reg_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
