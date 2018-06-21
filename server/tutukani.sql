-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 21, 2018 at 09:56 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `green-test`
--

-- --------------------------------------------------------

--
-- Table structure for table `Accounts`
--

CREATE TABLE `Accounts` (
  `id` int(11) NOT NULL,
  `bank` varchar(255) NOT NULL,
  `account_type` varchar(255) NOT NULL,
  `account_holder` varchar(255) NOT NULL,
  `account_number` varchar(255) DEFAULT NULL,
  `branch_code` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `UserId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Accounts`
--

INSERT INTO `Accounts` (`id`, `bank`, `account_type`, `account_holder`, `account_number`, `branch_code`, `createdAt`, `updatedAt`, `UserId`) VALUES
(1, 'African Bank', 'Savings', 'Test', '000000', NULL, '2018-06-21 19:08:11', '2018-06-21 19:08:11', 1),
(2, 'FNB', 'Savings', 'Test', '111111', '000', '2018-06-21 19:09:20', '2018-06-21 19:09:20', 2);

-- --------------------------------------------------------

--
-- Table structure for table `Admins`
--

CREATE TABLE `Admins` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `DonationTransactions`
--

CREATE TABLE `DonationTransactions` (
  `id` int(11) NOT NULL,
  `amount` double DEFAULT NULL,
  `candidateId` int(11) DEFAULT NULL,
  `payment_status` int(11) DEFAULT '0',
  `complete_status` int(11) DEFAULT '0',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `UserId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `DonationTransactions`
--

INSERT INTO `DonationTransactions` (`id`, `amount`, `candidateId`, `payment_status`, `complete_status`, `createdAt`, `updatedAt`, `UserId`) VALUES
(1, 60, 2, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `RewardTransactions`
--

CREATE TABLE `RewardTransactions` (
  `id` int(11) NOT NULL,
  `amount` double DEFAULT NULL,
  `payerId` int(11) DEFAULT NULL,
  `payment_status` int(11) DEFAULT '0',
  `complete_status` int(11) DEFAULT '0',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `UserId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Users`
--

CREATE TABLE `Users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `surname` varchar(255) NOT NULL,
  `cell_number` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `refferal_number` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `address` text,
  `level` int(11) DEFAULT '1',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Users`
--

INSERT INTO `Users` (`id`, `name`, `surname`, `cell_number`, `password`, `email`, `gender`, `refferal_number`, `username`, `status`, `address`, `level`, `createdAt`, `updatedAt`) VALUES
(1, 'Super', 'Balist', '1234567890', '$2a$08$OWldX9N04GwK39OdUERjBugntxr3X1hK5da0noi5Vkmby7C4GO082', 'test@somedomain.com', 'Male', NULL, '1234567890', 1, NULL, 1, '2018-06-21 19:08:11', '2018-06-21 19:08:11'),
(2, 'Take', 'Alot', '0987654321', '$2a$08$JGSAEfvou1XlmAXxH/o5G.qg0nLt0ovqiLjJeOai/WyclnCcwc2dq', 'test2@somedomain.com', 'Female', NULL, '0987654321', 1, NULL, 1, '2018-06-21 19:09:20', '2018-06-21 19:09:20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Accounts`
--
ALTER TABLE `Accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `account_number` (`account_number`),
  ADD KEY `UserId` (`UserId`);

--
-- Indexes for table `Admins`
--
ALTER TABLE `Admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `DonationTransactions`
--
ALTER TABLE `DonationTransactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `UserId` (`UserId`);

--
-- Indexes for table `RewardTransactions`
--
ALTER TABLE `RewardTransactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `UserId` (`UserId`);

--
-- Indexes for table `Users`
--
ALTER TABLE `Users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cell_number` (`cell_number`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Accounts`
--
ALTER TABLE `Accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `Admins`
--
ALTER TABLE `Admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `DonationTransactions`
--
ALTER TABLE `DonationTransactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `RewardTransactions`
--
ALTER TABLE `RewardTransactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Users`
--
ALTER TABLE `Users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `Accounts`
--
ALTER TABLE `Accounts`
  ADD CONSTRAINT `accounts_ibfk_1` FOREIGN KEY (`UserId`) REFERENCES `Users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `DonationTransactions`
--
ALTER TABLE `DonationTransactions`
  ADD CONSTRAINT `donationtransactions_ibfk_1` FOREIGN KEY (`UserId`) REFERENCES `Users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `RewardTransactions`
--
ALTER TABLE `RewardTransactions`
  ADD CONSTRAINT `rewardtransactions_ibfk_1` FOREIGN KEY (`UserId`) REFERENCES `Users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
