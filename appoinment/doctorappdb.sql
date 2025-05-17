-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 17, 2025 at 03:15 PM
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
-- Database: `doctorappdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `id` int(11) NOT NULL,
  `patient_name` varchar(100) NOT NULL,
  `patient_email` varchar(100) NOT NULL,
  `doctor` varchar(100) NOT NULL,
  `appointment_date` date NOT NULL,
  `appointment_time` time NOT NULL,
  `symptoms` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `appointments`
--

INSERT INTO `appointments` (`id`, `patient_name`, `patient_email`, `doctor`, `appointment_date`, `appointment_time`, `symptoms`, `created_at`) VALUES
(1, 'Chamika Lakshan', 'ict21029@std.uwu.ac.lk', 'Dr. Lopez', '2025-05-16', '12:35:00', 'mmm', '2025-05-16 07:00:40'),
(2, 'Chamika Lakshan', 'ict21029@std.uwu.ac.lk', 'Dr. Smith', '2025-05-19', '21:51:00', 'MMM', '2025-05-16 16:19:40'),
(3, 'Chamika Lakshan', 'ict21029@std.uwu.ac.lk', 'Dr. Lopez', '2025-05-17', '18:25:00', 'dd', '2025-05-17 12:50:24');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
