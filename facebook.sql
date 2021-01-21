-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 21, 2021 at 11:02 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `facebook`
--

-- --------------------------------------------------------

--
-- Table structure for table `activities`
--

CREATE TABLE `activities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `iduser` int(10) UNSIGNED NOT NULL,
  `type_user` tinyint(1) UNSIGNED NOT NULL COMMENT '0: user 1: page',
  `idwall` int(10) UNSIGNED NOT NULL,
  `type_wall` tinyint(1) UNSIGNED NOT NULL COMMENT '0: user 1: page  2: group   3: event',
  `action` tinyint(1) UNSIGNED NOT NULL COMMENT '1: Insert Post   2: Insert Comment',
  `type_activity` tinyint(1) UNSIGNED NOT NULL COMMENT '0: post   1: photo   2: video   3: audio   4: album   5: cover   6: avatar   7: event   8: share   9: embed link   10: embed media   11: article   12: product   31: comment',
  `moreinfo` varchar(255) NOT NULL,
  `where_was_made` tinyint(1) UNSIGNED NOT NULL COMMENT '0: post',
  `code_where` varchar(11) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `id_where` bigint(20) UNSIGNED NOT NULL,
  `code_result` varchar(11) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `id_result` bigint(20) UNSIGNED NOT NULL,
  `who_view` tinyint(1) NOT NULL COMMENT '0: All  1:Friends  2: Only creator',
  `whendate` int(10) UNSIGNED NOT NULL,
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT '1' COMMENT '0: inactive   1: active'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `activities`
--

INSERT INTO `activities` (`id`, `iduser`, `type_user`, `idwall`, `type_wall`, `action`, `type_activity`, `moreinfo`, `where_was_made`, `code_where`, `id_where`, `code_result`, `id_result`, `who_view`, `whendate`, `status`) VALUES
(1, 1, 0, 1, 0, 1, 6, '', 0, 'fNtC4G7Kfms', 1, 'fNtC4G7Kfms', 1, 0, 1605156758, 1),
(3, 1, 0, 1, 0, 1, 9, '', 0, 'aWazThzKNpP', 3, 'aWazThzKNpP', 3, 1, 1605156802, 1),
(4, 1, 0, 1, 0, 1, 6, '', 0, 'Cf8RZgx9pNm', 4, 'Cf8RZgx9pNm', 4, 0, 1605157350, 1),
(5, 1, 0, 1, 0, 1, 5, '', 0, 'fv3bSDb87MJ', 5, 'fv3bSDb87MJ', 5, 0, 1605157391, 1),
(6, 1, 0, 1, 0, 1, 5, '', 0, '8NpR9GVyftF', 6, '8NpR9GVyftF', 6, 0, 1605157459, 1),
(11, 3, 0, 3, 0, 1, 6, '', 0, 'fkvwskCzJ65', 10, 'fkvwskCzJ65', 10, 0, 1605158595, 1),
(8, 2, 0, 2, 0, 1, 6, '', 0, 'VV4YNV7XW3t', 8, 'VV4YNV7XW3t', 8, 0, 1605157723, 1),
(9, 2, 0, 2, 0, 1, 5, '', 0, 'F3ypWbMZyxh', 9, 'F3ypWbMZyxh', 9, 0, 1605157744, 1),
(10, 2, 0, 2, 0, 2, 31, '', 0, 'F3ypWbMZyxh', 9, '', 1, 1, 1605157891, 1),
(12, 3, 0, 3, 0, 1, 5, '', 0, 'wXN8N3RDR13', 11, 'wXN8N3RDR13', 11, 0, 1605158655, 1),
(13, 3, 0, 3, 0, 1, 5, '', 0, 'CBN0zja2tX4', 12, 'CBN0zja2tX4', 12, 0, 1605158667, 1),
(14, 3, 0, 3, 0, 1, 5, '', 0, 'a2dV6YFFVt7', 13, 'a2dV6YFFVt7', 13, 0, 1605158738, 1),
(15, 2, 0, 3, 0, 2, 31, '', 0, 'a2dV6YFFVt7', 13, '', 3, 1, 1605158836, 1),
(16, 2, 0, 2, 0, 1, 4, '', 0, 'S1j9BtNnjN7', 14, 'S1j9BtNnjN7', 14, 0, 1605159165, 1),
(17, 3, 0, 3, 0, 1, 1, '', 0, 'gYmJyyjMzDG', 15, 'gYmJyyjMzDG', 15, 1, 1605160283, 1),
(18, 2, 0, 2, 0, 1, 11, '', 0, 'fKgZtBFsz4j', 16, 'fKgZtBFsz4j', 16, 0, 1605161185, 1),
(37, 6, 0, 6, 0, 1, 5, '', 0, 'm835Gds7dZT', 34, 'm835Gds7dZT', 34, 0, 1605265702, 1),
(36, 6, 0, 6, 0, 1, 6, '', 0, 'qTWDRd1T06M', 33, 'qTWDRd1T06M', 33, 0, 1605265664, 1),
(23, 2, 0, 2, 0, 1, 10, '', 0, 'cpQT8ZZdJKa', 21, 'cpQT8ZZdJKa', 21, 1, 1605162812, 1),
(38, 7, 0, 7, 0, 1, 6, '', 0, 'DF6yBBSs9a2', 35, 'DF6yBBSs9a2', 35, 0, 1605274124, 1),
(39, 8, 0, 8, 0, 1, 6, '', 0, 'rSSFvyQxDwX', 36, 'rSSFvyQxDwX', 36, 0, 1605274243, 1),
(40, 9, 0, 9, 0, 1, 6, '', 0, '4J9dcY3rwzY', 37, '4J9dcY3rwzY', 37, 0, 1605274323, 1),
(27, 2, 0, 2, 0, 1, 10, '', 0, 'zy9C4FtVR5k', 25, 'zy9C4FtVR5k', 25, 0, 1605162955, 1),
(28, 1, 0, 1, 0, 1, 6, '', 0, 'Pwq23y2FdSm', 26, 'Pwq23y2FdSm', 26, 0, 1605167066, 1),
(29, 1, 0, 1, 0, 1, 6, '', 0, 'WB3knCDhxmK', 27, 'WB3knCDhxmK', 27, 0, 1605167104, 1),
(30, 1, 0, 1, 0, 1, 5, '', 0, 'aZwk82KrX6r', 28, 'aZwk82KrX6r', 28, 0, 1605167282, 1),
(31, 1, 0, 1, 0, 1, 5, '', 0, 'T3N9vxBMMsS', 29, 'T3N9vxBMMsS', 29, 0, 1605167496, 1),
(32, 5, 0, 5, 0, 1, 6, '', 0, 'PH9Z96RJHDx', 30, 'PH9Z96RJHDx', 30, 0, 1605195705, 1),
(33, 5, 0, 5, 0, 1, 5, '', 0, 't7TVxvx2fRJ', 31, 't7TVxvx2fRJ', 31, 0, 1605195770, 1),
(34, 5, 0, 5, 0, 1, 5, '', 0, 'gJdvyfzm00T', 32, 'gJdvyfzm00T', 32, 0, 1605195845, 1),
(35, 5, 0, 5, 0, 2, 31, '', 0, 'gJdvyfzm00T', 32, '', 8, 1, 1605196738, 1),
(41, 10, 0, 10, 0, 1, 6, '', 0, 'GDb22HtT4KD', 38, 'GDb22HtT4KD', 38, 0, 1605274432, 1),
(42, 11, 0, 11, 0, 1, 6, '', 0, 'zkXzgNc8P2R', 39, 'zkXzgNc8P2R', 39, 0, 1605274561, 1),
(43, 12, 0, 12, 0, 1, 6, '', 0, '6rCKcnRPjZt', 40, '6rCKcnRPjZt', 40, 0, 1605274651, 1),
(44, 13, 0, 13, 0, 1, 6, '', 0, 'F8NssYStsp1', 41, 'F8NssYStsp1', 41, 0, 1605274824, 1),
(45, 14, 0, 14, 0, 1, 6, '', 0, 'VYga4f825kP', 42, 'VYga4f825kP', 42, 0, 1605274922, 1),
(46, 14, 0, 14, 0, 1, 5, '', 0, 'T8DB4Nkgb6q', 43, 'T8DB4Nkgb6q', 43, 0, 1605274938, 1),
(47, 14, 0, 14, 0, 1, 1, '', 0, '6mghf8cr4Z9', 44, '6mghf8cr4Z9', 44, 1, 1605274993, 1),
(48, 1, 1, 1, 1, 1, 6, '', 0, 'aPqMzYJPB4Q', 45, 'aPqMzYJPB4Q', 45, 0, 1605275356, 1),
(49, 1, 1, 1, 1, 1, 9, '', 0, 'V2XbC8hQg9M', 46, 'V2XbC8hQg9M', 46, 0, 1605275407, 1),
(50, 2, 0, 2, 0, 1, 11, '', 0, 'NPZHqr2apSn', 47, 'NPZHqr2apSn', 47, 0, 1605280735, 1),
(51, 15, 0, 15, 0, 1, 6, '', 0, 'sBFNN4X2bTY', 48, 'sBFNN4X2bTY', 48, 0, 1605288225, 1),
(52, 16, 0, 16, 0, 1, 6, '', 0, 'W5qTtSVF05B', 49, 'W5qTtSVF05B', 49, 0, 1605288383, 1),
(53, 17, 0, 17, 0, 1, 6, '', 0, 'ZaqvsZW7N6y', 50, 'ZaqvsZW7N6y', 50, 0, 1605288473, 1),
(54, 17, 0, 17, 0, 1, 6, '', 0, 'Ddjy5sqnB30', 51, 'Ddjy5sqnB30', 51, 0, 1605288514, 1),
(55, 18, 0, 18, 0, 1, 6, '', 0, 'b2vzpF2a6N3', 52, 'b2vzpF2a6N3', 52, 0, 1605288710, 1),
(56, 19, 0, 19, 0, 1, 6, '', 0, '7n6dvan6aNM', 53, '7n6dvan6aNM', 53, 0, 1605288834, 1),
(57, 20, 0, 20, 0, 1, 6, '', 0, 'x7qkD9mG9bV', 54, 'x7qkD9mG9bV', 54, 0, 1605289012, 1),
(58, 20, 0, 20, 0, 1, 1, '', 0, 'H93ZjfBh4mb', 55, 'H93ZjfBh4mb', 55, 1, 1605289028, 1),
(59, 21, 0, 21, 0, 1, 6, '', 0, 'c5vwmgahGVw', 56, 'c5vwmgahGVw', 56, 0, 1605290095, 1),
(60, 22, 0, 22, 0, 1, 6, '', 0, 'ZF7dFBjzXdW', 57, 'ZF7dFBjzXdW', 57, 0, 1605290208, 1),
(61, 22, 0, 22, 0, 1, 6, '', 0, 'aVmcf0dQSGC', 58, 'aVmcf0dQSGC', 58, 0, 1605290256, 1),
(62, 23, 0, 23, 0, 1, 6, '', 0, '5hkzSQ06nZK', 59, '5hkzSQ06nZK', 59, 0, 1605290396, 1),
(63, 23, 0, 23, 0, 1, 6, '', 0, 'P1D6Kfd0zma', 60, 'P1D6Kfd0zma', 60, 0, 1605290455, 1),
(65, 12, 0, 12, 0, 1, 1, '', 0, 'm32CjvZqmhv', 62, 'm32CjvZqmhv', 62, 1, 1605510741, 1),
(66, 6, 0, 6, 0, 1, 0, '', 0, 'vGsVZ3BwmHs', 63, 'vGsVZ3BwmHs', 63, 1, 1606513230, 1),
(67, 6, 0, 6, 0, 1, 11, '', 0, 'FY5JaCsxQ6F', 64, 'FY5JaCsxQ6F', 64, 0, 1606570112, 1),
(68, 6, 0, 6, 0, 1, 11, '', 0, 'BqfmTRQBTZ7', 65, 'BqfmTRQBTZ7', 65, 0, 1606582366, 1),
(69, 6, 0, 6, 0, 1, 0, '', 0, 'x49yaXb5h7v', 66, 'x49yaXb5h7v', 66, 1, 1607092870, 1),
(70, 6, 0, 6, 0, 1, 0, '', 0, 'JWrW6JZ05za', 67, 'JWrW6JZ05za', 67, 1, 1607092877, 1),
(71, 6, 0, 6, 0, 1, 0, '', 0, 'XRGTBQQXm98', 68, 'XRGTBQQXm98', 68, 1, 1610467955, 1),
(72, 6, 0, 6, 0, 1, 11, '', 0, 'Qy18xySzPWM', 69, 'Qy18xySzPWM', 69, 0, 1611218733, 1);

-- --------------------------------------------------------

--
-- Table structure for table `advertising`
--

CREATE TABLE `advertising` (
  `idad` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(11) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `iduser` int(10) UNSIGNED NOT NULL,
  `headline` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `descriptionline1` varchar(35) COLLATE utf8_unicode_ci NOT NULL,
  `descriptionline2` varchar(35) COLLATE utf8_unicode_ci NOT NULL,
  `url_destination` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `url_visible` varchar(35) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `created` int(10) UNSIGNED NOT NULL,
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT '1' COMMENT '0: pause   1: run   2: deleted',
  `typeaction` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '0: Undefinied   1: Impressions   2: Clicks',
  `clicks_available` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `impressions_available` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `num_impressions` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `num_impressions_unique` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `num_clicks` int(10) UNSIGNED DEFAULT '0',
  `num_clicks_unique` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `available` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '0: no available   1: available',
  `last_assignedby` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '0: Indefined   1: Admin   2: Paypal',
  `status_admin` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '0: authorized   1: Under review'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `advertising_basic`
--

CREATE TABLE `advertising_basic` (
  `idbasic` int(10) UNSIGNED NOT NULL,
  `code` varchar(11) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `idslot` int(10) UNSIGNED NOT NULL COMMENT '1: dashboard   2: profile',
  `name` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `thefile` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `theurl` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `target` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '0: In the same window   1: Blank Window',
  `type_ads` tinyint(1) UNSIGNED NOT NULL DEFAULT '1' COMMENT '1: Image 2: HTML',
  `the_html` text COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT '1' COMMENT '0: Disabled   1: Active',
  `whendate` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `advertising_basic`
--

INSERT INTO `advertising_basic` (`idbasic`, `code`, `idslot`, `name`, `thefile`, `theurl`, `target`, `type_ads`, `the_html`, `status`, `whendate`) VALUES
(1, 'VX5fNSn7Vxf', 1, 'Ads for Kanorika', 'VX5fNSn7Vxf.jpg', 'http://www.amirtumi.com/', 1, 1, '', 0, 1513788165);

-- --------------------------------------------------------

--
-- Table structure for table `advertising_clicks_days`
--

CREATE TABLE `advertising_clicks_days` (
  `idclick` bigint(20) UNSIGNED NOT NULL,
  `idad` int(10) UNSIGNED NOT NULL,
  `id_plan_assigned` int(10) UNSIGNED NOT NULL,
  `whendate` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `clicks_unique` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `clicks_simple` smallint(5) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `advertising_clicks_hours`
--

CREATE TABLE `advertising_clicks_hours` (
  `idclick` bigint(20) UNSIGNED NOT NULL,
  `idad` int(10) UNSIGNED NOT NULL,
  `id_plan_assigned` int(10) UNSIGNED NOT NULL,
  `whendate` varchar(13) COLLATE utf8_unicode_ci NOT NULL,
  `clicks_unique` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `clicks_simple` smallint(5) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `advertising_impress_days`
--

CREATE TABLE `advertising_impress_days` (
  `idimpress` bigint(20) UNSIGNED NOT NULL,
  `idad` int(10) UNSIGNED NOT NULL,
  `id_plan_assigned` int(10) UNSIGNED NOT NULL,
  `whendate` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `impress_unique` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `impress_simple` smallint(5) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `advertising_impress_hours`
--

CREATE TABLE `advertising_impress_hours` (
  `idimpress` bigint(20) UNSIGNED NOT NULL,
  `idad` int(10) UNSIGNED NOT NULL,
  `id_plan_assigned` int(10) UNSIGNED NOT NULL,
  `whendate` varchar(13) COLLATE utf8_unicode_ci NOT NULL,
  `impress_unique` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `impress_simple` smallint(5) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `advertising_paypal`
--

CREATE TABLE `advertising_paypal` (
  `id` int(11) UNSIGNED NOT NULL,
  `whendate` int(10) UNSIGNED DEFAULT NULL,
  `item_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `item_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `quantity` int(11) UNSIGNED DEFAULT NULL,
  `payment_status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_amount` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_currency` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payer_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payment_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `invoice` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address_country` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address_country_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address_zip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address_state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address_city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address_street` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `advertising_plans`
--

