-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 01, 2019 at 05:45 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crm`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `Id` int(10) UNSIGNED NOT NULL,
  `MasterRecordId` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Name` varchar(35) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Type` varchar(18) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ParentId` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL,
  `BillingStreet` varchar(101) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `BillingCity` varchar(13) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `BillingState` varchar(9) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `BillingPostalCode` varchar(6) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `BillingCountry` varchar(6) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `BillingLatitude` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `BillingLongitude` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `BillingGeocodeAccuracy` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ShippingStreet` varchar(101) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ShippingCity` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ShippingState` varchar(6) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ShippingPostalCode` int(11) DEFAULT NULL,
  `ShippingCountry` varchar(6) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ShippingLatitude` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ShippingLongitude` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ShippingGeocodeAccuracy` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Phone` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Fax` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `AccountNumber` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Website` varchar(27) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Sic` int(11) DEFAULT NULL,
  `Industry` varchar(14) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `AnnualRevenue` int(11) DEFAULT NULL,
  `NumberOfEmployees` int(11) DEFAULT NULL,
  `Ownership` varchar(7) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `TickerSymbol` varchar(4) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Description` varchar(218) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Rating` varchar(4) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Site` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `OwnerId` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL,
  `CreatedDate` varchar(19) COLLATE utf8mb4_unicode_ci NOT NULL,
  `CreatedById` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL,
  `LastModifiedDate` varchar(19) COLLATE utf8mb4_unicode_ci NOT NULL,
  `LastModifiedById` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL,
  `SystemModstamp` varchar(19) COLLATE utf8mb4_unicode_ci NOT NULL,
  `LastActivityDate` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Jigsaw` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `JigsawCompanyId` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CleanStatus` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `AccountSource` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DunsNumber` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Tradestyle` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `NaicsCode` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `NaicsDesc` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `YearStarted` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SicDesc` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DandbCompanyId` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` int(10) UNSIGNED NOT NULL,
  `MasterRecordId` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Name` varchar(35) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Type` varchar(18) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ParentId` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL,
  `BillingStreet` varchar(101) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `BillingCity` varchar(13) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `BillingState` varchar(9) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `BillingPostalCode` varchar(6) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `BillingCountry` varchar(6) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `BillingLatitude` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `BillingLongitude` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `BillingGeocodeAccuracy` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ShippingStreet` varchar(101) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ShippingCity` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ShippingState` varchar(6) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ShippingPostalCode` int(11) DEFAULT NULL,
  `ShippingCountry` varchar(6) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ShippingLatitude` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ShippingLongitude` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ShippingGeocodeAccuracy` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Phone` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Fax` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `AccountNumber` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Website` varchar(27) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Sic` int(11) DEFAULT NULL,
  `Industry` varchar(14) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `AnnualRevenue` int(11) DEFAULT NULL,
  `NumberOfEmployees` int(11) DEFAULT NULL,
  `Ownership` varchar(7) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `TickerSymbol` varchar(4) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Description` varchar(218) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Rating` varchar(4) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Site` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `OwnerId` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL,
  `CreatedDate` varchar(19) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CreatedById` varchar(18) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LastModifiedDate` varchar(19) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LastModifiedById` varchar(18) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SystemModstamp` varchar(19) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LastActivityDate` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Jigsaw` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `JigsawCompanyId` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CleanStatus` varchar(7) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `AccountSource` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DunsNumber` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Tradestyle` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `NaicsCode` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `NaicsDesc` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `YearStarted` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SicDesc` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `DandbCompanyId` varchar(18) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `MasterRecordId`, `Name`, `Type`, `ParentId`, `BillingStreet`, `BillingCity`, `BillingState`, `BillingPostalCode`, `BillingCountry`, `BillingLatitude`, `BillingLongitude`, `BillingGeocodeAccuracy`, `ShippingStreet`, `ShippingCity`, `ShippingState`, `ShippingPostalCode`, `ShippingCountry`, `ShippingLatitude`, `ShippingLongitude`, `ShippingGeocodeAccuracy`, `Phone`, `Fax`, `AccountNumber`, `Website`, `Sic`, `Industry`, `AnnualRevenue`, `NumberOfEmployees`, `Ownership`, `TickerSymbol`, `Description`, `Rating`, `Site`, `OwnerId`, `CreatedDate`, `CreatedById`, `LastModifiedDate`, `LastModifiedById`, `SystemModstamp`, `LastActivityDate`, `Jigsaw`, `JigsawCompanyId`, `CleanStatus`, `AccountSource`, `DunsNumber`, `Tradestyle`, `NaicsCode`, `NaicsDesc`, `YearStarted`, `SicDesc`, `DandbCompanyId`, `deleted_at`, `updated_at`, `created_at`) VALUES
