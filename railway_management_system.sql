-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 16, 2019 at 08:41 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `railway_management_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `Emp-Name` varchar(20) NOT NULL,
  `Emp-ID` varchar(20) NOT NULL,
  `Emp-Type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`Emp-Name`, `Emp-ID`, `Emp-Type`) VALUES
('Shiam', 'ADM1122', 'Admin'),
('Afraim', 'ADM5533', 'Admin'),
('Diip', 'ADM8800', 'Admin'),
('Sifat', 'CL0044', 'Cleaner'),
('Ridom', 'EN6969', 'Engineer'),
('Sumon', 'LM1133', 'Loco Master'),
('Remon', 'LM5050', 'Loco Master'),
('Shormi', 'SM1124', 'Station Master'),
('Anonna', 'TT2255', 'T.T.E'),
('Sakib', 'TT6699', 'T.T.E');

-- --------------------------------------------------------

--
-- Table structure for table `employee_salary`
--

CREATE TABLE `employee_salary` (
  `E_Emp-ID` varchar(20) NOT NULL,
  `Amount` varchar(20) NOT NULL,
  `Salary Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee_salary`
--

INSERT INTO `employee_salary` (`E_Emp-ID`, `Amount`, `Salary Date`) VALUES
('ADM1122', '50000', '2019-12-03'),
('ADM8800', '50000', '2019-12-03'),
('CL0044', '15000', '2019-12-10'),
('EN6969', '40000', '2019-12-03'),
('LM1133', '35000', '2019-12-05'),
('LM5050', '35000', '2019-12-05'),
('SM1124', '37000', '2019-12-03'),
('TT2255', '33000', '2019-12-07'),
('TT6699', '33000', '2019-12-07'),
('ADM5533', '50000', '2019-11-03'),
('ADM5533', '50000', '2019-12-03');

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `StationName` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`StationName`) VALUES
('Barishal'),
('Biman Bandar'),
('Chilahati'),
('Chittagong'),
('Chuadanga'),
('Darshana'),
('Dinajpur'),
('Jessore'),
('Kamlapur'),
('Khulna'),
('Mymensingh'),
('Pabna'),
('Panchagar'),
('Rajshahi'),
('Ranpur'),
('Saidpur'),
('Shantahar'),
('Sylhet'),
('Tangail'),
('Tongi');

-- --------------------------------------------------------

--
-- Table structure for table `maintainance`
--

