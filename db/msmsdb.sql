-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 16, 2022 at 01:09 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `msmsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` char(50) DEFAULT NULL,
  `UserName` char(50) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Admin', 'admin', 506665441, 'tester1@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2019-07-25 06:21:50');

-- --------------------------------------------------------

--
-- Table structure for table `tblappointment`
--

CREATE TABLE `tblappointment` (
  `ID` int(10) NOT NULL,
  `AptNumber` varchar(80) DEFAULT NULL,
  `Name` varchar(120) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `PhoneNumber` bigint(11) DEFAULT NULL,
  `AptDate` varchar(120) DEFAULT NULL,
  `AptTime` varchar(120) DEFAULT NULL,
  `Services` varchar(120) DEFAULT NULL,
  `ApplyDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Remark` varchar(250) NOT NULL,
  `Status` varchar(50) NOT NULL,
  `RemarkDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblappointment`
--

INSERT INTO `tblappointment` (`ID`, `AptNumber`, `Name`, `Email`, `PhoneNumber`, `AptDate`, `AptTime`, `Services`, `ApplyDate`, `Remark`, `Status`, `RemarkDate`) VALUES
(15, '886344601', 'Ø¹Ù…Ø§Ø± Ø§Ù„Ù†Ø¬Ø§Ø±', 'ammaralnggar@gmail.com', 774344625, '2022-02-23', '10:30', ' قص شعر', '2022-02-22 20:22:22', 'Hi my deer Ammar\r\n11:30 AM', '2', '2022-02-23 15:29:54'),
(16, '123679966', 'ØµØ§Ø¨Ø±ÙŠÙ† Ø§Ù„Ø¬Ø§Ø¨Ø±ÙŠ', 'sabreen@gmail.com', 777733221, '2022-02-24', '12:22', 'تقليم اللحية', '2022-02-23 16:22:10', 'ok my dear sabrean', '1', '2022-02-23 16:27:37'),
(17, '195906905', 'Ø³Ø­Ø± Ø§Ù„Ø¬Ù„Ø§Ù„', 'sahar@gmail.com', 77777231, '2022-03-06', '10:00', 'أسلوب قص الشعر', '2022-03-05 21:59:44', 'مرحبا بك يا سحر', '1', '2022-03-05 22:07:20'),
(18, '472824573', 'Ø­Ø³ÙŠÙ† ', 'hussain@gmail.com', 506556676, '2022-03-30', '10:37', 'تجيز عرسان', '2022-03-05 22:38:15', 'Ø§Ù‡Ù„Ø§ ÙÙŠÙƒ', '1', '2022-04-26 00:55:18'),
(19, '216076870', 'Ø²ÙŠØ§Ø¯', 'zeyad@gmail.com', 505556789, '2022-03-25', '12:45', 'تجيز عرسان', '2022-03-05 22:40:45', 'Ù…Ø¹Ø°Ø±ØªØ§ Ø§Ù„ÙˆÙ‚Øª Ø§Ù„Ù…Ø·Ù„ÙˆØ¨ ØºÙŠØ± Ù…ØªØ§Ø­ ÙˆÙŠÙ…ÙƒÙ†Ùƒ ØªØºÙŠØ± Ø§Ù„ÙˆÙ‚Øª ', '2', '2022-04-25 23:53:08'),
(20, '240182343', 'Ø±ÙŠØ§Ù†', 'ryan@gmail.com', 506778765, '2022-04-24', '08:08', ' Ù‚Øµ Ø´Ø¹Ø±', '2022-04-24 00:03:45', 'Ù†Ø±Ø­Ø¨ ÙÙŠÙƒ ÙŠØ§ Ø±ÙŠØ§Ù†', '1', '2022-04-25 23:50:24'),
(21, '318163708', 'Ø±ÙŠØ§Ù† Ù…Ø±Ø²ÙˆÙ‚', 'ryan@gmail.com', 505066775, '2022-04-25', '08:45', ' Ù‚Øµ Ø´Ø¹Ø±', '2022-04-24 23:43:40', 'Ù†Ø±Ø­Ø¨ ÙÙŠÙƒ ÙŠØ§ Ù…Ø±Ø²ÙˆÙ‚', '1', '2022-04-25 23:49:56'),
(22, '103240295', 'Ø¹Ø¨Ø¯Ø§Ù„Ø¹Ø²ÙŠØ² Ù…Ø­Ù…Ø¯ Ø§Ù„Ù‚Ø±Ø´ÙŠ', 'abdulaziz@gmail.com', 509655734, '2022-04-26', '08:46', 'ÙÙŠØ´Ù„ Ø´Ø§Ø±ÙƒÙˆÙ„', '2022-04-25 23:40:23', 'Ù…Ø¹Ø°Ø±ØªØ§ Ø§Ù„ÙˆÙ‚Øª Ø§Ù„Ù…Ø·Ù„ÙˆØ¨ ØºÙŠØ± Ù…ØªØ§Ø­ ÙˆÙŠÙ…ÙƒÙ†Ùƒ Ø¹Ø²ÙŠØ²ÙŠ ØªØºÙŠØ± Ø§Ù„ÙˆÙ‚Øª', '2', '2022-04-25 23:51:52'),
(23, '169842846', 'Ø§Ø­Ù…Ø¯ Ù…Ù‚Ø¨Ù„ Ø§Ù„Ø±ÙˆÙ‚ÙŠ', 'ahmed@gmail.com', 507786889, '2022-05-07', '09:50', 'Ù…Ø§Ù†ÙŠÙƒÙŠØ± Ø¯ÙŠÙ„ÙˆÙƒØ³', '2022-04-25 23:43:42', '', '', '0000-00-00 00:00:00'),
(24, '107377526', 'ÙÙŠØµÙ„ Ù†ÙˆØ§Ù Ø§Ù„Ù‚Ø«Ø§Ù…ÙŠ', 'faisal@gmail.com', 506889700, '2022-05-03', '08:15', 'ØªÙ‚Ù„ÙŠÙ… Ø§Ù„Ù„Ø­ÙŠØ©', '2022-04-25 23:45:05', 'Ù†Ø±Ø­Ø¨ ÙÙŠÙƒ ÙŠØ§ ÙÙŠØµÙ„', '1', '2022-04-25 23:49:23');

-- --------------------------------------------------------

--
-- Table structure for table `tblcustomers`
--

CREATE TABLE `tblcustomers` (
  `ID` int(10) NOT NULL,
  `Name` varchar(120) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(11) DEFAULT NULL,
  `Gender` enum('أنثى','ذكر') DEFAULT NULL,
  `Details` mediumtext,
  `CreationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblcustomers`
--

INSERT INTO `tblcustomers` (`ID`, `Name`, `Email`, `MobileNumber`, `Gender`, `Details`, `CreationDate`, `UpdationDate`) VALUES
(1, 'Ø§Ø­Ù…Ø¯ Ù…Ù‚Ø¨Ù„ Ø§Ù„Ø±ÙˆÙ‚ÙŠ', 'ahmed@gmail.com', 506789112, '', 'Ø¹Ù„ÙŠ Ø¹Ø¶Ùˆ Ù…Ù† Ø£Ø¹Ø¶Ø§Ø¡ Ø§Ù„ÙØ±ÙŠÙ‚', '2022-02-23 16:04:40', '2022-04-25 00:02:01'),
(2, 'Ø¹Ø¨Ø¯Ø§Ù„Ø¹Ø²ÙŠØ² Ù…Ø­Ù…Ø¯ Ø§Ù„Ù‚Ø±Ø´ÙŠ', 'mohamed@gmail.com', 505675442, '', 'Ø£Ø­Ø¯ Ø§Ø¹Ø¶Ø§Ø¡ ÙØ±ÙŠÙ‚ Ù…Ø´Ø±ÙˆØ¹ ØµØ§Ù„ÙˆÙ† Ø§Ù„Ø±Ø¬Ø§Ù„ ', '2022-02-23 16:08:17', '2022-04-25 00:04:01'),
(3, 'ÙÙŠØµÙ„ Ø¹Ù„ÙŠ', 'faisal@gmail.com', 507776542, '', 'ÙÙŠØµÙ„ Ù‡Ùˆ Ø£Ø­Ø¯ Ø£Ø¹Ø¶Ø§Ø¡ Ø§Ù„ÙØ±ÙŠÙ‚ Ù„Ù‡Ø°Ø§ Ø§Ù„Ù…Ø´Ø±ÙˆØ¹', '2022-04-24 04:03:23', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblinvoice`
--

CREATE TABLE `tblinvoice` (
  `id` int(11) NOT NULL,
  `Userid` int(11) DEFAULT NULL,
  `ServiceId` int(11) DEFAULT NULL,
  `BillingId` int(11) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblinvoice`
--

INSERT INTO `tblinvoice` (`id`, `Userid`, `ServiceId`, `BillingId`, `PostingDate`) VALUES
(1, 2, 7, 600922156, '2021-07-21 07:48:58'),
(2, 2, 9, 600922156, '2021-07-21 07:48:58'),
(3, 5, 7, 777590972, '2021-07-23 05:16:41'),
(4, 5, 9, 777590972, '2021-07-23 05:16:41'),
(6, 7, 9, 631074383, '2021-07-25 17:26:51'),
(7, 7, 15, 631074383, '2021-07-25 17:26:51'),
(8, 1, 20, 665385016, '2022-02-23 16:09:24'),
(9, 1, 28, 665385016, '2022-02-23 16:09:24'),
(10, 2, 24, 165125666, '2022-02-23 16:10:47'),
(11, 2, 25, 165125666, '2022-02-23 16:10:47'),
(12, 1, 22, 851443035, '2022-03-05 23:55:20'),
(13, 1, 24, 851443035, '2022-03-05 23:55:20'),
(14, 1, 29, 851443035, '2022-03-05 23:55:20'),
(15, 1, 22, 608467546, '2022-04-24 04:08:26'),
(16, 1, 27, 608467546, '2022-04-24 04:08:26'),
(17, 3, 21, 810625116, '2022-04-25 00:04:23'),
(18, 3, 26, 810625116, '2022-04-25 00:04:23'),
(19, 3, 27, 810625116, '2022-04-25 00:04:23');

-- --------------------------------------------------------

--
-- Table structure for table `tblpage`
--

CREATE TABLE `tblpage` (
  `ID` int(10) NOT NULL,
  `PageType` varchar(200) DEFAULT NULL,
  `PageTitle` longtext,
  `PageDescription` longtext,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `UpdationDate` date DEFAULT NULL,
  `Timing` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblpage`
--

INSERT INTO `tblpage` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`, `Timing`) VALUES
(1, 'aboutus', 'Ù†Ø¨Ø°Ø© ØªØ¹Ø±ÙŠÙÙŠØ©', '                        <div style="text-align: justify;"><b><font style="background-color: rgb(255, 255, 204);" color="#330033" size="3">ÙŠØµØ¨ ØªØ±ÙƒÙŠØ²Ù†Ø§ Ø§Ù„Ø±Ø¦ÙŠØ³ÙŠ Ø¹Ù„Ù‰ Ø§Ù„Ø¬ÙˆØ¯Ø© ÙˆØ§Ù„Ù†Ø¸Ø§ÙØ©. Ù‚Ø§Ø¹Ø© Ø§Ù„Ø§Ø³ØªÙ‚Ø¨Ø§Ù„ Ù„Ø¯ÙŠÙ†Ø§ Ù…Ø¬Ù‡Ø²Ø© ØªØ¬Ù‡ÙŠØ²Ù‹Ø§ Ø¬ÙŠØ¯Ù‹Ø§ Ø¨Ù…Ø¹Ø¯Ø§Øª Ø§Ù„ØªÙƒÙ†ÙˆÙ„ÙˆØ¬ÙŠØ§ Ø§Ù„Ù…ØªÙ‚Ø¯Ù…Ø© ÙˆØªÙ‚Ø¯Ù… Ø£ÙØ¶Ù„ Ø§Ù„Ø®Ø¯Ù…Ø§Øª Ø°Ø§Øª Ø§Ù„Ø¬ÙˆØ¯Ø©. Ù…ÙˆØ¸ÙÙŠÙ†Ø§ Ù…Ø¯Ø±Ø¨ÙˆÙ† Ø¬ÙŠØ¯Ù‹Ø§ ÙˆØ°ÙˆÙŠ Ø®Ø¨Ø±Ø© ØŒ ÙˆÙŠÙ‚Ø¯Ù…ÙˆÙ† Ø®Ø¯Ù…Ø§Øª Ù…ØªÙ‚Ø¯Ù…Ø© ÙÙŠ Ù…Ø¬Ø§Ù„ ØªØ´ÙƒÙŠÙ„ Ø§Ù„Ø¨Ø´Ø±Ø© ÙˆØ§Ù„Ø´Ø¹Ø± ÙˆØ§Ù„Ø¬Ø³Ù… ÙˆØ§Ù„ØªÙŠ Ø³ØªÙˆÙØ± Ù„Ùƒ ØªØ¬Ø±Ø¨Ø© ÙØ§Ø®Ø±Ø© ØªØ¬Ø¹Ù„Ùƒ ØªØ´Ø¹Ø± Ø¨Ø§Ù„Ø±Ø§Ø­Ø© ÙˆØ§Ù„Ø§Ø³ØªØ±Ø®Ø§Ø¡. Ø§Ù„ØªØ®ØµØµØ§Øª ÙÙŠ Ø§Ù„ØµØ§Ù„ÙˆÙ† ØŒ Ø¨ØµØ±Ù Ø§Ù„Ù†Ø¸Ø± Ø¹Ù† Ø§Ù„ØªØ¨ÙŠÙŠØ¶ Ø§Ù„Ø¹Ø§Ø¯ÙŠ ÙˆØ¹Ù„Ø§Ø¬Ø§Øª Ø§Ù„ÙˆØ¬Ù‡ ØŒ Ù‡ÙŠ Ø£Ù†ÙˆØ§Ø¹ Ø¹Ø¯ÙŠØ¯Ø© Ù…Ù† ØªØ³Ø±ÙŠØ­Ø§Øª Ø§Ù„Ø´Ø¹Ø± ÙˆÙ…ÙƒÙŠØ§Ø¬ Ø§Ù„Ø²ÙØ§Ù ÙˆØ§Ù„Ø³ÙŠÙ†Ù…Ø§ ÙˆØ£Ù†ÙˆØ§Ø¹ Ù…Ø®ØªÙ„ÙØ© Ù…Ù† Ø¹Ù„Ø§Ø¬Ø§Øª Ø§Ù„ÙˆØ¬Ù‡ ÙˆØµØ¨ØºØ§Øª Ø§Ù„Ø´Ø¹Ø± Ø§Ù„Ø¹ØµØ±ÙŠØ©.</font></b></div>        ', NULL, NULL, NULL, ''),
(2, 'contactus', 'Ø§ØªØµÙ„ Ø¨Ù†Ø§', 'Ø§Ù„Ø·Ø§Ø¦Ù-Ø§Ù„Ø´Ø§Ø±Ø¹ Ø§Ù„Ø¹Ø§Ù…-Ø¬ÙˆØ§Ø± Ø§Ù„Ø±Ø§Ø¬Ø­ÙŠ ', 'hussin@gmail.com', 505667881, NULL, '8:30Øµ-10:30Ù…');

-- --------------------------------------------------------

--
-- Table structure for table `tblservices`
--

CREATE TABLE `tblservices` (
  `ID` int(10) NOT NULL,
  `ServiceName` varchar(200) DEFAULT NULL,
  `Description` longtext,
  `Cost` int(10) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblservices`
--

INSERT INTO `tblservices` (`ID`, `ServiceName`, `Description`, `Cost`, `CreationDate`) VALUES
(20, 'ÙÙŠØ´Ù„ Ø´Ø§Ø±ÙƒÙˆÙ„', 'Ù„Ù†ØªÙŠØ¬Ø© Ø§Ù„Ù†Ù‡Ø§Ø¦ÙŠØ© Ù‡ÙŠ Ø¨Ø´Ø±Ø© Ù†Ø¸ÙŠÙØ© ÙˆÙˆØ§Ø¶Ø­Ø©. Ø¹Ù†Ø¯ Ø§Ø³ØªØ®Ø¯Ø§Ù…Ù‡Ø§ ÙƒÙ…Ø³Ø­ÙˆÙ‚ ØŒ ÙŠÙ…ÙƒÙ† Ù„Ø£Ù‚Ù†Ø¹Ø© Ø§Ù„ÙØ­Ù… Ø£Ù† ØªØµÙ„ Ø¥Ù„Ù‰ Ø¹Ù…Ù‚ Ø§Ù„Ù…Ø³Ø§Ù… ÙˆØªÙ…ØªØµ Ø§Ù„Ø´ÙˆØ§Ø¦Ø¨ Ù…Ø¹Ù‡Ø§.', 400, '2022-02-22 19:24:48'),
(21, 'Ù…Ø§Ù†ÙŠÙƒÙŠØ± Ø¯ÙŠÙ„ÙˆÙƒØ³', 'Ø§Ù„Ù†ØªÙŠØ¬Ø© Ø§Ù„Ù†Ù‡Ø§Ø¦ÙŠØ© Ù‡ÙŠ Ø¨Ø´Ø±Ø© Ù†Ø¸ÙŠÙØ© ÙˆÙˆØ§Ø¶Ø­Ø©. Ø¹Ù†Ø¯ Ø§Ø³ØªØ®Ø¯Ø§Ù…Ù‡Ø§ ÙƒÙ…Ø³Ø­ÙˆÙ‚ ØŒ ÙŠÙ…ÙƒÙ† Ù„Ø£Ù‚Ù†Ø¹Ø© Ø§Ù„ÙØ­Ù… Ø£Ù† ØªØµÙ„ Ø¥Ù„Ù‰ Ø¹Ù…Ù‚ Ø§Ù„Ù…Ø³Ø§Ù… ÙˆØªÙ…ØªØµ Ø§Ù„Ø´ÙˆØ§Ø¦Ø¨ Ù…Ø¹Ù‡Ø§.', 200, '2022-02-22 19:25:44'),
(22, ' Ù‚Øµ Ø´Ø¹Ø±', 'ØªØ´ÙŠØ± ØªØµÙÙŠÙØ© Ø§Ù„Ø´Ø¹Ø± Ø£Ùˆ Ø§Ù„ØªØ³Ø±ÙŠØ­Ø© Ø£Ùˆ Ø§Ù„Ø­Ù„Ø§Ù‚Ø© Ø¥Ù„Ù‰ ØªØµÙÙŠÙ Ø§Ù„Ø´Ø¹Ø± ØŒ Ø¹Ø§Ø¯Ø© Ø¹Ù„Ù‰ ÙØ±ÙˆØ© Ø§Ù„Ø±Ø£Ø³ Ø§Ù„Ø¨Ø´Ø±ÙŠØ©. ÙÙŠ Ø¨Ø¹Ø¶ Ø§Ù„Ø£Ø­ÙŠØ§Ù† ØŒ Ù‚Ø¯ ÙŠØ¹Ù†ÙŠ Ù‡Ø°Ø§ Ø£ÙŠØ¶Ù‹Ø§ ØªØ¹Ø¯ÙŠÙ„ Ø´Ø¹Ø± Ø§Ù„ÙˆØ¬Ù‡ Ø£Ùˆ Ø§Ù„Ø¬Ø³Ù…', 300, '2022-02-22 19:26:59'),
(26, ' ØªÙ‚Ù„ÙŠÙ… Ø´Ø§Ø±Ø¨', 'Ø§Ø³ØªØ­Ø¯Ø§Ø¯ Ø§Ù„Ø´Ø§Ø±Ø¨ ÙˆØ§Ù„ØªØ®ÙÙŠÙ Ù…Ù†Ù‡', 50, '2022-02-22 19:31:16'),
(27, 'ØªØ´Ø°ÙŠØ¨ Ø§Ù„Ù„Ø­ÙŠØ©', 'Ø§Ù„ØªØ®ÙÙŠÙ Ù…Ù† Ø´Ø¹Ø± Ø§Ù„Ù„Ø­ÙŠØ© Ø§Ùˆ ØªØµÙÙŠØ±Ù‡Ø§', 50, '2022-02-22 19:32:31'),
(28, 'ØªÙ‚Ù„ÙŠÙ… Ø§Ù„Ù„Ø­ÙŠØ©', 'Ø§Ù„ØªØ®ÙÙŠÙ Ù…Ù†Ù‡Ø§', 100, '2022-02-22 19:33:11');

-- --------------------------------------------------------

--
-- Table structure for table `tblsubscriber`
--

CREATE TABLE `tblsubscriber` (
  `ID` int(5) NOT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `DateofSub` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblsubscriber`
--

INSERT INTO `tblsubscriber` (`ID`, `Email`, `DateofSub`) VALUES
(1, 'hussin@gmail.com', '2022-09-13 07:32:33'),
(2, 'faisal@gmail.com', '2022-05-09 07:32:33'),
(5, 'ahmed@gmail.com', '2022-04-25 23:45:15'),
(6, 'ziyad@gmail.com', '2022-04-25 23:46:30'),
(7, 'hussin@gmail.com', '2022-04-25 23:46:47'),
(8, 'abdalaziz@gmail.com', '2022-04-25 23:47:25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblappointment`
--
ALTER TABLE `tblappointment`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcustomers`
--
ALTER TABLE `tblcustomers`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblinvoice`
--
ALTER TABLE `tblinvoice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpage`
--
ALTER TABLE `tblpage`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblservices`
--
ALTER TABLE `tblservices`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblsubscriber`
--
ALTER TABLE `tblsubscriber`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tblappointment`
--
ALTER TABLE `tblappointment`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `tblcustomers`
--
ALTER TABLE `tblcustomers`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tblinvoice`
--
ALTER TABLE `tblinvoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `tblpage`
--
ALTER TABLE `tblpage`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tblservices`
--
ALTER TABLE `tblservices`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `tblsubscriber`
--
ALTER TABLE `tblsubscriber`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
