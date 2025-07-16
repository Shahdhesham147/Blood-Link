-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 09, 2025 at 07:15 PM
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
-- Database: `4`
--

-- --------------------------------------------------------

--
-- Table structure for table `ambulancecars`
--

CREATE TABLE `ambulancecars` (
  `license_number` int(11) NOT NULL,
  `car_model` varchar(100) DEFAULT NULL,
  `working_hours` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ambulancecars`
--

INSERT INTO `ambulancecars` (`license_number`, `car_model`, `working_hours`) VALUES
(12345, 'Toyota', '8am-4pm'),
(33556, 'kia', '9am-2pm'),
(34563, 'bmw', '7am-4pm'),
(44556, 'nissan', '8am-4pm'),
(63457, 'Ford', '6am-2pm'),
(67890, 'Mercedes', '9am-5pm');

-- --------------------------------------------------------

--
-- Table structure for table `bank_admins`
--

CREATE TABLE `bank_admins` (
  `id` int(11) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `national_id` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bank_admins`
--

INSERT INTO `bank_admins` (`id`, `full_name`, `national_id`, `password`, `location`) VALUES
(1, 'Ahmed MM Mmohamed', 'elgzzar480@gmail.com', '123', 'المنوفية'),
(2, 'ah', '2elgzzar@yahoo.com', '$2y$10$z/8vJF4DylitMveaHnbddeM55cZuyNX.T3bvlPr2Ixa0MJ6axfTpy', 'القليوبية'),
(3, 'Ahmed MM Mmohamed', '2elgzzar@yahoo.com', '1234', 'المنوفية');

-- --------------------------------------------------------

--
-- Table structure for table `bloodbanks`
--

CREATE TABLE `bloodbanks` (
  `bloodbank_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` varchar(100) DEFAULT NULL,
  `blood_quantity` varchar(1000) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `promotions` varchar(1000) DEFAULT NULL,
  `feedback` varchar(200) DEFAULT NULL,
  `license_number` int(11) NOT NULL,
  `hospital_id` int(11) NOT NULL,
  `blood_bags_needed` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bloodbanks`
--

INSERT INTO `bloodbanks` (`bloodbank_id`, `name`, `address`, `blood_quantity`, `phone`, `promotions`, `feedback`, `license_number`, `hospital_id`, `blood_bags_needed`) VALUES
(35, 'Life Bank', 'Riyadh - Al Naseem District', '100', '0501234567', 'خصومات على التبرع الأول', 'خدمة ممتازة', 1016754530, 1, 25),
(36, 'Central Blood Bank', 'Jeddah - Tahlia Street', '150', '0557654321', 'حملات توعية', 'موقع جيد', 0, 2, 40),
(37, 'Hope Bank', 'Dammam - Al Shatea District', '80', '0532345678', 'هدايا للمتبرعين', 'سرعة في الخدمة', 0, 3, 15),
(38, 'Healing Bank', 'Makkah - Al Aziziyah', '120', '0548765432', 'فعاليات مجتمعية', 'طاقم عمل ودود', 0, 4, 30),
(39, 'Charity Bank', 'Khobar - Corniche Road', '90', '0569876543', 'خصومات وعروض', 'تنظيم جيد', 0, 5, 20);

-- --------------------------------------------------------

--
-- Table structure for table `bloodbanks1`
--

CREATE TABLE `bloodbanks1` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bloodbanks1`
--

INSERT INTO `bloodbanks1` (`id`, `name`, `phone_number`, `email`, `address`, `password`) VALUES
(1, 'Ahmed MM Mmohamed', '01016754530', '2elgzzar@yahoo.com', '50 شارع عبداعلزيز بيومي مدينه الايمان المطريه', '1234'),
(2, 'Ahmed MM Mmohamed', '01016754530', '2elgzzar@yahoo.com', '50 شارع عبداعلزيز بيومي مدينه الايمان المطريه', '1234'),
(3, 'Ahmed MM Mmohamed', '01016754530', '2elgzzar@yahoo.com', '50 شارع عبداعلزيز بيومي مدينه الايمان المطريه', '1234'),
(4, 'Ahmed MM Mmohamed', '01016754530', '2elgzzar@yahoo.com', '50 شارع عبداعلزيز بيومي مدينه الايمان المطريه', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `bloodbanks_donors`
--

CREATE TABLE `bloodbanks_donors` (
  `donor_id` int(11) DEFAULT NULL,
  `bloodbank_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bloodbanks_donors`
--

INSERT INTO `bloodbanks_donors` (`donor_id`, `bloodbank_id`) VALUES
(7, 31),
(4, 32),
(8, 32),
(5, 32),
(4, 33),
(6, 33),
(2, 32),
(7, 31),
(4, 32),
(8, 32),
(5, 32),
(4, 33),
(6, 33),
(2, 32),
(7, 31),
(4, 32),
(8, 32),
(5, 32),
(4, 33),
(6, 33),
(2, 32),
(7, 31),
(4, 32),
(8, 32),
(5, 32),
(4, 33),
(6, 33),
(2, 32),
(7, 31),
(4, 32),
(8, 32),
(5, 32),
(4, 33),
(6, 33),
(2, 32),
(7, 31),
(4, 32),
(8, 32),
(5, 32),
(4, 33),
(6, 33),
(2, 32),
(7, 31),
(4, 32),
(8, 32),
(5, 32),
(4, 33),
(6, 33),
(2, 32),
(7, 31),
(4, 32),
(8, 32),
(5, 32),
(4, 33),
(6, 33),
(2, 32),
(7, 31),
(4, 32),
(8, 32),
(5, 32),
(4, 33),
(6, 33),
(2, 32),
(7, 31),
(4, 32),
(8, 32),
(5, 32),
(4, 33),
(6, 33),
(2, 32),
(7, 31),
(4, 32),
(8, 32),
(5, 32),
(4, 33),
(6, 33),
(2, 32),
(7, 31),
(4, 32),
(8, 32),
(5, 32),
(4, 33),
(6, 33),
(2, 32),
(7, 31),
(4, 32),
(8, 32),
(5, 32),
(4, 33),
(6, 33),
(2, 32),
(7, 31),
(4, 32),
(8, 32),
(5, 32),
(4, 33),
(6, 33),
(2, 32),
(7, 31),
(4, 32),
(8, 32),
(5, 32),
(4, 33),
(6, 33),
(2, 32),
(7, 31),
(4, 32),
(8, 32),
(5, 32),
(4, 33),
(6, 33),
(2, 32),
(7, 31),
(4, 32),
(8, 32),
(5, 32),
(4, 33),
(6, 33),
(2, 32),
(7, 31),
(4, 32),
(8, 32),
(5, 32),
(4, 33),
(6, 33),
(2, 32),
(7, 31),
(4, 32),
(8, 32),
(5, 32),
(4, 33),
(6, 33),
(2, 32),
(7, 31),
(4, 32),
(8, 32),
(5, 32),
(4, 33),
(6, 33),
(2, 32),
(7, 31),
(4, 32),
(8, 32),
(5, 32),
(4, 33),
(6, 33),
(2, 32),
(7, 31),
(4, 32),
(8, 32),
(5, 32),
(4, 33),
(6, 33),
(2, 32),
(7, 31),
(4, 32),
(8, 32),
(5, 32),
(4, 33),
(6, 33),
(2, 32),
(7, 31),
(4, 32),
(8, 32),
(5, 32),
(4, 33),
(6, 33),
(2, 32),
(7, 31),
(4, 32),
(8, 32),
(5, 32),
(4, 33),
(6, 33),
(2, 32),
(7, 31),
(4, 32),
(8, 32),
(5, 32),
(4, 33),
(6, 33),
(2, 32),
(7, 31),
(4, 32),
(8, 32),
(5, 32),
(4, 33),
(6, 33),
(2, 32),
(7, 31),
(4, 32),
(8, 32),
(5, 32),
(4, 33),
(6, 33),
(2, 32),
(7, 31),
(4, 32),
(8, 32),
(5, 32),
(4, 33),
(6, 33),
(2, 32),
(7, 31),
(4, 32),
(8, 32),
(5, 32),
(4, 33),
(6, 33),
(2, 32);

-- --------------------------------------------------------

--
-- Table structure for table `bloodbanks_patients`
--

CREATE TABLE `bloodbanks_patients` (
  `patient_id` int(11) DEFAULT NULL,
  `bloodbank_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blood_bank`
--

CREATE TABLE `blood_bank` (
  `id` int(11) NOT NULL,
  `bank_name` varchar(255) DEFAULT NULL,
  `bank_number` varchar(100) DEFAULT NULL,
  `hospital` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `blood_bags_needed` int(11) DEFAULT NULL,
  `license` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blood_bank`
--

INSERT INTO `blood_bank` (`id`, `bank_name`, `bank_number`, `hospital`, `address`, `blood_bags_needed`, `license`) VALUES
(1, 'Life Bank', 'BB101', 'Al Rahma Hospital', 'Riyadh - Al Naseem District', 25, 'LIC12345'),
(2, 'Central Blood Bank', 'BB102', 'King Fahad Hospital', 'Jeddah - Tahlia Street', 40, 'LIC67890'),
(3, 'Hope Bank', 'BB103', 'Al Hayat Hospital', 'Dammam - Al Shatea District', 15, 'LIC45678'),
(4, 'Healing Bank', 'BB104', 'Al Noor Hospital', 'Makkah - Al Aziziyah', 30, 'LIC98765'),
(5, 'Charity Bank', 'BB105', 'King Khalid Hospital', 'Khobar - Corniche Road', 20, 'LIC11223');

-- --------------------------------------------------------

--
-- Table structure for table `blood_banks2`
--

CREATE TABLE `blood_banks2` (
  `id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `national_id` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL,
  `dob` date NOT NULL,
  `gender` enum('ذكر','أنثى') NOT NULL,
  `blood_type` enum('A+','B+','AB+','O+','A-','B-','AB-','O-') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `code`
--

CREATE TABLE `code` (
  `id` int(11) NOT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `verification_code` varchar(6) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `donor`
--

CREATE TABLE `donor` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `national_id` varchar(15) NOT NULL,
  `phone_number` varchar(15) DEFAULT NULL,
  `blood_type` varchar(5) DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `nearest_location` varchar(255) DEFAULT NULL,
  `hospital_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `gender` varchar(10) NOT NULL DEFAULT '',
  `reset_token` varchar(255) DEFAULT NULL,
  `reset_token_expire` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `donor`
--

INSERT INTO `donor` (`id`, `first_name`, `last_name`, `national_id`, `phone_number`, `blood_type`, `birth_date`, `address`, `created_at`, `password`, `nearest_location`, `hospital_name`, `email`, `gender`, `reset_token`, `reset_token_expire`) VALUES
(1, 'Ali', 'Hassan', '12345678901234', '01012345678', 'O+', '1998-03-15', 'Cairo', '2025-02-26', '123456', 'المنطقة الجديدة', 'مستشفى الشفاء', '', '', NULL, NULL),
(2, 'Sara', 'Mohamed', '23456789012345', '01123456789', 'A-', '2000-07-10', 'المنوفية', '2025-02-20', '666764', 'مستشفى شبين الكوم', NULL, '', '', NULL, NULL),
(3, 'Khaled', 'Ahmed', '34567890123456', '01234567890', 'B+', '1995-01-05', 'القليوبية', '2025-02-11', '9873578', 'مستشفى بنها التعليمي', NULL, '', '', NULL, NULL),
(4, 'Laila', 'Omar', '45678901234567', '01567890123', 'A+', '1999-09-20', 'القاهرة', '2025-02-20', '9876543', 'مستشفى قصر العيني', NULL, '', '', NULL, NULL),
(5, 'Youssef', 'Ali', '56789012345678', '01098765432', 'O-', '2001-12-30', 'Tanta', '2025-02-27', '987665453', NULL, NULL, '', '', NULL, NULL),
(6, 'John', 'mina', '12345678923874', '01156777936', 'A-', '2002-03-22', 'Cairo', '2025-01-28', '6655435', NULL, NULL, '', '', NULL, NULL),
(7, 'Noah', 'ali', '12345678903678', '01122333255', 'B-', '1995-07-22', 'Giza', '2025-02-17', '9873456', NULL, NULL, '', '', NULL, NULL),
(8, 'Mohamed', 'farag', '98765432167345', '01020938566', 'B-', '1995-01-25', 'القاهرة', '2025-01-01', '876599', 'مستشفى قصر العيني', 'مستشفى قصر العيني', '', '', NULL, NULL),
(9, 'Bedo', 'Fahmy', '30309201603988', '01033448043', 'A+', '2015-03-20', 'القاهرة', '2025-03-01', '991122345', 'مستشفى قصر العيني', 'مستشفى قصر العيني', '', '', NULL, NULL),
(1, 'Ali', 'Hassan', '12345678901234', '01012345678', 'O+', '1998-03-15', 'Cairo', '2025-02-26', '123456', 'المنطقة الجديدة', 'مستشفى الشفاء', '', '', NULL, NULL),
(2, 'Sara', 'Mohamed', '23456789012345', '01123456789', 'A-', '2000-07-10', 'المنوفية', '2025-02-20', '666764', 'مستشفى شبين الكوم', NULL, '', '', NULL, NULL),
(3, 'Khaled', 'Ahmed', '34567890123456', '01234567890', 'B+', '1995-01-05', 'القليوبية', '2025-02-11', '9873578', 'مستشفى بنها التعليمي', NULL, '', '', NULL, NULL),
(4, 'Laila', 'Omar', '45678901234567', '01567890123', 'A+', '1999-09-20', 'القاهرة', '2025-02-20', '9876543', 'مستشفى قصر العيني', NULL, '', '', NULL, NULL),
(5, 'Youssef', 'Ali', '56789012345678', '01098765432', 'O-', '2001-12-30', 'Tanta', '2025-02-27', '987665453', NULL, NULL, '', '', NULL, NULL),
(6, 'John', 'mina', '12345678923874', '01156777936', 'A-', '2002-03-22', 'Cairo', '2025-01-28', '6655435', NULL, NULL, '', '', NULL, NULL),
(7, 'Noah', 'ali', '12345678903678', '01122333255', 'B-', '1995-07-22', 'Giza', '2025-02-17', '9873456', NULL, NULL, '', '', NULL, NULL),
(8, 'Mohamed', 'farag', '98765432167345', '01020938566', 'B-', '1995-01-25', 'القاهرة', '2025-01-01', '876599', 'مستشفى قصر العيني', 'مستشفى قصر العيني', '', '', NULL, NULL),
(9, 'Bedo', 'Fahmy', '30309201603988', '01033448043', 'A+', '2015-03-20', 'القاهرة', '2025-03-01', '991122345', 'مستشفى قصر العيني', 'مستشفى قصر العيني', '', '', NULL, NULL),
(0, '', '', '30109060103271', NULL, NULL, NULL, NULL, NULL, NULL, 'القاهرة', 'مستشفى قصر العيني', '', '', NULL, NULL),
(0, '', '', '301090601032712', NULL, NULL, NULL, NULL, NULL, NULL, 'القاهرة', 'مستشفى قصر العيني', '', '', NULL, NULL),
(0, 'Ahmed', 'Mmohamed', '30109060103222', '01016754530', 'O-', '2001-06-09', NULL, NULL, '$2y$10$MmDOVGs6KHev9xbZfRYgAuJDsWkn96Tb1jzvu76V0vfnPFOHrGFb2', 'القاهرة', 'مستشفى قصر العيني', '421214125@sha.edu.eg', 'أنثى', NULL, NULL),
(0, 'Ahmed', 'Mmohamed', '90109060103222', '01016754530', 'O-', '2001-06-09', NULL, NULL, '12345', 'القاهرة', 'مستشفى قصر العيني', '421214125@sha.edu.eg', 'أنثى', NULL, NULL),
(0, 'Ahmed', 'Mmohamed', '90109060103271', '01016754530', 'O-', '2001-06-09', NULL, NULL, '12345', 'القاهرة', 'مستشفى قصر العيني', '421214125@sha.edu.eg', 'أنثى', NULL, NULL),
(0, 'Ahmed', 'Mmohamed', '33109060103271', '01016754530', 'O-', '2001-06-09', NULL, NULL, '12345', 'القاهرة', 'مستشفى قصر العيني', '421214125@sha.edu.eg', 'أنثى', NULL, NULL),
(0, 'Ahmed', 'Mmohamed', '43109060103271', '01016754530', 'O-', '2001-06-09', NULL, NULL, '12345', 'القاهرة', 'مستشفى قصر العيني', '421214125@sha.edu.eg', 'أنثى', NULL, NULL),
(0, 'Ahmed', 'Mmohamed', '33309060103271', '01016754530', 'B-', '2002-09-09', NULL, NULL, '12345', 'القاهرة', 'مستشفى قصر العيني', '2222elgzzara480@gamil.com', 'ذكر', NULL, NULL),
(0, 'Ahmed', '', '3019060103271', '01016754530', 'O+', '2001-06-09', NULL, NULL, '$2y$10$j1vP2PGvwQmYdnL/zdEdRepjqDzz6sV66FXOtO6AuyahNfbgbpYj.', 'القاهرة', 'مستشفى قصر العيني', '11@sha.edu.eg', 'ذكر', NULL, NULL),
(0, 'Ahmed', '', '3019060103271', '01016754530', 'O+', '2001-06-09', NULL, NULL, '$2y$10$BOD.bVjMbO1t7.Rl9YEfvOjEKX7VWcB57bOyluHpoAXDQmrdrPyN.', 'القاهرة', 'مستشفى قصر العيني', '11@sha.edu.eg', 'ذكر', NULL, NULL),
(0, 'Ahmed', '', '3019060103271', '01016754530', 'O+', '2001-06-09', NULL, NULL, '$2y$10$sWSgzPcRWgVQF1ZCx4lSn.9GByQZMokEwHiL0OcbuN3D/t3bSE9CK', 'القاهرة', 'مستشفى قصر العيني', '11@sha.edu.eg', 'ذكر', NULL, NULL),
(0, 'Ahmed', '', '3345060103271', '01016754530', 'O+', '2001-06-09', NULL, NULL, '$2y$10$5abeJMZsLZ/PMYmAh/873.SSiWvXFjyLGAkdE3U9DgOEjevRguF0i', 'القاهرة', 'مستشفى قصر العيني', '421214125@sha.edu.eg', 'ذكر', NULL, NULL),
(0, 'Ahmed', '', '3345060103271', '01016754530', 'O+', '2001-06-09', NULL, NULL, '$2y$10$vX9FHVKH9FCfBcrvs2nCkuCbzk3EfQBWUBWO78NndPN0zkXjNXzxu', 'القاهرة', 'مستشفى قصر العيني', '421214125@sha.edu.eg', 'ذكر', NULL, NULL),
(0, 'Ahmed', '', '3345060103271', '01016754530', 'O+', '2001-06-09', NULL, NULL, '$2y$10$D98sbXyoeG9iA8wRMN1y7..MEJVPrlf2GX0RYtTpnnQXBGu6k2Mqu', 'القاهرة', 'مستشفى قصر العيني', '421214125@sha.edu.eg', 'ذكر', NULL, NULL),
(0, 'Ahmed', '', '3345060103271', '01016754530', 'O+', '2001-06-09', NULL, NULL, '$2y$10$PmfOWj7QoM1CFOqa2j7SFu44KEbC7gT3mz3aEolKYvn42I0XH/MYq', 'القاهرة', 'مستشفى قصر العيني', '421214125@sha.edu.eg', 'ذكر', NULL, NULL),
(0, 'Ahmed', '', '3345060103271', '01016754530', 'O+', '2001-06-09', NULL, NULL, '$2y$10$Ba/KXufYwQgMKGGz.5Scau.fPiThePTkiXhZ3ChGPAUbqX7m2MM6W', 'القاهرة', 'مستشفى قصر العيني', '421214125@sha.edu.eg', 'ذكر', NULL, NULL),
(0, 'Ahmed', '', '3345060103271', '01016754530', 'O+', '2001-06-09', NULL, NULL, '$2y$10$iRhhiNK5l1WICKJZH.N/p.fUt/bCOxXspKG...Jnn5zRQVymFEcsm', 'القاهرة', 'مستشفى قصر العيني', '421214125@sha.edu.eg', 'ذكر', NULL, NULL),
(0, 'Ahmed', '', '23345060103271', '01016754530', 'O+', '2001-06-09', NULL, NULL, '$2y$10$ehcBqZIbFVy545Y//4NZI.2W5XdI0XDES8fOR68lPwy6vGm7yjJSK', 'القاهرة', 'مستشفى قصر العيني', '421214125@sha.edu.eg', 'ذكر', NULL, NULL),
(0, 'Ahmed', '', '3345060103271', '01016754530', 'O+', '2001-06-09', NULL, NULL, '$2y$10$Pt.wQdZPTlNSAyS/qxHaquYjhg9P0yVErjT74cJoXD5.LPh9zrL5W', 'القاهرة', 'مستشفى قصر العيني', 'ahmed@sha.edu.eg', 'ذكر', NULL, NULL),
(0, '', '', 'ahmed22@gamil.c', NULL, NULL, NULL, 'المنوفية', NULL, NULL, 'القاهرة', 'مستشفى قصر العيني', '', '', NULL, NULL),
(0, 'Ahmed', 'Mmohamed', '60109060103271', NULL, 'A+', '0000-00-00', NULL, NULL, 'j', 'القاهرة', 'مستشفى قصر العيني', '2elgzzar@yahoo.com', 'ذكر', NULL, NULL),
(0, 'Ahmed', 'Mmohamed', '60109060103271', NULL, 'A+', '0000-00-00', NULL, NULL, 'j', 'القاهرة', 'مستشفى قصر العيني', '2elgzzar@yahoo.com', 'ذكر', NULL, NULL),
(0, 'Ahmed', 'Mmohamed', '2elgzzar@yahoo.', NULL, 'A+', '0000-00-00', NULL, NULL, 'j', 'القاهرة', 'مستشفى قصر العيني', '2elgzzar@yahoo.com', 'ذكر', NULL, NULL),
(0, 'Ahmed', 'Mmohamed', '23232323', NULL, 'B+', '0000-00-00', 'القاهرة', NULL, 'aa', 'مستشفى قصر العيني', 'مستشفى قصر العيني', 'ahmed@sha.edu.eg', 'ذكر', NULL, NULL),
(0, '', '', '30309201603988', NULL, NULL, NULL, 'القاهرة', NULL, NULL, 'مستشفى قصر العيني', 'مستشفى قصر العيني', '', '', NULL, NULL),
(0, '', '', '43109060103271', NULL, NULL, NULL, 'الأقصر', NULL, NULL, 'القاهرة', 'مستشفى قصر العيني', '', '', NULL, NULL),
(0, 'Ahmed', 'Mmohamed', '23232323', NULL, 'A-', '0000-00-00', 'القاهرة', NULL, '2', 'مستشفى قصر العيني', 'مستشفى قصر العيني', '421214125@sha.edu.eg', 'ذكر', NULL, NULL),
(0, 'Ahmed', 'Mmohamed', '30109060103231', NULL, 'A-', '0000-00-00', NULL, NULL, '2', NULL, NULL, '421214125@sha.edu.eg', 'ذكر', NULL, NULL),
(0, 'Ahmed', 'Mmohamed', '23232323', NULL, 'A-', '0000-00-00', 'القاهرة', NULL, '2', 'مستشفى قصر العيني', 'مستشفى قصر العيني', '421214125@sha.edu.eg', 'ذكر', NULL, NULL),
(0, 'Ahmed', 'Mmohamed', '23232323', NULL, 'A-', '0000-00-00', 'القاهرة', NULL, '2', 'مستشفى قصر العيني', 'مستشفى قصر العيني', '421214125@sha.edu.eg', 'ذكر', NULL, NULL),
(0, 'Ahmed', 'Mmohamed', 'as23232323', NULL, 'A-', '0000-00-00', NULL, NULL, '2', NULL, NULL, '421214125@sha.edu.eg', 'ذكر', NULL, NULL),
(0, '', '', '23232323', NULL, NULL, NULL, 'القاهرة', NULL, NULL, 'مستشفى قصر العيني', 'مستشفى قصر العيني', '', '', NULL, NULL),
(0, 'Ahmed', 'Mmohamed', '23232323', NULL, 'A-', '0000-00-00', 'القاهرة', NULL, '2', 'مستشفى قصر العيني', 'مستشفى قصر العيني', '421214125@sha.edu.eg', 'ذكر', NULL, NULL),
(0, 'Ahmed', 'Mmohamed', '23232323', NULL, 'A-', '0000-00-00', 'القاهرة', NULL, '2', 'مستشفى قصر العيني', 'مستشفى قصر العيني', '421214125@sha.edu.eg', 'ذكر', NULL, NULL),
(0, 'Ahmed', 'Mmohamed', '23232323', NULL, 'A-', '0000-00-00', 'القاهرة', NULL, '2', 'مستشفى قصر العيني', 'مستشفى قصر العيني', '421214125@sha.edu.eg', 'ذكر', NULL, NULL),
(0, 'Ahmed', 'Mmohamed', '23232323', NULL, 'A-', '0000-00-00', 'القاهرة', NULL, '2', 'مستشفى قصر العيني', 'مستشفى قصر العيني', '421214125@sha.edu.eg', 'ذكر', NULL, NULL),
(0, 'Ahmed', 'Mmohamed', '23232323', NULL, 'A-', '0000-00-00', 'القاهرة', NULL, '2', 'مستشفى قصر العيني', 'مستشفى قصر العيني', '421214125@sha.edu.eg', 'ذكر', NULL, NULL),
(0, 'Ahmed', 'Mmohamed', '23232323', NULL, 'A-', '0000-00-00', 'القاهرة', NULL, '2', 'مستشفى قصر العيني', 'مستشفى قصر العيني', '421214125@sha.edu.eg', 'ذكر', NULL, NULL),
(0, 'Ahmed', 'Mmohamed', '23232323', '', 'A-', '0000-00-00', 'القاهرة', NULL, '2', 'مستشفى قصر العيني', 'مستشفى قصر العيني', '421214125@sha.edu.eg', 'ذكر', NULL, NULL),
(0, 'Ahmed', 'Mmohamed', '223232323', '', 'A-', '0000-00-00', NULL, NULL, '2', NULL, NULL, '421214125@sha.edu.eg', 'ذكر', NULL, NULL),
(0, '', '', '23232323', NULL, NULL, NULL, 'القاهرة', NULL, NULL, 'مستشفى قصر العيني', 'مستشفى قصر العيني', '', '', NULL, NULL),
(0, '', '', '43109060103271', NULL, NULL, NULL, 'القليوبية', NULL, NULL, 'مستشفى بنها التعليمي', NULL, '', '', NULL, NULL),
(0, 'Ahmed', 'Mmohamed', '23232323', '', 'A-', '0000-00-00', 'القاهرة', NULL, '2', 'مستشفى قصر العيني', 'مستشفى قصر العيني', '421214125@sha.edu.eg', 'ذكر', NULL, NULL),
(0, '', '', '23232323', NULL, NULL, NULL, 'القاهرة', NULL, NULL, 'مستشفى قصر العيني', 'مستشفى قصر العيني', '', '', NULL, NULL),
(0, 'Ahmed', 'Mmohamed', '23232323', '', 'A-', '0000-00-00', 'القاهرة', NULL, '2', 'مستشفى قصر العيني', 'مستشفى قصر العيني', '421214125@sha.edu.eg', 'ذكر', NULL, NULL),
(0, 'Ahmed', 'Mmohamed', 'ضضضض23232323', '', 'A-', '0000-00-00', NULL, NULL, '2', NULL, NULL, '421214125@sha.edu.eg', 'ذكر', NULL, NULL),
(0, 'Ahmed', 'Mmohamed', '23232323', '', 'A-', '0000-00-00', 'القاهرة', NULL, '2', 'مستشفى قصر العيني', 'مستشفى قصر العيني', '421214125@sha.edu.eg', 'ذكر', NULL, NULL),
(0, 'Ahmed', 'Mmohamed', '23232323', '', 'A-', '0000-00-00', 'القاهرة', NULL, '2', 'مستشفى قصر العيني', 'مستشفى قصر العيني', '421214125@sha.edu.eg', 'ذكر', NULL, NULL),
(0, 'Ahmed', 'Mmohamed', '23232323', '', 'A-', '0000-00-00', 'القاهرة', NULL, '2', 'مستشفى قصر العيني', 'مستشفى قصر العيني', '421214125@sha.edu.eg', 'ذكر', NULL, NULL),
(0, 'Ahmed', 'Mmohamed', '23232323', '', 'A-', '0000-00-00', 'القاهرة', NULL, '2', 'مستشفى قصر العيني', 'مستشفى قصر العيني', '421214125@sha.edu.eg', 'ذكر', NULL, NULL),
(0, 'Ahmed', 'Mmohamed', '23232323', '', 'A-', '0000-00-00', 'القاهرة', NULL, '2', 'مستشفى قصر العيني', 'مستشفى قصر العيني', '421214125@sha.edu.eg', 'ذكر', NULL, NULL),
(0, 'Ahmed', 'Mmohamed', '1', '', 'A-', '0000-00-00', 'القاهرة', NULL, '2', 'مستشفى قصر العيني', NULL, '421214125@sha.edu.eg', 'ذكر', NULL, NULL),
(0, 'ahmed22', 'Mmohamed', '1123232323', NULL, 'A-', '0000-00-00', 'الأقصر', NULL, '2', 'مستشفى الأقصر الدولي', NULL, '', '', NULL, NULL),
(0, 'Ahmed', 'Essam', '23232323', NULL, 'A-', '0000-00-00', 'القاهرة', NULL, '2', 'مستشفى قصر العيني', 'مستشفى قصر العيني', '', '', NULL, NULL),
(0, 'hmed', 'ssam', '3232323', '1016754530', 'A-', '2002-02-22', 'غير محدد حالياً', NULL, '2', NULL, NULL, '', '', NULL, NULL),
(0, '', '', '23232323', NULL, NULL, NULL, 'القاهرة', NULL, NULL, 'مستشفى قصر العيني', 'مستشفى قصر العيني', '', '', NULL, NULL),
(0, '', '', '23456789012345', NULL, NULL, NULL, 'المنوفية', NULL, NULL, 'مستشفى شبين الكوم', NULL, '', '', NULL, NULL),
(0, '', '', 'ahmed22@gamil.c', NULL, NULL, NULL, 'القاهرة', NULL, NULL, 'مستشفى قصر العيني', NULL, '', '', NULL, NULL),
(0, '', '', 'ahmed22@gamil.c', NULL, NULL, NULL, 'القاهرة', NULL, NULL, 'مستشفى قصر العيني', NULL, '', '', NULL, NULL),
(0, '', '', 'ahmed22@gamil.c', NULL, NULL, NULL, 'القاهرة', NULL, NULL, 'مستشفى قصر العيني', NULL, '', '', NULL, NULL),
(0, '', '', '01016754530', NULL, NULL, NULL, 'المنوفية', NULL, NULL, 'مستشفى شبين الكوم', NULL, '', '', NULL, NULL),
(0, 'Ahmed', 'Essam', '23232323', '01016754530', 'A-', '2002-02-22', NULL, NULL, '2', NULL, NULL, 'elgzzara480@gamil.com', 'ذكر', NULL, NULL),
(0, 'Ahmed', 'Essam', '23232323', NULL, 'A-', '0000-00-00', '', NULL, '2', NULL, NULL, '', '', NULL, NULL),
(0, 'Ahmed', 'Essam', 'qw23232323', NULL, 'A-', '0000-00-00', '', NULL, '2', NULL, NULL, '', '', NULL, NULL),
(0, 'Ahmed', 'Essam', 'qw23232323', NULL, 'A-', '0000-00-00', '', NULL, '2', NULL, NULL, '', '', NULL, NULL),
(0, 'Ahmed', 'emad', '8883232323', '01016754530', 'A-', '2002-02-22', 'غير محدد حالياً', NULL, '12', NULL, NULL, '', '', NULL, NULL),
(0, 'hehsm', 'ebrahim', '26527894', '9199256662', 'A-', '2002-02-22', 'غير محدد حالياً', NULL, '60000', NULL, NULL, '', '', NULL, NULL),
(0, 'hehsm', 'ebrahim', '96527894', '9199256662', 'A-', '2002-02-22', 'غير محدد حالياً', NULL, '60000', NULL, NULL, '', '', NULL, NULL),
(0, 'Mostafa', 'Ahmed', '123456678', '01005409279', 'A-', '2001-06-09', 'القليوبية', NULL, '1', 'مستشفى بنها التعليمي', 'مستشفى بنها التعليمي', '', '', NULL, NULL),
(0, 'heba', 'mostafa', '8589060103212', '0102345i86', 'A-', '2001-09-22', NULL, NULL, '55', 'مستشفى قصر العيني', 'مستشفى قصر العيني', '', '', NULL, NULL),
(0, 'mohmea', 'aam', '20009060103212', '01205409230', 'A-', '2001-09-22', 'غير محدد حالياً', NULL, '74', NULL, NULL, '', '', NULL, NULL),
(0, 'Malek', 'Esaam', '50009060103212', '01005409230', 'A-', '2001-09-22', 'غير محدد حالياً', NULL, '102', NULL, NULL, '', '', NULL, NULL),
(0, 'Malek', 'Esaam', '50009060103212', '01005409230', 'A-', '2001-09-22', 'غير محدد حالياً', NULL, '102', NULL, NULL, '', '', NULL, NULL),
(0, 'Ahmed', 'Mostafa', '50109060103212', '01505409230', 'A-', '2001-09-22', 'غير محدد حالياً', NULL, '60', NULL, NULL, '', '', NULL, NULL),
(0, 'Ahmed', 'Mostafa', '50109060103212', '01505409230', 'A-', '2001-09-22', 'غير محدد حالياً', NULL, '60', NULL, NULL, '', '', NULL, NULL),
(0, 'Ahmed', 'Mostafa', '50109060103212', '01505409230', 'A-', '2001-09-22', 'غير محدد حالياً', NULL, '60', NULL, NULL, '', '', NULL, NULL),
(0, 'Ahmed', 'Mostafa', '50109060103212', '01505409230', 'A-', '2001-09-22', 'غير محدد حالياً', NULL, '60', NULL, NULL, '', '', NULL, NULL),
(0, 'emad', 'Esaam', '80109060103212', '01005409230', 'A-', '2001-09-22', 'غير محدد حالياً', NULL, '203', NULL, NULL, '', '', NULL, NULL),
(0, 'aalak', 'Esaaw', '20309060103212', '-1505409230', 'A-', '2001-09-22', 'القاهرة', NULL, '103', 'مستشفى قصر العيني', 'مستشفى قصر العيني', '', '', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `emp_id` int(11) NOT NULL,
  `emp_name` varchar(100) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `job_title` varchar(100) NOT NULL,
  `bloodbank_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`emp_id`, `emp_name`, `phone`, `address`, `job_title`, `bloodbank_id`) VALUES
(12, 'menna', '01102345678', 'elshorok', 'it manager ', 31),
(13, 'abdallah', '01543678908', 'faisal', 'software engineer', 31),
(14, 'iren', '01523456785', 'mohandessin', 'doctor', 32),
(15, 'muhamned', '01234567987', 'zamalek', 'doctor', 31),
(16, 'nada', '01123894767', 'new cairo', 'doctor', 33),
(17, 'hana', '01123984467', 'maadi', 'doctor', 32),
(18, 'walaa', '01054999655', 'nasr city', 'doctor', 32);

-- --------------------------------------------------------

--
-- Table structure for table `hospitals`
--

CREATE TABLE `hospitals` (
  `hospital_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `status` enum('open','closed') NOT NULL DEFAULT 'open'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hospitals`
--

INSERT INTO `hospitals` (`hospital_id`, `name`, `address`, `latitude`, `longitude`, `status`) VALUES
(1, 'Al-Mohamedy Hospital', 'Cairo, Egypt', 30.0737, 31.1828, 'open'),
(2, 'Cairo General Hospital', 'Giza, Egypt', NULL, NULL, 'closed'),
(3, 'Qasr Al-Ainy Hospital', 'Cairo, Egypt', 30.0149, 31.1353, 'open'),
(4, 'Dar El-Fouad Hospital', 'Cairo, Egypt', 30.0357, 31.191, 'open'),
(5, 'Al-Nozha International Hospital', 'Cairo, Egypt', 30.0601, 31.2221, 'open');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `blood_bank` varchar(100) NOT NULL,
  `delivery_time` varchar(100) NOT NULL,
  `price` varchar(50) NOT NULL,
  `other_info` text DEFAULT NULL,
  `other_email` varchar(100) DEFAULT NULL,
  `other_phone` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `name`, `blood_bank`, `delivery_time`, `price`, `other_info`, `other_email`, `other_phone`) VALUES
(1, 'Ahmed Ali', 'elshefa', '2025-05-01', '500', 'حالة حرجة تحتاج نقل عاجل', 'ahmed@example.com', '01012345678'),
(2, 'Mona Saber', 'el haya', '2025-05-03', '300', 'توصيل إلى المستشفى مباشرة', 'mona@example.com', '01123456789'),
(3, 'Youssef Maher', 'elamal', '2025-05-05', '450', 'نقل طارئ في الليل', 'youssef@example.com', '01234567890'),
(4, 'shah', '2', '22', '250', 'لا يوجد', '421214125@sha.edu.eg', '01016754530'),
(5, 'زائر', 'غير محدد', '2025-06-08', '0', 'طلب هدية: ', 'غير محدد', 'غير محدد'),
(6, 'زائر', 'غير محدد', '2025-06-08', '0', 'طلب هدية: ', 'غير محدد', 'غير محدد'),
(7, 'زائر الموقع', 'غير محدد', '2025-06-08', '0', 'طلب هدية: خصومات طبية', 'noemail@example.com', '0000000000'),
(8, 'Ahmed', 'غير محدد', '2025-06-08', '200', 'طلب هدية: نادي صحي', 'noemail@example.com', '01016754530'),
(9, 'Ahmed Ali', 'غير محدد', '2025-06-08', '200', 'طلب هدية: خصومات طبية - رقم الهدية: 1', 'ahmed@example.com', '01012345678'),
(10, 'Ahmed', 'غير محدد', '2025-06-09', '0', 'طلب هدية: خصومات طبية - رقم الهدية: 1', '421214125@sha.edu.eg', '01016754530'),
(11, 'Ahmed', 'elsrouk', '2025-06-09', '2', 'طلب هدية: نادي صحي - رقم الهدية: 2', '421214125@sha.edu.eg', '01005409270'),
(12, 'Ahmed', 'elmady', '2025-06-09', '0', 'طلب هدية: نادي صحي - رقم الهدية: 2', 'elgzzar@gmail.com', '01005409270'),
(13, '', 'غير محدد', '2025-06-09', '0', 'طلب هدية: نادي صحي - رقم الهدية: ', '', ''),
(14, '', 'غير محدد', '2025-06-09', '0', 'طلب هدية: نادي صحي - رقم الهدية: ', '', ''),
(15, '', 'غير محدد', '2025-06-09', '0', 'طلب هدية: نادي صحي - رقم الهدية: ', '', ''),
(16, '', 'غير محدد', '2025-06-09', '0', 'طلب هدية: خصومات طبية - رقم الهدية: ', '', ''),
(17, 'زائر الموقع', 'غير محدد', '2025-06-09', '0', 'طلب هدية: نادي صحي - رقم الهدية: 1', 'noemail@example.com', '0000000000'),
(18, 'hamda', 'غير محدد', '2025-06-09', '0', 'طلب هدية: هدايا محفزة - رقم الهدية: 4', '421214125@sha.edu.eg', '01016754530'),
(19, 'hamda', 'غير محدد', '2025-06-09', '200', 'طلب هدية: سحب شهري - رقم الهدية: 3', '421214125@sha.edu.eg', '01016754530'),
(20, 'hamda', 'nasr city', '2025-06-09', '200', 'طلب هدية: سحب شهري - رقم الهدية: 1', '421214125@sha.edu.eg', '01016754530'),
(21, 'hassan', 'elsrouk', '2025-06-09', '200', 'طلب هدية: خصومات طبية - رقم الهدية: 1', '4212124125@sha.edu.eg', '01216754530'),
(22, '', 'غير محدد', '2025-06-09', '0', 'طلب هدية: خصومات طبية - رقم الهدية: ', '', ''),
(23, '', 'غير محدد', '2025-06-09', '0', 'طلب هدية: خصومات طبية - رقم الهدية: ', '', ''),
(24, '', 'غير محدد', '2025-06-09', '0', 'طلب هدية: نادي صحي - رقم الهدية: ', '', ''),
(25, 'Ahmed', 'غير محدد', '2025-06-09', '0', 'طلب هدية: خصومات طبية - رقم الهدية: 1', '421214125@sha.edu.eg', '01005409270'),
(26, 'Ahmed', '---', '---', '---', 'نادي صحي', 'elgzzar480@gamil.com', '01005409270');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `patients`
--

CREATE TABLE `patients` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `phone_number` varchar(15) DEFAULT NULL,
  `blood_type` varchar(5) DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `latitude` decimal(10,8) DEFAULT NULL,
  `longitude` decimal(11,8) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `national_id` varchar(14) NOT NULL,
  `nearest_location` varchar(255) DEFAULT NULL,
  `price` varchar(50) DEFAULT NULL,
  `quantity` varchar(10) DEFAULT NULL,
  `reason` text DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `reset_token` varchar(255) DEFAULT NULL,
  `reset_token_expire` datetime DEFAULT NULL,
  `verification_code` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patients`
--

INSERT INTO `patients` (`id`, `first_name`, `last_name`, `phone_number`, `blood_type`, `birth_date`, `address`, `latitude`, `longitude`, `password`, `national_id`, `nearest_location`, `price`, `quantity`, `reason`, `email`, `gender`, `reset_token`, `reset_token_expire`, `verification_code`) VALUES
(1, 'menna', 'zattar', '01156777276', 'a+', '2004-01-21', 'القاهرة', 30.17370000, 31.22220000, '12553', '29910150102345', 'مستشفى قصر العيني', '50', '1', 'احتاجها جيدا', NULL, 'ذكر', NULL, NULL, NULL),
(2, 'alaa', 'farag', '01234567898', 'b+', '2002-02-22', 'القاهرة', 30.50000000, 31.17350000, '245789', '28916150102345', 'مستشفى قصر العيني', '50', '1', 's', NULL, NULL, NULL, NULL, NULL),
(3, 'John', 'mina', '01512345678', 'O+', '1990-03-15', 'القاهرة', 30.30210000, 31.65470000, '457765', '28916150102591', 'مستشفى قصر العيني', '100', '2', 'سس', NULL, NULL, NULL, NULL, NULL),
(4, 'noah', 'ali', '01122334455', 'B-', '1995-07-25', 'القليوبية', 30.24240000, 31.20010000, '8754299', '28916150426252', 'مستشفى بنها التعليمي', '100', '2', 'صس', NULL, NULL, NULL, NULL, NULL),
(5, 'mohamed', 'farag', '01023498566', 'A-', '1995-07-25', 'aswan', 29.57770000, 31.25470000, '5432166', '87654298276262', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'menna', 'nader', '01122387255', 'B-', '2000-07-25', 'المنوفية', 30.47890000, 31.20000000, '543278', '12345687654567', 'مستشفى شبين الكوم', '150', '3', 'ش', NULL, NULL, NULL, NULL, NULL),
(7, 'walaa', 'yusuf', '01122387255', 'B-', '2000-03-02', 'الدقهلية', 29.10001000, 31.10000000, '6543218', '28916150426543', 'مستشفى الطوارئ بالمنصورة', '200', '4', 'a', NULL, NULL, NULL, NULL, NULL),
(8, 'yusuf', 'ahmed', '01122543899', 'o-', '2002-03-25', 'القاهرة', 31.30140000, 31.58770000, '23456777', '28916150765973', 'مستشفى قصر العيني', '50', '1', 'a', NULL, NULL, NULL, NULL, NULL),
(9, '', '', NULL, NULL, NULL, '', NULL, NULL, NULL, '30109060103271', '', '50', '1', 'احتاجها جيدا', NULL, NULL, NULL, NULL, NULL),
(10, '', '', NULL, NULL, NULL, 'الدقهلية', NULL, NULL, NULL, '22211230109060', 'مستشفى الطوارئ بالمنصورة', '100', '2', 'شاحتاجها جيدا', NULL, NULL, NULL, NULL, NULL),
(11, '', '', NULL, NULL, NULL, 'القاهرة', NULL, NULL, NULL, '30109060103233', 'مستشفى قصر العيني', '50', '1', 'احتاجها جيدا', NULL, NULL, NULL, NULL, NULL),
(15, '', '', NULL, NULL, NULL, 'المنوفية', NULL, NULL, NULL, '30109060000200', 'مستشفى شبين الكوم', '50', '1', '2', NULL, NULL, NULL, NULL, NULL),
(19, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, 'shah', 'Ahmed', '01016754530', 'B+', '0000-00-00', 'المنصورة', NULL, NULL, '$2y$10$3HNd9V0qDZMOlN9zA6vTdu0GiFj4vzubjJfTtlyScYUaQYWEkiNsW', '3010906010222', 'مستشفى الجامعة', '250', '5', 'شاحتاجها جيدا', NULL, NULL, NULL, NULL, NULL),
(26, 'shah', 'Ahmed', '', 'B+', '0000-00-00', 'القاهرة', NULL, NULL, '$2y$10$w6R6pVkxt2V33pubL.iaxuNeEtBYBroaMNa6N7vShiXjWxLdiHV5W', '11301090601022', 'مستشفى قصر العيني', '150', '3', 'ش', NULL, NULL, NULL, NULL, NULL),
(27, 'shah', 'Ahmed', '', 'B+', '0000-00-00', '', NULL, NULL, '$2y$10$yqxrto5z3vXKpOcrDILkO./YAFclVkiye9yu2uq7ym/0izsO5cfsS', '23010906010222', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32, 'shah', 'Ahmed', '', 'B+', '0000-00-00', '', NULL, NULL, '$2y$10$jQfZwI9rhycsRNwrMpf41elEivQfPZFVU/57x.KFSG9nbO4U.XkDy', '22222222222222', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40, 'shah', 'Ahmed', '', 'B+', '0000-00-00', '', NULL, NULL, '$2y$10$sBTK/acUBSF.MoLUhIlDl.RC4R2ipByMcdR0zkYHOer8pMM33jUtO', '66623010906010', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(48, 'Ahmed', 'Mmohamed', '', 'O-', '0000-00-00', '', NULL, NULL, NULL, '22222222222223', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(53, 'Ahmed', 'Mmohamed', '', 'O-', '0000-00-00', '', NULL, NULL, '12345', '30109060103277', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(56, 'Ahmed', 'Mmohamed', '', 'O-', '0000-00-00', '', NULL, NULL, '12345', '301090601039', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(58, 'Ahmed', 'Mmohamed', NULL, 'O-', '0000-00-00', '', NULL, NULL, '12345', '30109070103232', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(59, 'Ahmed', 'Mmohamed', NULL, 'O-', '0000-00-00', '', NULL, NULL, '12345', '50109070103232', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(61, 'Ahmed', 'Mmohamed', '01016754530', 'O-', '2001-06-09', 'غير محدد حالياً', NULL, NULL, '12345', '20109060103271', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(63, 'Ahmed', 'Mmohamed', '01016754530', 'O-', '2001-06-09', 'القاهرة', NULL, NULL, '12345', '80109060103271', 'مستشفى قصر العيني', '50', '1', 'احتاجها جيدا', NULL, NULL, NULL, NULL, NULL),
(65, 'Ahmed', 'Mmohamed', '01016754530', 'O-', '2001-06-09', 'غير محدد حالياً', NULL, NULL, '12345', '30109060103279', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(66, 'Ahmed', 'Mmohamed', '01016754530', 'O-', '2001-06-09', 'القاهرة', NULL, NULL, '12345', '12345678920', 'مستشفى قصر العيني', '100', '2', 'a', NULL, NULL, NULL, NULL, NULL),
(68, 'mohmed', 'mahmud', NULL, 'B+', '0000-00-00', '', NULL, NULL, '12345', '99109060103271', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(69, 'Ahmed', '', NULL, 'O+', '2001-06-09', NULL, NULL, NULL, '$2y$10$GTOsKChokZ/E1tbB6DIio.n3GzRiYLXWLRbS73vMDc2D7XpF6mNj.', '2010302030', NULL, NULL, NULL, NULL, '421214125@sha.edu.eg', 'ذكر', NULL, NULL, NULL),
(71, 'Ahmed', '', NULL, 'O+', '2001-06-09', NULL, NULL, NULL, '$2y$10$itpDpA97zN/4qvcvrYABt.W.Sfq4YaN6YvOeW0Mggg0R/yMy3fmQu', '3010906010221', NULL, NULL, NULL, NULL, '421214125@sha.edu.eg', 'ذكر', NULL, NULL, NULL),
(73, 'Ahmed', '', NULL, 'O+', '2001-06-09', NULL, NULL, NULL, '$2y$10$ZLuA4cAJkyqh3eWnbB06Z.D/nmmL6TYpSi/YSAqhHL5x5QIebHj.O', '2210906010221', NULL, NULL, NULL, NULL, '421214125@sha.edu.eg', 'ذكر', NULL, NULL, NULL),
(75, 'Ahmed', '', '01016754530', 'O+', '2001-06-09', NULL, NULL, NULL, '$2y$10$CC7x3kcA4o8NLuTJYIcwSOV5uIJUHApx5RFz7XCh.ucXMCwZER6hO', '3330906010221', NULL, NULL, NULL, NULL, '421214125@sha.edu.eg', 'ذكر', NULL, NULL, NULL),
(76, 'Ahmed', '', '01016754530', 'O+', '2001-06-09', NULL, NULL, NULL, '$2y$10$kfi5jlPpBa2BkmTyBGFwqez0lIPw1jPA00DmjcoF2UJ7/CLtzDqCW', '4449060103271', NULL, NULL, NULL, NULL, '421214125@sha.edu.eg', 'ذكر', NULL, NULL, NULL),
(77, 'Ahmed', '', '01016754530', 'O+', '2001-06-09', NULL, NULL, NULL, '$2y$10$Z2fl7tziXjQCjCysDPOajujYl/QUxMmX0H9FSocTrVMXdxzQCyb62', '4459060103271', NULL, NULL, NULL, NULL, '421214125@sha.edu.eg', 'ذكر', NULL, NULL, NULL),
(79, 'Ahmed', 'Mmohamed', '01016754530', 'O+', '2001-06-09', NULL, NULL, NULL, '$2y$10$4jp6W2ZHczElHKSCQ6cy1.7oBQd78wS9ocG33yr1v6F4Wre8zh0fO', '2129060103271', NULL, NULL, NULL, NULL, '421214125@sha.edu.eg', 'ذكر', NULL, NULL, NULL),
(81, 'Ahmed', 'Mmohamed', '01016754530', 'O+', '2001-06-09', NULL, NULL, NULL, '$2y$10$JS07kRod2cv/aHFAbMcL5uwfXoCdp1t64ClEF9Oynf/41/47OMbfq', '214060103271', NULL, NULL, NULL, NULL, '421214125@sha.edu.eg', 'ذكر', NULL, NULL, NULL),
(82, 'Ahmed', '', '01016754530', 'O+', '2001-06-09', NULL, NULL, NULL, '$2y$10$T70mhOQs8vPanAJnE54pFuL2Asrog6/XcGdBaWUMl/LYAOTEvzcbi', '3019060103271', NULL, NULL, NULL, NULL, '11@sha.edu.eg', 'ذكر', NULL, NULL, NULL),
(83, 'Ahmed', 'Mmohamed', '01016754530', 'O+', '2001-06-09', NULL, NULL, NULL, '$2y$10$gtz/02haGKLW8GfzwZ05xeBpAfGf.kKpDWiosX7dQexZwWQG4OLiO', '3345060103271', NULL, NULL, NULL, NULL, '421214125@sha.edu.eg', 'ذكر', NULL, NULL, NULL),
(85, 'Ahmed', 'Mmohamed', '01016754530', 'O+', '2001-06-09', NULL, NULL, NULL, '$2y$10$g.qGgUhS64Y2rTxz9xzJWub1i5OUqr2fMrZbqwZJjouoBzblXEFNy', '5555060103271', NULL, NULL, NULL, NULL, '421214125@sha.edu.eg', 'ذكر', NULL, NULL, NULL),
(86, 'Ahmed', 'Mmohamed', '01016754530', 'O+', '2001-06-09', '', NULL, NULL, '$2y$10$XWmo9YqeDtcblHX/MR4o8uogwSoAlJypMHYB5p/bY5i/ZezWA8K1W', '2256789101123', NULL, NULL, NULL, NULL, 'ahmed@sha.edu.eg', 'ذكر', NULL, NULL, NULL),
(88, 'Ahmed', 'Mmohamed', '01016754530', 'O+', '2001-06-09', '', NULL, NULL, '$2y$10$KxI5LV4wq9Rnfm/t/g7tBOiKQKeFrKPhw9qz8l5UWvC0fCJopbHWS', '12345678910', NULL, NULL, NULL, NULL, 'ahmed@sha.edu.eg', 'ذكر', NULL, NULL, NULL),
(90, 'Ahmed', 'Mmohamed', '01016754530', 'O+', '2001-06-09', '', NULL, NULL, '$2y$10$Wzs3kcJSX.7lsdWO29xhOe8Y0GUWD8J.ACq5olipjEt53CF58QR/i', '23458910', NULL, NULL, NULL, NULL, 'ahmed@sha.edu.eg', 'ذكر', NULL, NULL, NULL),
(92, 'Ahmed', 'Mmohamed', '01016754530', 'O+', '2001-06-09', NULL, NULL, NULL, '$2y$10$YuNggRadxK0MkBL.ayHDlObDagKvJ.EsLJI2aHl0Ix0oujgzAzhSK', '30190601023234', NULL, NULL, NULL, NULL, 'ahmed@sha.edu.eg', 'ذكر', NULL, NULL, NULL),
(94, 'Ahmed', 'Mmohamed', '01016754530', 'O+', '2001-06-09', NULL, NULL, NULL, '$2y$10$B6qKXedy6r3a4PMf1dZgo.nW9CqdoQSAcOvksaK7hB41r6kAcKsgy', '30109502123', NULL, NULL, NULL, NULL, 'ahmed@sha.edu.eg', 'ذكر', NULL, NULL, NULL),
(96, 'Ahmed', 'Mmohamed', '01016754530', 'O+', '2001-06-09', NULL, NULL, NULL, '$2y$10$zrFv9JMQY3BfXVjzde2OheWj5VWvMd0yplJD.GL.9BKYepx/PQQCC', '30109060103212', NULL, NULL, NULL, NULL, 'ahmed@sha.edu.eg', 'ذكر', NULL, NULL, NULL),
(98, 'Ahmed', 'Mmohamed', '01016754530', 'O+', '2001-06-09', NULL, NULL, NULL, '$2y$10$S7Gm9SzdFfBNfNZrVQRFCeJp/ywJbxDyn9XZRU7NKmb4kNgZsUfoO', '301960103212', NULL, NULL, NULL, NULL, 'ahmed@sha.edu.eg', 'ذكر', NULL, NULL, NULL),
(99, 'Ahmed', 'Mmohamed', '01016754530', '1', '2001-06-09', NULL, NULL, NULL, '$2y$10$TTQlrwxAs84ycv0JO1fUAOHEocJ9bu/to8JcjUBIASOJLVoeh89/i', '12345678901234', NULL, NULL, NULL, NULL, '2elgzzar@yahoo.com', '1', NULL, NULL, NULL),
(100, 'Ahmed', 'Mmohamed', '01016754530', 'A+', '2001-06-09', NULL, NULL, NULL, '1', '2elgzzar@yahoo', NULL, NULL, NULL, NULL, '421214125@sha.edu.eg', 'ذكر', NULL, NULL, NULL),
(102, 'Ahmed', 'Mmohamed', '01016754530', 'A+', '2001-06-09', NULL, NULL, NULL, '2', '33elgzzar@yaho', NULL, NULL, NULL, NULL, '421214125@sha.edu.eg', 'ذكر', NULL, NULL, NULL),
(105, 'Ahmed', 'Mmohamed', '01016754530', 'O+', '2001-06-09', NULL, NULL, NULL, '1', '2235060103271', NULL, NULL, NULL, NULL, 'ahmed@sha.edu.eg', 'ذكر', NULL, NULL, NULL),
(106, 'Ahmed', 'Mmohamed', '01016754530', 'O+', '2001-06-09', NULL, NULL, NULL, 's', '445678103271', NULL, NULL, NULL, NULL, 'ahmed@sha.edu.eg', 'ذكر', NULL, NULL, NULL),
(108, 'Ahmed', 'Mmohamed', '01016754530', 'O+', '2001-06-09', NULL, NULL, NULL, 'zz', '22222222234271', NULL, NULL, NULL, NULL, 'ahmed@sha.edu.eg', 'ذكر', NULL, NULL, NULL),
(110, 'Ahmed', 'Mmohamed', '01016754530', 'O+', '2001-06-09', NULL, NULL, NULL, '2', '333678103271', NULL, NULL, NULL, NULL, 'ahmed@sha.edu.eg', 'ذكر', NULL, NULL, NULL),
(111, 'Ahmed', 'Mmohamed', '01016754530', 'O+', '2001-06-09', NULL, NULL, NULL, '2', '88888103271', NULL, NULL, NULL, NULL, 'ahmed@sha.edu.eg', 'ذكر', NULL, NULL, NULL),
(113, 'Ahmed', 'Mmohamed', '01016754530', 'O+', '2001-06-09', NULL, NULL, NULL, '$2y$10$yhPZuC1UMO7Qi0Z9hqwREuYtkgkcd4MyAsqE9usjurcdomx9FKE2u', '23888103271', NULL, NULL, NULL, NULL, 'ahmed@sha.edu.eg', 'ذكر', NULL, NULL, NULL),
(114, 'Ahmed', 'Mmohamed', '01016754530', 'O+', '2001-06-09', NULL, NULL, NULL, '$2y$10$kUbW8Nelph1v1pK8k4woh.fI5CdDduBPGhkRsNgXZ2XAjKRqPq8xy', '13888103271', NULL, NULL, NULL, NULL, 'ahmed@sha.edu.eg', 'ذكر', NULL, NULL, NULL),
(116, 'Ahmed', 'Mmohamed', '01016754530', 'A+', '2000-06-09', NULL, NULL, NULL, '2', '23409060103271', NULL, NULL, NULL, NULL, '421214125@sha.edu.eg', 'ذكر', NULL, NULL, NULL),
(119, 'Ahmed', 'Mmohamed', '01016754530', 'A+', '2000-06-09', NULL, NULL, NULL, '123', '25709060103271', NULL, NULL, NULL, NULL, '421214125@sha.edu.eg', 'ذكر', NULL, NULL, NULL),
(120, 'Ahmed', 'Mmohamed', '01016754530', 'A+', '2000-06-09', NULL, NULL, NULL, '5', '50109060103271', NULL, NULL, NULL, NULL, '421214125@sha.edu.eg', 'ذكر', NULL, NULL, NULL),
(122, '', '', NULL, 'A+', '0000-00-00', '', NULL, NULL, 'ss', '60109060103271', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(124, 'Ahmed', 'Mmohamed', '01016754530', 'A+', '2002-02-22', NULL, NULL, NULL, 'a', '90109060103271', NULL, NULL, NULL, NULL, '421214125@sha.edu.eg', 'ذكر', NULL, NULL, NULL),
(126, 'Ahmed', 'Mmohamed', '01016754530', 'A+', '2002-02-22', NULL, NULL, NULL, '2', '22209060103271', NULL, NULL, NULL, NULL, '421214125@sha.edu.eg', 'ذكر', NULL, NULL, NULL),
(128, 'Ahmed', 'Mmohamed', '01016754530', 'A+', '2002-02-22', NULL, NULL, NULL, '2', '26209060103271', NULL, NULL, NULL, NULL, '421214125@sha.edu.eg', 'ذكر', NULL, NULL, NULL),
(130, '', '', NULL, 'A+', '0000-00-00', '', NULL, NULL, 's', '75010906010327', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(131, '', '', NULL, 'A+', '0000-00-00', '', NULL, NULL, 'w', '23232323', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(133, 'Ahmed', 'Mmohamed', '01016754530', 'A+', '2002-02-22', NULL, NULL, NULL, 'ش', '82010906010327', NULL, NULL, NULL, NULL, '421214125@sha.edu.eg', 'ذكر', NULL, NULL, NULL),
(137, 'Ahmed', 'Mmohamed', '01016754530', 'A+', '2002-02-22', NULL, NULL, NULL, '$2y$10$/kOvzRZ.IeSXf4fq58n45OPtVrImdd0sHBcSBy5HjDw0s07WUyUva', '57610906010327', NULL, NULL, NULL, NULL, '421214125@sha.edu.eg', 'ذكر', NULL, NULL, NULL),
(138, 'Ahmed', 'Mmohamed', '01016754530', 'O-', '2005-05-05', NULL, NULL, NULL, '$2y$10$fZnGA5iyFfDToB.SLlrZF.cJJI0x.5ff1rYPNp.pZlp6W3rI7JYNG', '52301090601032', NULL, NULL, NULL, NULL, '421214125@sha.edu.eg', 'ذكر', NULL, NULL, NULL),
(147, 'Ahmed', 'Mmohamed', '01016754530', 'O-', '2005-05-05', 'القليوبية', NULL, NULL, '6', '23465060103271', 'مستشفى بنها التعليمي', '200', '4', 'س', '421214125@sha.edu.eg', 'ذكر', NULL, NULL, NULL),
(150, 'Ahmed', 'Mmohamed', NULL, 'A+', '0000-00-00', 'القاهرة', NULL, NULL, 'j', '3010906010234', 'مستشفى قصر العيني', '50', '1', 'a', NULL, NULL, NULL, NULL, NULL),
(151, '', '', NULL, NULL, NULL, 'الدقهلية', NULL, NULL, NULL, '8010906010327', '', '', '2', 'a', NULL, NULL, NULL, NULL, NULL),
(154, 'Ahmed', 'Mmohamed', NULL, 'A+', '2002-02-22', '', NULL, NULL, 'h', '10009060103271', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(164, 'Ahmed', 'Mmohamed', NULL, 'O-', '2001-06-09', 'المنوفية', NULL, NULL, '22', '301090601076', 'مستشفى شبين الكوم', '100', '2', 'a', NULL, NULL, NULL, NULL, NULL),
(165, 'Ahmed', 'Mmohamed', NULL, 'O-', '2001-06-09', '', NULL, NULL, 'a', '35609060103271', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(167, 'Ahmed', 'Mmohamed', NULL, 'O-', '2001-06-09', 'المنصورة', NULL, NULL, 's', '12345667', 'مستشفى الجامعة', '150', '3', 'sa', NULL, NULL, NULL, NULL, NULL),
(169, 'Ahmed', 'Mmohamed', NULL, 'O-', '2001-06-09', '', NULL, NULL, 'ا', '22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(171, 'Ahmed', 'Mmohamed', NULL, 'O-', '2001-06-09', '', NULL, NULL, 'ا', '12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(173, 'Ahmed', 'Mmohamed', NULL, 'O-', '2001-06-09', '', NULL, NULL, '2', '35609060103567', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(176, 'Ahmed', 'Mmohamed', NULL, 'O-', '2001-06-09', '', NULL, NULL, '1', '30109606953', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(178, 'Ahmed', 'Mmohamed', NULL, 'O-', '2001-06-09', '', NULL, NULL, '1', '90109606953', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(181, 'Ahmed', 'Mmohamed', NULL, 'O-', '2001-06-09', 'القاهرة', NULL, NULL, 'س', '1', 'مستشفى قصر العيني', '50', '1', 'ش', NULL, NULL, NULL, NULL, NULL),
(187, 'Ahmed', 'Mmohamed', NULL, 'O-', '2001-06-09', '', NULL, NULL, 'q', '2345678911', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(188, 'Ahmed', 'Mmohamed', NULL, 'O-', '2001-06-09', '', NULL, NULL, 'q', '22345678911', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(190, 'Ahmed', 'Mmohamed', '01016754530', 'O-', '2001-06-09', '', NULL, NULL, 'q', '12345678911', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(192, 'Ahmed', 'Mmohamed', NULL, 'O-', '2001-06-09', '', NULL, NULL, '1', '6745678911', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(193, 'Ahmed', 'Mmohamed', NULL, 'O-', '2001-06-09', '', NULL, NULL, '22', '4565678911', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(194, 'Ahmed', 'Mmohamed', NULL, 'O-', '2001-06-09', '', NULL, NULL, '1', '99565678911', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(196, 'Ahmed', 'Mmohamed', NULL, 'O-', '2001-06-09', '', NULL, NULL, '1', '459565678911', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(198, 'Ahmed', 'Mmohamed', NULL, 'O-', '2001-06-09', '', NULL, NULL, 'gg', '89565678911', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(199, 'Ahmed', 'Mmohamed', NULL, 'O-', '2001-06-09', '', NULL, NULL, 'a', '88565678911', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(200, 'Ahmed', 'Mmohamed', NULL, 'O-', '2001-06-09', '', NULL, NULL, '88565678911', '98565678911', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(205, 'Ahmed', 'Mmohamed', NULL, 'O-', '2001-06-09', 'القاهرة', NULL, NULL, '3019060103232', '3019060103232', 'مستشفى قصر العيني', '50', '1', 'ش', NULL, NULL, NULL, NULL, NULL),
(208, 'Ahmed', 'Mmohamed', NULL, 'O-', '2001-06-09', '', NULL, NULL, 'a', '3019060104432', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(209, 'Ahmed', 'Mmohamed', NULL, 'O-', '2001-06-09', '', NULL, NULL, '2', '3019060103213', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(210, 'Ahmed', 'Mmohamed', NULL, 'O-', '2001-06-09', '', NULL, NULL, '1', '2019060103213', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(212, 'mohmed', 'Mmohamed', NULL, 'O-', '2001-06-09', '', NULL, NULL, '30109060103272', '30109060103272', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(213, 'Ahmed', 'Essam', NULL, 'O+', '2001-06-09', '', NULL, NULL, '1', '12345678959', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(214, 'Ahmed', 'Essam', '01016754530', 'A-', '2002-02-22', 'غير محدد حالياً', NULL, NULL, '2', '83232323', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(216, 'Ahmed', 'Essam', NULL, 'O+', '2001-06-09', 'القاهرة', NULL, NULL, '1', '22345678959', 'مستشفى قصر العيني', '50', '1', 'ش', NULL, NULL, NULL, NULL, NULL),
(219, 'Ahmed', 'Essam', NULL, 'O+', '2001-06-09', '', NULL, NULL, 'h', '92345678959', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(227, 'ahmed', 'Essam', '01016754530', 'O+', '2001-06-09', 'القاهرة', NULL, NULL, '2', '0309201603988', 'مستشفى قصر العيني', '50', '1', 'a', NULL, NULL, NULL, NULL, NULL),
(229, 'Malak ', 'Esaam', NULL, 'O+', '2001-06-09', 'المنوفية', NULL, NULL, '32', '3010906010231', 'مستشفى شبين الكوم', '50', '1', 'hg', NULL, NULL, NULL, NULL, NULL),
(231, 'Malak', 'Esaam', NULL, 'A-', '0000-00-00', '', NULL, NULL, '55', '20109060103212', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(233, 'Malak', 'Esaam', NULL, 'A-', '0000-00-00', '', NULL, NULL, '55', '40109060103212', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(234, 'ealak ', 'asaam', NULL, 'O+', '2001-06-09', '', NULL, NULL, '23', '2910906010231', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(236, 'ealak ', 'asaam', NULL, 'O+', '2001-06-09', '', NULL, NULL, '9', '5910906010231', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(237, 'ealak ', 'asaam', NULL, 'O+', '2001-06-09', '', NULL, NULL, '2', '1910906010231', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(241, 'ealak ', 'asaam', NULL, 'O+', '2001-06-09', '', NULL, NULL, 'h', '30105647392134', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(243, 'ealak ', 'asaam', NULL, 'O+', '2001-06-09', '', NULL, NULL, 'ا', '2010906010231', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(245, 'ealak ', 'asaam', NULL, 'O+', '2001-06-09', '', NULL, NULL, '2', '199906010231', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(246, 'ealak ', 'asaam', NULL, 'O+', '2001-06-09', '', NULL, NULL, '2', '239906010231', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(248, 'ealak ', 'asaam', NULL, 'O+', '2001-06-09', '', NULL, NULL, '2', '76010906010231', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(249, 'ealak ', 'asaam', NULL, 'O+', '2001-06-09', '', NULL, NULL, '2', '65710906010231', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(250, 'waled', 'Alasmr', NULL, 'O+', '2001-06-09', '', NULL, NULL, '100', '4000906010231', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(252, 'mostafad', 'anwert', NULL, 'O+', '2001-06-09', '', NULL, NULL, 'h', '1000906010231', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(253, 'mostafad', 'anwert', NULL, 'O+', '2001-06-09', '', NULL, NULL, '109', '5000906010231', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `email` varchar(255) NOT NULL,
  `national_id` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL,
  `dob` date NOT NULL,
  `gender` varchar(10) NOT NULL,
  `blood_type` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `phone`, `email`, `national_id`, `password`, `dob`, `gender`, `blood_type`) VALUES
(12, 'Ahmed', 'Mmohamed', '2201016754530', '421214125@sha.edu.eg', '2230109060103271', '$2y$10$oKjZg3Ucr0PUCI5u4uuzlubu9YjXrFcceBpi935BUbYJIngYaJH42', '2001-01-01', 'ذكر', 'A-'),
(13, 'Ahmed', 'Mmohamed', '01016754530', 'elgzzara480@gamil.com', '30109060103271', '$2y$10$LrsNLs383BHdlxGV66z0MuO0AgaB.Hb5kQkWK0Zch1iZp5t6H4HJK', '2001-01-01', 'ذكر', 'A-'),
(14, 'Ahmed', 'Mmohamed', '01005409270', '22s@gamil.com', '30109060103222', '$2y$10$dK30CggyeZIA88NGqN6z0uy6hBDTdSD.tGj3gJULBCoqyrlpGoDB.', '2001-01-01', 'ذكر', 'A-'),
(15, 'Ahmed', 'Mmohamed', '201016754530', '222421214125@sha.edu.eg', '2222309060103271', '$2y$10$5dPCb1lE3Ye9Sy1Bf07dzuwu7SWGCNPQOO/G63gRXilp/aJ32WdiG', '2001-01-01', 'ذكر', 'O-'),
(16, 'Ahmed', 'Mmohamed', '01005409260', '4212141225@sha.edu.eg', '22320109060103271', '$2y$10$WeI/arXT.UwM5MAAcMxm2uY/u9sadE1tNhZ9anZZKplecPd03c9Hm', '2001-01-01', 'ذكر', 'O-'),
(17, 'Ahmed', 'Mmohamed', '2201005409260', '24212141225@sha.edu.eg', '2222320109060103271', '$2y$10$cO1STuGKUkkSslqX3zJASeVKc5OtEb5X//xe.uWUk4J520fLl.Yxu', '2001-01-01', 'ذكر', 'O-'),
(18, 'shahd', 'Ahmed', '01005409234', 'ahmed22@gamil.com', '30109060103272', '$2y$10$s.Ahd4XwaL.y4FB7Ldu3TeIsxJNASTiYH/aOmhm3Zmc270oXdgQPi', '2001-01-01', 'ذكر', 'B+'),
(19, 'shahd', 'Ahmed', '201005409234', '2ahmed22@gamil.com', '2230109060103272', '$2y$10$3YXU7zNWKCWFYkszXU2k6.lJ/Ldvy7d4ukPVevwXNtxlvBlCWBnMW', '2001-01-01', 'ذكر', 'B+'),
(20, ' Ahmed ', 'Ahmed', '010167545303', '22ahmed22@gamil.com', '22230109060103272', '$2y$10$jD6MxbgJGcDBSSw0Q3C/WOPOItc7hE/ydNCfezUXZs2ISaww/sy0q', '2001-01-01', 'ذكر', 'B+'),
(21, 'Ahmed', 'Elgzzar', '01005409230', 'trika@yahoo.com', '3010906010333', '$2y$10$VKxC8ajdLhsuR/OEgRjc.ONG0C44IL3kPMgtI.Abm4fqpVbvqQsg2', '2001-01-01', 'ذكر', 'B+'),
(22, 'Rania', 'Ahmed', '201005409232', '2elgzzar480@gmail.com', '2301090601099', '$2y$10$fYhh0uu0FNRS4cwFVD1j4.O1faFkz79FVG0Fz/3wHMDVP2X5iNvUG', '2001-06-09', 'ذكر', 'B+'),
(23, 'Rania', 'Ahmed', '2201005409232', '22elgzzar480@gmail.com', '22301090601099', '$2y$10$kAsxFheke6uuNa4N.572c.KKccN7ifqkAERtwjURAPVs3olJ5dK5u', '2001-06-09', 'ذكر', 'B+'),
(24, 'Ahmed', 'Ibrahim', '201005409270', '2elgzzara480@gamil.com', '230109060103271', '$2y$10$qMTTNKicLpOJY5I09vS8SeV9hQGZEf23tsP04fV0n66BMwHyUQfmm', '2001-01-01', 'ذكر', 'B-'),
(25, 'Ahmed', 'Mmohamed', '01016754530', 'elgzzar480@gmail.com', '30109060103271', '$2y$10$75X5wiVVABobiM10Jx0nU.cSqgojhNIe4TfFOskYvCqyJMI2zDicO', '2001-06-09', 'ذكر', 'B+'),
(26, 'Ahmed', 'Mmohamed', '01016754530', 'elgzzar480@gmail.com', '30109060103271', '$2y$10$3VB6x/Oag6Xy8bXxJB2CL.pbsClmKIJJbMIv/LHnq.az/P/VfgIvK', '2001-06-09', 'ذكر', 'B+'),
(27, 'Ahmed', 'Mmohamed', '01016754530', 'elgzzar480@gmail.com', '301090601032712', '$2y$10$vz7PmRJre4aZwwSw67A4O.xJMHXRg74mE78JmQP4VYufiu0pe4pPC', '2001-06-09', 'ذكر', 'B+'),
(28, 'Ahmed', 'Mmohamed', '01016754530', 'elgzzar480@gmail.com', '301090601032712', '$2y$10$i9WQr.smmq8cNIkkKJ4cVOaUK69zmJX9jJ1Tv0hATdJXxecw7GCeO', '2001-06-09', 'ذكر', 'B+'),
(29, 'Ahmed', 'Mmohamed', '01016754530', 'elgzzar480@gmail.com', '301090601032712', '$2y$10$orbwUmuuk67PK6YQWwCqvetjGivOR7Bfi25AABCnSqrVu4AbMZ8aS', '2001-06-09', 'ذكر', 'B+'),
(30, '', '', '', '', '', '$2y$10$4b.oV8cgTJvRpFuHvm/RUOopvatH5ASJvsWvCukD.4XqLI3G4tjDu', '0000-00-00', '', ''),
(31, 'احمد', 'الجزار', '01005409232', 'elgzzar480@gmail.com', '301090601032712', '$2y$10$6qYf5onet7Tnrq6gvy9VvuXdmlvqp3J.5pa7L2kOSQv4gQDTsM8/u', '2001-06-09', 'ذكر', 'B+'),
(32, 'احمدs', 'الجزار', '01005409232', 'elgzzar480@gmail.com', '301090601032712', '$2y$10$SEjS0Qhvi.XML90GQlK6OuCphuKY8lVe0Tt7enTejxsnLcJC2mJmm', '2001-06-09', 'ذكر', 'B+'),
(33, 'Ahmed', 'Mmohamed', '01016754530', 'elgzzar480@gmail.com', '30109060103271', '$2y$10$PBjsBxvrvnwAVldqtAf3NO/oNRGJ3kKAhaKcgjvPx0ORDNvzriMt.', '2000-11-11', 'ذكر', 'B+'),
(37, '22Ahmed', '222Ibrahim', '222201005409270', 'hamada@yahoo.com', '01016754530', '$2y$10$.tQjrgbDKMJulsH5ss26.eaxW/UfwebFI78UOBkFo0VAYQIiBicu2', '2001-01-01', 'ذكر', 'B-'),
(38, 'اhesham', 'azamy', '01012345678', '22hamada@yahoo.com', '0100123445', '$2y$10$GxzW3L3zVuV/WRtNszA0keDzb2CSTu4MerrCmpxMM78Xx4Sgg1PTa', '2001-01-01', 'ذكر', 'B-'),
(39, '22Ahmed', '22Ibrahim', '01002344444', '2222elgzzara480@gamil.com', '22222223010906010327', '$2y$10$czeZKOYi.tVmtb4sYrADk.IDigu8V5oZqovDpEXFfBeGX5gLTPA3q', '2001-01-01', 'ذكر', 'B-'),
(40, '22Ahmed', '22Ibrahim', '5501002344444', '442222elgzzara480@gamil.com', '33222222230109060103', '$2y$10$MXrCOXYNkTojmZ3x0fIAauuZs0yVLjcc6Ot5L0xmK8j4pwFghp762', '2001-01-01', 'ذكر', 'B-'),
(41, '22Ahmed', '22Ibrahim', '55501002344444', '5442222elgzzara480@gamil.com', '73322222223010906010', '$2y$10$XzzcUoog78XSKeXNxet4wuxa7gBGSy8h3lBpzqYj7T9kCq6.lrG8W', '2001-01-01', 'ذكر', 'B-'),
(42, 'hesham', 'azmy', '0100323232', '222elgzzara480@gamil.com', '2322230109060103271', '$2y$10$3PEVpLI7SP0MlgZK6kAOlO9Rn/9qBXXdSHucggXmKnDqvGoB5Jlwq', '2001-01-01', 'ذكر', 'B-'),
(43, 'hesham', 'azmy', '22220100323232', '222222elgzzara480@gamil.com', '22223222301090601032', '$2y$10$nM5Zjna4.wTn0H3.ohul5.E3D7S4vLDjtlSXbTgbUyrHcH.E.ZRMy', '2001-01-01', 'ذكر', 'B-'),
(44, '22Ahmed', '22Ibrahim', '22201005409270', '222222222222222212222elgzzara480@gamil.com', '22222222222222222222', '$2y$10$Oq52.Vdn/GExDDsaMsz2aOBXb.Y6dinbvm4dUA0XQJm1K/obxvVy2', '2001-01-01', 'ذكر', 'B-'),
(45, '22Ahmed', '22Ibrahim', '222220100540927', '2222222222222222212222elgzzara480@gamil.com', '22222222222222222222', '$2y$10$1oLa8EpMAYZlcVBXnSdLUO4iRs/LTwRfwWclU697l.9cU0mRIbAN6', '2001-01-01', 'ذكر', 'B-'),
(46, 'Ahmed', 'Mmohamed', '01016754530', '2222elgzzara480@gamil.com', '30109060103271', '$2y$10$SgDDuptCr.qstV3/BCWV/ugtxwfTqE2kAMx04ugcKi.bLYgfWJFZu', '2001-01-11', 'ذكر', 'O+'),
(47, 'Ahmed', 'Mmohamed', '01016754530', '2222elgzzara480@gamil.com', '30109060103271', '$2y$10$JqhS1ZRQn6e1JcYJmpD07OfeXBAo3JNv7VWuWU7KlxI1IkNrk93wi', '2001-01-11', 'ذكر', 'O+'),
(48, 'Ahmed', 'Mmohamed', '01016754530', '2222elgzzara480@gamil.com', '30109060103271', '$2y$10$t1aAByLY1MPkOYWfr5es5OLgw3JzdDnybv1ZjAJR.wBkBZYLffOeC', '2001-01-11', 'ذكر', 'O+'),
(49, 'Ahmed', 'Mmohamed', '010167545302222', '2222elgzzara2480@gamil.com', '301090602103271', '$2y$10$i0SZTRJ12nEpfgv9x6XhL.8zc9JqJTddDebrWy56E/OWLGhF1AFWO', '2001-01-11', 'ذكر', 'O+'),
(50, 'Ahmed', 'Mmohamed', '010167545302222', '2222elgzzara480@gamil.com', '28916150765973 ', '$2y$10$ORdHd0VFxdrMD6uiHi76TO2Y/Zg2SicsfMdCvaa.OOZSBMiimBVN2', '2001-01-11', 'ذكر', 'O+'),
(51, 'Ahmed', 'Mmohamed', '010167545302222', '2222elgzzara480@gamil.com', '28916150765973 ', '$2y$10$P2gduJgelUHjkv.V6e3Wb.qjnGp7ITotGgjluxOkz5E.KC2W2UMCu', '2001-01-11', 'ذكر', 'O+'),
(52, 'Ahmed', 'Mmohamed', '01016754530', '2222elgzzara480@gamil.com', '30109060103271', '$2y$10$.hTpS.22SD9Zxuj0L1L76eWhjWH8mgVKG4ZKRVO8d6w9lx47unGC6', '2001-06-09', 'ذكر', 'O+'),
(53, 'Ahmed', 'Mmohamed', '01016754530', '2222elgzzara480@gamil.com', '30109060103271', '$2y$10$HlpfaXIpdNiOX8CwIc0dfOWqUHdgUGXnz9TBaPVxVnhVRibIC8j7u', '2001-06-09', 'ذكر', 'O+'),
(54, 'Ahmed', 'Mmohamed', '01016754530', '2222elgzzara480@gamil.com', '30109060103271', '$2y$10$uVDzpVRPfSULj4WsibGV1eUveLXS8CJ0eVFKBN.j.PWcxcPLq60UK', '2001-06-09', 'ذكر', 'O+'),
(55, 'Ahmed', 'Mmohamed', '01016754530', '2222elgzzara480@gamil.com', '30109060103271', '$2y$10$x4cy7FL0EyXIo20kTg8YvOpXeGEzSGgGDmODGpF8tGcLNadX8NezW', '2001-06-09', 'ذكر', 'O+'),
(56, '22Ahmed', '22Ibrahim', 'Ahmed2222201005', '22222222A22222222212222elgzzara480@gamil.com', 'Ahmed2222elgzzara480', '$2y$10$HyYOg2Tra6P.Q/2Rzn6jE.NTiwQU0vrRW3vyHqbXXNOyaqLV58MMS', '2001-01-01', 'ذكر', 'B-'),
(57, 'Ahmed', 'Mmohamed', '01016754530', '2222elgzzara480@gamil.com', '30109060103271', '$2y$10$Scxm.H9fW.y5Whp3do3Lkuk7.l6bgX.lfFIISFneCuSPYHr37jcw2', '2001-06-09', 'ذكر', 'A+'),
(58, 'Ahmed', 'Mmohamed', '01016754530', '2222elgzzara480@gamil.com', '30109060103271', '$2y$10$xJ7BKDYwfIe0OUtSjOIyKusu9mBwqdhKUf/F14YOfNfOwYcHAl.dO', '2001-06-09', 'ذكر', 'O+'),
(59, 'Ahmed', 'Mmohamed', '01016754530', '2222elgzzara480@gamil.com', '30109060103271', '$2y$10$5VZ0AFij/aCZRtrqm7i1LeFWLkMi6oD78Mlg/xLYO60YhPHckzqK2', '2001-06-09', 'ذكر', 'O+'),
(60, 'Ahmed', 'Mmohamed', '01016754530', '2222elgzzara480@gamil.com', '30109060103271', '$2y$10$/UDYs4OdOt3CTHU/uzkMiODmlBrJCdKJuuBvg7ZEKvI9mxjXPH.X6', '2001-06-09', 'ذكر', 'O+'),
(61, 'Ahmed', 'Mmohamed', '01016754530', '2222elgzzara480@gamil.com', '30109060103271', '$2y$10$LTj.GlcH7sqTV2rYOk3kjOBlTyImpRotyoLLla73n52pgm4MuiPZ6', '2001-06-09', 'ذكر', 'O+'),
(62, 'Ahmed', 'Mmohamed', '01016754530', '2222elgzzara480@gamil.com', '30109060103271', '$2y$10$Ee4mMFZ1rAZiJn27cFHicu7GFmeAHaDqFBXFbeLG5yAOyauICqcsO', '2001-06-09', 'ذكر', 'O-'),
(63, 'Ahmed', 'Mmohamed', '01016754530', '2222elgzzara480@gamil.com', '30109060103271', '$2y$10$MZeI1.LoOo8bNA9ckiYUVO1heI/Im0dEhUuymAZT3.i..nESHmMs.', '2001-06-09', 'ذكر', 'O+'),
(64, 'shah', 'Ahmed', '010023344455', 'elgzzar@yahoo.com', '3010906010222', '$2y$10$LmJhZIrI84G9tKHOO5lCwOgirQDe9H3bl594KXGCroSi78BAKWbFa', '2001-06-09', 'ذكر', 'B+'),
(65, 'shah', 'Ahmed', '2201016754530', '2elgzzar@yahoo.com', '23010906010222', '$2y$10$dqISD.nTMBL1Qn8UxHBxC.2APisVx3OR.mwcrc2/4ijIGrJIrsaG6', '2001-06-09', 'ذكر', 'B+'),
(66, 'shah', 'Ahmed', '2201016754530', '2elgzzar@yahoo.com', '23010906010222', '$2y$10$WSgBPoStgW6IlVRVDovLB.88OO2EO.0J5k.2IYMghpvzy0.1nryd6', '2001-06-09', 'ذكر', 'B+'),
(67, 'Ahmed', 'Mmohamed', '01016754530', '421214125@sha.edu.eg', '30109060103232', '$2y$10$aOF2PBNbD.yAn2.fE61nb.07ljm2JrTNSN.3OAUp6txFMCAMtRcOC', '2001-06-09', 'ذكر', 'A+'),
(68, 'Ahmed', 'Mmohamed', '01016754530', '421214125@sha.edu.eg', '30109060103271', '$2y$10$Ar5QLnq7CT2gO9zFYZQ1GeveS.x3HiUtiRhrks76MB6aWwpyR8JFm', '2001-06-09', 'أنثى', 'O-'),
(69, 'Ahmed', 'Mmohamed', '01016754530', '421214125@sha.edu.eg', '30109060103271', '$2y$10$CHU2UYysI.lBgUDsc5cODu./00Tg2CvIMpxu1fhQxRujfRHWTVf/m', '2001-06-09', 'أنثى', 'O-'),
(70, 'Ahmed', 'Mmohamed', '01016754530', '2elgzzar@yahoo.com', '23010906010222', '12345', '2001-06-09', 'ذكر', 'B+'),
(71, 'Ahmed', 'Mmohamed', '01016754530', '2elgzzar@yahoo.com', '23010906010222', '12345', '2001-06-09', 'ذكر', 'B+'),
(72, 'Ahmed', 'Mmohamed', '010016754530', 'Ahmed@sha.edu.eg', '301906010734', '$2y$10$jF7cluask9Bp/HlNP0VreeRImvIjnQGxvQUKh8.ZQeRk0tlnaD3dq', '2001-06-09', 'ذكر', 'O+'),
(73, 'Ahmed', 'Mmohamed', '23416754530', 'a@sha.edu.eg', '432406010734', '$2y$10$FRUoSe.CDMLFaAuJom0Tz.e1qnAX6J7xpXfkzFlbKuCBfVfkH2FVu', '2001-06-09', 'ذكر', 'O+'),
(74, 'Ahmed', 'Mmohamed', '01016754530', '2elgzzar@yahoo.com', '30109060103271', '$2y$10$aiUBTagAfHoCSQojgZbClebXJE9rffAcpALz0GONmmOo07ZoLDpFi', '2001-06-09', 'ذكر', 'O+'),
(75, 'Ahmed', 'Mmohamed', '010050969', '22@sha.edu.eg', '238588585', '$2y$10$qLqO4FfzvVpg0FGZZ5qF/eHrvrp1fp9xTmd.7kxFd.7zYhDLp9Jdu', '2001-06-09', 'ذكر', 'A-'),
(76, 'Ahmed', 'Mmohamed', '20016754530', '234214125@sha.edu.eg', '99230109060103271', '$2y$10$sZMAl.kVFxhS9.oIBJxv6unzVbkujd3i7fkLrfyRPwitMMcl1/Nyu', '2001-06-09', 'ذكر', 'A-'),
(77, 'Ahmed', 'Mmohamed', '1016754530', '21214125@sha.edu.eg', '21230109060103271', '$2y$10$dPvEQH8p8njQdHVpDC8RgenschUlJqp/hhxw7Hcaf811GJnJMUqa.', '2001-06-09', 'ذكر', 'A-'),
(78, 'Ahmed', 'Mmohamed', '30016754530', '2221214125@sha.edu.eg', '9230109060103271', '$2y$10$RbW8TNZY8TwTuXitZbvoTu2bMgx5KyVZ/cWiyEO5eZuTumgfLGule', '2001-06-09', 'ذكر', 'A-'),
(79, 'Ahmed', 'Mmohamed', '21016754530', '421214123@sha.edu.eg', '1230109060103271', '$2y$10$RSP1ghpopJF4gR91ALoHEOLe4w.hibm3eRnaGdf5No46qZwDmlcly', '2001-06-09', 'ذكر', 'A-');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ambulancecars`
--
ALTER TABLE `ambulancecars`
  ADD PRIMARY KEY (`license_number`);

--
-- Indexes for table `bank_admins`
--
ALTER TABLE `bank_admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bloodbanks`
--
ALTER TABLE `bloodbanks`
  ADD PRIMARY KEY (`bloodbank_id`),
  ADD UNIQUE KEY `phone` (`phone`),
  ADD UNIQUE KEY `license_number` (`license_number`,`hospital_id`),
  ADD UNIQUE KEY `address` (`address`),
  ADD KEY `hospital_id` (`hospital_id`);

--
-- Indexes for table `bloodbanks1`
--
ALTER TABLE `bloodbanks1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bloodbanks_donors`
--
ALTER TABLE `bloodbanks_donors`
  ADD KEY `donor_id` (`donor_id`),
  ADD KEY `bloodbank_id` (`bloodbank_id`);

--
-- Indexes for table `bloodbanks_patients`
--
ALTER TABLE `bloodbanks_patients`
  ADD KEY `patient_id` (`patient_id`),
  ADD KEY `bloodbank_id` (`bloodbank_id`);

--
-- Indexes for table `blood_bank`
--
ALTER TABLE `blood_bank`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blood_banks2`
--
ALTER TABLE `blood_banks2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `code`
--
ALTER TABLE `code`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`emp_id`),
  ADD UNIQUE KEY `phone` (`phone`),
  ADD KEY `bloodbank_id` (`bloodbank_id`);

--
-- Indexes for table `hospitals`
--
ALTER TABLE `hospitals`
  ADD PRIMARY KEY (`hospital_id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `national_id` (`national_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bank_admins`
--
ALTER TABLE `bank_admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `bloodbanks`
--
ALTER TABLE `bloodbanks`
  MODIFY `bloodbank_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `bloodbanks1`
--
ALTER TABLE `bloodbanks1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `blood_bank`
--
ALTER TABLE `blood_bank`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `blood_banks2`
--
ALTER TABLE `blood_banks2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `code`
--
ALTER TABLE `code`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `emp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `hospitals`
--
ALTER TABLE `hospitals`
  MODIFY `hospital_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `patients`
--
ALTER TABLE `patients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=254;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