(1, NULL, 'Rahul', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '8968585749', '9856985685', NULL, 'www.we.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'www.we.com', '', '', '', '', '', '', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, NULL, 'Rahul', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '8968585749', '9856985685', NULL, 'www.we.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'www.we.com', '', '', '', '', '', '', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, NULL, 'pizza sp thakur', NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2661641651', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'www.ddf.vl', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-01-01 12:49:12', '2019-01-01 12:49:12', '2019-01-01 12:06:51'),
(4, NULL, 'Rahul', NULL, '12335', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1235', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'www.ddf.vl', '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-01-01 12:45:54', '2019-01-01 12:42:21');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `Id` int(10) UNSIGNED NOT NULL,
  `MasterRecordId` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `AccountId` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Salutation` varchar(8) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `FirstName` varchar(9) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LastName` varchar(9) COLLATE utf8mb4_unicode_ci NOT NULL,
  `OtherStreet` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `OtherCity` varchar(8) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `OtherState` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `OtherPostalCode` int(11) DEFAULT NULL,
  `OtherCountry` varchar(6) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `OtherLatitude` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `OtherLongitude` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `OtherGeocodeAccuracy` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MailingStreet` varchar(101) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MailingCity` varchar(13) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MailingState` varchar(23) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MailingPostalCode` varchar(6) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MailingCountry` varchar(6) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MailingLatitude` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MailingLongitude` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MailingGeocodeAccuracy` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Phone` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Fax` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MobilePhone` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `HomePhone` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `OtherPhone` varchar(14) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `AssistantPhone` varchar(14) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ReportsToId` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Email` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Title` varchar(31) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Department` varchar(19) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `AssistantName` varchar(13) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LeadSource` varchar(17) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Birthdate` varchar(19) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Description` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `OwnerId` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL,
  `CreatedDate` varchar(19) COLLATE utf8mb4_unicode_ci NOT NULL,
  `CreatedById` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL,
  `LastModifiedDate` varchar(19) COLLATE utf8mb4_unicode_ci NOT NULL,
  `LastModifiedById` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL,
  `SystemModstamp` varchar(19) COLLATE utf8mb4_unicode_ci NOT NULL,
  `LastActivityDate` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LastCURequestDate` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LastCUUpdateDate` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `EmailBouncedReason` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `EmailBouncedDate` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Jigsaw` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `JigsawContactId` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CleanStatus` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2018_12_31_000000_create_contact_table', 1),
(2, '2018_12_31_100911_create_account_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` int(11) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `password`, `token`, `active`, `remember_token`, `created_at`, `updated_at`) VALUES
(6, 'Rahul', 'Thakur', 'thakurrahul3171@gmail.com', '$2y$10$cL1khTAq0svRY2DjGzo4FeQ8yRtcoKoj51gue2kr8SCKQ3qMzRumS', 'k6bMBs4hSUw8MwYxJikhCaAHYTBIGU6IXkh4ylkn1546249285', 1, 'fnPPUsMf5xztZIJvZodYwmYjVeI6mO7V58l9KxsShskvP6kiskp5cyICtlac', '2018-12-31 04:11:25', '2018-12-31 04:11:25'),
(9, 'pizza sp', 'rahul', 'rahul.planet317@gmail.com', '$2y$10$KiEWBk/Fn7y9h/P3vfUwXes2WAQbvjF07qjWngZkCsjynKXUb2vv2', 'RTQMPnsyf7rf7pk8oW9rPHedUpO55ES9OZydPTVz1546250072', 0, NULL, '2018-12-31 04:24:32', '2019-01-01 02:53:25'),
(10, 'pizza sp thakur RAm', 'rahulr', 'testplanet317@gmail.com', '$2y$10$loEvfhGHCaTHtN.zrE3jBeAtsHHKDNseEavbkx0B6gvhmiqR/2Ene', 'MLa6ruJmHKHZB5ZBnKTyVNTe03q2IZK1RSoJCRpm1546250273', 0, NULL, '2018-12-31 04:27:53', '2019-01-01 02:53:35'),
(13, 'RK', 'thakur317', 'thakurrahul317@gmail.com', '$2y$10$Ny6wuiOt3DB8FLBYTFkRH.6nnm7GC58ScsvV8Lq67N202L1ukXjKO', 'L3g5ZR7ACAovbkEIySnbdgP7XAgBUoSqwWvzdYxr1546335899', 1, NULL, '2019-01-01 04:14:59', '2019-01-01 04:14:59');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `deleted_at` (`deleted_at`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `AccountId` (`AccountId`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `Id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `Id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