CREATE TABLE `advertising_plans` (
  `idplan` int(10) UNSIGNED NOT NULL,
  `code` varchar(11) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `name_plan` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `typeaction` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '1: Impressions   2: Clicks   3: Days',
  `quantity` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `price` float NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `advertising_plans_assigned`
--

CREATE TABLE `advertising_plans_assigned` (
  `idassigned` int(10) UNSIGNED NOT NULL,
  `idad` int(10) UNSIGNED NOT NULL,
  `idplan` int(10) UNSIGNED NOT NULL,
  `assignedby` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '1: Admin   2: Paypal',
  `idassigner` int(10) UNSIGNED NOT NULL COMMENT 'may be the "id" in the paypal table',
  `whendate` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `albums`
--

CREATE TABLE `albums` (
  `idalbum` int(10) UNSIGNED NOT NULL,
  `code` varchar(11) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `idcreator` int(10) UNSIGNED NOT NULL,
  `typecreator` tinyint(1) UNSIGNED NOT NULL COMMENT '0: user 1: page',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `privacy` tinyint(1) UNSIGNED NOT NULL COMMENT '0: Public   1: Friends   2: Only me',
  `numphotos` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `idpost` bigint(20) UNSIGNED NOT NULL,
  `created` int(10) UNSIGNED NOT NULL,
  `modified` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `albums`
--

INSERT INTO `albums` (`idalbum`, `code`, `idcreator`, `typecreator`, `title`, `description`, `privacy`, `numphotos`, `idpost`, `created`, `modified`) VALUES
(1, 'jNvpFRjYxxt', 2, 0, 'My Photo', 'All my photo', 0, 1, 14, 1605159165, 1605159165);

-- --------------------------------------------------------

--
-- Table structure for table `albums_items`
--

CREATE TABLE `albums_items` (
  `iditem` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(11) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `idalbum` int(10) UNSIGNED NOT NULL,
  `iduser` int(10) UNSIGNED NOT NULL,
  `idmedia` int(10) UNSIGNED NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `whendate` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `albums_items`
--

INSERT INTO `albums_items` (`iditem`, `code`, `idalbum`, `iduser`, `idmedia`, `description`, `whendate`) VALUES
(1, '7s1NV4pDwzb', 1, 2, 11, '', 1605159165);

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `idarticle` int(10) UNSIGNED NOT NULL,
  `code` varchar(11) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `idwriter` int(10) UNSIGNED NOT NULL,
  `idcategory` int(10) UNSIGNED NOT NULL,
  `idsubcategory` int(10) UNSIGNED NOT NULL,
  `title` varchar(250) NOT NULL,
  `summary` text NOT NULL,
  `text_article` text NOT NULL,
  `photo` varchar(250) NOT NULL,
  `tags` varchar(500) NOT NULL,
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `idpost` bigint(20) UNSIGNED NOT NULL,
  `numviews` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `whendate` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`idarticle`, `code`, `idwriter`, `idcategory`, `idsubcategory`, `title`, `summary`, `text_article`, `photo`, `tags`, `status`, `idpost`, `numviews`, `whendate`) VALUES
(1, 'kJ8xnYS19Wh', 6, 6, 45, 'শামসুর রাহমানের জন্মদিন আজ', 'বাংলা সাহিত্যের অন্যতম কবি শামসুর রাহমানের ৯২তম জন্মদিন আজ। ১৯২৯ সালের ২৩ অক্টোবর পুরান ঢাকার মাহুতটুলিতে জন্মগ্রহণ করেন প্রেম ও মানবতার কবি। তার পৈতৃক নিবাস নরসিংদী জেলায়।', '&lt;p style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5rem; color: #626262; font-family: SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; font-size: 18px; text-align: justify;&quot;&gt;বাংলা সাহিত্যের অন্যতম কবি শামসুর রাহমানের ৯২তম জন্মদিন আজ। ১৯২৯ সালের ২৩ অক্টোবর পুরান ঢাকার মাহুতটুলিতে জন্মগ্রহণ করেন প্রেম ও মানবতার কবি। তার পৈতৃক নিবাস নরসিংদী জেলায়।&lt;/p&gt;\n&lt;p style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5rem; color: #626262; font-family: SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; font-size: 18px; text-align: justify;&quot;&gt;শামসুর রহমানের জন্মবার্ষিকী উপলক্ষে বিভিন্ন সামাজিক সাংস্কৃতিক সংগঠন বিস্তারিত কর্মসূচি গ্রহণ করেছে। বাংলাদেশ জাতীয় জাদুঘর আয়োজন করেছে সেমিনার। বিকেল সোয়া ৩টায় জাদুঘরের কবি সুফিয়া কামাল মিলনায়তনে এ সেমিনার অনুষ্ঠিত হবে। প্রধান অতিথি হিসেবে উপস্থিত থাকবেন সংস্কৃতি প্রতিমন্ত্রী কে এম খালিদ।&lt;/p&gt;\n&lt;p style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5rem; color: #626262; font-family: SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; font-size: 18px; text-align: justify;&quot;&gt;১৯৪৫ সালে পুরোনো ঢাকার পোগোজ স্কুল থেকে ম্যাট্রিকুলেশন পাস করেন শামসুর রাহমান। ১৯৪৭ সালে ঢাকা ইন্টারমিডিয়েট কলেজ থেকে আইএ পাস করেন। ঢাকা বিশ্ববিদ্যালয়ে ইংরেজি বিষয়ে ভর্তি হন এবং তিন বছর নিয়মিত ক্লাসও করেছিলেন সেখানে। শেষ পর্যন্ত আর চূড়ান্ত পরীক্ষা দেননি। পাসকোর্সে বিএ পাস করে তিনি ইংরেজি সাহিত্যে এমএ (প্রিলিমিনারি) পরীক্ষায় দ্বিতীয় বিভাগে দ্বিতীয় স্থান অর্জন করলেও শেষ পর্বের পরীক্ষায় অংশগ্রহণ করেননি।&lt;/p&gt;\n&lt;p style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5rem; color: #626262; font-family: SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; font-size: 18px; text-align: justify;&quot;&gt;শামসুর রহমান ১৯৫৭ সালে দৈনিক মর্নিং নিউজে সাংবাদিক হিসেবে কর্মজীবন শুরু করেন। এর পর ১৯৫৯ সাল পর্যন্ত রেডিও পাকিস্তানের অনুষ্ঠান প্রযোজক ছিলেন। এরপর তিনি আবার ফিরে আসেন তার পুরোনো কর্মস্থল দৈনিক মর্নিং নিউজে। তিনি সেখানে ১৯৬০ সাল থেকে ১৯৬৪ সাল পর্যন্ত সহযোগী সম্পাদক হিসেবে দায়িত্ব পালন করেন।&lt;/p&gt;\n&lt;p style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5rem; color: #626262; font-family: SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; font-size: 18px; text-align: justify;&quot;&gt;১৯৬৪ থেকে শুরু করে সরকারি দৈনিক পাকিস্তানের (স্বাধীনতা উত্তর দৈনিক বাংলা) সহকারী সম্পাদকের দায়িত্ব পালন করেন ১৯৭৭ এর জানুয়ারি পর্যন্ত। ফেব্রুয়ারি ১৯৭৭ সালে তিনি দৈনিক বাংলা ও সাপ্তাহিক বিচিত্রার সম্পাদক নিযুক্ত হন। ১৯৮৭ সালে তাকে পদত্যাগে বাধ্য করা হয়।&lt;/p&gt;\n&lt;p style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5rem; color: #626262; font-family: SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; font-size: 18px; text-align: justify;&quot;&gt;জীবদ্দশায় শামসুর রাহমানর ৬৬টি কাব্যগ্রন্থ, ৪টি উপন্যাস, ১টি প্রবন্ধগ্রন্থ, ১টি ছড়ার বই ও ৬টি অনুবাদ গ্রন্থ প্রকাশিত হয়।&lt;/p&gt;\n&lt;p style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5rem; color: #626262; font-family: SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; font-size: 18px; text-align: justify;&quot;&gt;তিনি অর্জন করেছেন আদমজী সাহিত্য পুরস্কার, বাংলা একাডেমি পুরস্কার, একুশে পদক, নাসির উদ্দিন স্বর্ণপদক, জীবনানন্দ পুরস্কার, আবুল মনসুর আহমদ স্মৃতি পুরস্কার, মিতসুবিশি পুরস্কার (সাংবাদিকতার জন্য), স্বাধীনতা পদক, আনন্দ পুরস্কার। ভারতের যাদবপুর বিশ্ববিদ্যালয় ও রবীন্দ্রভারতী বিশ্ববিদ্যালয় সম্মানসূচক ডিলিট উপাধিতে ভূষিত করে এই মহান কবিকে।&lt;/p&gt;\n&lt;p style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5rem; color: #626262; font-family: SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; font-size: 18px; text-align: justify;&quot;&gt;২০০৬ সালের ১৭ আগস্ট বঙ্গবন্ধু শেখ মুজিব মেডিকেল বিশ্ববিদ্যালয়ে চিকিৎসাধীন অবস্থায় শেষ নিশ্বাস ত্যাগ করেন শামসুর রহমান। তার ইচ্ছা অনুযায়ী ঢাকার বনানী কবরস্থানে মায়ের কবরের পাশে সমাহিত করা হয়।&lt;/p&gt;', 'kJ8xnYS19Wh.jpg', '', 1, 16, 3120, 1605161185),
(2, '79wqbcfsqbH', 6, 9, 64, '৬০ হাজার টাকায় গেমিং পিসি', 'আমাদের আজকের ৬০ হাজার টাকায় গেমিং পিসি বায়িং গাইডে আপনাকে স্বাগতম।', '&lt;p&gt;&lt;span style=&quot;color: #505050; font-family: &#039;hind siliguri&#039;; font-size: 16px;&quot;&gt;আমাদের আজকের ৬০ হাজার টাকায় গেমিং পিসি বায়িং গাইডে আপনাকে স্বাগতম। একটি ভালো মানের পিসি বিল্ড করা জন্য ৬০ হাজার টাকা খুবই আদর্শ একটি প্রাইজ রেঞ্জ।&lt;/span&gt;&lt;br style=&quot;color: #505050; font-family: &#039;hind siliguri&#039;; font-size: 16px;&quot; /&gt;&lt;br style=&quot;color: #505050; font-family: &#039;hind siliguri&#039;; font-size: 16px;&quot; /&gt;&lt;span style=&quot;color: #505050; font-family: &#039;hind siliguri&#039;; font-size: 16px;&quot;&gt;আমাদের আজকের এই ৬০ হাজার টাকার বিল্ড পুরোপুরি গেমিং এর উপর ফোকাস করে তৈরি করা হয়েছে। এই বিল্ড দিয়ে আপনি বর্তমান সময়ের মডার্ন ট্রিপল-এ টাইটালের গেমগুলো ১০৮০পি অথবা ১৪৪০পি রেজুলেশনে হাই প্রিসেটে খেলতে পারবেন।&lt;/span&gt;&lt;br style=&quot;color: #505050; font-family: &#039;hind siliguri&#039;; font-size: 16px;&quot; /&gt;&lt;br style=&quot;color: #505050; font-family: &#039;hind siliguri&#039;; font-size: 16px;&quot; /&gt;&lt;span style=&quot;color: #505050; font-family: &#039;hind siliguri&#039;; font-size: 16px;&quot;&gt;গেমিং এর পাশাপাশি এই ৬০ হাজার টাকার পিসি দিয়ে ফটো এডিটিং, ভিডিও এডিটিং, স্ট্রিমিং এর মতো কাজগুলো অনায়াসে করা যাবে। তো আর কথা না বাড়িয়ে শুরু করা যাক।&lt;/span&gt;&lt;br style=&quot;color: #505050; font-family: &#039;hind siliguri&#039;; font-size: 16px;&quot; /&gt;&lt;br style=&quot;color: #505050; font-family: &#039;hind siliguri&#039;; font-size: 16px;&quot; /&gt;&lt;strong style=&quot;padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: 0px 0px; color: #505050; font-family: &#039;hind siliguri&#039;; font-size: 16px;&quot;&gt;বিঃদ্রঃ&lt;/strong&gt;&lt;span style=&quot;color: #505050; font-family: &#039;hind siliguri&#039;; font-size: 16px;&quot;&gt;&amp;nbsp;আর্টিকেলে উল্লেখিত কম্পোন্যান্টগুলোর দাম স্টোর বা আবস্থান ভেদে কমবেশি হতে পারে, তাই কেনার আগে এ বিষয়ে খুঁজ খবর নিয়ে নিবেন।&lt;/span&gt;&lt;/p&gt;\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;', '79wqbcfsqbH.jpg', '', 1, 47, 41, 1605280735),
(4, 'FBGKjsM0HxG', 6, 2, 25, 'eqwe', 'wqeqweqwe', '&lt;p&gt;qweqweqweq&lt;/p&gt;', 'FBGKjsM0HxG.png', '', 1, 65, 43, 1606582366),
(5, 'zyGd8bfjVQr', 6, 5, 43, '5t45t', '54t45t45t', '&lt;p&gt;54t45t 54t54t 4545yt54t54&lt;/p&gt;', 'zyGd8bfjVQr.jpg', '', 1, 69, 26, 1611218733);

-- --------------------------------------------------------

--
-- Table structure for table `articles_cat`
--

CREATE TABLE `articles_cat` (
  `idcategory` int(10) UNSIGNED NOT NULL,
  `idfather` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) NOT NULL,
  `num_children` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `articles_cat`
--

INSERT INTO `articles_cat` (`idcategory`, `idfather`, `name`, `num_children`) VALUES
(1, 0, 'Arts &amp; Photography', 10),
(2, 0, 'Biographies &amp; Memoirs', 10),
(3, 0, 'Children&#039;s Texts', 4),
(4, 0, 'Cooking, Food &amp; Wine', 8),
(5, 0, 'History', 3),
(6, 0, 'Literature &amp; Fiction', 6),
(7, 0, 'Mystery &amp; Suspense', 3),
(8, 0, 'Romance', 7),
(9, 0, 'Sci-Fi &amp; Fantasy', 3),
(10, 0, 'Teens &amp; Young Adult', 10),
(11, 1, 'Photography &amp; Video', 0),
(12, 1, 'Music', 0),
(13, 1, 'Graphic Design', 0),
(14, 1, 'Architecture', 0),
(15, 1, 'Drawing', 0),
(16, 1, 'Individual Artists', 0),
(17, 1, 'Painting', 0),
(18, 1, 'Performing Arts', 0),
(19, 1, 'Decorative Arts &amp; Design', 0),
(20, 1, 'Fashion', 0),
(21, 2, 'Memoirs', 0),
(22, 2, 'Leaders &amp; Notable People', 0),
(23, 2, 'Historical', 0),
(24, 2, 'Sports &amp; Outdoors', 0),
(25, 2, 'Arts &amp; Literature', 0),
(26, 2, 'True Crime', 0),
(27, 2, 'Professionals &amp; Academics', 0),
(28, 2, 'Travelers &amp; Explorers', 0),
(29, 2, 'Ethnic &amp; National', 0),
(30, 2, 'Reference &amp; Collections', 0),
(31, 3, 'Animals', 0),
(32, 3, 'Action &amp; Adventure', 0),
(33, 3, 'Literature &amp; Fiction', 0),
(34, 3, 'Humor', 0),
(35, 4, 'Baking', 0),
(36, 4, 'Regional &amp; International', 0),
(37, 4, 'Vegetarian &amp; Vegan', 0),
(38, 4, 'Special Diet', 0),
(39, 4, 'Professional Cooking', 0),
(40, 4, 'Beverages &amp; Wine', 0),
(41, 4, 'Quick &amp; Easy', 0),
(42, 4, 'Cooking Methods', 0),
(43, 5, 'Military', 0),
(44, 5, 'Ancient Civilizations', 0),
(45, 5, 'World', 0),
(46, 6, 'Erotica', 0),
(47, 6, 'Historical Fiction', 0),
(48, 6, 'Genre Fiction', 0),
(49, 6, 'Action &amp; Adventure', 0),
(50, 6, 'Poetry', 0),
(51, 6, 'Short Stories', 0),
(52, 7, 'Thrillers &amp; Suspense', 0),
(53, 7, 'Mystery', 0),
(54, 7, 'Paranormal', 0),
(55, 8, 'Erotica', 0),
(56, 8, 'Contemporary', 0),
(57, 8, 'Romantic Suspense', 0),
(58, 8, 'Historical', 0),
(59, 8, 'Romantic Comedy', 0),
(60, 8, 'Fantasy', 0),
(61, 8, 'Inspirational', 0),
(62, 9, 'Science Fiction', 0),
(63, 9, 'Fantasy', 0),
(64, 9, 'Gaming', 0),
(65, 10, 'Science Fiction &amp; Fantasy', 0),
(66, 10, 'Romance', 0),
(67, 10, 'Mysteries &amp; Thrillers', 0),
(68, 10, 'Historical Fiction', 0),
(69, 10, 'Biographies', 0),
(70, 10, 'Social Issues', 0),
(71, 10, 'Personal Health', 0),
(72, 10, 'Religion &amp; Spirituality', 0),
(73, 10, 'Sports &amp; Outdoors', 0),
(74, 10, 'Art, Music &amp; Photography', 0);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `idcomment` bigint(20) UNSIGNED NOT NULL,
  `idwriter` int(10) UNSIGNED NOT NULL COMMENT 'iduser or idpage',
  `type_writer` tinyint(1) UNSIGNED NOT NULL COMMENT '0: as User   1: as Page',
  `iditem` int(10) UNSIGNED NOT NULL,
  `typeitem` tinyint(1) UNSIGNED NOT NULL COMMENT '0: Post   1: Media',
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `typecomment` tinyint(3) UNSIGNED NOT NULL DEFAULT '1' COMMENT '1: normal   2: photo   3:sticker',
  `idattach` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Id media',
  `whendate` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`idcomment`, `idwriter`, `type_writer`, `iditem`, `typeitem`, `comment`, `typecomment`, `idattach`, `whendate`) VALUES
(1, 2, 0, 9, 0, 'black background', 1, 0, 1605157891),
(2, 2, 0, 9, 0, '10', 3, 0, 1605158146),
(3, 2, 0, 13, 0, 'Nice cover thanks for join', 1, 0, 1605158836),
(4, 2, 0, 11, 1, 'hello my album', 1, 0, 1605160950),
(5, 2, 0, 11, 1, '10', 3, 0, 1605160957),
(6, 2, 0, 11, 1, '08', 3, 0, 1605160960),
(7, 2, 0, 1, 1, '07', 3, 0, 1605172857),
(8, 5, 0, 32, 0, 'Hello', 1, 0, 1605196738),
(9, 12, 0, 46, 0, '19', 3, 0, 1605275697),
(10, 11, 0, 46, 0, '43', 3, 0, 1605275744),
(11, 2, 0, 25, 0, '15', 3, 0, 1605276092),
(12, 2, 0, 7, 1, '21', 3, 0, 1605283500),
(13, 2, 0, 27, 1, '10', 3, 0, 1605514213);

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `idcurrency` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) NOT NULL,
  `code_iso` varchar(10) NOT NULL,
  `symbol` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`idcurrency`, `name`, `code_iso`, `symbol`) VALUES
(1, 'US Dollar', 'USD', '$'),
(2, 'Euro', 'EUR', '&euro;');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `idevent` int(10) UNSIGNED NOT NULL,
  `code` varchar(11) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `idcreator` int(10) UNSIGNED NOT NULL,
  `typecreator` tinyint(3) UNSIGNED NOT NULL COMMENT '0: User   1: Page   2: Group   ',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `cover` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `cover_media` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `cover_user` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `cover_position` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `date_start` date NOT NULL,
  `time_start` time NOT NULL,
  `start_unix` int(10) UNSIGNED NOT NULL,
  `date_end` date NOT NULL,
  `time_end` time NOT NULL,
  `end_unix` int(10) UNSIGNED NOT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lat` decimal(10,8) NOT NULL,
  `lon` decimal(11,8) NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `privacy` tinyint(1) UNSIGNED NOT NULL COMMENT '0: public   1: private',
  `idpost` bigint(20) UNSIGNED NOT NULL,
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `created` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `events_actions`
--

CREATE TABLE `events_actions` (
  `id` int(10) UNSIGNED NOT NULL,
  `idevent` int(10) UNSIGNED NOT NULL,
  `iduser` int(10) UNSIGNED NOT NULL,
  `type_action` tinyint(1) NOT NULL COMMENT '1: interested   2: going'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `events_users`
--

CREATE TABLE `events_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `idevent` int(10) UNSIGNED NOT NULL,
  `iduser` int(10) UNSIGNED NOT NULL,
  `invited_by` int(10) UNSIGNED NOT NULL,
  `whendate` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `friends`
--

CREATE TABLE `friends` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `friend1` int(10) UNSIGNED NOT NULL,
  `friend2` int(10) UNSIGNED NOT NULL,
  `send_date` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `accepted_date` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `friends`
--