CREATE TABLE `maintainance` (
  `M-TR_ID` varchar(20) NOT NULL,
  `Last Modification` date NOT NULL,
  `Cost` varchar(20) NOT NULL,
  `Next Check Up` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `maintainance`
--

INSERT INTO `maintainance` (`M-TR_ID`, `Last Modification`, `Cost`, `Next Check Up`) VALUES
('TR709', '2019-12-03', '25000', '2020-01-03'),
('TR739', '2019-11-07', '20123', '2019-12-12'),
('TR765', '2019-12-02', '36500', '2020-01-02'),
('TR771', '2019-10-09', '65000', '2020-02-06');

-- --------------------------------------------------------

--
-- Table structure for table `passenger`
--

CREATE TABLE `passenger` (
  `P-Name` varchar(20) NOT NULL,
  `P-Contact` varchar(20) NOT NULL,
  `TrainID` varchar(20) NOT NULL,
  `P_TicketID` varchar(20) NOT NULL,
  `Date` varchar(20) NOT NULL,
  `PurchaseTime` time NOT NULL,
  `price` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `passenger`
--

INSERT INTO `passenger` (`P-Name`, `P-Contact`, `TrainID`, `P_TicketID`, `Date`, `PurchaseTime`, `price`) VALUES
('John', '01744650142', 'TR757', 'Drutojan01', '25July19', '07:30:00', '350'),
('Smith', '0155336699', 'TR757', 'Drutojan02', '25July19', '09:30:00', '350'),
('Micheal', '990356647', 'TR705', 'Ekota01', '25july19', '05:30:00', '795'),
('Manik', '0176969358', 'TR703', 'Godhuli01', '30April18', '13:30:00', '390'),
(' Alim', '0185369426', 'TR739', 'Upaban01', '27April19', '12:30:00', '390');

-- --------------------------------------------------------

--
-- Table structure for table `railcondition`
--

CREATE TABLE `railcondition` (
  `StationNameFrom` varchar(20) NOT NULL,
  `StationNameTo` varchar(20) NOT NULL,
  `LastModified` date NOT NULL,
  `Expense` int(20) NOT NULL,
  `Builder` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `railcondition`
--

INSERT INTO `railcondition` (`StationNameFrom`, `StationNameTo`, `LastModified`, `Expense`, `Builder`) VALUES
('Biman Bandar', 'Chilahati', '2019-12-02', 125000, 'AK Builders'),
('Chilahati', 'Dinajpur', '2019-09-18', 75000, 'JK Brothers');

-- --------------------------------------------------------

--
-- Table structure for table `ticket`
--

CREATE TABLE `ticket` (
  `Ticket-ID` varchar(20) NOT NULL,
  `TR-ID` varchar(20) NOT NULL,
  `StationFrom` varchar(20) NOT NULL,
  `StationTo` varchar(20) NOT NULL,
  `Price` varchar(20) NOT NULL,
  `OnlineTicket` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ticket`
--

INSERT INTO `ticket` (`Ticket-ID`, `TR-ID`, `StationFrom`, `StationTo`, `Price`, `OnlineTicket`) VALUES
('Drutojan01', 'TR757', 'Barishal', 'Biman Bandar', '350', NULL),
('Drutojan02', 'TR757', 'Barishal', 'Biman Bandar', '350', NULL),
('Ekota01', 'TR705', 'Biman Bandar', 'Chilahati', '495', NULL),
('Godhuli01', 'TR703', 'Chilahati', 'Chittagong', '390', NULL),
('Nilsagor01', 'TR765', 'Chuadanga', 'Darshana', '150', NULL),
('Parabat01', 'TR709', 'Darshana', 'Dinajpur', '250', NULL),
('Provati01', 'TR704', 'Dinajpur', 'Jessore', '365', NULL),
('Rangpur01', 'TR771', 'Ranpur', 'Kamlapur', '480', 'ON3053'),
('Subarna01', 'TR701', 'Biman Bandar', 'Panchagar', '369', NULL),
('Subarna02', 'TR701', 'Biman Bandar', 'Panchagar', '369', NULL),
('Upaban01', 'TR739', 'Panchagar', 'Tongi', '390', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `train`
--

CREATE TABLE `train` (
  `T-Name` varchar(20) NOT NULL,
  `T-ID` varchar(20) NOT NULL,
  `Arrival` time NOT NULL,
  `Departure` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `train`
--

INSERT INTO `train` (`T-Name`, `T-ID`, `Arrival`, `Departure`) VALUES
('Subarna Express', 'TR701', '07:00:00', '08:30:00'),
('Godhuli Express', 'TR703', '17:15:00', '19:00:00'),
('Provati Express', 'TR704', '12:00:00', '14:00:00'),
('Ekota Express', 'TR705', '06:00:00', '07:30:00'),
('Parabat Express', 'TR709', '09:00:00', '10:15:00'),
('Upaban Express', 'TR739', '21:00:00', '23:45:00'),
('Drutajan Express', 'TR757', '20:00:00', '23:50:00'),
('Nilsagor Express ', 'TR765', '07:00:00', '08:30:00'),
('Rangpur Express', 'TR771', '06:30:00', '08:10:00');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `User_ID` varchar(20) NOT NULL,
  `User_name` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `N.I.D_no` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`User_ID`, `User_name`, `Password`, `N.I.D_no`) VALUES
('ON3053', 'Istiak', '12234', '961156423589');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`Emp-ID`);

--
-- Indexes for table `employee_salary`
--
ALTER TABLE `employee_salary`
  ADD KEY `E_Emp-ID` (`E_Emp-ID`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`StationName`);

--
-- Indexes for table `maintainance`
--
ALTER TABLE `maintainance`
  ADD KEY `TR_ID` (`M-TR_ID`);

--
-- Indexes for table `passenger`
--
ALTER TABLE `passenger`
  ADD PRIMARY KEY (`P_TicketID`),
  ADD KEY `TrainID` (`TrainID`),
  ADD KEY `TicketID` (`P_TicketID`);

--
-- Indexes for table `railcondition`
--
ALTER TABLE `railcondition`
  ADD KEY `StationNameFrom` (`StationNameFrom`),
  ADD KEY `StationNameTo` (`StationNameTo`);

--
-- Indexes for table `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`Ticket-ID`),
  ADD KEY `TR-ID` (`TR-ID`),
  ADD KEY `StationFrom` (`StationFrom`),
  ADD KEY `StationTo` (`StationTo`),
  ADD KEY `Ticket-ID` (`Ticket-ID`),
  ADD KEY `OnlineTicket` (`OnlineTicket`);

--
-- Indexes for table `train`
--
ALTER TABLE `train`
  ADD PRIMARY KEY (`T-ID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`User_ID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `employee_salary`
--
ALTER TABLE `employee_salary`
  ADD CONSTRAINT `employee_salary_ibfk_1` FOREIGN KEY (`E_Emp-ID`) REFERENCES `employee` (`Emp-ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `maintainance`
--
ALTER TABLE `maintainance`
  ADD CONSTRAINT `maintainance_ibfk_1` FOREIGN KEY (`M-TR_ID`) REFERENCES `train` (`T-ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `passenger`
--
ALTER TABLE `passenger`
  ADD CONSTRAINT `passenger_ibfk_1` FOREIGN KEY (`P_TicketID`) REFERENCES `ticket` (`Ticket-ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `passenger_ibfk_2` FOREIGN KEY (`TrainID`) REFERENCES `train` (`T-ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `railcondition`
--
ALTER TABLE `railcondition`
  ADD CONSTRAINT `railcondition_ibfk_1` FOREIGN KEY (`StationNameFrom`) REFERENCES `location` (`StationName`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `railcondition_ibfk_2` FOREIGN KEY (`StationNameTo`) REFERENCES `location` (`StationName`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ticket`
--
ALTER TABLE `ticket`
  ADD CONSTRAINT `ticket_ibfk_1` FOREIGN KEY (`TR-ID`) REFERENCES `train` (`T-ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ticket_ibfk_2` FOREIGN KEY (`StationFrom`) REFERENCES `location` (`StationName`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ticket_ibfk_3` FOREIGN KEY (`StationTo`) REFERENCES `location` (`StationName`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ticket_ibfk_4` FOREIGN KEY (`OnlineTicket`) REFERENCES `user` (`User_ID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
