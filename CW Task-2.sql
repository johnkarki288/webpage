-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 17, 2023 at 06:03 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `john`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `BookingID` int(11) NOT NULL,
  `SessionID` int(11) DEFAULT NULL,
  `CustomerID` int(11) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `Member` varchar(5) DEFAULT NULL,
  `Fee` int(11) DEFAULT NULL,
  `Pre_paid` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`BookingID`, `SessionID`, `CustomerID`, `Date`, `Member`, `Fee`, `Pre_paid`) VALUES
(1, 1, 1, '2021-05-14', 'Y', NULL, NULL),
(2, 1, 2, '2021-05-14', 'N', 100, 'N'),
(3, 1, 3, '2021-05-14', 'Y', 90, 'Y'),
(4, 1, 4, '2021-05-21', 'N', 100, 'N'),
(5, 2, 5, '2021-05-14', 'Y', 45, 'N'),
(6, 4, 6, '2021-05-06', 'Y', 45, 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `consoles`
--

CREATE TABLE `consoles` (
  `ConsoleNo` int(11) NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Console` varchar(20) DEFAULT NULL,
  `ConsoleQty` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `consoles`
--

INSERT INTO `consoles` (`ConsoleNo`, `Name`, `Console`, `ConsoleQty`) VALUES
(1, NULL, 'PS1', 3),
(2, NULL, 'PS2', 2),
(3, NULL, 'PS4', 3),
(4, NULL, 'PS2', 2),
(5, NULL, 'Nintendo Switch', 2),
(6, NULL, 'X Box 360', 4);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `CustomerID` int(11) NOT NULL,
  `FirstName` varchar(50) DEFAULT NULL,
  `LastName` varchar(50) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `MemberType` varchar(20) DEFAULT NULL,
  `MembershipFee` int(11) DEFAULT NULL,
  `JoinDate` date DEFAULT NULL,
  `DateOfBirth` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`CustomerID`, `FirstName`, `LastName`, `Address`, `MemberType`, `MembershipFee`, `JoinDate`, `DateOfBirth`) VALUES
(1, 'Manoj', 'Tamang', 'Dillibazar, Kathamandu', 'Standard', NULL, '2021-02-01', '1999-03-01'),
(2, 'Sony', 'Gurung', 'Putalisadak, Kathamandu', 'Premium', NULL, '2021-03-25', '2002-02-14'),
(3, 'Hemant', 'Puri', 'Maitedevi, Kathamndu', 'Premium', NULL, '2021-01-30', '1999-04-25'),
(4, 'Hitesh', 'Magar', 'Gyaneshwor, Kathamndu', 'Standard', NULL, '2021-02-05', '1970-02-14');

-- --------------------------------------------------------

--
-- Table structure for table `floor`
--

CREATE TABLE `floor` (
  `FloorNo` int(11) NOT NULL,
  `Price` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `floor`
--

INSERT INTO `floor` (`FloorNo`, `Price`) VALUES
(1, 100),
(2, 50);

-- --------------------------------------------------------

--
-- Table structure for table `game`
--

CREATE TABLE `game` (
  `GameID` int(11) NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `PEGI` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `game`
--

INSERT INTO `game` (`GameID`, `Name`, `PEGI`) VALUES
(1, 'Spiro', 'PG'),
(2, 'Spiro', 'PG'),
(3, 'Crash Bandicoot', 'PG'),
(4, 'Crash Bandicoot', 'PG'),
(5, 'Legend of Zelda', 'PG'),
(6, 'Halo 3', '15');

-- --------------------------------------------------------

--
-- Table structure for table `machines`
--

CREATE TABLE `machines` (
  `MachineNumber` int(11) NOT NULL,
  `Game` varchar(20) DEFAULT NULL,
  `Year` int(11) DEFAULT NULL,
  `FloorNo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `machines`
--

INSERT INTO `machines` (`MachineNumber`, `Game`, `Year`, `FloorNo`) VALUES
(13, 'Poker', 2002, 2),
(23, 'Space Invader', 2001, 1),
(45, 'Mario', 2004, 1),
(75, 'Phoenix', 2000, 1);

-- --------------------------------------------------------

--
-- Table structure for table `membershiptype`
--

CREATE TABLE `membershiptype` (
  `MembershipTypeID` int(11) NOT NULL,
  `MembershipType` varchar(20) DEFAULT NULL,
  `Fee` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `membershiptype`
--

INSERT INTO `membershiptype` (`MembershipTypeID`, `MembershipType`, `Fee`) VALUES
(1, 'Standard', 100),
(2, 'Premium', 1650);

-- --------------------------------------------------------

--
-- Table structure for table `pivot`
--

CREATE TABLE `pivot` (
  `PivotID` int(11) NOT NULL,
  `GameID` int(11) DEFAULT NULL,
  `ConsoleNo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pivot`
--

INSERT INTO `pivot` (`PivotID`, `GameID`, `ConsoleNo`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 3),
(4, 2, 4),
(5, 3, 5),
(6, 4, 6);

-- --------------------------------------------------------

--
-- Table structure for table `sessionconsoles`
--

CREATE TABLE `sessionconsoles` (
  `SessionConsoleID` int(11) NOT NULL,
  `SessionID` int(11) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `ConsoleNO` int(11) DEFAULT NULL,
  `Qty` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sessionconsoles`
--

INSERT INTO `sessionconsoles` (`SessionConsoleID`, `SessionID`, `Date`, `ConsoleNO`, `Qty`) VALUES
(1, 1, '2021-05-14', 1, 2),
(2, 2, '2021-05-14', 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `SessionID` int(11) NOT NULL,
  `SessionDay` varchar(20) DEFAULT NULL,
  `StartTime` time DEFAULT NULL,
  `EndTime` time DEFAULT NULL,
  `SessionType` varchar(20) DEFAULT NULL,
  `Floor` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`SessionID`, `SessionDay`, `StartTime`, `EndTime`, `SessionType`, `Floor`) VALUES
(1, 'Sunday', '11:00:00', '18:00:00', 'Freeplay', 1),
(2, 'Sunday', '11:00:00', '18:00:00', 'Freeplay', 2),
(3, 'Saturday', '11:00:00', '18:00:00', 'Freeplay', 1),
(4, 'Monday', '18:00:00', '21:00:00', 'Special', 2);

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `StaffID` int(11) NOT NULL,
  `StaffName` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`StaffID`, `StaffName`) VALUES
(1, 'Kiran Rana'),
(2, 'Sudeep Koirala'),
(3, 'Ramesh Maharajan'),
(4, 'Pooja Mishra'),
(5, 'Jabbed Merza');

-- --------------------------------------------------------

--
-- Table structure for table `staffduty`
--

CREATE TABLE `staffduty` (
  `StaffDutyID` int(11) NOT NULL,
  `StaffID` int(11) DEFAULT NULL,
  `SessionID` int(11) DEFAULT NULL,
  `Role` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `staffduty`
--

INSERT INTO `staffduty` (`StaffDutyID`, `StaffID`, `SessionID`, `Role`) VALUES
(1, 1, 1, 'Cafe'),
(2, 2, 1, 'Maintenance'),
(3, 3, 1, 'Counter'),
(4, 4, 2, 'Counter'),
(5, 5, 2, 'Maintenance');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`BookingID`),
  ADD KEY `SessionID` (`SessionID`),
  ADD KEY `CustomerID` (`CustomerID`);

--
-- Indexes for table `consoles`
--
ALTER TABLE `consoles`
  ADD PRIMARY KEY (`ConsoleNo`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`CustomerID`);

--
-- Indexes for table `floor`
--
ALTER TABLE `floor`
  ADD PRIMARY KEY (`FloorNo`);

--
-- Indexes for table `game`
--
ALTER TABLE `game`
  ADD PRIMARY KEY (`GameID`);

--
-- Indexes for table `machines`
--
ALTER TABLE `machines`
  ADD PRIMARY KEY (`MachineNumber`);

--
-- Indexes for table `membershiptype`
--
ALTER TABLE `membershiptype`
  ADD PRIMARY KEY (`MembershipTypeID`);

--
-- Indexes for table `pivot`
--
ALTER TABLE `pivot`
  ADD PRIMARY KEY (`PivotID`),
  ADD KEY `GameID` (`GameID`),
  ADD KEY `ConsoleNo` (`ConsoleNo`);

--
-- Indexes for table `sessionconsoles`
--
ALTER TABLE `sessionconsoles`
  ADD PRIMARY KEY (`SessionConsoleID`),
  ADD KEY `SessionID` (`SessionID`),
  ADD KEY `ConsoleNO` (`ConsoleNO`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`SessionID`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`StaffID`);

--
-- Indexes for table `staffduty`
--
ALTER TABLE `staffduty`
  ADD PRIMARY KEY (`StaffDutyID`),
  ADD KEY `StaffID` (`StaffID`),
  ADD KEY `SessionID` (`SessionID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bookings`
--
ALTER TABLE `bookings`
  ADD CONSTRAINT `bookings_ibfk_1` FOREIGN KEY (`SessionID`) REFERENCES `sessions` (`SessionID`),
  ADD CONSTRAINT `bookings_ibfk_2` FOREIGN KEY (`CustomerID`) REFERENCES `customers` (`CustomerID`);

--
-- Constraints for table `pivot`
--
ALTER TABLE `pivot`
  ADD CONSTRAINT `pivot_ibfk_1` FOREIGN KEY (`GameID`) REFERENCES `game` (`GameID`),
  ADD CONSTRAINT `pivot_ibfk_2` FOREIGN KEY (`ConsoleNo`) REFERENCES `consoles` (`ConsoleNo`);

--
-- Constraints for table `sessionconsoles`
--
ALTER TABLE `sessionconsoles`
  ADD CONSTRAINT `sessionconsoles_ibfk_1` FOREIGN KEY (`SessionID`) REFERENCES `sessions` (`SessionID`),
  ADD CONSTRAINT `sessionconsoles_ibfk_2` FOREIGN KEY (`ConsoleNO`) REFERENCES `consoles` (`ConsoleNo`);

--
-- Constraints for table `staffduty`
--
ALTER TABLE `staffduty`
  ADD CONSTRAINT `staffduty_ibfk_1` FOREIGN KEY (`StaffID`) REFERENCES `staff` (`StaffID`),
  ADD CONSTRAINT `staffduty_ibfk_2` FOREIGN KEY (`SessionID`) REFERENCES `sessions` (`SessionID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