INSERT INTO `friends` (`id`, `friend1`, `friend2`, `send_date`, `accepted_date`) VALUES
(1, 3, 2, 1605158775, 1605158806),
(2, 2, 4, 1605163037, 1605163056),
(3, 2, 6, 1605265835, 1605370481),
(4, 10, 13, 1605276304, 0),
(5, 10, 5, 1605276312, 0),
(6, 10, 9, 1605276323, 0),
(7, 10, 7, 1605276330, 0),
(8, 10, 8, 1605276342, 0),
(9, 12, 11, 1605510896, 0),
(10, 2, 18, 1605514036, 0),
(11, 2, 11, 1605514044, 0),
(12, 2, 21, 1605514052, 0),
(13, 2, 5, 1605514059, 0),
(14, 2, 22, 1605514064, 0),
(15, 2, 19, 1605514087, 0),
(16, 2, 14, 1605514093, 0),
(17, 2, 17, 1605514101, 0),
(18, 2, 12, 1605514108, 1605514146),
(19, 2, 20, 1605514116, 0),
(20, 2, 13, 1605514244, 0),
(21, 2, 23, 1605514334, 0);

-- --------------------------------------------------------

--
-- Table structure for table `games`
--

CREATE TABLE `games` (
  `idgame` int(10) UNSIGNED NOT NULL,
  `code` varchar(11) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `name` varchar(300) NOT NULL,
  `url_game` varchar(300) NOT NULL,
  `url_owner` varchar(300) NOT NULL,
  `thumbnail` varchar(300) NOT NULL,
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `whendate` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `idgroup` int(10) UNSIGNED NOT NULL,
  `code` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `idcreator` int(10) UNSIGNED NOT NULL,
  `guname` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `about` text COLLATE utf8_unicode_ci NOT NULL,
  `cover` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `cover_media` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `cover_user` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `cover_position` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `nummembers` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `numfollowers` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `privacy` tinyint(1) UNSIGNED NOT NULL COMMENT '0: Public  1: Closed  2: Secret',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `created` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `groups_members`
--

CREATE TABLE `groups_members` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `idgroup` bigint(20) UNSIGNED NOT NULL,
  `iduser` int(10) UNSIGNED NOT NULL,
  `added_by` int(10) UNSIGNED NOT NULL,
  `accepted_by` tinyint(1) UNSIGNED NOT NULL,
  `when_request` int(10) UNSIGNED NOT NULL,
  `when_accepted` int(10) UNSIGNED NOT NULL,
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '0: pending   1: accepted',
  `is_admin` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT '0: No   1: Yes'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hashtags`
--

CREATE TABLE `hashtags` (
  `idhashtag` bigint(20) UNSIGNED NOT NULL,
  `hashtag` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `idwriter` int(10) UNSIGNED NOT NULL COMMENT 'iduser or idpage',
  `type_writer` tinyint(1) UNSIGNED NOT NULL COMMENT '0: iduser   1: idpage',
  `idpost` int(10) UNSIGNED NOT NULL,
  `thedate` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hiddens`
--

CREATE TABLE `hiddens` (
  `idhidden` bigint(20) UNSIGNED NOT NULL,
  `typeitem` tinyint(1) UNSIGNED NOT NULL COMMENT '0: Post   1: Comment',
  `iditem` bigint(20) UNSIGNED NOT NULL,
  `idactivity` bigint(20) UNSIGNED NOT NULL,
  `iduser` int(10) UNSIGNED NOT NULL,
  `whendate` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ip_address`
--

CREATE TABLE `ip_address` (
  `id` int(11) NOT NULL,
  `code` varchar(255) NOT NULL,
  `ip_address` text NOT NULL,
  `expire_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ip_address`
--

INSERT INTO `ip_address` (`id`, `code`, `ip_address`, `expire_date`) VALUES
(34, 'FBGKjsM0HxG', '::1', '2020-11-30 16:49:39'),
(35, 'kJ8xnYS19Wh', '::1', '2020-11-30 16:50:08'),
(36, 'FBGKjsM0HxG', '::1', '2020-11-30 16:51:51'),
(37, 'FBGKjsM0HxG', '::1', '2020-12-05 14:36:36'),
(38, '79wqbcfsqbH', '::1', '2021-01-19 17:09:42'),
(39, '79wqbcfsqbH', '::1', '2021-01-21 04:26:06'),
(40, '79wqbcfsqbH', '::1', '2021-01-22 06:41:20'),
(41, 'zyGd8bfjVQr', '::1', '2021-01-22 08:45:35'),
(42, 'FBGKjsM0HxG', '::1', '2021-01-22 09:05:19'),
(43, 'kJ8xnYS19Wh', '::1', '2021-01-22 09:05:21'),
(44, '79wqbcfsqbH', '::1', '2021-01-22 09:05:25'),
(45, 'kJ8xnYS19Wh', '::1', '2021-01-22 09:05:26'),
(46, '79wqbcfsqbH', '::1', '2021-01-22 09:05:29'),
(47, 'kJ8xnYS19Wh', '::1', '2021-01-22 09:05:30'),
(48, '79wqbcfsqbH', '::1', '2021-01-22 09:05:31'),
(49, 'zyGd8bfjVQr', '::1', '2021-01-22 09:05:32'),
(50, 'kJ8xnYS19Wh', '::1', '2021-01-22 09:05:33'),
(51, '79wqbcfsqbH', '::1', '2021-01-22 09:05:34'),
(52, 'zyGd8bfjVQr', '::1', '2021-01-22 09:05:35'),
(53, '79wqbcfsqbH', '::1', '2021-01-22 09:06:11'),
(54, 'zyGd8bfjVQr', '::1', '2021-01-22 09:07:55'),
(55, 'kJ8xnYS19Wh', '::1', '2021-01-22 09:11:00'),
(56, '79wqbcfsqbH', '::1', '2021-01-22 09:11:02'),
(57, 'kJ8xnYS19Wh', '::1', '2021-01-22 09:11:03'),
(58, 'zyGd8bfjVQr', '::1', '2021-01-22 09:11:05'),
(59, '79wqbcfsqbH', '::1', '2021-01-22 09:11:13'),
(60, 'zyGd8bfjVQr', '::1', '2021-01-22 09:11:14'),
(61, '79wqbcfsqbH', '::1', '2021-01-22 09:11:16'),
(62, 'zyGd8bfjVQr', '::1', '2021-01-22 09:11:17'),
(63, 'FBGKjsM0HxG', '::1', '2021-01-22 09:11:17'),
(64, 'kJ8xnYS19Wh', '::1', '2021-01-22 09:11:18'),
(65, 'FBGKjsM0HxG', '::1', '2021-01-22 09:13:09'),
(66, 'zyGd8bfjVQr', '::1', '2021-01-22 09:13:16'),
(67, 'FBGKjsM0HxG', '::1', '2021-01-22 09:13:48'),
(68, '79wqbcfsqbH', '::1', '2021-01-22 09:13:53'),
(69, 'zyGd8bfjVQr', '::1', '2021-01-22 09:13:55'),
(70, 'FBGKjsM0HxG', '::1', '2021-01-22 09:13:56'),
(71, 'zyGd8bfjVQr', '::1', '2021-01-22 09:13:57'),
(72, 'kJ8xnYS19Wh', '::1', '2021-01-22 09:13:57'),
(73, '79wqbcfsqbH', '::1', '2021-01-22 09:13:58'),
(74, 'zyGd8bfjVQr', '::1', '2021-01-22 09:13:58'),
(75, 'FBGKjsM0HxG', '::1', '2021-01-22 09:41:04'),
(76, 'zyGd8bfjVQr', '::1', '2021-01-22 09:41:05'),
(77, 'FBGKjsM0HxG', '::1', '2021-01-22 09:41:09'),
(78, 'zyGd8bfjVQr', '::1', '2021-01-22 09:41:10'),
(79, 'kJ8xnYS19Wh', '::1', '2021-01-22 09:41:10'),
(80, 'zyGd8bfjVQr', '::1', '2021-01-22 09:41:17'),
(81, 'kJ8xnYS19Wh', '::1', '2021-01-22 09:41:19'),
(82, 'zyGd8bfjVQr', '::1', '2021-01-22 09:41:20'),
(83, '79wqbcfsqbH', '::1', '2021-01-22 09:41:22'),
(84, 'kJ8xnYS19Wh', '::1', '2021-01-22 09:41:28'),
(85, 'zyGd8bfjVQr', '::1', '2021-01-22 09:50:15'),
(86, 'kJ8xnYS19Wh', '::1', '2021-01-22 09:57:30'),
(87, 'zyGd8bfjVQr', '::1', '2021-01-22 09:57:33'),
(88, '79wqbcfsqbH', '::1', '2021-01-22 09:57:49'),
(89, 'FBGKjsM0HxG', '::1', '2021-01-22 09:57:51'),
(90, 'zyGd8bfjVQr', '::1', '2021-01-22 09:57:53'),
(91, 'kJ8xnYS19Wh', '::1', '2021-01-22 09:58:21'),
(92, '79wqbcfsqbH', '::1', '2021-01-22 09:58:22'),
(93, 'kJ8xnYS19Wh', '::1', '2021-01-22 09:58:23'),
(94, '79wqbcfsqbH', '::1', '2021-01-22 09:58:25'),
(95, 'zyGd8bfjVQr', '::1', '2021-01-22 09:58:26'),
(96, 'kJ8xnYS19Wh', '::1', '2021-01-22 09:58:26'),
(97, 'FBGKjsM0HxG', '::1', '2021-01-22 09:58:27'),
(98, 'zyGd8bfjVQr', '::1', '2021-01-22 09:58:29'),
(99, 'kJ8xnYS19Wh', '::1', '2021-01-22 09:58:30'),
(100, 'zyGd8bfjVQr', '::1', '2021-01-22 09:59:30'),
(101, '79wqbcfsqbH', '::1', '2021-01-22 09:59:36'),
(102, 'kJ8xnYS19Wh', '::1', '2021-01-22 09:59:37'),
(103, 'zyGd8bfjVQr', '::1', '2021-01-22 09:59:41'),
(104, '79wqbcfsqbH', '::1', '2021-01-22 09:59:42'),
(105, 'FBGKjsM0HxG', '::1', '2021-01-22 09:59:43'),
(106, 'zyGd8bfjVQr', '::1', '2021-01-22 09:59:44'),
(107, 'kJ8xnYS19Wh', '::1', '2021-01-22 09:59:45'),
(108, 'zyGd8bfjVQr', '::1', '2021-01-22 09:59:52'),
(109, 'kJ8xnYS19Wh', '::1', '2021-01-22 10:00:18'),
(110, 'zyGd8bfjVQr', '::1', '2021-01-22 10:00:22'),
(111, '79wqbcfsqbH', '::1', '2021-01-22 10:01:07'),
(112, 'FBGKjsM0HxG', '::1', '2021-01-22 10:01:18'),
(113, 'zyGd8bfjVQr', '::1', '2021-01-22 10:01:20'),
(114, 'FBGKjsM0HxG', '::1', '2021-01-22 10:01:24'),
(115, '79wqbcfsqbH', '::1', '2021-01-22 10:01:24');

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `idlike` bigint(20) UNSIGNED NOT NULL,
  `iduser` int(10) UNSIGNED NOT NULL,
  `typeuser` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '0: User   1: Page',
  `iditem` int(10) UNSIGNED NOT NULL,
  `typeitem` tinyint(1) UNSIGNED NOT NULL COMMENT '0: Post   1: Comment   2: Media   3: Page',
  `whendate` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`idlike`, `iduser`, `typeuser`, `iditem`, `typeitem`, `whendate`) VALUES
(1, 1, 0, 3, 0, 1605156871),
(2, 1, 0, 1, 0, 1605156875),
(3, 2, 0, 9, 0, 1605157873),
(4, 2, 0, 8, 0, 1605157875),
(5, 3, 0, 13, 0, 1605158754),
(6, 2, 0, 13, 0, 1605158820),
(7, 2, 0, 14, 0, 1605159180),
(8, 2, 0, 1, 0, 1605159203),
(9, 2, 0, 3, 0, 1605159205),
(53, 2, 0, 15, 0, 1605276140),
(11, 1, 0, 28, 0, 1605167414),
(12, 1, 0, 27, 0, 1605167417),
(13, 1, 0, 26, 0, 1605167422),
(14, 1, 0, 6, 0, 1605167426),
(15, 1, 0, 5, 0, 1605167428),
(16, 1, 0, 4, 0, 1605167431),
(17, 1, 0, 29, 0, 1605167801),
(54, 2, 0, 25, 0, 1605276157),
(35, 2, 0, 1, 3, 1605275218),
(34, 14, 0, 42, 0, 1605274946),
(33, 14, 0, 43, 0, 1605274944),
(32, 13, 0, 41, 0, 1605274840),
(31, 12, 0, 40, 0, 1605274658),
(52, 2, 0, 16, 0, 1605276135),
(25, 2, 0, 12, 0, 1605172823),
(26, 2, 0, 11, 0, 1605172827),
(27, 2, 0, 10, 0, 1605172831),
(28, 2, 0, 1, 2, 1605172845),
(29, 5, 0, 30, 0, 1605196435),
(30, 2, 0, 7, 2, 1605199491),
(36, 14, 0, 1, 3, 1605275550),
(37, 13, 0, 1, 3, 1605275622),
(38, 13, 0, 46, 0, 1605275626),
(39, 13, 0, 45, 0, 1605275628),
(40, 12, 0, 1, 3, 1605275663),
(41, 12, 0, 46, 0, 1605275667),
(42, 11, 0, 1, 3, 1605275732),
(43, 11, 0, 46, 0, 1605275738),
(44, 10, 0, 1, 3, 1605275778),
(45, 2, 0, 46, 0, 1605275887),
(46, 2, 0, 45, 0, 1605275893),
(47, 2, 0, 46, 0, 1605275985),
(48, 2, 0, 46, 0, 1605275998),
(49, 2, 0, 46, 0, 1605276012),
(50, 2, 0, 46, 0, 1605276023),
(51, 2, 0, 45, 0, 1605276026),
(55, 10, 0, 38, 0, 1605276359),
(56, 10, 0, 45, 0, 1605276362),
(57, 2, 0, 46, 0, 1605283540),
(59, 2, 0, 47, 0, 1605283558),
(60, 2, 0, 46, 0, 1605283574),
(61, 15, 0, 48, 0, 1605288235),
(62, 18, 0, 52, 0, 1605288722),
(63, 19, 0, 53, 0, 1605288847),
(64, 20, 0, 55, 0, 1605289039),
(66, 6, 0, 34, 0, 1605370372),
(67, 2, 0, 34, 0, 1605370467),
(68, 6, 0, 47, 0, 1605370492),
(69, 12, 0, 62, 0, 1605510749),
(70, 2, 0, 62, 0, 1605514166),
(71, 2, 0, 27, 2, 1605514209),
(72, 2, 0, 46, 0, 1605514254);

-- --------------------------------------------------------

--
-- Table structure for table `medias`
--

CREATE TABLE `medias` (
  `idmedia` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(11) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `idwriter` int(10) UNSIGNED NOT NULL COMMENT 'iduser or idpage',
  `type_writer` tinyint(1) UNSIGNED NOT NULL COMMENT '0: iduser   1: idpage',
  `posted_in` tinyint(1) UNSIGNED NOT NULL COMMENT '0: In Post   1: In Comment   2: In Album',
  `codecontainer` varchar(11) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'Code post, Code comment, Code Album',
  `idcontainer` int(10) UNSIGNED NOT NULL,
  `namefile` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `folder` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `numcomments` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `numlikes` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `typemedia` tinyint(1) UNSIGNED NOT NULL COMMENT '0: photo   1: video   2: audio',
  `width` smallint(5) UNSIGNED NOT NULL,
  `height` smallint(5) UNSIGNED NOT NULL,
  `server_media` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `url_media` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `code_media` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `medias`
--

INSERT INTO `medias` (`idmedia`, `code`, `idwriter`, `type_writer`, `posted_in`, `codecontainer`, `idcontainer`, `namefile`, `folder`, `numcomments`, `numlikes`, `typemedia`, `width`, `height`, `server_media`, `url_media`, `code_media`) VALUES
(1, 'qHPscf7q74X', 1, 0, 0, 'fNtC4G7Kfms', 1, 'fNtC4G7Kfms.jpg', 'yCWgzVQcTfH', 1, 1, 0, 399, 404, '', '', ''),
(2, '8QXkw3DhjQm', 1, 0, 0, 'Cf8RZgx9pNm', 4, 'Cf8RZgx9pNm.jpg', 'yCWgzVQcTfH', 0, 0, 0, 300, 300, '', '', ''),
(3, 's7pyjFKZ2jN', 1, 0, 0, 'fv3bSDb87MJ', 5, 'fv3bSDb87MJ.jpg', 'yCWgzVQcTfH', 0, 0, 0, 1000, 250, '', '', ''),
(4, 'wZmwqRWYV2b', 1, 0, 0, '8NpR9GVyftF', 6, '8NpR9GVyftF.jpg', 'yCWgzVQcTfH', 0, 0, 0, 800, 350, '', '', ''),
(5, 'w00ZykPxhn4', 2, 0, 0, 'VV4YNV7XW3t', 8, 'VV4YNV7XW3t.jpg', 'x0CPD0vjzBn', 0, 0, 0, 480, 480, '', '', ''),
(6, 'Kxm69MZPS7X', 2, 0, 0, 'F3ypWbMZyxh', 9, 'F3ypWbMZyxh.jpg', 'x0CPD0vjzBn', 0, 0, 0, 790, 310, '', '', ''),
(7, 'mnMQQV7D4Wn', 3, 0, 0, 'fkvwskCzJ65', 10, 'fkvwskCzJ65.jpg', 'NQPx2jNcnaV', 1, 1, 0, 399, 404, '', '', ''),
(8, 'QGwPC5zfhFz', 3, 0, 0, 'wXN8N3RDR13', 11, 'wXN8N3RDR13.jpg', 'NQPx2jNcnaV', 0, 0, 0, 822, 199, '', '', ''),
(9, 'zTwJSjZ81XN', 3, 0, 0, 'CBN0zja2tX4', 12, 'CBN0zja2tX4.jpg', 'NQPx2jNcnaV', 0, 0, 0, 728, 269, '', '', ''),
(10, 'BRHkY1qQDSZ', 3, 0, 0, 'a2dV6YFFVt7', 13, 'a2dV6YFFVt7.jpg', 'NQPx2jNcnaV', 0, 0, 0, 728, 300, '', '', ''),
(11, 'DQvppah3XJR', 2, 0, 2, 'jNvpFRjYxxt', 14, 'jNvpFRjYxxt-0.jpg', 'x0CPD0vjzBn', 3, 0, 0, 450, 321, '', '', ''),
(12, '90fHg7bV9a1', 3, 0, 0, 'gYmJyyjMzDG', 15, 'gYmJyyjMzDG-0.jpg', 'NQPx2jNcnaV', 0, 0, 0, 750, 427, '', '', ''),
(13, 'Zmz6qBTh02G', 1, 0, 0, 'Pwq23y2FdSm', 26, 'Pwq23y2FdSm.png', 'yCWgzVQcTfH', 0, 0, 0, 200, 200, '', '', ''),
(14, 't3CGhmrFKW1', 1, 0, 0, 'WB3knCDhxmK', 27, 'WB3knCDhxmK.jpg', 'yCWgzVQcTfH', 0, 0, 0, 300, 300, '', '', ''),
(15, 'kwF4bMxkr8T', 1, 0, 0, 'aZwk82KrX6r', 28, 'aZwk82KrX6r.jpg', 'yCWgzVQcTfH', 0, 0, 0, 900, 350, '', '', ''),
(16, 'zdJjDJvypSX', 1, 0, 0, 'T3N9vxBMMsS', 29, 'T3N9vxBMMsS.jpg', 'yCWgzVQcTfH', 0, 0, 0, 900, 350, '', '', ''),
(17, '0Zg8ZTBDy6G', 5, 0, 0, 'PH9Z96RJHDx', 30, 'PH9Z96RJHDx.jpg', 'SNBjNVaDfzX', 0, 0, 0, 640, 640, '', '', ''),
(18, 'NZCkQqt8MhV', 5, 0, 0, 't7TVxvx2fRJ', 31, 't7TVxvx2fRJ.jpg', 'SNBjNVaDfzX', 0, 0, 0, 850, 315, '', '', ''),
(19, 'nrHZKsdQ5cn', 5, 0, 0, 'gJdvyfzm00T', 32, 'gJdvyfzm00T.jpg', 'SNBjNVaDfzX', 0, 0, 0, 850, 325, '', '', ''),
(20, 'gv3zSR1Dgcr', 6, 0, 0, 'qTWDRd1T06M', 33, 'qTWDRd1T06M.jpg', 'wBJJgR2SMvH', 0, 0, 0, 1440, 1435, '', '', ''),
(21, 'BdKhFmm75gf', 6, 0, 0, 'm835Gds7dZT', 34, 'm835Gds7dZT.jpg', 'wBJJgR2SMvH', 0, 0, 0, 1024, 1024, '', '', ''),
(22, 'TZVnY4pNF4J', 7, 0, 0, 'DF6yBBSs9a2', 35, 'DF6yBBSs9a2.jpg', 'wGnfvDTF8zH', 0, 0, 0, 230, 219, '', '', ''),
(23, 'vyFyZjsRjRQ', 8, 0, 0, 'rSSFvyQxDwX', 36, 'rSSFvyQxDwX.jpg', 'sTjGrsHDjdH', 0, 0, 0, 225, 225, '', '', ''),
(24, 'f60tTDDm89s', 9, 0, 0, '4J9dcY3rwzY', 37, '4J9dcY3rwzY.jpg', 'aRMxx3cwBwd', 0, 0, 0, 612, 407, '', '', ''),
(25, 'ZC7FzwfaTWK', 10, 0, 0, 'GDb22HtT4KD', 38, 'GDb22HtT4KD.jpg', 'q5bXa8Wz1St', 0, 0, 0, 610, 813, '', '', ''),
(26, 'ck7qas2fsma', 11, 0, 0, 'zkXzgNc8P2R', 39, 'zkXzgNc8P2R.jpg', 'C51KgS2PywQ', 0, 0, 0, 600, 400, '', '', ''),
(27, 'KdHXngYrvt3', 12, 0, 0, '6rCKcnRPjZt', 40, '6rCKcnRPjZt.jpg', 'W8WnM5N9SzV', 1, 1, 0, 407, 612, '', '', ''),
(28, 'GSRgpNHQnhH', 13, 0, 0, 'F8NssYStsp1', 41, 'F8NssYStsp1.png', 'xvWw8mF75DY', 0, 0, 0, 633, 358, '', '', ''),
(29, 'BCBCHfGGKyX', 14, 0, 0, 'VYga4f825kP', 42, 'VYga4f825kP.jpg', 'Qv8Ymbs2PjS', 0, 0, 0, 660, 440, '', '', ''),
(30, 'Q7HdkByHgCs', 14, 0, 0, 'T8DB4Nkgb6q', 43, 'T8DB4Nkgb6q.jpg', 'Qv8Ymbs2PjS', 0, 0, 0, 1024, 1024, '', '', ''),
(31, 'Wmytk4ywrkS', 14, 0, 0, '6mghf8cr4Z9', 44, '6mghf8cr4Z9-0.jpg', 'Qv8Ymbs2PjS', 0, 0, 0, 584, 392, '', '', ''),
(32, 'zySx4k3ycHY', 1, 1, 0, 'aPqMzYJPB4Q', 45, 'aPqMzYJPB4Q.png', '7Bgv0Mb76fP', 0, 0, 0, 300, 300, '', '', ''),
(33, 'FHwFCtp8Gcq', 15, 0, 0, 'sBFNN4X2bTY', 48, 'sBFNN4X2bTY.jpg', 'xgjTKX4QvVC', 0, 0, 0, 384, 512, '', '', ''),
(34, '09sB8nKpd5J', 16, 0, 0, 'W5qTtSVF05B', 49, 'W5qTtSVF05B.jpg', 'k2PKXC8dvjr', 0, 0, 0, 233, 273, '', '', ''),
(35, 'fajvMRsbxYy', 17, 0, 0, 'ZaqvsZW7N6y', 50, 'ZaqvsZW7N6y.jpg', 'TJKZRdcSQ6r', 0, 0, 0, 326, 512, '', '', ''),
(36, 'szdCNhY7Fq1', 17, 0, 0, 'Ddjy5sqnB30', 51, 'Ddjy5sqnB30.jpg', 'TJKZRdcSQ6r', 0, 0, 0, 326, 348, '', '', ''),
(37, 'fKxhN85tmYD', 18, 0, 0, 'b2vzpF2a6N3', 52, 'b2vzpF2a6N3.jpg', 'kJbCnQYZ7XW', 0, 0, 0, 236, 353, '', '', ''),
(38, 'zdKcfwHrYfT', 19, 0, 0, '7n6dvan6aNM', 53, '7n6dvan6aNM.jpg', 'DQVJMDsV5QK', 0, 0, 0, 700, 988, '', '', ''),
(39, 'Fph78CCNjcQ', 20, 0, 0, 'x7qkD9mG9bV', 54, 'x7qkD9mG9bV.jpg', 'jn2ck6kg6mK', 0, 0, 0, 540, 527, '', '', ''),
(40, 'pQc3Qw2d3g8', 20, 0, 0, 'H93ZjfBh4mb', 55, 'H93ZjfBh4mb-0.jpg', 'jn2ck6kg6mK', 0, 0, 0, 540, 720, '', '', ''),
(41, 'pnt5s73p1Nv', 21, 0, 0, 'c5vwmgahGVw', 56, 'c5vwmgahGVw.jpg', 'gD9kpVpb7Dd', 0, 0, 0, 225, 225, '', '', ''),
(42, 'fYJMbPb1Q2a', 22, 0, 0, 'ZF7dFBjzXdW', 57, 'ZF7dFBjzXdW.jpg', 'yPZSDFpbSRp', 0, 0, 0, 168, 300, '', '', ''),
(43, 'KBctxJpBjBn', 22, 0, 0, 'aVmcf0dQSGC', 58, 'aVmcf0dQSGC.jpg', 'yPZSDFpbSRp', 0, 0, 0, 168, 177, '', '', ''),
(44, 's3sf1RnFtaF', 23, 0, 0, '5hkzSQ06nZK', 59, '5hkzSQ06nZK.jpg', 'K6ZpXcsnhKX', 0, 0, 0, 764, 954, '', '', ''),
(45, '6mgB0CxFszH', 23, 0, 0, 'P1D6Kfd0zma', 60, 'P1D6Kfd0zma.jpg', 'K6ZpXcsnhKX', 0, 0, 0, 764, 660, '', '', ''),
(46, 'hk6KTj1j4vF', 12, 0, 0, 'm32CjvZqmhv', 62, 'm32CjvZqmhv-0.jpg', 'W8WnM5N9SzV', 0, 0, 0, 450, 300, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `mentions`
--

CREATE TABLE `mentions` (
  `idmention` bigint(20) UNSIGNED NOT NULL,
  `typecontainer` tinyint(3) UNSIGNED NOT NULL COMMENT '0: in Post   1: in comment',
  `idcontainer` int(10) UNSIGNED NOT NULL COMMENT 'id post, or id comment',
  `idwriter` int(10) UNSIGNED NOT NULL COMMENT 'iduser or idpage',
  `type_writer` tinyint(1) UNSIGNED NOT NULL COMMENT '0: user    1: page',
  `iduser_mentioned` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type_notif` tinyint(1) UNSIGNED NOT NULL COMMENT '1: Follow me   2: like my post   3: Comment my post   4: Send me a message    5: Friend Request Sent   6: Confirm to Friend Request   7:Share my post   8: Write in my wall   9: Like my page   10: Send request to my group   11: Accepted request group   12: Add how member to Group   13: Like my comment   14: Like my Media   15: Comment my media',
  `result` int(10) UNSIGNED NOT NULL COMMENT 'idcomment   or   idlike   or   idpost shared   or   idpost in other wall',
  `from_user` int(10) UNSIGNED NOT NULL,
  `from_user_type` tinyint(3) UNSIGNED NOT NULL COMMENT '0: user   1: page   2: group',
  `to_user` int(10) UNSIGNED NOT NULL,
  `iditem_notif` int(10) UNSIGNED NOT NULL COMMENT 'idpost or idalbum or idpage or idgroup or idcomment or idmedia',
  `typeitem_notif` tinyint(1) UNSIGNED NOT NULL COMMENT '1: Post   2: Album   3: Page   4: Group   5: Comment   6: Media',
  `whendate` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type_notif`, `result`, `from_user`, `from_user_type`, `to_user`, `iditem_notif`, `typeitem_notif`, `whendate`) VALUES
(2, 6, 0, 2, 0, 3, 0, 0, 1605158806),
(3, 1, 0, 2, 0, 3, 0, 0, 1605158806),
(4, 1, 0, 3, 0, 2, 0, 0, 1605158806),
(5, 2, 6, 2, 0, 3, 13, 1, 1605158820),
(6, 3, 3, 2, 0, 3, 13, 1, 1605158836),
(7, 2, 8, 2, 0, 1, 1, 1, 1605159203),
(8, 2, 9, 2, 0, 1, 3, 1, 1605159205),
(32, 2, 53, 2, 0, 3, 15, 1, 1605276140),
(11, 6, 0, 4, 0, 2, 0, 0, 1605163056),
(12, 1, 0, 4, 0, 2, 0, 0, 1605163056),
(13, 1, 0, 2, 0, 4, 0, 0, 1605163056),
(14, 2, 25, 2, 0, 3, 12, 1, 1605172823),
(15, 2, 26, 2, 0, 3, 11, 1, 1605172827),
(16, 2, 27, 2, 0, 3, 10, 1, 1605172831),
(17, 14, 28, 2, 0, 1, 1, 6, 1605172845),
(18, 15, 7, 2, 0, 1, 1, 6, 1605172857),
(19, 14, 30, 2, 0, 3, 7, 6, 1605199491),
(41, 6, 0, 6, 0, 2, 0, 0, 1605370481),
(21, 9, 36, 14, 0, 2, 1, 3, 1605275550),
(22, 9, 37, 13, 0, 2, 1, 3, 1605275622),
(23, 2, 38, 13, 0, 2, 46, 1, 1605275626),
(24, 2, 39, 13, 0, 2, 45, 1, 1605275628),
(25, 9, 40, 12, 0, 2, 1, 3, 1605275663),
(26, 2, 41, 12, 0, 2, 46, 1, 1605275667),
(27, 3, 9, 12, 0, 2, 46, 1, 1605275697),
(28, 9, 42, 11, 0, 2, 1, 3, 1605275732),
(29, 2, 43, 11, 0, 2, 46, 1, 1605275738),
(30, 3, 10, 11, 0, 2, 46, 1, 1605275744),
(31, 9, 44, 10, 0, 2, 1, 3, 1605275778),
(33, 5, 0, 10, 0, 13, 0, 0, 1605276304),
(34, 5, 0, 10, 0, 5, 0, 0, 1605276312),
(35, 5, 0, 10, 0, 9, 0, 0, 1605276323),
(36, 5, 0, 10, 0, 7, 0, 0, 1605276330),
(37, 5, 0, 10, 0, 8, 0, 0, 1605276342),
(38, 2, 56, 10, 0, 2, 45, 1, 1605276362),
(39, 15, 12, 2, 0, 3, 7, 6, 1605283500),
(40, 2, 67, 2, 0, 6, 34, 1, 1605370467),
(42, 1, 0, 6, 0, 2, 0, 0, 1605370481),
(43, 1, 0, 2, 0, 6, 0, 0, 1605370481),
(44, 2, 68, 6, 0, 2, 47, 1, 1605370492),
(45, 5, 0, 12, 0, 11, 0, 0, 1605510896),
(46, 5, 0, 2, 0, 18, 0, 0, 1605514036),
(47, 5, 0, 2, 0, 11, 0, 0, 1605514044),
(48, 5, 0, 2, 0, 21, 0, 0, 1605514052),
(49, 5, 0, 2, 0, 5, 0, 0, 1605514059),
(50, 5, 0, 2, 0, 22, 0, 0, 1605514064),
(51, 5, 0, 2, 0, 19, 0, 0, 1605514087),
(52, 5, 0, 2, 0, 14, 0, 0, 1605514093),
(53, 5, 0, 2, 0, 17, 0, 0, 1605514101),
(56, 6, 0, 12, 0, 2, 0, 0, 1605514146),
(55, 5, 0, 2, 0, 20, 0, 0, 1605514116),
(57, 1, 0, 12, 0, 2, 0, 0, 1605514146),
(58, 1, 0, 2, 0, 12, 0, 0, 1605514146),
(59, 2, 70, 2, 0, 12, 62, 1, 1605514166),
(60, 14, 71, 2, 0, 12, 27, 6, 1605514209),
(61, 15, 13, 2, 0, 12, 27, 6, 1605514213),
(62, 5, 0, 2, 0, 13, 0, 0, 1605514244),
(63, 5, 0, 2, 0, 23, 0, 0, 1605514334);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `idpage` int(10) UNSIGNED NOT NULL,
  `code` varchar(11) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `idcat` int(10) UNSIGNED NOT NULL,
  `idsubcat` int(10) UNSIGNED NOT NULL,
  `idcreator` int(10) UNSIGNED NOT NULL,
  `puname` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `avatar` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `avatar_media` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `cover` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `cover_media` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `cover_position` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `numlikes` int(10) UNSIGNED NOT NULL,
  `numfollowers` int(10) UNSIGNED NOT NULL,
  `verified` tinyint(1) UNSIGNED NOT NULL,
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `created` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`idpage`, `code`, `idcat`, `idsubcat`, `idcreator`, `puname`, `title`, `description`, `avatar`, `avatar_media`, `cover`, `cover_media`, `cover_position`, `numlikes`, `numfollowers`, `verified`, `status`, `created`) VALUES
(1, '7Bgv0Mb76fP', 5, 153, 2, 'bdnews24', 'BD News 24', 'BD News Best Online Newspaper in Bangladesh.', 'hHnjY-M09Zrk-19MNhH7.png', 'zySx4k3ycHY', '', '', '0', 6, 6, 1, 1, 1605275218);

-- --------------------------------------------------------

--
-- Table structure for table `pages_admin`
--

CREATE TABLE `pages_admin` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `idpage` bigint(20) UNSIGNED NOT NULL,
  `iduser` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages_cat`
--

CREATE TABLE `pages_cat` (
  `idcategory` int(10) UNSIGNED NOT NULL,
  `idfather` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `num_children` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `pages_cat`
--

INSERT INTO `pages_cat` (`idcategory`, `idfather`, `name`, `num_children`) VALUES
(1, 0, 'Cause or Community', 41),
(2, 0, 'Company, Organization or Institution', 38),
(3, 0, 'Brand or Product', 34),
(4, 0, 'Artist, Band or Public Figure', 25),
(5, 0, 'Entertainment', 28),
(6, 4, 'Actor/Director', 0),
(7, 4, 'Artist', 0),
(8, 4, 'Athlete', 0),
(9, 4, 'Author', 0),
(10, 4, 'Business Person', 0),
(11, 4, 'Chef', 0),
(12, 4, 'Coach', 0),
(13, 4, 'Comedian', 0),
(14, 4, 'Dancer', 0),
(15, 4, 'Designer', 0),
(16, 4, 'Entertainer', 0),
(17, 4, 'Entrepreneur', 0),
(18, 4, 'Fictional Character', 0),
(19, 4, 'Government Official', 0),
(20, 4, 'Journalist', 0),
(21, 4, 'Movie Character', 0),
(22, 4, 'Musician/Band', 0),
(23, 4, 'News Personality', 0),
(24, 4, 'Pet', 0),
(25, 4, 'Photographer', 0),
(26, 4, 'Politician', 0),
(27, 4, 'Producer', 0),
(28, 4, 'Public Figure', 0),
(29, 4, 'Teacher', 0),
(30, 4, 'Writer', 0),
(31, 3, 'App Page', 0),
(32, 3, 'Appliances', 0),
(33, 3, 'Baby Goods/Kids Goods', 0),
(34, 3, 'Bags/Luggage', 0),
(35, 3, 'Board Game', 0),
(36, 3, 'Building Materials', 0),
(37, 3, 'Camera/Photo', 0),
(38, 3, 'Cars', 0),
(39, 3, 'Clothing', 0),
(40, 3, 'Commercial Equipment', 0),
(41, 3, 'Computers', 0),
(42, 3, 'Drugs', 0),
(43, 3, 'Electronics', 0),
(44, 3, 'Food/Beverages', 0),
(45, 3, 'Furniture', 0),
(46, 3, 'Games/Toys', 0),
(47, 3, 'Health/Beauty', 0),
(48, 3, 'Home Decor', 0),
(49, 3, 'Household Supplies', 0),
(50, 3, 'Jewelry/Watches', 0),
(51, 3, 'Kitchen/Cooking', 0),
(52, 3, 'Office Supplies', 0),
(53, 3, 'Outdoor Gear/Sporting Goods', 0),
(54, 3, 'Patio/Garden', 0),
(55, 3, 'Pet Supplies', 0),
(56, 3, 'Phone/Tablet', 0),
(57, 3, 'Product/Service', 0),
(58, 3, 'Software', 0),
(59, 3, 'Tools/Equipment', 0),
(60, 3, 'Video Game', 0),
(61, 3, 'Vitamins/Supplements', 0),
(62, 3, 'Website', 0),
(63, 3, 'Wine/Spirits', 0),
(64, 3, 'Sportswear', 0),
(65, 1, 'Airport', 0),
(66, 1, 'Arts/Entertainment/Nightlife', 0),
(67, 1, 'Attractions/Things to Do', 0),
(68, 1, 'Automotive', 0),
(69, 1, 'Bank/Financial Services', 0),
(70, 1, 'Bar', 0),
(71, 1, 'Book Store', 0),
(72, 1, 'Business Services', 0),
(73, 1, 'Church/Religious Organization', 0),
(74, 1, 'Club', 0),
(75, 1, 'Community/Government', 0),
(76, 1, 'Concert Venue', 0),
(77, 1, 'Doctor', 0),
(78, 1, 'Education', 0),
(79, 1, 'Event Planning/Event Services', 0),
(80, 1, 'Food/Grocery', 0),
(81, 1, 'Health/Medical/Pharmacy', 0),
(82, 1, 'Home Improvement', 0),
(83, 1, 'Hospital/Clinic', 0),
(84, 1, 'Hotel', 0),
(85, 1, 'Landmark', 0),
(86, 1, 'Lawyer', 0),
(87, 1, 'Library', 0),
(88, 1, 'Local Business', 0),
(89, 1, 'Middle School', 0),
(90, 1, 'Movie Theater', 0),
(91, 1, 'Museum/Art Gallery', 0),
(92, 1, 'Outdoor Gear/Sporting Goods', 0),
(93, 1, 'Pet Services', 0),
(94, 1, 'Professional Services', 0),
(95, 1, 'Public Places', 0),
(96, 1, 'Real Estate', 0),
(97, 1, 'Restaurant/Cafe', 0),
(98, 1, 'School', 0),
(99, 1, 'Shopping/Retail', 0),
(100, 1, 'Spas/Beauty/Personal Care', 0),
(101, 1, 'Sports Venue', 0),
(102, 1, 'Sports/Recreation/Activities', 0),
(103, 1, 'Tours/Sightseeing', 0),
(104, 1, 'Transportation', 0),
(105, 1, 'University', 0),
(106, 2, 'Aerospace/Defense', 0),
(107, 2, 'Automobiles and Parts', 0),
(108, 2, 'Bank/Financial Institution', 0),
(109, 2, 'Biotechnology', 0),
(110, 2, 'Cause', 0),
(111, 2, 'Chemicals', 0),
(112, 2, 'Church/Religious Organization', 0),
(113, 2, 'Community Organization', 0),
(114, 2, 'Company', 0),
(115, 2, 'Computers/Technology', 0),
(116, 2, 'Consulting/Business Services', 0),
(117, 2, 'Education', 0),
(118, 2, 'Energy/Utility', 0),
(119, 2, 'Engineering/Construction', 0),
(120, 2, 'Farming/Agriculture', 0),
(121, 2, 'Food/Beverages', 0),
(122, 2, 'Government Organization', 0),
(123, 2, 'Health/Beauty', 0),
(124, 2, 'Health/Medical/Pharmaceuticals', 0),
(125, 2, 'Industrials', 0),
(126, 2, 'Insurance Company', 0),
(127, 2, 'Internet/Software', 0),
(128, 2, 'Legal/Law', 0),
(129, 2, 'Media/News/Publishing', 0),
(130, 2, 'Middle School', 0),
(131, 2, 'Mining/Materials', 0),
(132, 2, 'Non-Governmental Organization (NGO)', 0),
(133, 2, 'Non-Profit Organization', 0),
(134, 2, 'Organization', 0),
(135, 2, 'Political Organization', 0),
(136, 2, 'Political Party', 0),
(137, 2, 'Retail and Consumer Merchandise', 0),
(138, 2, 'School', 0),
(139, 2, 'Small Business', 0),
(140, 2, 'Telecommunication', 0),
(141, 2, 'Transport/Freight', 0),
(142, 2, 'Travel/Leisure', 0),
(143, 2, 'University', 0),
(144, 5, 'Album', 0),
(145, 5, 'Amateur Sports Team', 0),
(146, 5, 'Book', 0),
(147, 5, 'Book Series', 0),
(148, 5, 'Book Store', 0),
(149, 5, 'Concert Tour', 0),
(150, 5, 'Concert Venue', 0),
(151, 5, 'Fictional Character', 0),
(152, 5, 'Library', 0),
(153, 5, 'Magazine', 0),
(154, 5, 'Movie', 0),
(155, 5, 'Movie Character', 0),
(156, 5, 'Movie Theater', 0),
(157, 5, 'Music Award', 0),
(158, 5, 'Music Chart', 0),
(159, 5, 'Music Video', 0),
(160, 5, 'Radio Station', 0),
(161, 5, 'Record Label', 0),
(162, 5, 'School Sports Team', 0),
(163, 5, 'Song', 0),
(164, 5, 'Sports League', 0),
(165, 5, 'Sports Team', 0),
(166, 5, 'Sports Venue', 0),
(167, 5, 'Studio', 0),
(168, 5, 'TV Channel', 0),
(169, 5, 'TV Network', 0),
(170, 5, 'TV Show', 0),
(171, 5, 'TV/Movie Award', 0);

-- --------------------------------------------------------

--
-- Table structure for table `pay_settings`
--

CREATE TABLE `pay_settings` (
  `id` int(11) NOT NULL,
  `views_credit` int(11) NOT NULL,
  `refer_credit` int(11) NOT NULL,
  `min_payout` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pay_settings`
--

INSERT INTO `pay_settings` (`id`, `views_credit`, `refer_credit`, `min_payout`) VALUES
(1, 100, 44000, 20);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `idpost` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(11) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `idwriter` int(10) UNSIGNED NOT NULL COMMENT 'iduser or idpage',
  `type_writer` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '0: user    1: page',
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `typepost` tinyint(3) UNSIGNED NOT NULL COMMENT '0: post   1: photo   2: video   3: audio   4: album   5: cover   6: avatar   7: event   8: share   9: embed link   10: embed media   11: article   12: product',
  `moreinfo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `posted_in` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT '0: profile   1: page   2: group   3: event',
  `id_wall` int(10) UNSIGNED NOT NULL COMMENT 'id user,  id page,  id group, id event',
  `idmedia` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'id video or id audio',
  `idembed` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `idactivity` bigint(20) UNSIGNED NOT NULL,
  `for_who` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT '0: Public   1: Friends   2: Me',
  `numcomments` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `numlikes` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `numshares` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `with_users` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `feeling` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `location_in` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `post_date` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`idpost`, `code`, `idwriter`, `type_writer`, `message`, `typepost`, `moreinfo`, `posted_in`, `id_wall`, `idmedia`, `idembed`, `idactivity`, `for_who`, `numcomments`, `numlikes`, `numshares`, `with_users`, `feeling`, `location_in`, `post_date`) VALUES
(1, 'fNtC4G7Kfms', 1, 0, '', 6, '', 0, 1, 0, 0, 1, 0, 0, 2, 0, '', '', '', 1605156758),
(3, 'aWazThzKNpP', 1, 0, '', 9, '', 0, 1, 0, 1, 3, 1, 0, 2, 0, '', '', '', 1605156802),
(4, 'Cf8RZgx9pNm', 1, 0, '', 6, '', 0, 1, 0, 0, 4, 0, 0, 1, 0, '', '', '', 1605157350),
(5, 'fv3bSDb87MJ', 1, 0, '', 5, '', 0, 1, 0, 0, 5, 0, 0, 1, 0, '', '', '', 1605157391),
(6, '8NpR9GVyftF', 1, 0, '', 5, '', 0, 1, 0, 0, 6, 0, 0, 1, 0, '', '', '', 1605157459),
(10, 'fkvwskCzJ65', 3, 0, '', 6, '', 0, 3, 0, 0, 11, 0, 0, 1, 0, '', '', '', 1605158595),
(8, 'VV4YNV7XW3t', 2, 0, '', 6, '', 0, 2, 0, 0, 8, 0, 0, 1, 0, '', '', '', 1605157723),
(9, 'F3ypWbMZyxh', 2, 0, '', 5, '', 0, 2, 0, 0, 9, 0, 2, 1, 0, '', '', '', 1605157744),
(11, 'wXN8N3RDR13', 3, 0, '', 5, '', 0, 3, 0, 0, 12, 0, 0, 1, 0, '', '', '', 1605158655),
(12, 'CBN0zja2tX4', 3, 0, '', 5, '', 0, 3, 0, 0, 13, 0, 0, 1, 0, '', '', '', 1605158667),
(13, 'a2dV6YFFVt7', 3, 0, '', 5, '', 0, 3, 0, 0, 14, 0, 1, 2, 0, '', '', '', 1605158738),
(14, 'S1j9BtNnjN7', 2, 0, 'All my photo', 4, '', 0, 2, 0, 0, 16, 0, 0, 1, 0, '', '', '', 1605159165),
(15, 'gYmJyyjMzDG', 3, 0, '', 1, '', 0, 3, 0, 0, 17, 1, 0, 1, 0, '', 'sad', '', 1605160283),
(16, 'fKgZtBFsz4j', 2, 0, '', 11, '', 0, 2, 0, 0, 18, 0, 0, 1, 0, '', '', '', 1605161185),
(34, 'm835Gds7dZT', 6, 0, '', 5, '', 0, 6, 0, 0, 37, 0, 0, 2, 0, '', '', '', 1605265702),
(21, 'cpQT8ZZdJKa', 2, 0, '', 10, '', 0, 2, 0, 6, 23, 1, 0, 0, 0, '', '', '', 1605162812),
(36, 'rSSFvyQxDwX', 8, 0, '', 6, '', 0, 8, 0, 0, 39, 0, 0, 0, 0, '', '', '', 1605274243),
(37, '4J9dcY3rwzY', 9, 0, '', 6, '', 0, 9, 0, 0, 40, 0, 0, 0, 0, '', '', '', 1605274323),
(25, 'zy9C4FtVR5k', 2, 0, '', 10, '', 0, 2, 0, 10, 27, 0, 1, 1, 0, '', '', '', 1605162955),
(26, 'Pwq23y2FdSm', 1, 0, '', 6, '', 0, 1, 0, 0, 28, 0, 0, 1, 0, '', '', '', 1605167066),
(27, 'WB3knCDhxmK', 1, 0, '', 6, '', 0, 1, 0, 0, 29, 0, 0, 1, 0, '', '', '', 1605167104),
(28, 'aZwk82KrX6r', 1, 0, '', 5, '', 0, 1, 0, 0, 30, 0, 0, 1, 0, '', '', '', 1605167282),
(29, 'T3N9vxBMMsS', 1, 0, '', 5, '', 0, 1, 0, 0, 31, 0, 0, 1, 0, '', '', '', 1605167496),
(38, 'GDb22HtT4KD', 10, 0, '', 6, '', 0, 10, 0, 0, 41, 0, 0, 1, 0, '', '', '', 1605274432),
(35, 'DF6yBBSs9a2', 7, 0, '', 6, '', 0, 7, 0, 0, 38, 0, 0, 0, 0, '', '', '', 1605274124),
(33, 'qTWDRd1T06M', 6, 0, '', 6, '', 0, 6, 0, 0, 36, 0, 0, 0, 0, '', '', '', 1605265664),
(30, 'PH9Z96RJHDx', 5, 0, '', 6, '', 0, 5, 0, 0, 32, 0, 0, 1, 0, '', '', '', 1605195705),
(31, 't7TVxvx2fRJ', 5, 0, '', 5, '', 0, 5, 0, 0, 33, 0, 0, 0, 0, '', '', '', 1605195770),
(32, 'gJdvyfzm00T', 5, 0, '', 5, '', 0, 5, 0, 0, 34, 0, 1, 0, 0, '', '', '', 1605195845),
(39, 'zkXzgNc8P2R', 11, 0, '', 6, '', 0, 11, 0, 0, 42, 0, 0, 0, 0, '', '', '', 1605274561),
(40, '6rCKcnRPjZt', 12, 0, '', 6, '', 0, 12, 0, 0, 43, 0, 0, 1, 0, '', '', '', 1605274651),
(41, 'F8NssYStsp1', 13, 0, '', 6, '', 0, 13, 0, 0, 44, 0, 0, 1, 0, '', '', '', 1605274824),
(42, 'VYga4f825kP', 14, 0, '', 6, '', 0, 14, 0, 0, 45, 0, 0, 1, 0, '', '', '', 1605274922),
(43, 'T8DB4Nkgb6q', 14, 0, '', 5, '', 0, 14, 0, 0, 46, 0, 0, 1, 0, '', '', '', 1605274938),
(44, '6mghf8cr4Z9', 14, 0, 'School', 1, '', 0, 14, 0, 0, 47, 1, 0, 0, 0, '', '', '', 1605274993),
(45, 'aPqMzYJPB4Q', 1, 1, '', 6, '', 1, 1, 0, 0, 48, 0, 0, 4, 0, '', '', '', 1605275356),
(46, 'V2XbC8hQg9M', 1, 1, '', 9, '', 1, 1, 0, 11, 49, 0, 2, 11, 0, '', '', '', 1605275407),
(47, 'NPZHqr2apSn', 2, 0, '', 11, '', 0, 2, 0, 0, 50, 0, 0, 2, 0, '', '', '', 1605280735),
(48, 'sBFNN4X2bTY', 15, 0, '', 6, '', 0, 15, 0, 0, 51, 0, 0, 1, 0, '', '', '', 1605288225),
(49, 'W5qTtSVF05B', 16, 0, '', 6, '', 0, 16, 0, 0, 52, 0, 0, 0, 0, '', '', '', 1605288383),
(50, 'ZaqvsZW7N6y', 17, 0, '', 6, '', 0, 17, 0, 0, 53, 0, 0, 0, 0, '', '', '', 1605288473),
(51, 'Ddjy5sqnB30', 17, 0, '', 6, '', 0, 17, 0, 0, 54, 0, 0, 0, 0, '', '', '', 1605288514),
(52, 'b2vzpF2a6N3', 18, 0, '', 6, '', 0, 18, 0, 0, 55, 0, 0, 1, 0, '', '', '', 1605288710),
(53, '7n6dvan6aNM', 19, 0, '', 6, '', 0, 19, 0, 0, 56, 0, 0, 1, 0, '', '', '', 1605288834),
(54, 'x7qkD9mG9bV', 20, 0, '', 6, '', 0, 20, 0, 0, 57, 0, 0, 0, 0, '', '', '', 1605289012),
(55, 'H93ZjfBh4mb', 20, 0, 'Hello friend', 1, '', 0, 20, 0, 0, 58, 1, 0, 1, 0, '', '', '', 1605289028),
(56, 'c5vwmgahGVw', 21, 0, '', 6, '', 0, 21, 0, 0, 59, 0, 0, 0, 0, '', '', '', 1605290095),
(57, 'ZF7dFBjzXdW', 22, 0, '', 6, '', 0, 22, 0, 0, 60, 0, 0, 0, 0, '', '', '', 1605290208),
(58, 'aVmcf0dQSGC', 22, 0, '', 6, '', 0, 22, 0, 0, 61, 0, 0, 0, 0, '', '', '', 1605290256),
(59, '5hkzSQ06nZK', 23, 0, '', 6, '', 0, 23, 0, 0, 62, 0, 0, 0, 0, '', '', '', 1605290396),
(60, 'P1D6Kfd0zma', 23, 0, '', 6, '', 0, 23, 0, 0, 63, 0, 0, 0, 0, '', '', '', 1605290455),
(62, 'm32CjvZqmhv', 12, 0, '', 1, '', 0, 12, 0, 0, 65, 1, 0, 2, 0, '', 'Mairala', '', 1605510741),
(63, 'vGsVZ3BwmHs', 6, 0, 'cwecwecwecwec', 0, '', 0, 6, 0, 0, 66, 1, 0, 0, 0, '', '', '', 1606513230),
(64, 'FY5JaCsxQ6F', 6, 0, '', 11, '', 0, 6, 0, 0, 67, 0, 0, 0, 0, '', '', '', 1606570112),
(65, 'BqfmTRQBTZ7', 6, 0, '', 11, '', 0, 6, 0, 0, 68, 0, 0, 0, 0, '', '', '', 1606582366),
(66, 'x49yaXb5h7v', 6, 0, 'wrewrwerewr', 0, '', 0, 6, 0, 0, 69, 1, 0, 0, 0, '', '', '', 1607092870),
(67, 'JWrW6JZ05za', 6, 0, 'werwerwerwerwerwerwererwerwerwrwwerwe rwerwerwer', 0, '', 0, 6, 0, 0, 70, 1, 0, 0, 0, '', '', '', 1607092877),
(68, 'XRGTBQQXm98', 6, 0, 'রাজশাহীর বেসরকারি শাহ মখদুম মেডিকেল কলেজ কর্তৃপক্ষ শিক্ষার্থীদের কাগজপত্র দেয়নি। এ কারণে ওই কলেজের ডিনি শিক্ষার্থী স্থানান্তর হয়ে যেসব কলেজে ভর্তি হয়েছেন সেসব কলেজকে অনুরোধ জানিয়েছেন।রাজশাহীর বেসরকারি শাহ মখদুম মেডিকেল কলেজ কর্তৃপক্ষ শিক্ষার্থীদের কাগজপত্র দেয়নি। এ কারণে ওই কলেজের ডিনি শিক্ষার্থী স্থানান্তর হয়ে যেসব কলেজে ভর্তি হয়েছেন সেসব কলেজকে অনুরোধ জানিয়েছেন।রাজশাহীর বেসরকারি শাহ মখদুম মেডিকেল কলেজ কর্তৃপক্ষ শিক্ষার্থীদের কাগজপত্র দেয়নি। এ কারণে ওই কলেজের ডিনি শিক্ষার্থী স্থানান্তর হয়ে যেসব কলেজে ভর্তি হয়েছেন সেসব কলেজকে অনুরোধ জানিয়েছেন।রাজশাহীর বেসরকারি শাহ মখদুম মেডিকেল কলেজ কর্তৃপক্ষ শিক্ষার্থীদের কাগজপত্র দেয়নি। এ কারণে ওই কলেজের ডিনি শিক্ষার্থী স্থানান্তর হয়ে যেসব কলেজে ভর্তি হয়েছেন সেসব কলেজকে অনুরোধ জানিয়েছেন।রাজশাহীর বেসরকারি শাহ মখদুম মেডিকেল কলেজ কর্তৃপক্ষ শিক্ষার্থীদের কাগজপত্র দেয়নি। এ কারণে ওই কলেজের ডিনি শিক্ষার্থী স্থানান্তর হয়ে যেসব কলেজে ভর্তি হয়েছেন সেসব কলেজকে অনুরোধ জানিয়েছেন।রাজশাহীর বেসরকারি শাহ মখদুম মেডিকেল কলেজ কর্তৃপক্ষ শিক্ষার্থীদের কাগজপত্র দেয়নি। এ কারণে ওই কলেজের ডিনি শিক্ষার্থী স্থানান্তর হয়ে যেসব কলেজে ভর্তি হয়েছেন সেসব কলেজকে অনুরোধ জানিয়েছেন।রাজশাহীর বেসরকারি শাহ মখদুম মেডিকেল কলেজ কর্তৃপক্ষ শিক্ষার্থীদের কাগজপত্র দেয়নি। এ কারণে ওই কলেজের ডিনি শিক্ষার্থী স্থানান্তর হয়ে যেসব কলেজে ভর্তি হয়েছেন সেসব কলেজকে অনুরোধ জানিয়েছেন।রাজশাহীর বেসরকারি শাহ মখদুম মেডিকেল কলেজ কর্তৃপক্ষ শিক্ষার্থীদের কাগজপত্র দেয়নি। এ কারণে ওই কলেজের ডিনি শিক্ষার্থী স্থানান্তর হয়ে যেসব কলেজে ভর্তি হয়েছেন সেসব কলেজকে অনুরোধ জানিয়েছেন।রাজশাহীর বেসরকারি শাহ মখদুম মেডিকেল কলেজ কর্তৃপক্ষ শিক্ষার্থীদের কাগজপত্র দেয়নি। এ কারণে ওই কলেজের ডিনি শিক্ষার্থী স্থানান্তর হয়ে যেসব কলেজে ভর্তি হয়েছেন সেসব কলেজকে অনুরোধ জানিয়েছেন।রাজশাহীর বেসরকারি শাহ মখদুম মেডিকেল কলেজ কর্তৃপক্ষ শিক্ষার্থীদের কাগজপত্র দেয়নি। এ কারণে ওই কলেজের ডিনি শিক্ষার্থী স্থানান্তর হয়ে যেসব কলেজে ভর্তি হয়েছেন সেসব কলেজকে অনুরোধ জানিয়েছেন।রাজশাহীর বেসরকারি শাহ মখদুম মেডিকেল কলেজ কর্তৃপক্ষ শিক্ষার্থীদের কাগজপত্র দেয়নি। এ কারণে ওই কলেজের ডিনি শিক্ষার্থী স্থানান্তর হয়ে যেসব কলেজে ভর্তি হয়েছেন সেসব কলেজকে অনুরোধ জানিয়েছেন।রাজশাহীর বেসরকারি শাহ মখদুম মেডিকেল কলেজ কর্তৃপক্ষ শিক্ষার্থীদের কাগজপত্র দেয়নি। এ কারণে ওই কলেজের ডিনি শিক্ষার্থী স্থানান্তর হয়ে যেসব কলেজে ভর্তি হয়েছেন সেসব কলেজকে অনুরোধ জানিয়েছেন।রাজশাহীর বেসরকারি শাহ মখদুম মেডিকেল কলেজ কর্তৃপক্ষ শিক্ষার্থীদের কাগজপত্র দেয়নি। এ কারণে ওই কলেজের ডিনি শিক্ষার্থী স্থানান্তর হয়ে যেসব কলেজে ভর্তি হয়েছেন সেসব কলেজকে অনুরোধ জানিয়েছেন।রাজশাহীর বেসরকারি শাহ মখদুম মেডিকেল কলেজ কর্তৃপক্ষ শিক্ষার্থীদের কাগজপত্র দেয়নি। এ কারণে ওই কলেজের ডিনি শিক্ষার্থী স্থানান্তর হয়ে যেসব কলেজে ভর্তি হয়েছেন সেসব কলেজকে অনুরোধ জানিয়েছেন।রাজশাহীর বেসরকারি শাহ মখদুম মেডিকেল কলেজ কর্তৃপক্ষ শিক্ষার্থীদের কাগজপত্র দেয়নি। এ কারণে ওই কলেজের ডিনি শিক্ষার্থী স্থানান্তর হয়ে যেসব কলেজে ভর্তি হয়েছেন সেসব কলেজকে অনুরোধ জানিয়েছেন।', 0, '', 0, 6, 0, 0, 71, 1, 0, 0, 0, '', '', '', 1610467955),
(69, 'Qy18xySzPWM', 6, 0, '', 11, '', 0, 6, 0, 0, 72, 0, 0, 0, 0, '', '', '', 1611218733);

-- --------------------------------------------------------

--
-- Table structure for table `posts_embed`
--

CREATE TABLE `posts_embed` (
  `idembed` int(10) UNSIGNED NOT NULL,
  `type_embed` tinyint(3) UNSIGNED NOT NULL COMMENT '1: link   2: media',
  `e_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `e_host` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `e_provider` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `e_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `e_title` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `e_text` text COLLATE utf8_unicode_ci NOT NULL,
  `e_thumbnail` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `e_html` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `posts_embed`
--

INSERT INTO `posts_embed` (`idembed`, `type_embed`, `e_url`, `e_host`, `e_provider`, `e_type`, `e_title`, `e_text`, `e_thumbnail`, `e_html`) VALUES
(1, 1, 'https://youtu.be/f9T1QM5PG4M', 'youtu.be', '', 'link', 'Adaalat - Full Episode 168 - 25th June, 2018', 'Subscribe to Sony Pal: http://www.youtube.com/sonypalindia Watch More Adaalat Episodes:https://www.youtube.com/playlist?list=PLfyXOEyr93G2ulzaI9Y7Zq6rY3psTs9...', 'https://i.ytimg.com/vi/f9T1QM5PG4M/maxresdefault.jpg', ''),
(11, 1, 'https://bangla.bdnews24.com/sport/article1826430.bdnews', 'bangla.bdnews24.com', '', 'link', 'ভিএআরের কড়া সমালোচনায় আর্জেন্টিনা কোচ', 'বিশ্বকাপ বাছাইয়ে প্যারাগুয়ের বিপক্ষে ম্যাচ শেষে ভিডিও অ্যাসিসট্যান্ট রেফারির (ভিএআর) ব্যবহার নিয়ে কড়া সমালোচনা করেছেন লিওনেল স্কালোনি। রেফারির বেশ কয়েকটি সিদ্ধান্তে ক্ষোভ প্রকাশ করে আর্জেন্টিনা কোচ বলেছেন, এমন ফুটবল কেউ পছন্দ করে না।', 'https://d30fl32nd2baj9.cloudfront.net/media/2020/11/13/var-131120-01.jpg/ALTERNATES/w640/var-131120-01.jpg', ''),
(6, 2, 'https://deshdorpon.com/%e0%a6%b0%e0%a6%be%e0%a7%9f%e0%a6%b9%e0%a6%be%e0%a6%a8-%e0%a6%b9%e0%a6%a4%e0%a7%8d%e0%a6%af%e0%a6%be%e0%a6%b0-%e0%a6%ae%e0%a7%82%e0%a6%b2-%e0%a6%86%e0%a6%b8%e0%a6%be%e0%a6%ae%e0%a6%bf-%e0%a6%8f/', '', 'Deshdorpon', 'rich', 'রায়হান হত্যার মূল আসামি এসআই আকবর গ্রেপ্তার - Deshdorpon', 'সিলেট নগরের বন্দরবাজার পুলিশ ফাঁড়িতে ‘নির্যাতনে’ রায়হান হত্যার ঘটনার মূল অভিযুক্ত পুলিশের বহিস্কৃত উপ পরিদর্শক (এসআই) আকবর হোসেন ভূইয়াকতে গ্রেপ্তার করেছে পুলিশ। আজ সোমবার (৯ নভেম্বর দুপুরে সিলেটের কানাইঘাট উপজেলার লক্ষীপ্রসাদ ইউনিয়নের সীমান্ত এলাকা থেকে তাকে গ্রেপ্তার করা হয়। বিষয়টি নিশ্চিত করেছেন সিলেট জেলা পুলিশের সহকারি পুলিশ সুপার (কানাইঘাট সার্কেল) আব্দুল করিম।। আকবর ভারতের মেঘালয় [&hellip;]', '', '<blockquote class=\"wp-embedded-content\"><a href=\"https://deshdorpon.com/%e0%a6%b0%e0%a6%be%e0%a7%9f%e0%a6%b9%e0%a6%be%e0%a6%a8-%e0%a6%b9%e0%a6%a4%e0%a7%8d%e0%a6%af%e0%a6%be%e0%a6%b0-%e0%a6%ae%e0%a7%82%e0%a6%b2-%e0%a6%86%e0%a6%b8%e0%a6%be%e0%a6%ae%e0%a6%bf-%e0%a6%8f/\">রায়হান হত্যার মূল আসামি এসআই আকবর গ্রেপ্তার</a></blockquote>\n<scr+ipt type=\'text/javascr+ipt\'>\n<!--//--><![CDATA[//><!--\n		/*! This file is auto-generated */\n		!function(d,l){\"use strict\";var e=!1,o=!1;if(l.querySelector)if(d.addEventListener)e=!0;if(d.wp=d.wp||{},!d.wp.receiveEmbedMessage)if(d.wp.receiveEmbedMessage=function(e){var t=e.data;if(t)if(t.secret||t.message||t.value)if(!/[^a-zA-Z0-9]/.test(t.secret)){var r,a,i,s,n,o=l.querySelectorAll(\'ifr+ame[data-secret=\"\'+t.secret+\'\"]\'),c=l.querySelectorAll(\'blockquote[data-secret=\"\'+t.secret+\'\"]\');for(r=0;r<c.length;r++)c[r].style.display=\"none\";for(r=0;r<o.length;r++)if(a=o[r],e.source===a.contentWindow){if(a.removeAttribute(\"style\"),\"height\"===t.message){if(1e3<(i=parseInt(t.value,10)))i=1e3;else if(~~i<200)i=200;a.height=i}if(\"link\"===t.message)if(s=l.createElement(\"a\"),n=l.createElement(\"a\"),s.href=a.getAttribute(\"src\"),n.href=t.value,n.host===s.host)if(l.activeElement===a)d.top.location.href=t.value}}},e)d.addEventListener(\"message\",d.wp.receiveEmbedMessage,!1),l.addEventListener(\"DOMContentLoaded\",t,!1),d.addEventListener(\"load\",t,!1);function t(){if(!o){o=!0;var e,t,r,a,i=-1!==navigator.appVersion.indexOf(\"MSIE 10\"),s=!!navigator.userAgent.match(/Trident.*rv:11\\./),n=l.querySelectorAll(\"ifr+ame.wp-embedded-content\");for(t=0;t<n.length;t++){if(!(r=n[t]).getAttribute(\"data-secret\"))a=Math.random().toString(36).substr(2,10),r.src+=\"#?secret=\"+a,r.setAttribute(\"data-secret\",a);if(i||s)(e=r.cloneNode(!0)).removeAttribute(\"security\"),r.parentNode.replaceChild(e,r)}}}}(window,document);\n//--><!]]>\n</scr+ipt><ifr+ame sandbox=\"allow-scr+ipts\" security=\"restricted\" src=\"https://deshdorpon.com/%e0%a6%b0%e0%a6%be%e0%a7%9f%e0%a6%b9%e0%a6%be%e0%a6%a8-%e0%a6%b9%e0%a6%a4%e0%a7%8d%e0%a6%af%e0%a6%be%e0%a6%b0-%e0%a6%ae%e0%a7%82%e0%a6%b2-%e0%a6%86%e0%a6%b8%e0%a6%be%e0%a6%ae%e0%a6%bf-%e0%a6%8f/embed/\" width=\"600\" height=\"338\" title=\"&#8220;রায়হান হত্যার মূল আসামি এসআই আকবর গ্রেপ্তার&#8221; &#8212; Deshdorpon\" frameborder=\"0\" marginwidth=\"0\" marginheight=\"0\" scrolling=\"no\" class=\"wp-embedded-content\"></ifr+ame>'),
(10, 2, 'https://youtu.be/iyaZyOrj5LQ', '', 'YouTube', 'video', 'Best of Lagnajita Chakraborty | New Songs of Lagnajita | Top 10 of Lagnajita | Lagnajita songs', 'Collection of contemporary bengali songs of Lagnajita Chakraborty, 10 unique numbers in her inimitable voice.', '', '<ifr+ame width=\"480\" height=\"270\" src=\"https://www.youtube.com/embed/iyaZyOrj5LQ?feature=oembed\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></ifr+ame>');

-- --------------------------------------------------------

--
-- Table structure for table `posts_saved`
--

CREATE TABLE `posts_saved` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `idpost` bigint(20) UNSIGNED NOT NULL,
  `iduser` int(10) UNSIGNED NOT NULL,
  `type_save` smallint(1) UNSIGNED NOT NULL,
  `whendate` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `idproduct` int(10) UNSIGNED NOT NULL,
  `code` varchar(11) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `idsell` int(10) UNSIGNED NOT NULL,
  `idcategory` int(10) UNSIGNED NOT NULL,
  `idsubcategory` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `location` text NOT NULL,
  `currency` int(10) UNSIGNED NOT NULL,
  `price` float UNSIGNED NOT NULL,
  `type_product` tinyint(1) UNSIGNED NOT NULL,
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `idpost` bigint(20) UNSIGNED NOT NULL,
  `whendate` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `products_cat`
--

CREATE TABLE `products_cat` (
  `idcategory` int(10) UNSIGNED NOT NULL,
  `idfather` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) NOT NULL,
  `num_children` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products_cat`
--

INSERT INTO `products_cat` (`idcategory`, `idfather`, `name`, `num_children`) VALUES
(1, 0, 'Home &amp; Garden', 5),
(2, 0, 'Housing', 2),
(3, 0, 'Entertainment', 2),
(4, 0, 'Clothing &amp; Accessories', 4),
(5, 0, 'Family', 4),
(6, 0, 'Electronics', 2),
(7, 0, 'Hobbies', 4),
(8, 0, 'Vehicles &amp; Bicycles', 3),
(9, 0, 'Classifieds', 3),
(10, 9, 'Garage Sale', 0),
(11, 9, 'Miscellaneous', 0),
(12, 9, 'Services', 0),
(13, 1, 'Tools', 0),
(14, 1, 'Furniture', 0),
(15, 1, 'Garden', 0),
(16, 1, 'Appliances', 0),
(17, 1, 'Household', 0),
(18, 2, 'Property For Sale', 0),
(19, 2, 'Property Rentals', 0),
(20, 3, 'Books, Movies &amp; Music', 0),
(21, 3, 'Video Games', 0),
(22, 4, 'Jewelry &amp; Accessories', 0),
(23, 4, 'Bags &amp; Luggage', 0),
(24, 4, 'Clothing &amp; Shoes - Men', 0),
(25, 4, 'Clothing &amp; Shoes - Women', 0),
(26, 5, 'Toys &amp; Games', 0),
(27, 5, 'Baby &amp; Kids', 0),
(28, 5, 'Pet Supplies', 0),
(29, 5, 'Health &amp; Beauty', 0),
(30, 6, 'Mobile Phones', 0),
(31, 6, 'Electronics &amp; Computers', 0),
(32, 7, 'Sports &amp; Outdoors', 0),
(33, 7, 'Musical Instruments', 0),
(34, 7, 'Arts &amp; Crafts', 0),
(35, 7, 'Antiques &amp; Collectibles', 0),
(36, 8, 'Auto Parts', 0),
(37, 8, 'Bicycles', 0),
(38, 8, 'Cars, Trucks &amp; Motorcycles', 0);

-- --------------------------------------------------------

--
-- Table structure for table `products_images`
--

CREATE TABLE `products_images` (
  `id` int(10) UNSIGNED NOT NULL,
  `idproduct` int(10) UNSIGNED NOT NULL,
  `photo` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `recent_searches`
--

CREATE TABLE `recent_searches` (
  `id` int(10) UNSIGNED NOT NULL,
  `iduser` int(10) UNSIGNED NOT NULL,
  `iditem` int(10) UNSIGNED NOT NULL,
  `typeitem` tinyint(3) UNSIGNED NOT NULL COMMENT '1: user   2: page   3: page',
  `whendate` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `recent_searches`
--

INSERT INTO `recent_searches` (`id`, `iduser`, `iditem`, `typeitem`, `whendate`) VALUES
(1, 2, 3, 1, 1605162267);

-- --------------------------------------------------------

--
-- Table structure for table `referrals`
--

CREATE TABLE `referrals` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `credit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `referrals`
--

INSERT INTO `referrals` (`id`, `user_id`, `credit`) VALUES
(1, 6, 200),
(2, 0, 44000),
(3, 0, 44000),
(4, 0, 44000);

-- --------------------------------------------------------

--
-- Table structure for table `relations`
--

CREATE TABLE `relations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `leader` int(10) UNSIGNED NOT NULL,
  `type_leader` tinyint(3) UNSIGNED NOT NULL COMMENT '0: user  1: page   2: group   3: event',
  `follower` int(10) UNSIGNED NOT NULL,
  `blocked` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `whendate` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `relations`
--

INSERT INTO `relations` (`id`, `leader`, `type_leader`, `follower`, `blocked`, `whendate`) VALUES
(1, 3, 0, 2, 0, 1605158806),
(2, 2, 0, 3, 0, 1605158806),
(3, 2, 0, 4, 0, 1605163056),
(4, 4, 0, 2, 0, 1605163056),
(5, 1, 1, 2, 0, 1605275218),
(6, 1, 1, 14, 0, 1605275550),
(7, 1, 1, 13, 0, 1605275622),
(8, 1, 1, 12, 0, 1605275663),
(9, 1, 1, 11, 0, 1605275732),
(10, 1, 1, 10, 0, 1605275778),
(11, 2, 0, 6, 0, 1605370481),
(12, 6, 0, 2, 0, 1605370481),
(13, 2, 0, 12, 0, 1605514146),
(14, 12, 0, 2, 0, 1605514146);

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `idreport` bigint(20) NOT NULL,
  `typeitem` tinyint(1) UNSIGNED NOT NULL COMMENT '0: post   1: comment   2: user   3: page   4: group   5: article    6: product   7: event',
  `iditem` bigint(20) UNSIGNED NOT NULL,
  `idinformer` int(10) UNSIGNED NOT NULL,
  `reasons` text COLLATE utf8_unicode_ci NOT NULL,
  `whendate` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `word` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `word`, `value`) VALUES
(1, 'SITE_TITLE', 'Teenager Face'),
(2, 'SITE_LIVE', '1'),
(3, 'SITE_PRIVACY', '0'),
(4, 'SEO_KEYWORDS', 'teenagerface, social network, facebookforteenager'),
(5, 'SEO_DESCRIPTION', 'Teenager Face Facebook For Teenager'),
(6, 'COMPANY', 'Teenager Face'),
(7, 'SIGNUP_WITH_VALIDATION', '0'),
(8, 'LOGIN_WITH_REMEMBER', '1'),
(9, 'SIGNUP_MIN_AGE', '13'),
(10, 'SIGNUP_MAX_AGE', '25'),
(11, 'THEME', 'default'),
(12, 'LANGUAGE', 'en'),
(13, 'widthAvatar1', '32'),
(14, 'heightAvatar1', '32'),
(15, 'widthAvatar2', '50'),
(16, 'heightAvatar2', '50'),
(17, 'widthAvatar3', '100'),
(18, 'heightAvatar3', '100'),
(19, 'widthAvatar4', '168'),
(20, 'heightAvatar4', '168'),
(21, 'widthCover1', '946'),
(22, 'heightCover1', '300'),
(23, 'widthCover2', '712'),
(24, 'heightCover2', '226'),
(25, 'widthCover3', '350'),
(26, 'heightCover3', '111'),
(27, 'WITH_INFINITE_SCROLL', '1'),
(28, 'widthAd1', '180'),
(29, 'heightAd1', '90'),
(30, 'widthAd2', '100'),
(31, 'heightAd2', '50'),
(32, 'INTERVAL_NOTIFICATIONS_PEOPLE', '5000'),
(33, 'INTERVAL_NOTIFICATIONS_GLOBAL', '5000'),
(34, 'INTERVAL_NOTIFICATIONS_MESSAGES', '5000'),
(35, 'INTERVAL_CHECK_USER_ONLINE', '10000'),
(36, 'ACTIVITIES_PER_PAGE', '10'),
(37, 'ITEMS_PER_PAGE', '10'),
(38, 'QUANTITY_PHOTOS_POST', '6'),
(39, 'WIDTH_PHOTO_1', '960'),
(40, 'WIDTH_PHOTO_2', '600'),
(41, 'WIDTH_PHOTO_3', '300'),
(42, 'WIDTH_PHOTO_4', '200'),
(43, 'CHARS_VIEW_IN_POST', '300'),
(44, 'CHARS_VIEW_IN_COMMENT', '200'),
(45, 'NUM_NOTIFICATIONS_TOP', '10'),
(46, 'LOGIN_WITH_FACEBOOK', '0'),
(47, 'FB_APPID', ''),
(48, 'FB_SECRET', ''),
(49, 'LOGIN_WITH_TWITTER', '0'),
(50, 'TW_APPID', ''),
(51, 'TW_SECRET', ''),
(52, 'DOMAIN_EMAIL_TW', ''),
(53, 'INTERVAL_CHECK_NEW_MSG_CHAT', '5000'),
(54, 'ITEMS_PER_PAGE_DIRECTORY', '12'),
(55, 'ITEMS_PER_PAGE_MARKETPLACE', '12'),
(56, 'ITEMS_PER_PAGE_LIBRARY', '10'),
(57, 'MAIL_WITH_PHPMAILER', '1'),
(58, 'MAIL_FROM', 'no-reply@amirtumi.com'),
(59, 'MAIL_FROMNAME', 'Ami R Tumi'),
(60, 'MAIL_HOST', 'mail.kanorika.com'),
(61, 'MAIL_PORT', '25'),
(62, 'MAIL_USERNAME', 'no-reply@kanorika.com'),
(63, 'MAIL_PASSWORD', '123456'),
(64, 'TIMEZONE', 'Asia/Dhaka'),
(65, 'CURRENCY', 'USD'),
(66, 'EMAIL_PAYPAL', ''),
(67, 'EMAIL_NOTIFICATION_PAYPAL', ''),
(68, 'URL_ACTION_PAYPAL', ''),
(69, 'URL_ACTION_PAYPAL_IPN', ''),
(70, 'SIDEBAR_USERS', '2'),
(71, 'SHOW_APP_ANDROID', '1'),
(72, 'FILE_APP_ANDROID', 'appAndroid.apk'),
(73, 'KEY_API_GOOGLE', 'AIzaSyB-DVuPCSaqQnW6kqADlG-578YrWEmwDqQ');

-- --------------------------------------------------------

--
-- Table structure for table `statics`
--

CREATE TABLE `statics` (
  `idstatic` int(10) UNSIGNED NOT NULL,
  `code` varchar(11) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `texthtml` text COLLATE utf8_unicode_ci NOT NULL,
  `show_in_foot` tinyint(3) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `statics`
--

INSERT INTO `statics` (`idstatic`, `code`, `url`, `title`, `texthtml`, `show_in_foot`) VALUES
(1, 'about', 'about', 'About Us', 'Text about here...', 1),
(2, 'privacy', 'privacy', 'Privacy Policy', 'Text Privacy Policy here...', 1),
(3, 'termsofuse', 'terms', 'Terms of Use', 'Text Terms of Use here...', 1);

-- --------------------------------------------------------

--
-- Table structure for table `talks`
--

CREATE TABLE `talks` (
  `idtalk` int(10) UNSIGNED NOT NULL,
  `idlastmessage` int(10) UNSIGNED NOT NULL,
  `idcreator` int(10) UNSIGNED NOT NULL,
  `date_creation` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `talks`
--

INSERT INTO `talks` (`idtalk`, `idlastmessage`, `idcreator`, `date_creation`) VALUES
(1, 4, 1, 1605158444),
(2, 7, 2, 1605159319),
(3, 8, 2, 1605198832),
(4, 23, 2, 1605265849),
(5, 15, 2, 1605275924),
(6, 22, 2, 1605514266),
(7, 24, 6, 1606548854),
(8, 68, 6, 1611208143),
(9, 67, 6, 1611208710),
(10, 49, 6, 1611210152);

-- --------------------------------------------------------

--
-- Table structure for table `talks_messages`
--

CREATE TABLE `talks_messages` (
  `idmessage` int(10) UNSIGNED NOT NULL,
  `idtalk` int(10) UNSIGNED NOT NULL,
  `iduser` int(10) UNSIGNED NOT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `idmedia` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `typemessage` tinyint(3) UNSIGNED NOT NULL DEFAULT '1' COMMENT '1: normal   2: photo   3: attach   4:sticker',
  `nameattach` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `whendate` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `talks_messages`
--

INSERT INTO `talks_messages` (`idmessage`, `idtalk`, `iduser`, `message`, `idmedia`, `typemessage`, `nameattach`, `whendate`) VALUES
(1, 1, 1, 'hello faisal how are you', 0, 1, '', 1605158444),
(2, 1, 2, 'Ami fine', 0, 1, '', 1605158462),
(3, 1, 2, 'Whats about you', 0, 1, '', 1605158471),
(4, 1, 1, 'hmmmm i am fine', 0, 1, '', 1605158518),
(5, 2, 2, 'Hi nupa', 0, 1, '', 1605159319),
(6, 2, 2, '00', 0, 4, '', 1605159423),
(7, 2, 4, '00', 0, 4, '', 1605159428),
(8, 3, 2, 'Hello how are you', 0, 1, '', 1605198832),
(9, 4, 2, 'dukla akta knock dio', 0, 1, '', 1605265849),
(10, 5, 2, 'Hi', 0, 1, '', 1605275924),
(11, 5, 10, 'hi', 0, 1, '', 1605275936),
(12, 5, 2, 'Kemon asan', 0, 1, '', 1605275965),
(13, 5, 2, 'Ai tho apni kemon asan', 0, 1, '', 1605276068),
(14, 5, 10, '00', 0, 4, '', 1605276295),
(15, 5, 10, ':-@  :-@  :-@  :-@  :-@  :-@  :-@  :-@  :-@  :-@', 0, 1, '', 1605276406),
(16, 4, 6, 'Hi', 0, 1, '', 1605370263),
(17, 4, 2, 'hello', 0, 1, '', 1605370429),
(18, 4, 6, 'hi', 0, 1, '', 1605370439),
(19, 4, 2, 'kemon aso', 0, 1, '', 1605370443),
(20, 4, 6, 'kmon achen vaia?', 0, 1, '', 1605370447),
(21, 6, 2, 'hello', 0, 1, '', 1605514266),
(22, 6, 2, 'how are you', 0, 1, '', 1605514273),
(23, 4, 2, 'hello', 0, 1, '', 1606033067),
(24, 7, 6, '8o|  8o|  8o|', 0, 1, '', 1606548854),
(25, 8, 6, '5t454t54', 0, 1, '', 1611208143),
(26, 8, 6, 'tyhrthrt', 0, 1, '', 1611208146),
(27, 9, 6, '00', 0, 4, '', 1611208710),
(28, 9, 6, 'weyrtwe pp', 0, 1, '', 1611209942),
(29, 9, 6, 'ferfeferg', 0, 1, '', 1611209945),
(30, 9, 6, 'w', 0, 1, '', 1611210024),
(31, 9, 6, 'w', 0, 1, '', 1611210024),
(32, 9, 6, 'd', 0, 1, '', 1611210025),
(33, 9, 6, 'r', 0, 1, '', 1611210025),
(34, 9, 6, 'rt', 0, 1, '', 1611210025),
(35, 9, 6, 'r', 0, 1, '', 1611210026),
(36, 9, 6, 'r', 0, 1, '', 1611210026),
(37, 9, 6, 'r', 0, 1, '', 1611210027),
(38, 9, 6, 'r', 0, 1, '', 1611210027),
(39, 9, 6, 'e', 0, 1, '', 1611210028),
(40, 9, 6, '5', 0, 1, '', 1611210028),
(41, 9, 6, '5', 0, 1, '', 1611210028),
(42, 9, 6, 'g', 0, 1, '', 1611210029),
(43, 9, 6, 'g', 0, 1, '', 1611210031),
(44, 9, 6, 'r', 0, 1, '', 1611210033),
(45, 9, 6, 'h', 0, 1, '', 1611210034),
(46, 9, 6, 'hr', 0, 1, '', 1611210034),
(47, 10, 6, 'wefwefwewefwef', 0, 1, '', 1611210152),
(48, 10, 6, 'te5t4t4t', 0, 1, '', 1611210155),
(49, 10, 6, '4t43g45ghhh', 0, 1, '', 1611210157),
(50, 9, 6, 'werwer', 0, 1, '', 1611210353),
(51, 9, 6, 'ewrwerwer', 0, 1, '', 1611210355),
(52, 9, 6, 'rwerwer', 0, 1, '', 1611210358),
(53, 9, 6, 'ewt56u', 0, 1, '', 1611210359),
(54, 9, 6, 'u76y54ef54', 0, 1, '', 1611210361),
(55, 9, 6, 'edwefwef', 0, 1, '', 1611210366),
(56, 9, 6, 'ewfwefwef', 0, 1, '', 1611210367),
(57, 9, 6, 'wefwef', 0, 1, '', 1611210368),
(58, 9, 6, 'wef', 0, 1, '', 1611210368),
(59, 9, 6, 'we', 0, 1, '', 1611210369),
(60, 9, 6, 'f', 0, 1, '', 1611210369),
(61, 9, 6, 'ef', 0, 1, '', 1611210369),
(62, 9, 6, 'we', 0, 1, '', 1611210369),
(63, 9, 6, 'f', 0, 1, '', 1611210369),
(64, 9, 6, 'we', 0, 1, '', 1611210369),
(65, 9, 6, 'w', 0, 1, '', 1611210369),
(66, 9, 6, 'f', 0, 1, '', 1611210370),
(67, 9, 6, 'we', 0, 1, '', 1611210370),
(68, 8, 6, 'reg', 0, 1, '', 1611214317);

-- --------------------------------------------------------

--
-- Table structure for table `talks_users`
--

CREATE TABLE `talks_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `idtalk` int(10) UNSIGNED NOT NULL,
  `iduser` int(10) UNSIGNED NOT NULL,
  `viewed` tinyint(4) NOT NULL DEFAULT '0',
  `deleted` tinyint(4) NOT NULL DEFAULT '0',
  `last_message_view` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `talks_users`
--

INSERT INTO `talks_users` (`id`, `idtalk`, `iduser`, `viewed`, `deleted`, `last_message_view`) VALUES
(1, 1, 1, 1, 0, 4),
(2, 1, 2, 1, 0, 4),
(3, 2, 2, 1, 0, 7),
(4, 2, 4, 1, 0, 7),
(5, 3, 2, 1, 0, 8),
(6, 3, 3, 0, 0, 0),
(7, 4, 2, 1, 0, 23),
(8, 4, 6, 1, 0, 23),
(9, 5, 2, 1, 0, 15),
(10, 5, 10, 1, 0, 15),
(11, 6, 2, 1, 0, 22),
(12, 6, 12, 0, 0, 0),
(13, 7, 6, 1, 0, 24),
(14, 7, 16, 0, 0, 0),
(15, 8, 6, 1, 0, 68),
(16, 8, 34, 0, 0, 0),
(17, 9, 6, 1, 0, 67),
(18, 9, 32, 0, 0, 0),
(19, 10, 6, 1, 0, 49),
(20, 10, 33, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `iduser` int(10) UNSIGNED NOT NULL,
  `code` varchar(11) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `firstname` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `lastname` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_email` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `user_username` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `user_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `avatar_media` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cover` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cover_media` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cover_position` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `gender` tinyint(1) NOT NULL DEFAULT '0',
  `birthday` date NOT NULL,
  `aboutme` text COLLATE utf8_unicode_ci NOT NULL,
  `currentcity` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hometown` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lat` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `lon` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `language` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `timezone` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `num_friends` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `num_followers` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `num_following` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `num_albums` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `privacy` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0: Public   1: Friends   2: Privado',
  `with_validation` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `validated` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `datevalidated` int(10) UNSIGNED NOT NULL,
  `verified` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `active` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `registerdate` int(10) UNSIGNED NOT NULL,
  `ipregister` bigint(20) UNSIGNED NOT NULL,
  `previousaccess` int(10) UNSIGNED NOT NULL,
  `ippreviousaccess` bigint(20) UNSIGNED NOT NULL,
  `lastaccess` int(10) UNSIGNED NOT NULL,
  `iplastaccess` bigint(20) UNSIGNED NOT NULL,
  `lastclick` int(10) UNSIGNED NOT NULL,
  `num_activities` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `num_notifications_people` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `num_notifications_messages` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `num_notifications_global` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `num_notifications` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `num_pages` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `num_groups` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `num_events` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `num_articles` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `num_products` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `auth` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `auth_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `facebook` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `twitter` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `linkedin` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gplus` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pass_reset_key` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `who_write_on_my_wall` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '0: Any   1: Friends   2: Only me',
  `who_can_sendme_messages` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '0: Any   1: Fiends   2: Nobody',
  `who_can_see_friends` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '0: Any   1: Friends   2: Only me',
  `who_can_see_liked_pages` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '0: Any   1: Friends   2: Only me',
  `who_can_see_joined_groups` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '0: Any   1: Friends   2: Only me',
  `who_can_see_birthdate` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '0: Any   1: Friends   2: Only me',
  `who_can_see_location` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '0: Any   1: Friends   2: Only me',
  `who_can_see_about_me` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '0: Any   1: Friends   2: Only me',
  `chat` tinyint(1) UNSIGNED NOT NULL DEFAULT '1' COMMENT '0: Offline   1: Online',
  `chat_mute` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '0: You receive chat messages   1: You do not receive chat messages',
  `is_admin` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `leveladmin` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '0: observer   1: Administrator   2: Super Administrator',
  `req_delete` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`iduser`, `code`, `firstname`, `lastname`, `user_email`, `user_username`, `user_password`, `avatar`, `avatar_media`, `cover`, `cover_media`, `cover_position`, `gender`, `birthday`, `aboutme`, `currentcity`, `hometown`, `lat`, `lon`, `language`, `timezone`, `num_friends`, `num_followers`, `num_following`, `num_albums`, `privacy`, `with_validation`, `validated`, `datevalidated`, `verified`, `active`, `registerdate`, `ipregister`, `previousaccess`, `ippreviousaccess`, `lastaccess`, `iplastaccess`, `lastclick`, `num_activities`, `num_notifications_people`, `num_notifications_messages`, `num_notifications_global`, `num_notifications`, `num_pages`, `num_groups`, `num_events`, `num_articles`, `num_products`, `auth`, `auth_id`, `facebook`, `twitter`, `linkedin`, `gplus`, `pass_reset_key`, `who_write_on_my_wall`, `who_can_sendme_messages`, `who_can_see_friends`, `who_can_see_liked_pages`, `who_can_see_joined_groups`, `who_can_see_birthdate`, `who_can_see_location`, `who_can_see_about_me`, `chat`, `chat_mute`, `is_admin`, `leveladmin`, `req_delete`) VALUES
(1, 'yCWgzVQcTfH', 'Teenage Face', 'Support', 'teenagerfac@gmail.com', 'teenageface', '2fa539e175023fd4d8ddcdaa02ea7eac', 'WKFDK-FxDzka-ZVaBdZD.jpg', 't3CGhmrFKW1', 'Kv3aH-cTWJ6H-VPk930m.jpg', 'zdJjDJvypSX', '0', 1, '1988-01-01', 'About me ;-)', 'Dhaka', 'Dhaka', '', '', 'en', 'America/New_York', 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1475124306, 0, 1605275436, 1737018400, 1605370282, 1737018400, 1605370392, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 2, 0),
(2, 'x0CPD0vjzBn', 'Abu Faisal Mohhmmad', 'Younus', 'faisalyounus1990@gmail.com', 'faisalyounus', '4b4b7c4f2e519ed1cf005a179f1325c3', 'FhJaT-8m10pt-xGYRdM9.jpg', 'w00ZykPxhn4', 'n8fbb-r2v2XG-VM8G2sM.jpg', 'Kxm69MZPS7X', '0', 1, '1990-12-06', '', '', '', '', '', '', '', 4, 4, 4, 1, 0, 0, 0, 0, 1, 1, 1605157627, 162158, 1606033865, 1737018412, 1606034098, 1737018412, 1606034121, 0, 0, 0, 0, 0, 1, 0, 0, 2, 0, '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0),
(3, 'NQPx2jNcnaV', 'Ruha', 'Hasan', 'rubahasan@gmail.com', 'rubahasan', '8bf98f223652dbd2dfd5bc47a563645e', '548BV-9zmzrj-C550csc.jpg', 'mnMQQV7D4Wn', 'wfKJD-Jv8WGH-g6MK5jn.jpg', 'BRHkY1qQDSZ', '0', 2, '1999-01-01', '', '', '', '', '', '', '', 1, 1, 1, 0, 0, 0, 0, 0, 0, 1, 1605158582, 162158, 0, 0, 1605158582, 2728306391, 1605160352, 0, 0, 1, 6, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0),
(4, 'y5GzvDM408h', 'Sunjida', 'Nupa', 'sunjidanupa@gmail.com', 'Sanupa', 'fae6ffe9a9bf8cd6e0ba35d71607d174', '', '', '', '', '0', 2, '2000-11-07', '', '', '', '', '', '', '', 1, 1, 1, 0, 0, 0, 0, 0, 0, 1, 1605159224, 162158, 1605159224, 2728294348, 1605162996, 2728294127, 1605163112, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0),
(5, 'SNBjNVaDfzX', 'Upoma', 'Rahman', 'upomarahman@gmail.com', 'upomarahman', '27d694fdb39687366d321df3cce7815e', 'Fp5JZ-4BC40k-6hZpw2W.jpg', '0Zg8ZTBDy6G', 'RN6T9-w2n10b-pGyDZVZ.jpg', 'nrHZKsdQ5cn', '0', 2, '1995-04-04', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1605195217, 103136, 1605197027, 1737018400, 1605197160, 1737018400, 1605197220, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0),
(6, 'wBJJgR2SMvH', 'Mirash', 'Rahman', 'mirashrahman@gmail.com', 'mirash', 'be17fbe67a19f61d24845d43aa96389f', 'jz9Cy-yXddTM-zD5S4qk.jpg', 'gv3zSR1Dgcr', '93XJc-1sPVys-0Hyg3tX.jpg', 'BdKhFmm75gf', '0', 1, '2000-01-01', '', '', '', '', '', '', '', 1, 1, 1, 0, 0, 0, 0, 0, 0, 1, 1605251853, 103136, 1611207082, 0, 1611218548, 0, 1611218929, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 1, 0),
(7, 'wGnfvDTF8zH', 'rumki', 'hasan', 'rumkihasan@gmail.com', 'rumkihasan', 'f06b104f660f8994b1949aff98de9622', 'f3vkY-YS5b8d-nd8d1qt.jpg', 'TZVnY4pNF4J', '', '', '0', 2, '2002-02-17', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1605274092, 103136, 0, 0, 1605274092, 1737018400, 1605274135, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0),
(8, 'sTjGrsHDjdH', 'Sultana', 'Hamid', 'sultanihamid@gmail.com', 'sultanahamid', 'f8fd28be7edf6bab5ffcd83ee51c7be6', 'x9QKm-NZvhXS-KYaNP3G.jpg', 'vyFyZjsRjRQ', '', '', '0', 2, '2004-10-14', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1605274224, 103136, 0, 0, 1605274224, 1737018400, 1605274254, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0),
(9, 'aRMxx3cwBwd', 'Rujina', 'Akter', 'rujinaakter@gmail.com', 'rujinaakter', 'e1da8bad5576c2fe24079fa28a7d559d', 'Kddnf-tkRDMB-DDk9xgY.jpg', 'f60tTDDm89s', '', '', '0', 2, '2005-06-05', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1605274296, 103136, 0, 0, 1605274298, 1737018400, 1605274351, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0),
(10, 'q5bXa8Wz1St', 'Rani', 'Deb', 'ranideb@gmail.com', 'ranideb', 'e74a027fc5c6eb7792a0b34c3c4fd8a0', 'sRF7r-ZS67kz-a0sBrTn.jpg', 'ZC7FzwfaTWK', '', '', '0', 2, '2001-07-04', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1605274419, 103136, 1605275762, 1737018400, 1605276377, 1737018400, 1605276712, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0),
(11, 'C51KgS2PywQ', 'Samira', 'Begum', 'samirabegum@gmail.com', 'samirabegum', 'e631d02e1ca7ca0f1858876b74e39b3b', 'QjM7W-56k33b-SkHXJ0F.jpg', 'ck7qas2fsma', '', '', '0', 2, '2002-11-05', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1605274528, 103136, 1605274528, 1737018400, 1605275715, 1737018400, 1605275755, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0),
(12, 'W8WnM5N9SzV', 'Fahima', 'Akter', 'fahimaakter@gmail.com', 'fahimaakter', '3f342b9333c6cd82eb41e7c009413bd3', 'QQQYR-jK1dta-r59ydY6.jpg', 'KdHXngYrvt3', '', '', '0', 2, '2006-04-04', '', '', '', '', '', '', '', 1, 1, 1, 0, 0, 0, 0, 0, 0, 1, 1605274637, 103136, 1605510373, 1998464609, 1605514135, 1998464609, 1605514217, 0, 1, 2, 3, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0),
(13, 'xvWw8mF75DY', 'Obama', 'Begum', 'obamabegum@gmail.com', 'obamabegum', '966bbadf12530ac9a3370c1142e5c462', 'NdZ2W-WMbMJM-DgwSS1w.png', 'GSRgpNHQnhH', '', '', '0', 2, '2002-04-03', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1605274808, 103136, 1605274808, 1737018400, 1605275604, 1737018400, 1605275637, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0),
(14, 'Qv8Ymbs2PjS', 'Juma', 'Akter', 'jumaakter@gmail.com', 'jumaakter', 'baf56037b219226d3d1a72126cadbbe5', 'sfp8h-5V2x7G-f0j2RJW.jpg', 'BCBCHfGGKyX', 'nN7hF-CNka64-D8Z5Ygv.jpg', 'Q7HdkByHgCs', '0', 2, '2002-05-04', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1605274886, 103136, 1605274886, 1737018400, 1605275496, 1737018400, 1605275597, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0),
(15, 'xgjTKX4QvVC', 'Akhi', 'Rahman', 'akhirahman@gmail.com', 'akhirahman', '9ce88932d9cd59f2db3386189af4a52a', 'RdasG-8GCNKW-fZFaP6s.jpg', 'FHwFCtp8Gcq', '', '', '0', 2, '2001-02-12', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1605288198, 103136, 0, 0, 1605288198, 1737018400, 1605288245, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0),
(16, 'k2PKXC8dvjr', 'Fariha', 'Begum', 'farihabegum@gmail.com', 'farihabegum', '1abf898d80a48062784993a90e258c50', 'NNwqc-xpPnCW-gVqsynS.jpg', '09sB8nKpd5J', '', '', '0', 2, '1999-02-07', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1605288370, 103136, 0, 0, 1605288370, 1737018400, 1605288401, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0),
(17, 'TJKZRdcSQ6r', 'Juma', 'Hasan', 'jumahasan@gmail.com', 'jumahasan', 'e2a395beb1c72bcb833b54e98c8d8dd8', '4bk9m-RvrGv7-29C6xyF.jpg', 'szdCNhY7Fq1', '', '', '0', 2, '2001-05-04', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1605288459, 103136, 0, 0, 1605288459, 1737018400, 1605288531, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0),
(18, 'kJbCnQYZ7XW', 'Rahima', 'Akter', 'rahimaakter@gmail.com', 'rahimaakter', 'e78b0779b983f6dcc72e863a32e7e747', '9nfz9-B4Qjtk-d61dxzk.jpg', 'fKxhN85tmYD', '', '', '0', 2, '1999-04-06', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1605288606, 103136, 0, 0, 1605288606, 1737018400, 1605288771, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0),
(19, 'DQVJMDsV5QK', 'Shobita', 'Kor', 'shobitakor@gmail.com', 'shobitakor', '3cb367379f6b294f9af5f110cc086256', 'vSphM-1G9pBk-xPBp8RD.jpg', 'zdKcfwHrYfT', '', '', '0', 2, '2003-05-04', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1605288813, 103136, 0, 0, 1605288813, 1737018400, 1605288858, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0),
(20, 'jn2ck6kg6mK', 'Alena', 'Haque', 'alenahaque@gmail.com', 'alenahaque', 'b093e9c2750b668a85fa096c881bf622', 'fY0XS-6Camy5-B8Wp8X4.jpg', 'Fph78CCNjcQ', '', '', '0', 2, '2002-03-02', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1605288997, 103136, 0, 0, 1605288997, 1737018400, 1605289061, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0),
(21, 'gD9kpVpb7Dd', 'Rani', 'Mondol', 'ranimondol@gmail.com', 'ranimondol', '139d84a7505b6383bacb50511ae0e1e2', 'YxC1d-n89T4Q-5gm051h.jpg', 'pnt5s73p1Nv', '', '', '0', 2, '2005-02-03', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1605290071, 103136, 0, 0, 1605290071, 1737018400, 1605290106, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0),
(22, 'yPZSDFpbSRp', 'Ayesha', 'Begum', 'ayeshabegum@gmail.com', 'ayeshabegum', 'c5a7d594441d07f2e1daafb1ef6fe811', '8dRrN-y6c23x-yMs43k4.jpg', 'KBctxJpBjBn', '', '', '0', 2, '2002-03-17', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1605290194, 103136, 0, 0, 1605290194, 1737018400, 1605290278, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0),
(23, 'K6ZpXcsnhKX', 'Fahmi', 'Haque', 'fahmihaque@gmail.com', 'fahmihaque', '514a4d2b2319b3911f72f884163b17ba', '2tYyT-psK4zb-BddHfrH.jpg', '6mgB0CxFszH', '', '', '0', 2, '2004-03-05', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1605290375, 103136, 1605349541, 1737018400, 1605353453, 1737018400, 1605353713, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0),
(24, '5djDKstJthG', 'MASHIKUR', 'MIRASH', '700mirash@gmail.com', 'aaaaaaaa', '3dbe00a167653a1aaee01d93e77e730e', '', '', '', '', '0', 1, '2004-02-14', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1610028879, 0, 0, 0, 1610028879, 0, 1610028923, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0),
(25, 'C83f9Mh63MF', 'wefwef', 'wefwef', 'mashikur1999@gmail.com', 'wefwefwe', '4c93008615c2d041e33ebac605d14b5b', '', '', '', '', '0', 1, '2006-02-11', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1610216481, 0, 0, 0, 1610216481, 0, 1610216578, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0),
(26, 'nrr3FNyp2wX', 'MASHIKUR', 'MIRASH', 'qwewq@rwe.dedf', 'ergerg', '15c5ad2fe80e5d42f607844cf1170ee3', '', '', '', '', '0', 1, '1997-04-14', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1610216624, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0),
(27, 'FHJf5mrNRp3', 'rger', 'gerghe', 'rger@werwer.greg', 'wefwefewfwef', 'b2109b23dcf66aa64fd0dc2ae7a206a2', '', '', '', '', '0', 1, '2003-06-13', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1610216680, 0, 0, 0, 1610216680, 0, 1610216877, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0),
(28, 'Fm5pH75W7kT', 'fwefwef', 'wefwefwe', 'efwefwefwef@gmail.com', 'ewfewfwefwef', 'e31ea70448c0d1d350a36960df1dad72', '', '', '', '', '0', 1, '2004-02-04', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1610216903, 0, 0, 0, 1610216903, 0, 1610216964, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0),
(29, 'v38WCQahZ6B', 'fwefwef', 'efwefwef', '700miraewfwefewfsh@gmail.com', 'wefwefwef', 'e6a8ccd086d9ab35d2509e66286863ed', '', '', '', '', '0', 1, '2003-04-17', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1610216980, 0, 0, 0, 1610216980, 0, 1610217816, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0),
(30, '8DXraxCjn8g', 'fefwef', 'wefwefwef', '700mffffirash@gmail.com', '214312412', 'c5e1e8167cbfe75fc1ea24e1a4232ca9', '', '', '', '', '0', 1, '2004-07-18', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1610217855, 0, 0, 0, 1610217855, 0, 1610218359, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0),
(31, 'sTrGRacTFMr', 'dvsdvdsv', 'sdvsdv', 'sdvsdvs@fgerhth.thf', 'dvsdvsdv', 'eed1ca49aecc2b217be704f0b942ba65', '', '', '', '', '0', 1, '2003-04-10', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1610218470, 0, 0, 0, 1610218470, 0, 1610218560, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0),
(32, 'FFWrwSfGs46', 'efwef', 'fwef', '700dwqfregmirash@gmail.com', 'qqwrwqrrqwrew', 'b1c208d88db7367f4d58bdf0d128f8c8', '', '', '', '', '0', 1, '2003-07-16', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1610218648, 0, 0, 0, 1610218648, 0, 1610218652, 0, 0, 38, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0),
(33, 'QR5FBCcyZJt', 'fwefwefw', 'wefwefwegghh', 'outdoorbathrthngladesh@gmail.com', 'wfwfwf', '61a367ef7df9a7c417472f3cc544a8d9', '', '', '', '', '0', 1, '2002-04-19', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1610218682, 0, 0, 0, 1610218682, 0, 1610218755, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0),
(34, 'DChN8Bs5K0G', 'efewfwef', 'wefwefweff', 'fewf@ewf.tg', 'efwefwefgwe', 'd1c30353a028a878627174b627dd910e', '', '', '', '', '0', 1, '2003-06-16', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1610218777, 0, 0, 0, 1610218777, 0, 1610218894, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0),
(35, '1s1P3BKszKK', 'MASHIKUR', 'MIRASH', 'mashikuffr1999@gmail.com', '756jjj', 'c3e8829cff638e2bbd9e8f7fd6772290', '', '', '', '', '0', 1, '2001-02-07', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1611215142, 0, 0, 0, 1611215142, 0, 1611218541, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users_blocked`
--

CREATE TABLE `users_blocked` (
  `id` int(10) UNSIGNED NOT NULL,
  `iduser` int(10) UNSIGNED NOT NULL,
  `iduserblocked` int(10) UNSIGNED NOT NULL,
  `type_blocked` tinyint(1) UNSIGNED NOT NULL COMMENT '1: General   2: Chat',
  `whendate` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `withdraws`
--

CREATE TABLE `withdraws` (
  `id` int(11) NOT NULL,
  `user_id` int(255) NOT NULL,
  `amount` varchar(255) NOT NULL,
  `status` int(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `getway` varchar(255) NOT NULL,
  `account` varchar(255) NOT NULL,
  `paid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `withdraws`
--

INSERT INTO `withdraws` (`id`, `user_id`, `amount`, `status`, `date`, `getway`, `account`, `paid`) VALUES
(47, 6, '3354', 1, '0000-00-00 00:00:00', 'bkash', '345t345', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activities`
--
ALTER TABLE `activities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `advertising`
--
ALTER TABLE `advertising`
  ADD PRIMARY KEY (`idad`);

--
-- Indexes for table `advertising_basic`
--
ALTER TABLE `advertising_basic`
  ADD PRIMARY KEY (`idbasic`);

--
-- Indexes for table `advertising_clicks_days`
--
ALTER TABLE `advertising_clicks_days`
  ADD PRIMARY KEY (`idclick`);

--
-- Indexes for table `advertising_clicks_hours`
--
ALTER TABLE `advertising_clicks_hours`
  ADD PRIMARY KEY (`idclick`);

--
-- Indexes for table `advertising_impress_days`
--
ALTER TABLE `advertising_impress_days`
  ADD PRIMARY KEY (`idimpress`);

--
-- Indexes for table `advertising_impress_hours`
--
ALTER TABLE `advertising_impress_hours`
  ADD PRIMARY KEY (`idimpress`);

--
-- Indexes for table `advertising_paypal`
--
ALTER TABLE `advertising_paypal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `advertising_plans`
--
ALTER TABLE `advertising_plans`
  ADD PRIMARY KEY (`idplan`);

--
-- Indexes for table `advertising_plans_assigned`
--
ALTER TABLE `advertising_plans_assigned`
  ADD PRIMARY KEY (`idassigned`);

--
-- Indexes for table `albums`
--
ALTER TABLE `albums`
  ADD PRIMARY KEY (`idalbum`);

--
-- Indexes for table `albums_items`
--
ALTER TABLE `albums_items`
  ADD PRIMARY KEY (`iditem`);

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`idarticle`);

--
-- Indexes for table `articles_cat`
--
ALTER TABLE `articles_cat`
  ADD PRIMARY KEY (`idcategory`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`idcomment`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`idcurrency`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`idevent`);

--
-- Indexes for table `events_actions`
--
ALTER TABLE `events_actions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events_users`
--
ALTER TABLE `events_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `friends`
--
ALTER TABLE `friends`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`idgame`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`idgroup`);

--
-- Indexes for table `groups_members`
--
ALTER TABLE `groups_members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hashtags`
--
ALTER TABLE `hashtags`
  ADD PRIMARY KEY (`idhashtag`);

--
-- Indexes for table `hiddens`
--
ALTER TABLE `hiddens`
  ADD PRIMARY KEY (`idhidden`);

--
-- Indexes for table `ip_address`
--
ALTER TABLE `ip_address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`idlike`);

--
-- Indexes for table `medias`
--
ALTER TABLE `medias`
  ADD PRIMARY KEY (`idmedia`);

--
-- Indexes for table `mentions`
--
ALTER TABLE `mentions`
  ADD PRIMARY KEY (`idmention`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`idpage`);

--
-- Indexes for table `pages_admin`
--
ALTER TABLE `pages_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages_cat`
--
ALTER TABLE `pages_cat`
  ADD PRIMARY KEY (`idcategory`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`idpost`);

--
-- Indexes for table `posts_embed`
--
ALTER TABLE `posts_embed`
  ADD PRIMARY KEY (`idembed`);

--
-- Indexes for table `posts_saved`
--
ALTER TABLE `posts_saved`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`idproduct`);

--
-- Indexes for table `products_cat`
--
ALTER TABLE `products_cat`
  ADD PRIMARY KEY (`idcategory`);

--
-- Indexes for table `products_images`
--
ALTER TABLE `products_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `recent_searches`
--
ALTER TABLE `recent_searches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `referrals`
--
ALTER TABLE `referrals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `relations`
--
ALTER TABLE `relations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`idreport`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `word` (`word`);

--
-- Indexes for table `statics`
--
ALTER TABLE `statics`
  ADD PRIMARY KEY (`idstatic`);

--
-- Indexes for table `talks`
--
ALTER TABLE `talks`
  ADD PRIMARY KEY (`idtalk`);

--
-- Indexes for table `talks_messages`
--
ALTER TABLE `talks_messages`
  ADD PRIMARY KEY (`idmessage`);

--
-- Indexes for table `talks_users`
--
ALTER TABLE `talks_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`iduser`);

--
-- Indexes for table `users_blocked`
--
ALTER TABLE `users_blocked`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdraws`
--
ALTER TABLE `withdraws`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activities`
--
ALTER TABLE `activities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `advertising`
--
ALTER TABLE `advertising`
  MODIFY `idad` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `advertising_basic`
--
ALTER TABLE `advertising_basic`
  MODIFY `idbasic` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `advertising_clicks_days`
--
ALTER TABLE `advertising_clicks_days`
  MODIFY `idclick` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `advertising_clicks_hours`
--
ALTER TABLE `advertising_clicks_hours`
  MODIFY `idclick` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `advertising_impress_days`
--
ALTER TABLE `advertising_impress_days`
  MODIFY `idimpress` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `advertising_impress_hours`
--
ALTER TABLE `advertising_impress_hours`
  MODIFY `idimpress` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `advertising_paypal`
--
ALTER TABLE `advertising_paypal`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `advertising_plans`
--
ALTER TABLE `advertising_plans`
  MODIFY `idplan` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `advertising_plans_assigned`
--
ALTER TABLE `advertising_plans_assigned`
  MODIFY `idassigned` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `albums`
--
ALTER TABLE `albums`
  MODIFY `idalbum` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `albums_items`
--
ALTER TABLE `albums_items`
  MODIFY `iditem` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `idarticle` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `articles_cat`
--
ALTER TABLE `articles_cat`
  MODIFY `idcategory` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `idcomment` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `idcurrency` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `idevent` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `events_actions`
--
ALTER TABLE `events_actions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `events_users`
--
ALTER TABLE `events_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `friends`
--
ALTER TABLE `friends`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `games`
--
ALTER TABLE `games`
  MODIFY `idgame` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `idgroup` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `groups_members`
--
ALTER TABLE `groups_members`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hashtags`
--
ALTER TABLE `hashtags`
  MODIFY `idhashtag` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hiddens`
--
ALTER TABLE `hiddens`
  MODIFY `idhidden` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ip_address`
--
ALTER TABLE `ip_address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `idlike` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `medias`
--
ALTER TABLE `medias`
  MODIFY `idmedia` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `mentions`
--
ALTER TABLE `mentions`
  MODIFY `idmention` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `idpage` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pages_admin`
--
ALTER TABLE `pages_admin`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pages_cat`
--
ALTER TABLE `pages_cat`
  MODIFY `idcategory` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=176;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `idpost` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `posts_embed`
--
ALTER TABLE `posts_embed`
  MODIFY `idembed` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `posts_saved`
--
ALTER TABLE `posts_saved`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `idproduct` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products_cat`
--
ALTER TABLE `products_cat`
  MODIFY `idcategory` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `products_images`
--
ALTER TABLE `products_images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `recent_searches`
--
ALTER TABLE `recent_searches`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `referrals`
--
ALTER TABLE `referrals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `relations`
--
ALTER TABLE `relations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `idreport` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `statics`
--
ALTER TABLE `statics`
  MODIFY `idstatic` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `talks`
--
ALTER TABLE `talks`
  MODIFY `idtalk` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `talks_messages`
--
ALTER TABLE `talks_messages`
  MODIFY `idmessage` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `talks_users`
--
ALTER TABLE `talks_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `iduser` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `users_blocked`
--
ALTER TABLE `users_blocked`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `withdraws`
--
ALTER TABLE `withdraws`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
