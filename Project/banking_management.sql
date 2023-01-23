-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 19, 2022 at 06:48 PM
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
-- Database: `banking_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `acc_Number` int(11) NOT NULL,
  `Customer_ID` int(11) NOT NULL,
  `branch_Name` varchar(250) NOT NULL,
  `balance` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`acc_Number`, `Customer_ID`, `branch_Name`, `balance`) VALUES
(7070, 2020, 'One Eignt Bank B-1', 50000),
(7071, 2020, 'One Eignt Bank B-2', 60000),
(7072, 2021, 'One Eignt Bank B-1', 70000),
(7073, 2024, 'One Eignt Bank B-3', 3000000),
(7074, 2022, 'One Eignt Bank B-2', 150000),
(7075, 2023, 'One Eignt Bank B-4', 26000);

-- --------------------------------------------------------

--
-- Table structure for table `borrower`
--

CREATE TABLE `borrower` (
  `Borrower_No` int(11) NOT NULL,
  `Customer_ID` int(11) NOT NULL,
  `loan_Number` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `borrower`
--

INSERT INTO `borrower` (`Borrower_No`, `Customer_ID`, `loan_Number`) VALUES
(5050, 2020, 8080),
(5051, 2021, 8081),
(5052, 2021, 8083),
(5053, 2022, 8082),
(5054, 2024, 8084);

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `name` varchar(250) NOT NULL,
  `address` varchar(250) NOT NULL,
  `asset` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`name`, `address`, `asset`) VALUES
('One Eignt Bank B-1', '825 Redwood St.\r\nPortland, ME 04103', 5),
('One Eignt Bank B-2', '25 Madison Road\r\nMetairie, LA 70001', 7),
('One Eignt Bank B-3', '53 Mill St.\r\nSpringfield, PA 19064', 10),
('One Eignt Bank B-4', '18 Annadale Lane\r\nNew City, NY 10956', 1),
('One Eignt Bank B-5', '80 Peninsula St.\r\nKokomo, IN 46901', 3);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `Customer_ID` int(11) NOT NULL,
  `first_name` varchar(250) DEFAULT NULL,
  `last_name` varchar(250) DEFAULT NULL,
  `address` varchar(250) NOT NULL,
  `Phone_Number` int(11) NOT NULL,
  `email` varchar(250) NOT NULL,
  `Date_of_birth` date NOT NULL,
  `age` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`Customer_ID`, `first_name`, `last_name`, `address`, `Phone_Number`, `email`, `Date_of_birth`, `age`) VALUES
(2020, 'Jessie', 'Lynn', '41 Arrowhead Dr.\r\nClayton, NC 27520', 2764014, 'jessie@gmail.com', '2001-12-09', 22),
(2021, 'Mayra', 'Lawrence', '460 Cobblestone Ave.\r\nElkton, MD 21921', 2587527, 'mayra@gmail.com', '2000-09-11', 23),
(2022, 'Cindy', 'Walter', '161 South Buttonwood Ave.\r\nStone Mountain, GA 30083', 177784654, 'cindy@gmail.com', '2000-01-11', 22),
(2023, 'Serenity', 'Wilkinson', '44 Taylor Court\r\nBeckley, WV 25801', 18436744, 'serenity@gmail.com', '1986-01-05', 35),
(2024, 'Dylan', 'Lara', '7671 St Paul Drive\r\nNew Kensington, PA 15068', 2498754, 'dylan@gmail.com', '1985-06-06', 35);

-- --------------------------------------------------------

--
-- Table structure for table `customer_employee`
--

CREATE TABLE `customer_employee` (
  `Customer_ID` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer_employee`
--

INSERT INTO `customer_employee` (`Customer_ID`, `employee_id`) VALUES
(2020, 1010),
(2021, 1011),
(2022, 1012),
(2023, 1013),
(2024, 1515);

-- --------------------------------------------------------

--
-- Table structure for table `depositor`
--

CREATE TABLE `depositor` (
  `Customer_ID` int(11) NOT NULL,
  `acc_Number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `depositor`
--

INSERT INTO `depositor` (`Customer_ID`, `acc_Number`) VALUES
(2020, 7070),
(2020, 7071),
(2021, 7072),
(2024, 7073),
(2022, 7074),
(2023, 7075);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `employee_id` int(11) NOT NULL,
  `first_name` varchar(250) DEFAULT NULL,
  `last_name` varchar(250) DEFAULT NULL,
  `salary` int(10) NOT NULL,
  `address` varchar(250) NOT NULL,
  `blood_group` varchar(250) NOT NULL,
  `phone_number` int(11) NOT NULL,
  `email` varchar(250) NOT NULL,
  `date_of_birth` date NOT NULL,
  `age` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`employee_id`, `first_name`, `last_name`, `salary`, `address`, `blood_group`, `phone_number`, `email`, `date_of_birth`, `age`) VALUES
(1010, 'Kimberly', 'Roy', 600000, '7657 Blue Spring St.\nBronx, NY 10451', 'B+', 2888872, 'Kimberly@gmail.com', '1986-02-08', 35),
(1011, 'Heidy', 'Kelly', 700000, '937 Pearl Street\nOconomowoc, WI 53066', 'B-', 18954572, 'heidy@gmail.com', '1985-05-15', 36),
(1012, 'Sadie', 'Skinner', 800000, '213 Lyme Lane\nEvanston, IL 60201', 'A+', 1865872, 'sadie@gmail.com', '1980-02-08', 42),
(1013, 'Juliana', 'Mack', 500000, '303 W. Rose Court\nMuskegon, MI 49441', 'O+', 26947872, 'mack@gmail.com', '1983-10-09', 37),
(1515, 'Kirsten', 'Lutz', 900000, '7399 NW. Princeton St.\nWilmette, IL 60091', 'O-', 2856442, 'lutz@gmail.com', '1980-12-12', 40);

-- --------------------------------------------------------

--
-- Table structure for table `loan`
--

CREATE TABLE `loan` (
  `loan_Number` int(6) NOT NULL,
  `branch_name` varchar(250) NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `loan`
--

INSERT INTO `loan` (`loan_Number`, `branch_name`, `amount`) VALUES
(8080, 'One Eignt Bank B-1', 100000),
(8081, 'One Eignt Bank B-1', 600000),
(8082, 'One Eignt Bank B-3', 300000),
(8083, 'One Eignt Bank B-4', 800000),
(8084, 'One Eignt Bank B-2', 700000),
(8085, 'One Eignt Bank B-2', 200000),
(8086, 'One Eignt Bank B-5', 100000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`acc_Number`),
  ADD KEY `Customer_ID` (`Customer_ID`),
  ADD KEY `branch_Name` (`branch_Name`);

--
-- Indexes for table `borrower`
--
ALTER TABLE `borrower`
  ADD PRIMARY KEY (`Borrower_No`),
  ADD KEY `Customer_ID` (`Customer_ID`),
  ADD KEY `loan_Number` (`loan_Number`);

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`Customer_ID`);

--
-- Indexes for table `customer_employee`
--
ALTER TABLE `customer_employee`
  ADD KEY `Customer_ID` (`Customer_ID`),
  ADD KEY `employee_id` (`employee_id`);

--
-- Indexes for table `depositor`
--
ALTER TABLE `depositor`
  ADD KEY `Customer_ID` (`Customer_ID`),
  ADD KEY `acc_Number` (`acc_Number`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`employee_id`);

--
-- Indexes for table `loan`
--
ALTER TABLE `loan`
  ADD PRIMARY KEY (`loan_Number`),
  ADD KEY `branch_name` (`branch_name`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `account`
--
ALTER TABLE `account`
  ADD CONSTRAINT `account_ibfk_1` FOREIGN KEY (`Customer_ID`) REFERENCES `customer` (`Customer_ID`),
  ADD CONSTRAINT `account_ibfk_2` FOREIGN KEY (`branch_Name`) REFERENCES `branch` (`name`);

--
-- Constraints for table `borrower`
--
ALTER TABLE `borrower`
  ADD CONSTRAINT `borrower_ibfk_1` FOREIGN KEY (`Customer_ID`) REFERENCES `customer` (`Customer_ID`),
  ADD CONSTRAINT `borrower_ibfk_2` FOREIGN KEY (`loan_Number`) REFERENCES `loan` (`loan_Number`);

--
-- Constraints for table `customer_employee`
--
ALTER TABLE `customer_employee`
  ADD CONSTRAINT `customer_employee_ibfk_1` FOREIGN KEY (`Customer_ID`) REFERENCES `customer` (`Customer_ID`),
  ADD CONSTRAINT `customer_employee_ibfk_2` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`employee_id`);

--
-- Constraints for table `depositor`
--
ALTER TABLE `depositor`
  ADD CONSTRAINT `depositor_ibfk_1` FOREIGN KEY (`Customer_ID`) REFERENCES `customer` (`Customer_ID`),
  ADD CONSTRAINT `depositor_ibfk_2` FOREIGN KEY (`acc_Number`) REFERENCES `account` (`acc_Number`);

--
-- Constraints for table `loan`
--
ALTER TABLE `loan`
  ADD CONSTRAINT `loan_ibfk_1` FOREIGN KEY (`branch_name`) REFERENCES `branch` (`name`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
