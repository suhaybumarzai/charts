-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 04, 2022 at 05:06 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `graph`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2016_06_01_000001_create_oauth_auth_codes_table', 2),
(6, '2016_06_01_000002_create_oauth_access_tokens_table', 2),
(7, '2016_06_01_000003_create_oauth_refresh_tokens_table', 2),
(8, '2016_06_01_000004_create_oauth_clients_table', 2),
(9, '2016_06_01_000005_create_oauth_personal_access_clients_table', 2),
(10, '2022_03_02_185500_create_sales_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `purchase_date` datetime NOT NULL DEFAULT current_timestamp(),
  `po_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cust_order` bigint(20) UNSIGNED NOT NULL,
  `currency` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cust_fname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cust_city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cust_country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cust_province` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax` decimal(50,2) DEFAULT NULL,
  `shipping` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `grand_total` decimal(50,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `order_id`, `purchase_date`, `po_number`, `cust_order`, `currency`, `cust_fname`, `cust_city`, `cust_country`, `cust_province`, `tax`, `shipping`, `grand_total`, `created_at`, `updated_at`) VALUES
(2, 1365, '2018-09-13 00:00:00', 'C1365-1', 625000000000, 'Cad$', 'Daniel', 'Toronto', 'Canada', 'Ontario', '21.99', '15', '100.84', NULL, NULL),
(3, 1364, '2018-09-12 00:00:00', 'C1364-1', 622000000000, 'Cad$', 'Matt', 'Brandon', 'Canada', 'Manitoba', '10.63', '15', '58.90', NULL, NULL),
(4, 1363, '2018-09-11 00:00:00', 'C1363-1', 620000000000, 'Cad$', 'Lisa', 'Toronto', 'Canada', 'Ontario', '8.01', '15', '64.68', NULL, NULL),
(5, 1362, '2018-09-11 00:00:00', 'C1362-1', 620000000000, 'Cad$', 'Taylor', 'Brandon', 'Canada', 'Manitoba', '101.90', '15', '15.00', NULL, NULL),
(6, 1361, '2018-09-10 00:00:00', 'C1361-1', 617000000000, 'Cad$', 'Daniel', 'Toronto', 'Canada', 'Ontario', '11.00', '15', '57.92', NULL, NULL),
(7, 1360, '2018-09-10 00:00:00', 'C1360-1', 616000000000, 'Cad$', 'Sandy', 'Oakville', 'Canada', 'Ontario', '9.75', '15', '64.00', NULL, NULL),
(8, 1359, '2018-09-07 00:00:00', 'C1359-1', 613000000000, 'Cad$', 'Kathy ', 'Brandon', 'Canada', 'Manitoba', '200.80', '15', '15.00', NULL, NULL),
(9, 1358, '2018-09-06 00:00:00', 'C1358-1', 611000000000, 'Cad$', 'Lisa', 'Toronto', 'Canada', 'Ontario', '6.54', '15', '49.20', NULL, NULL),
(10, 1357, '2018-09-06 00:00:00', 'C1357-1', 611000000000, 'Cad$', 'Lisa', 'Toronto', 'Canada', 'Ontario', '10.28', '15', '79.50', NULL, NULL),
(11, 1356, '2018-09-05 00:00:00', 'C1356-1', 610000000000, 'Cad$', 'Jessica', 'Etobicoke', 'Canada', 'Ontario', '7.33', '15', '56.66', NULL, NULL),
(12, 1355, '2018-09-05 00:00:00', 'C1355-1', 610000000000, 'Cad$', 'Jessica', 'Etobicoke', 'Canada', 'Ontario', '23.03', '17.52', '134.32', NULL, NULL),
(13, 1354, '2018-09-04 00:00:00', 'C1354-1', 608000000000, 'Cad$', 'John', 'Toronto', 'Canada', 'Ontario', '6.82', '15', '53.97', NULL, NULL),
(14, 1353, '2018-08-30 00:00:00', 'C1353-1', 597000000000, 'Cad$', 'Daniel', 'Toronto', 'Canada', 'Ontario', '616.00', '340.92', '2613.70', NULL, NULL),
(15, 1352, '2018-08-30 00:00:00', 'C1352-1', 597000000000, 'Cad$', 'Daniel', 'Toronto', 'Canada', 'Ontario', '14.68', '15', '75.66', NULL, NULL),
(16, 1351, '2018-08-29 00:00:00', 'C1351-1', 595000000000, 'Cad$', 'Jessica', 'Etobicoke', 'Canada', 'Ontario', '5.82', '15', '45.76', NULL, NULL),
(17, 1350, '2018-08-28 00:00:00', 'C1350-1', 594000000000, 'Cad$', 'Daniel', 'Toronto', 'Canada', 'Ontario', '42.65', '33.1', '253.74', NULL, NULL),
(18, 1349, '2018-08-27 00:00:00', 'C1349-1', 593000000000, 'Cad$', 'Tyler', 'Etobicoke', 'Canada', 'Ontario', '7.63', '15', '45.44', NULL, NULL),
(19, 1348, '2018-08-24 00:00:00', 'C1348-1', 589000000000, 'Cad$', 'Sandy', 'Oakville', 'Canada', 'Ontario', '13.46', '15', '84.27', NULL, NULL),
(20, 1347, '2018-08-22 00:00:00', 'C1347-1', 586000000000, 'Cad$', 'Laurie', 'Pickering', 'Canada', 'Ontario', '13.02', '15', '92.58', NULL, NULL),
(21, 1346, '2018-08-22 00:00:00', 'C1346-1', 586000000000, 'Cad$', 'Kathy ', 'Brandon', 'Canada', 'Manitoba', '61.60', '15', '15.00', NULL, NULL),
(22, 1345, '2018-08-17 00:00:00', 'C1345-1', 581000000000, 'Cad$', 'Jessica', 'Etobicoke', 'Canada', 'Ontario', '6.52', '15', '50.39', NULL, NULL),
(23, 1344, '2018-08-17 00:00:00', 'C1344-1', 581000000000, 'Cad$', 'Jessica', 'Etobicoke', 'Canada', 'Ontario', '4.19', '15', '36.01', NULL, NULL),
(24, 1343, '2018-08-17 00:00:00', 'C1343-1', 581000000000, 'Cad$', 'Jessica', 'Etobicoke', 'Canada', 'Ontario', '8.64', '15', '53.75', NULL, NULL),
(25, 1342, '2018-08-17 00:00:00', 'C1342-1', 581000000000, 'Cad$', 'Jessica', 'Etobicoke', 'Canada', 'Ontario', '10.02', '15', '81.98', NULL, NULL),
(26, 1341, '2018-08-17 00:00:00', 'C1341-1', 580000000000, 'Cad$', 'Daniel', 'Toronto', 'Canada', 'Ontario', '23.66', '18.41', '141.16', NULL, NULL),
(27, 1340, '2018-08-15 00:00:00', 'C1340-1', 578000000000, 'Cad$', 'Sonny', 'Ancaster', 'Canada', 'Ontario', '21.41', '15.15', '116.13', NULL, NULL),
(28, 1339, '2018-08-10 00:00:00', 'C1339-1', 573000000000, 'Cad$', 'Kathy ', 'Brandon', 'Canada', 'Manitoba', '125.90', '15', '15.00', NULL, NULL),
(29, 1337, '2018-08-08 00:00:00', 'C1337-1', 570000000000, 'Cad$', 'Jessica', 'Etobicoke', 'Canada', 'Ontario', '2.36', '15', '28.83', NULL, NULL),
(30, 1336, '2018-08-07 00:00:00', 'C1336-1', 569000000000, 'Cad$', 'Jessica', 'Etobicoke', 'Canada', 'Ontario', '14.60', '15', '40.57', NULL, NULL),
(31, 1335, '2018-08-07 00:00:00', 'C1335-1', 569000000000, 'Cad$', 'Jessica', 'Etobicoke', 'Canada', 'Ontario', '53.43', '42.95', '329.30', NULL, NULL),
(32, 1334, '2018-08-07 00:00:00', 'C1334-1', 568000000000, 'Cad$', 'Matt', 'Toronto', 'Canada', 'Ontario', '23.34', '15.54', '119.14', NULL, NULL),
(33, 1333, '2018-08-03 00:00:00', 'C1333-1', 564000000000, 'Cad$', 'Tyler', 'Etobicoke', 'Canada', 'Ontario', '11.86', '15', '83.12', NULL, NULL),
(34, 1332, '2018-07-31 00:00:00', 'C1332-1', 560000000000, 'Cad$', 'Cindy', 'Toronto', 'Canada', 'Ontario', '16.54', '15', '101.54', NULL, NULL),
(35, 1331, '2018-07-28 00:00:00', 'C1331-1', 557000000000, 'Cad$', 'Yan', 'East Gwillimbury', 'Canada', 'Ontario', '13.57', '15', '87.37', NULL, NULL),
(36, 1330, '2018-07-27 00:00:00', 'C1330-1', 556000000000, 'Cad$', 'Daniel', 'Toronto', 'Canada', 'Ontario', '13.75', '15', '99.60', NULL, NULL),
(37, 1329, '2018-07-25 00:00:00', 'C1329-1', 554000000000, 'Cad$', 'Daniel', 'Toronto', 'Canada', 'Ontario', '81.91', '67.29', '515.87', NULL, NULL),
(38, 1328, '2018-07-25 00:00:00', 'C1328-1', 554000000000, 'Cad$', 'Taylor', 'Brandon', 'Canada', 'Manitoba', '101.90', '15', '15.00', NULL, NULL),
(39, 1327, '2018-07-25 00:00:00', 'C1327-1', 554000000000, 'Cad$', 'Kathy ', 'Brandon', 'Canada', 'Manitoba', '157.50', '15', '15.00', NULL, NULL),
(40, 1326, '2018-07-24 00:00:00', 'C1326-1', 553000000000, 'Cad$', 'Sandy', 'Oakville', 'Canada', 'Yukon', '3000.00', '15', '112.70', NULL, NULL),
(41, 1325, '2018-07-24 00:00:00', 'C1325-1', 553000000000, 'Cad$', 'Raw Office', 'Toronto', 'Canada', 'Ontario', '7.19', '15', '60.69', NULL, NULL),
(42, 1324, '2018-07-24 00:00:00', 'C1324-1', 553000000000, 'Cad$', 'Christy', 'Stoney Creek', 'Canada', 'Ontario', '0.00', '15', '15.00', NULL, NULL),
(43, 1323, '2018-07-24 00:00:00', 'C1323-1', 553000000000, 'Cad$', 'Daniel', 'Toronto', 'Canada', 'Ontario', '16.57', '15', '100.53', NULL, NULL),
(44, 1322, '2018-07-22 00:00:00', 'C1322-1', 551000000000, 'Cad$', 'Liz', 'Souris', 'Canada', 'Manitoba', '6.73', '15', '50.25', NULL, NULL),
(45, 1321, '2018-07-16 00:00:00', 'C1321-1', 545000000000, 'Cad$', 'Sonny', 'Ancaster', 'Canada', 'Ontario', '29.37', '24.04', '184.28', NULL, NULL),
(46, 1320, '2018-07-13 00:00:00', 'C1320-1', 543000000000, 'Cad$', 'Jessica', 'Etobicoke', 'Canada', 'Ontario', '17.13', '15', '112.60', NULL, NULL),
(47, 1319, '2018-07-12 00:00:00', 'C1319-1', 542000000000, 'Cad$', 'Lisa', 'London', 'Canada', 'Ontario', '8.71', '15', '60.56', NULL, NULL),
(48, 1318, '2018-07-10 00:00:00', 'C1318-1', 540000000000, 'Cad$', 'Elaine', 'Waterloo', 'Canada', 'Ontario', '0.00', '15', '15.00', NULL, NULL),
(49, 1317, '2018-07-08 00:00:00', 'C1317-1', 538000000000, 'Cad$', 'Yan', 'East Gwillimbury', 'Canada', 'Ontario', '4.35', '15', '30.95', NULL, NULL),
(50, 1316, '2018-07-07 00:00:00', 'C1316-1', 538000000000, 'Cad$', 'Amy', 'Mississauga', 'Canada', 'Ontario', '0.00', '15', '15.00', NULL, NULL),
(51, 1314, '2018-07-04 00:00:00', 'C1314-1', 535000000000, 'Cad$', 'Sandy', 'Toronto', 'Canada', 'Ontario', '32.28', '22.16', '169.89', NULL, NULL),
(52, 1313, '2018-06-30 00:00:00', 'C1313-1', 531000000000, 'Cad$', 'David', 'Toronto', 'Canada', 'Ontario', '1.43', '15', '22.50', NULL, NULL),
(53, 1312, '2018-06-27 00:00:00', 'C1312-1', 529000000000, 'Cad$', 'Sarah', 'Toronto', 'Canada', 'Ontario', '0.00', '15', '15.00', NULL, NULL),
(54, 1310, '2018-06-26 00:00:00', 'C1310-1', 527000000000, 'Cad$', 'Sandy', 'Oakville', 'Canada', 'Yukon', '200.00', '15', '77.94', NULL, NULL),
(55, 1308, '2018-06-25 00:00:00', 'C1308-1', 527000000000, 'Cad$', 'Shevaun', 'Brandon', 'Canada', 'Manitoba', '10.14', '15', '83.00', NULL, NULL),
(56, 1306, '2018-06-25 00:00:00', 'C1306-1', 527000000000, 'Cad$', 'Matt', 'Brandon', 'Canada', 'Manitoba', '5.46', '15', '36.34', NULL, NULL),
(57, 1304, '2018-06-25 00:00:00', 'C1304-1', 527000000000, 'Cad$', 'Lena', 'Ottawa', 'Canada', 'Ontario', '6.72', '15', '50.11', NULL, NULL),
(58, 1303, '2018-06-25 00:00:00', 'C1303-1', 527000000000, 'Cad$', 'Nikki', 'Toronto', 'Canada', 'Ontario', '0.00', '15', '15.00', NULL, NULL),
(59, 1301, '2018-06-22 00:00:00', 'C1301-1', 525000000000, 'Cad$', 'Yan', 'East Gwillimbury', 'Canada', 'Ontario', '16.97', '15', '106.35', NULL, NULL),
(60, 1297, '2018-06-21 00:00:00', 'C1297-1', 523000000000, 'Cad$', 'Jenna', 'Collingwood', 'Canada', 'Ontario', '0.00', '15', '15.00', NULL, NULL),
(61, 1296, '2018-06-21 00:00:00', 'C1296-1', 523000000000, 'Cad$', 'shelley', 'Collingwood', 'Canada', 'Ontario', '0.00', '15', '15.00', NULL, NULL),
(62, 1295, '2018-06-21 00:00:00', 'C1295-1', 523000000000, 'Cad$', 'Julie', 'Collingwood', 'Canada', 'Ontario', '0.00', '15', '15.00', NULL, NULL),
(63, 1294, '2018-06-21 00:00:00', 'C1294-1', 523000000000, 'Cad$', 'Neil', 'Kitchener', 'Canada', 'Ontario', '0.00', '15', '15.00', NULL, NULL),
(64, 1293, '2018-06-20 00:00:00', 'C1293-1', 523000000000, 'Cad$', 'Alexandra', 'Toronto', 'Canada', 'Ontario', '0.00', '15', '15.00', NULL, NULL),
(65, 1292, '2018-06-20 00:00:00', 'C1292-1', 523000000000, 'Cad$', 'Allanah', 'Guelph', 'Canada', 'Ontario', '0.00', '15', '15.00', NULL, NULL),
(66, 1291, '2018-06-20 00:00:00', 'C1291-1', 523000000000, 'Cad$', 'Tyler', 'Etobicoke', 'Canada', 'Ontario', '7.63', '15', '45.44', NULL, NULL),
(67, 1290, '2018-06-20 00:00:00', 'C1290-1', 523000000000, 'Cad$', 'Shevaun', 'Brandon', 'Canada', 'Manitoba', '10.71', '15', '42.50', NULL, NULL),
(68, 1289, '2018-06-20 00:00:00', 'C1289-1', 523000000000, 'Cad$', 'Danielle', 'Keene', 'Canada', 'Ontario', '0.00', '15', '15.00', NULL, NULL),
(69, 1288, '2018-06-20 00:00:00', 'C1288-1', 523000000000, 'Cad$', 'Daniel', 'Toronto', 'Canada', 'Ontario', '43.55', '33.38', '255.93', NULL, NULL),
(70, 1287, '2018-06-20 00:00:00', 'C1287-1', 523000000000, 'Cad$', 'Jennifer', 'Kitchener', 'Canada', 'Ontario', '0.00', '15', '15.00', NULL, NULL),
(71, 1286, '2018-06-19 00:00:00', 'C1286-1', 522000000000, 'Cad$', '', 'Kitchener', 'Canada', 'Ontario', '0.00', '15', '15.00', NULL, NULL),
(72, 1285, '2018-06-19 00:00:00', 'C1285-1', 522000000000, 'Cad$', 'Sandro', 'Toronto', 'Canada', 'Ontario', '0.00', '15', '15.00', NULL, NULL),
(73, 1284, '2018-06-19 00:00:00', 'C1284-1', 522000000000, 'Cad$', 'Shevaun', 'Brandon', 'Canada', 'Manitoba', '9.93', '15', '66.90', NULL, NULL),
(74, 1283, '2018-06-14 00:00:00', 'C1283-1', 518000000000, 'Cad$', 'Raw Office', 'Toronto', 'Canada', 'Ontario', '33.94', '32.88', '252.06', NULL, NULL),
(75, 1282, '2018-06-13 00:00:00', 'C1282-1', 517000000000, 'Cad$', 'Kathy ', 'Brandon', 'Canada', 'Manitoba', '183.70', '15', '15.00', NULL, NULL),
(76, 1281, '2018-06-13 00:00:00', 'C1281-1', 517000000000, 'Cad$', 'Jessica', 'Etobicoke', 'Canada', 'Ontario', '71.97', '59.48', '456.01', NULL, NULL),
(77, 1279, '2018-06-11 00:00:00', 'C1279-1', 516000000000, 'Cad$', 'Sonny', 'Ancaster', 'Canada', 'Ontario', '37.00', '15.15', '116.13', NULL, NULL),
(78, 1278, '2018-06-11 00:00:00', 'C1278-1', 515000000000, 'Cad$', 'Thulasi ', 'Toronto', 'Canada', 'Ontario', '27.42', '15', '58.50', NULL, NULL),
(79, 1277, '2018-06-07 00:00:00', 'C1277-1', 513000000000, 'Cad$', 'Shevaun', 'Brandon', 'Canada', 'Manitoba', '13.46', '15', '85.02', NULL, NULL),
(80, 1276, '2018-06-07 00:00:00', 'C1276-1', 512000000000, 'Cad$', 'Rachelle', 'Brandon', 'Canada', 'Manitoba', '91.50', '15', '15.00', NULL, NULL),
(81, 1272, '2018-06-01 00:00:00', 'C1272-1', 507000000000, 'Cad$', 'Shevaun', 'Brandon', 'Canada', 'Manitoba', '96.23', '75.22', '576.71', NULL, NULL),
(82, 1270, '2018-05-29 00:00:00', 'C1270-1', 505000000000, 'Cad$', 'Jenna', 'North York', 'Canada', 'Ontario', '19.75', '15', '112.94', NULL, NULL),
(83, 1269, '2018-05-28 00:00:00', 'C1269-1', 504000000000, 'Cad$', 'Shevaun', 'Brandon', 'Canada', 'Manitoba', '28.40', '27.17', '208.30', NULL, NULL),
(84, 1268, '2018-05-23 00:00:00', 'C1268-1', 501000000000, 'Cad$', 'Sonny', 'Ancaster', 'Canada', 'Ontario', '16.73', '15.3', '117.30', NULL, NULL),
(85, 1267, '2018-05-20 00:00:00', 'C1267-1', 498000000000, 'Cad$', 'Yan', 'Toronto', 'Canada', 'Ontario', '6.92', '15', '48.25', NULL, NULL),
(86, 1265, '2018-05-16 00:00:00', 'C1265-1', 488000000000, 'Cad$', 'John', 'Toronto', 'Canada', 'Ontario', '6.76', '15', '52.84', NULL, NULL),
(87, 1264, '2018-05-15 00:00:00', 'C1264-1', 487000000000, 'Cad$', 'Sherri ', 'Oakville', 'Canada', 'Ontario', '1.67', '15', '19.23', NULL, NULL),
(88, 1263, '2018-05-15 00:00:00', 'C1263-1', 487000000000, 'Cad$', 'Sherri', 'Oakville', 'Canada', 'Ontario', '23.04', '20.03', '153.53', NULL, NULL),
(89, 1262, '2018-05-11 00:00:00', 'C1262-1', 485000000000, 'Cad$', 'Tyler', 'Etobicoke', 'Canada', 'Ontario', '11.53', '15', '83.12', NULL, NULL),
(90, 1261, '2018-05-07 00:00:00', 'C1261-1', 483000000000, 'Cad$', 'Shevaun', 'Brandon', 'Canada', 'Manitoba', '20.23', '17.48', '134.01', NULL, NULL),
(91, 1260, '2018-05-07 00:00:00', 'C1260-1', 483000000000, 'Cad$', 'Robin', 'Wyebridge', 'Canada', 'Ontario', '6.89', '15', '51.77', NULL, NULL),
(92, 1259, '2018-05-05 00:00:00', 'C1259-1', 482000000000, 'Cad$', 'jeffrey', 'Toronto', 'Canada', 'Ontario', '2.40', '15', '27.56', NULL, NULL),
(93, 1258, '2018-05-03 00:00:00', 'C1258-1', 482000000000, 'Cad$', 'Sean', 'Niagara Falls', 'Canada', 'Ontario', '11.09', '15', '73.00', NULL, NULL),
(94, 1256, '2018-05-02 00:00:00', 'C1256-1', 481000000000, 'Cad$', 'Daniel', 'Toronto', 'Canada', 'Ontario', '52.64', '36.45', '279.42', NULL, NULL),
(95, 1255, '2018-04-30 00:00:00', 'C1255-1', 462000000000, 'Cad$', 'Tracy ', 'Toronto', 'Canada', 'Ontario', '3.72', '15', '36.54', NULL, NULL),
(96, 1254, '2018-04-30 00:00:00', 'C1254-1', 462000000000, 'Cad$', 'Marvin', 'North York', 'Canada', 'Ontario', '1.01', '15', '21.24', NULL, NULL),
(97, 1253, '2018-04-27 00:00:00', 'C1253-1', 461000000000, 'Cad$', 'John', 'Toronto', 'Canada', 'Ontario', '11.44', '15', '87.28', NULL, NULL),
(98, 1252, '2018-04-26 00:00:00', 'C1252-1', 460000000000, 'Cad$', 'Shevaun', 'Brandon', 'Canada', 'Manitoba', '41.16', '30.95', '237.27', NULL, NULL),
(99, 1250, '2018-04-24 00:00:00', 'C1250-1', 459000000000, 'Cad$', 'Victor ', 'Toronto', 'Canada', 'Ontario', '6.89', '15', '58.50', NULL, NULL),
(100, 1248, '2018-04-19 00:00:00', 'C1248-1', 457000000000, 'Cad$', 'Lisa ', 'Toronto', 'Canada', 'Ontario', '8.64', '15', '64.30', NULL, NULL),
(101, 1247, '2018-04-19 00:00:00', 'C1247-1', 457000000000, 'Cad$', 'Cristina', 'Toronto', 'Canada', 'Ontario', '25.74', '20.1', '154.10', NULL, NULL),
(102, 1246, '2018-04-15 00:00:00', 'C1246-1', 455000000000, 'Cad$', 'Nicolas', 'Montreal', 'Canada', 'Quebec', '17.22', '15', '89.76', NULL, NULL),
(103, 1245, '2018-04-13 00:00:00', 'C1245-1', 454000000000, 'Cad$', 'Sherri', 'Oakville', 'Canada', 'Ontario', '20.65', '15', '76.04', NULL, NULL),
(104, 1242, '2018-04-03 00:00:00', 'C1242-1', 213000000000, 'Cad$', 'Daniel', 'Toronto', 'Canada', 'Ontario', '35.52', '28.11', '215.54', NULL, NULL),
(105, 1241, '2018-03-28 00:00:00', 'C1241-1', 205000000000, 'Cad$', 'Sherri', 'Oakville', 'Canada', 'Ontario', '129.50', '111', '851.01', NULL, NULL),
(106, 1240, '2018-03-28 00:00:00', 'C1240-1', 205000000000, 'Cad$', 'Tracy ', 'Toronto', 'Canada', 'Ontario', '7.15', '15', '58.50', NULL, NULL),
(107, 1238, '2018-03-26 00:00:00', 'C1238-1', 199000000000, 'Cad$', 'Meagan', 'Toronto', 'Canada', 'Ontario', '9.23', '15', '72.34', NULL, NULL),
(108, 1237, '2018-03-24 00:00:00', 'C1237-1', 197000000000, 'Cad$', 'Yan', 'Toronto', 'Canada', 'Ontario', '6.72', '15', '54.08', NULL, NULL),
(109, 1235, '2018-03-20 00:00:00', 'C1235-1', 192000000000, 'Cad$', 'Sherri', 'Oakville', 'Canada', 'Ontario', '19.78', '18.03', '138.21', NULL, NULL),
(110, 1234, '2018-03-19 00:00:00', 'C1234-1', 191000000000, 'Cad$', 'Matt', 'Brandon', 'Canada', 'Manitoba', '9.49', '15', '63.72', NULL, NULL),
(111, 1233, '2018-03-19 00:00:00', 'C1233-1', 191000000000, 'Cad$', 'Robyn', 'Brandon', 'Canada', 'Manitoba', '10.12', '15', '67.47', NULL, NULL),
(112, 1232, '2018-03-15 00:00:00', 'C1232-1', 189000000000, 'Cad$', 'Sherri', 'Oakville', 'Canada', 'Ontario', '29.86', '22.22', '170.38', NULL, NULL),
(113, 1231, '2018-03-15 00:00:00', 'C1231-1', 188000000000, 'Cad$', 'Tyler', 'Etobicoke', 'Canada', 'Ontario', '7.63', '15', '45.44', NULL, NULL),
(114, 1229, '2018-03-07 00:00:00', 'C1229-1', 183000000000, 'Cad$', 'Zanina', 'Ancaster', 'Canada', 'Ontario', '30.72', '28.35', '217.34', NULL, NULL),
(115, 1227, '2018-03-05 00:00:00', 'C1227-1', 182000000000, 'Cad$', 'Shevaun', 'Brandon', 'Canada', 'Manitoba', '10.14', '15', '83.00', NULL, NULL),
(116, 1226, '2018-03-05 00:00:00', 'C1226-1', 182000000000, 'Cad$', 'Shevaun', 'Brandon', 'Canada', 'Manitoba', '9.06', '15', '59.13', NULL, NULL),
(117, 1225, '2018-03-02 00:00:00', 'C1225-1', 180000000000, 'Cad$', 'Daniel', 'Toronto', 'Canada', 'Ontario', '16.05', '15', '98.92', NULL, NULL),
(118, 1223, '2018-03-01 00:00:00', 'C1223-1', 179000000000, 'Cad$', 'Cindy', 'Toronto', 'Canada', 'Ontario', '12.29', '15', '77.47', NULL, NULL),
(119, 1222, '2018-03-01 00:00:00', 'C1222-1', 179000000000, 'Cad$', 'Nicole ', 'Montreal', 'Canada', 'Quebec', '7.73', '15', '52.80', NULL, NULL),
(120, 1220, '2018-02-14 00:00:00', 'C1220-1', 164000000000, 'Cad$', 'Tyler', 'Etobicoke', 'Canada', 'Ontario', '7.65', '15', '55.89', NULL, NULL),
(121, 1216, '2018-02-07 00:00:00', 'C1216-1', 155000000000, 'Cad$', 'Nicole ', 'Montreal', 'Canada', 'Quebec', '8.14', '15', '51.54', NULL, NULL),
(122, 1215, '2018-02-01 00:00:00', 'C1215-1', 149000000000, 'Cad$', 'Ian ', 'Oakville', 'Canada', 'Ontario', '20.40', '17.02', '130.46', NULL, NULL),
(123, 1214, '2018-01-31 00:00:00', 'C1214-1', 148000000000, 'Cad$', '', 'Mississauga', 'Canada', 'Ontario', '24.54', '19.26', '147.66', NULL, NULL),
(124, 1213, '2018-01-29 00:00:00', 'C1213-1', 146000000000, 'Cad$', 'Ian ', 'Oakville', 'Canada', 'Ontario', '146.30', '122.13', '936.31', NULL, NULL),
(125, 1212, '2018-01-28 00:00:00', 'C1212-1', 145000000000, 'Cad$', 'Yan', 'Toronto', 'Canada', 'Ontario', '14.16', '15', '99.44', NULL, NULL),
(126, 1210, '2018-01-24 00:00:00', 'C1210-1', 139000000000, 'Cad$', 'Business', 'Laval', 'Canada', 'Quebec', '13.41', '15', '75.88', NULL, NULL),
(127, 1209, '2018-01-23 00:00:00', 'C1209-1', 138000000000, 'Cad$', 'Daniel', 'Toronto', 'Canada', 'Ontario', '21.77', '17', '130.31', NULL, NULL),
(128, 1207, '2018-01-15 00:00:00', 'C1207-1', 128000000000, 'Cad$', 'Sherri', 'Oakville', 'Canada', 'Ontario', '9.11', '15', '58.39', NULL, NULL),
(129, 1205, '2018-01-08 00:00:00', 'C1205-1', 121000000000, 'Cad$', 'Sherri', 'Oakville', 'Canada', 'Ontario', '9.44', '15', '69.30', NULL, NULL),
(130, 1202, '2018-01-04 00:00:00', 'C1202-1', 115000000000, 'Cad$', 'Tyler', 'Etobicoke', 'Canada', 'Ontario', '17.11', '15', '99.38', NULL, NULL),
(131, 1201, '2018-01-04 00:00:00', 'C1201-1', 115000000000, 'Cad$', 'Victor ', 'Toronto', 'Canada', 'Ontario', '6.89', '15', '58.50', NULL, NULL),
(132, 1200, '2018-01-02 00:00:00', 'C1200-1', 112000000000, 'Cad$', 'Nicole ', 'Montreal', 'Canada', 'Quebec', '5.24', '15', '42.04', NULL, NULL),
(133, 1199, '2017-12-29 00:00:00', 'C1199-1', 108000000000, 'Cad$', 'Nicole ', 'Montreal', 'Canada', 'Quebec', '11.11', '15', '65.17', NULL, NULL),
(134, 1198, '2017-12-20 00:00:00', 'C1198-1', 97746518030, 'Cad$', 'Katherine ', 'Brandon', 'Canada', 'Manitoba', '20.59', '16.51', '126.59', NULL, NULL),
(135, 1197, '2017-12-19 00:00:00', 'C1197-1', 96305676302, 'Cad$', 'John', 'Toronto', 'Canada', 'Ontario', '4.94', '15', '43.78', NULL, NULL),
(136, 1196, '2017-12-18 00:00:00', 'C1196-1', 94737924110, 'Cad$', 'Daniel', 'Toronto', 'Canada', 'Ontario', '16.01', '15', '98.73', NULL, NULL),
(137, 1195, '2017-12-15 00:00:00', 'C1195-1', 90704183310, 'Cad$', 'EUNICE', 'STEINBACH', 'Canada', 'Manitoba', '2.05', '15', '25.70', NULL, NULL),
(138, 1193, '2017-12-15 00:00:00', 'C1193-1', 89913065486, 'Cad$', 'Sherri', 'Oakville', 'Canada', 'Ontario', '20.00', '16.26', '124.63', NULL, NULL),
(139, 1192, '2017-12-13 00:00:00', 'C1192-1', 86772580366, 'Cad$', 'Sherri', 'Oakville', 'Canada', 'Ontario', '5.20', '15', '47.74', NULL, NULL),
(140, 1191, '2017-12-12 00:00:00', 'C1191-1', 85401370638, 'Cad$', 'Shevaun', 'Brandon', 'Canada', 'Manitoba', '3.90', '15', '83.00', NULL, NULL),
(141, 1189, '2017-12-11 00:00:00', 'C1189-1', 83431718926, 'Cad$', 'Christina ', 'Toronto', 'Canada', 'Ontario', '23.61', '19.47', '149.25', NULL, NULL),
(142, 1188, '2017-12-07 00:00:00', 'C1188-1', 76862390286, 'Cad$', 'Jennifer', 'Toronto', 'Canada', 'Ontario', '6.96', '15', '47.10', NULL, NULL),
(143, 1185, '2017-12-05 00:00:00', 'C1185-1', 73109798926, 'Cad$', 'Sherri', 'Oakville', 'Canada', 'Ontario', '4.91', '15', '40.88', NULL, NULL),
(144, 1184, '2017-12-01 00:00:00', 'C1184-1', 66441445390, 'Cad$', 'Tyler', 'Etobicoke', 'Canada', 'Ontario', '4.68', '15', '36.31', NULL, NULL),
(145, 1183, '2017-11-30 00:00:00', 'C1183-1', 64845381646, 'Cad$', 'Sherri', 'Oakville', 'Canada', 'Ontario', '32.58', '22.63', '173.47', NULL, NULL),
(146, 1182, '2017-11-28 00:00:00', 'C1182-1', 62327750670, 'Cad$', 'Sherri', 'Oakville', 'Canada', 'Ontario', '6.50', '15', '58.50', NULL, NULL),
(147, 1181, '2017-11-28 00:00:00', 'C1181-1', 62217977870, 'Cad$', 'Zanina', 'Ancaster', 'Canada', 'Ontario', '47.74', '41.15', '315.46', NULL, NULL),
(148, 1180, '2017-11-27 00:00:00', 'C1180-1', 59293106190, 'Cad$', 'Tyler', 'Etobicoke', 'Canada', 'Ontario', '9.25', '15', '61.12', NULL, NULL),
(149, 1179, '2017-11-27 00:00:00', 'C1179-1', 58893598734, 'Cad$', 'Madeline', 'Vancouver', 'Canada', 'British Columbia', '6.60', '15', '58.50', NULL, NULL),
(150, 1176, '2017-11-21 00:00:00', 'C1176-1', 44942163982, 'Cad$', 'Sherri', 'Oakville', 'Canada', 'Ontario', '22.17', '20.24', '155.17', NULL, NULL),
(151, 1175, '2017-11-21 00:00:00', 'C1175-1', 44632834062, 'Cad$', 'Madeline', 'Vancouver', 'Canada', 'British Columbia', '18.58', '15.85', '121.54', NULL, NULL),
(152, 1173, '2017-11-15 00:00:00', 'C1173-1', 35624517646, 'Cad$', 'Darren', 'West St. Paul', 'Canada', 'Manitoba', '9.59', '15', '81.40', NULL, NULL),
(153, 1172, '2017-11-13 00:00:00', 'C1172-1', 33268662286, 'Cad$', 'Nicole ', 'Montreal', 'Canada', 'Quebec', '6.56', '15', '43.78', NULL, NULL),
(154, 1171, '2017-11-09 00:00:00', 'C1171-1', 28465692686, 'Cad$', 'Sherri', 'Oakville', 'Canada', 'Ontario', '0.00', '15', '74.65', NULL, NULL),
(155, 1170, '2017-11-08 00:00:00', 'C1170-1', 27626340366, 'Cad$', 'Kelly ', 'Vancouver', 'Canada', 'British Columbia', '6.24', '15', '49.20', NULL, NULL),
(156, 1169, '2017-11-08 00:00:00', 'C1169-1', 25793298446, 'Cad$', 'Stephanie', 'Oakville', 'Canada', 'Ontario', '17.21', '15', '102.86', NULL, NULL),
(157, 1168, '2017-11-07 00:00:00', 'C1168-1', 24673583118, 'Cad$', 'Shevaun', 'Brandon', 'Canada', 'Manitoba', '6.91', '15', '45.80', NULL, NULL),
(158, 1167, '2017-11-06 00:00:00', 'C1167-1', 21954134030, 'Cad$', 'Sherri', 'Oakville', 'Canada', 'Ontario', '0.00', '15', '58.50', NULL, NULL),
(159, 1166, '2017-11-03 00:00:00', 'C1166-1', 16851697678, 'Cad$', 'Louise ', 'Guelph ', 'Canada', 'Ontario', '19.40', '17.06', '130.77', NULL, NULL),
(160, 1165, '2017-11-02 00:00:00', 'C1165-1', 15732310030, 'Cad$', 'Matt', 'Brandon', 'Canada', 'Manitoba', '6.76', '15', '41.44', NULL, NULL),
(161, 1164, '2017-11-01 00:00:00', 'C1164-1', 14843641870, 'Cad$', 'Daniel', 'Toronto', 'Canada', 'Ontario', '20.97', '15.62', '119.74', NULL, NULL),
(162, 1163, '2017-10-31 00:00:00', 'C1163-1', 13597573134, 'Cad$', 'Arlene', 'Brandon', 'Canada', 'Manitoba', '15.60', '15.3', '117.30', NULL, NULL),
(163, 1162, '2017-10-30 00:00:00', 'C1162-1', 11416993806, 'Cad$', 'Sherri', 'Oakville', 'Canada', 'Ontario', '0.00', '15', '38.40', NULL, NULL),
(164, 1161, '2017-10-26 00:00:00', 'C1161-1', 6965362702, 'Cad$', 'Madeline', 'Vancouver', 'Canada', 'British Columbia', '9.73', '15', '70.39', NULL, NULL),
(165, 1161, '2017-10-26 00:00:00', 'C1161-2', 6965362702, 'Cad$', 'Madeline', 'Vancouver', 'Canada', 'British Columbia', '5.40', '15', '44.70', NULL, NULL),
(166, 1160, '2017-10-26 00:00:00', 'C1160-1', 6623494158, 'Cad$', 'Tyler', 'Etobicoke', 'Canada', 'Ontario', '3.82', '15', '32.34', NULL, NULL),
(167, 1159, '2017-10-26 00:00:00', 'C1159-1', 6609960974, 'Cad$', 'Shelley', 'Toronto', 'Canada', 'Ontario', '7.17', '15', '52.02', NULL, NULL),
(168, 1158, '2017-10-26 00:00:00', 'C1158-1', 6363545614, 'Cad$', 'Rachelle', 'Brandon', 'Canada', 'Manitoba', '11.23', '15', '78.14', NULL, NULL),
(169, 1157, '2017-10-25 00:00:00', 'C1157-1', 5854258062, 'Cad$', 'Michelle ', 'Brandon', 'Canada', 'Manitoba', '11.86', '15', '88.18', NULL, NULL),
(170, 1156, '2017-10-25 00:00:00', 'C1156-1', 5854195598, 'Cad$', 'Zanina', 'Ancaster', 'Canada', 'Ontario', '11.14', '15', '83.00', NULL, NULL),
(171, 1155, '2017-10-25 00:00:00', 'C1155-1', 5854094606, 'Cad$', 'Sherri', 'Oakville', 'Canada', 'Ontario', '0.00', '15', '25.80', NULL, NULL),
(172, 1154, '2017-10-24 00:00:00', 'C1154-1', 5851474510, 'Cad$', 'Christina ', 'Toronto', 'Canada', 'Ontario', '11.09', '15', '71.93', NULL, NULL),
(173, 1153, '2017-10-24 00:00:00', 'C1153-1', 5850843662, 'Cad$', 'Tyler', 'Etobicoke', 'Canada', 'Ontario', '12.41', '15', '91.07', NULL, NULL),
(174, 1152, '2017-10-20 00:00:00', 'C1152-1', 5842345678, 'Cad$', 'Sherri', 'Oakville', 'Canada', 'Ontario', '0.00', '15', '18.66', NULL, NULL),
(175, 1152, '2017-10-20 00:00:00', 'C1152-2', 5842345678, 'Cad$', 'Sherri', 'Oakville', 'Canada', 'Ontario', '0.00', '15', '36.19', NULL, NULL),
(176, 1151, '2017-10-19 00:00:00', 'C1151-1', 5839114446, 'Cad$', 'Sherri', 'Oakville', 'Canada', 'Ontario', '0.00', '15', '36.18', NULL, NULL),
(177, 1150, '2017-10-18 00:00:00', 'C1150-1', 5837364878, 'Cad$', 'Angela', 'Toronto', 'Canada', 'Ontario', '8.79', '15', '54.94', NULL, NULL),
(178, 1149, '2017-10-18 00:00:00', 'C1149-1', 5836482766, 'Cad$', 'Sherri', 'Oakville', 'Canada', 'Ontario', '0.00', '15', '29.88', NULL, NULL),
(179, 1148, '2017-10-18 00:00:00', 'C1148-1', 5836429582, 'Cad$', 'Scott', 'Toronto', 'Canada', 'Ontario', '68.53', '48.62', '372.75', NULL, NULL),
(180, 1147, '2017-10-18 00:00:00', 'C1147-1', 5836420878, 'Cad$', 'Sherri', 'Oakville', 'Canada', 'Ontario', '6.07', '15', '44.15', NULL, NULL),
(181, 1147, '2017-10-18 00:00:00', 'C1147-2', 5836420878, 'Cad$', 'Sherri', 'Oakville', 'Canada', 'Ontario', '1.14', '15', '19.74', NULL, NULL),
(182, 1146, '2017-10-16 00:00:00', 'C1146-1', 5832142990, 'Cad$', 'Angela', 'Toronto', 'Canada', 'Ontario', '1.19', '15', '19.96', NULL, NULL),
(183, 1145, '2017-10-16 00:00:00', 'C1145-1', 5831871630, 'Cad$', 'Nicole ', 'Montreal', 'Canada', 'Quebec', '3.09', '15', '29.01', NULL, NULL),
(184, 1144, '2017-10-16 00:00:00', 'C1144-1', 5831381582, 'Cad$', 'Kathy ', 'Brandon', 'Canada', 'Manitoba', '23.86', '15', '15.00', NULL, NULL),
(185, 1143, '2017-10-13 00:00:00', 'C1143-1', 5824758478, 'Cad$', 'Rachelle', 'Brandon', 'Canada', 'Manitoba', '91.50', '15', '15.00', NULL, NULL),
(186, 1142, '2017-10-13 00:00:00', 'C1142-1', 5823579918, 'Cad$', 'Victor ', 'Toronto', 'Canada', 'Ontario', '2.99', '15', '28.02', NULL, NULL),
(187, 1141, '2017-10-12 00:00:00', 'C1141-1', 5821905102, 'Cad$', 'Rachelle', 'Brandon', 'Canada', 'Manitoba', '22.88', '20.4', '156.40', NULL, NULL),
(188, 1140, '2017-10-11 00:00:00', 'C1140-1', 5819215566, 'Cad$', 'Shevaun', 'Brandon', 'Canada', 'Manitoba', '3.20', '15', '31.71', NULL, NULL),
(189, 1139, '2017-10-11 00:00:00', 'C1139-1', 5818866574, 'Cad$', 'Nicole ', 'Montreal', 'Canada', 'Quebec', '14.97', '15', '98.33', NULL, NULL),
(190, 1138, '2017-10-06 00:00:00', 'C1138-1', 5805460046, 'Cad$', 'Kathy ', 'Brandon', 'Canada', 'Manitoba', '23.86', '15', '15.00', NULL, NULL),
(191, 1137, '2017-10-06 00:00:00', 'C1137-1', 5805355982, 'Cad$', 'Zanina', 'Ancaster', 'Canada', 'Ontario', '11.15', '15', '83.00', NULL, NULL),
(192, 1136, '2017-10-06 00:00:00', 'C1136-1', 5805321486, 'Cad$', 'Sherri', 'Oakville', 'Canada', 'Ontario', '38.12', '26.42', '202.58', NULL, NULL),
(193, 1136, '2017-10-06 00:00:00', 'C1136-2', 5805321486, 'Cad$', 'Sherri', 'Oakville', 'Canada', 'Ontario', '1.43', '15', '17.66', NULL, NULL),
(194, 1136, '2017-10-06 00:00:00', 'C1136-3', 5805321486, 'Cad$', 'Sherri', 'Oakville', 'Canada', 'Ontario', '7.71', '15', '52.42', NULL, NULL),
(195, 1135, '2017-10-05 00:00:00', 'C1135-1', 5801947406, 'Cad$', 'Arlene', 'Brandon', 'Canada', 'Manitoba', '12.61', '15', '74.48', NULL, NULL),
(196, 1134, '2017-10-05 00:00:00', 'C1134-1', 5801698318, 'Cad$', 'Tyler', 'Etobicoke', 'Canada', 'Ontario', '5.71', '15', '49.00', NULL, NULL),
(197, 1133, '2017-09-28 00:00:00', 'C1133-1', 5781165902, 'Cad$', 'Sherri', 'Oakville', 'Canada', 'Ontario', '6.50', '15', '58.50', NULL, NULL),
(198, 1132, '2017-09-27 00:00:00', 'C1132-1', 5778883790, 'Cad$', 'Rachelle', 'Brandon', 'Canada', 'Manitoba', '29.51', '24.02', '184.15', NULL, NULL),
(199, 1132, '2017-09-27 00:00:00', 'C1132-2', 5778883790, 'Cad$', 'Rachelle', 'Brandon', 'Canada', 'Manitoba', '2.05', '15', '25.70', NULL, NULL),
(200, 1131, '2017-09-25 00:00:00', 'C1131-1', 5773109326, 'Cad$', 'Madeline', 'Vancouver', 'Canada', 'British Columbia', '6.05', '15', '47.24', NULL, NULL),
(201, 1130, '2017-09-21 00:00:00', 'C1130-1', 5763086990, 'Cad$', 'Lori', 'Edmonton', 'Canada', 'Alberta', '0.69', '15', '24.00', NULL, NULL),
(202, 1129, '2017-09-21 00:00:00', 'C1129-1', 5762503630, 'Cad$', 'Destiny', 'Brandon', 'Canada', 'Manitoba', '22.88', '20.4', '156.40', NULL, NULL),
(203, 1128, '2017-09-20 00:00:00', 'C1128-1', 5760870862, 'Cad$', 'Tyler', 'Etobicoke', 'Canada', 'Ontario', '11.40', '15', '76.12', NULL, NULL),
(204, 1127, '2017-09-19 00:00:00', 'C1127-1', 5757864206, 'Cad$', 'Louise ', 'Guelph ', 'Canada', 'Ontario', '23.46', '19.58', '150.08', NULL, NULL),
(205, 1126, '2017-09-18 00:00:00', 'C1126-1', 5755624078, 'Cad$', 'Izabela', 'Calgary', 'Canada', 'Alberta', '2.76', '15', '52.53', NULL, NULL),
(206, 1125, '2017-09-18 00:00:00', 'C1125-1', 5754988622, 'Cad$', 'Madeline', 'Vancouver', 'Canada', 'British Columbia', '6.61', '15', '52.36', NULL, NULL),
(207, 1124, '2017-09-15 00:00:00', 'C1124-1', 5747364686, 'Cad$', 'Katherine ', 'Brandon', 'Canada', 'Manitoba', '19.55', '15.11', '115.86', NULL, NULL),
(208, 1123, '2017-09-14 00:00:00', 'C1123-1', 5744617678, 'Cad$', 'Madeline', 'Vancouver', 'Canada', 'British Columbia', '16.25', '15.07', '115.53', NULL, NULL),
(209, 1122, '2017-09-14 00:00:00', 'C1122-1', 5744311566, 'Cad$', 'Arlene', 'Brandon', 'Canada', 'Manitoba', '15.60', '15.3', '117.30', NULL, NULL),
(210, 1121, '2017-09-11 00:00:00', 'C1121-1', 5736497870, 'Cad$', 'Zanina', 'Ancaster', 'Canada', 'Ontario', '6.82', '15', '49.77', NULL, NULL),
(211, 1120, '2017-09-07 00:00:00', 'C1120-1', 5726586126, 'Cad$', 'Destiny', 'Brandon', 'Canada', 'Manitoba', '22.88', '20.4', '156.40', NULL, NULL),
(212, 1119, '2017-09-06 00:00:00', 'C1119-1', 5723161678, 'Cad$', 'Haroon', 'Oakville', 'Canada', 'Ontario', '13.78', '15', '84.34', NULL, NULL),
(213, 1118, '2017-09-04 00:00:00', 'C1118-1', 5715942542, 'Cad$', 'Lori', 'Edmonton', 'Canada', 'Alberta', '2.54', '15', '24.00', NULL, NULL),
(214, 1118, '2017-09-04 00:00:00', 'C1118-2', 5715942542, 'Cad$', 'Lori', 'Edmonton', 'Canada', 'Alberta', '2.54', '15', '39.00', NULL, NULL),
(215, 1117, '2017-08-30 00:00:00', 'C1117-1', 5702387406, 'Cad$', 'Zanina', 'Ancaster', 'Canada', 'Ontario', '29.35', '25.73', '197.23', NULL, NULL),
(216, 1116, '2017-08-29 00:00:00', 'C1116-1', 5698392398, 'Cad$', 'Haroon', 'Oakville', 'Canada', 'Ontario', '37.36', '31.84', '244.10', NULL, NULL),
(217, 1115, '2017-08-25 00:00:00', 'C1115-1', 5686670990, 'Cad$', 'Angela', 'Toronto', 'Canada', 'Ontario', '10.08', '15', '77.14', NULL, NULL),
(218, 1114, '2017-08-24 00:00:00', 'C1114-1', 5684264846, 'Cad$', 'Linda', 'Toronto', 'Canada', 'Ontario', '10.45', '15', '71.11', NULL, NULL),
(219, 1113, '2017-08-24 00:00:00', 'C1113-1', 5683689038, 'Cad$', 'Destiny', 'Brandon', 'Canada', 'Manitoba', '22.88', '20.4', '156.40', NULL, NULL),
(220, 1112, '2017-08-24 00:00:00', 'C1112-1', 5683479630, 'Cad$', 'Kelly ', 'Vancouver', 'Canada', 'British Columbia', '6.88', '15', '54.00', NULL, NULL),
(221, 1111, '2017-08-23 00:00:00', 'C1111-1', 5680807630, 'Cad$', 'Kelly ', 'Vancouver', 'Canada', 'British Columbia', '5.55', '15', '54.74', NULL, NULL),
(222, 1111, '2017-08-23 00:00:00', 'C1111-2', 5680807630, 'Cad$', 'Kelly ', 'Vancouver', 'Canada', 'British Columbia', '0.57', '15', '16.42', NULL, NULL),
(223, 1110, '2017-08-21 00:00:00', 'C1110-1', 5675517646, 'Cad$', 'Haroon', 'Oakville', 'Canada', 'Ontario', '10.68', '15', '71.55', NULL, NULL),
(224, 1109, '2017-08-15 00:00:00', 'C1109-1', 5659084942, 'Cad$', 'Victor ', 'Toronto', 'Canada', 'Ontario', '14.03', '15', '87.56', NULL, NULL),
(225, 1108, '2017-08-14 00:00:00', 'C1108-1', 5656433166, 'Cad$', 'Cynthia ', 'Oakville', 'Canada', 'Ontario', '12.34', '15', '70.55', NULL, NULL),
(226, 1106, '2017-08-11 00:00:00', 'C1106-1', 5647789646, 'Cad$', 'Arlene', 'Brandon', 'Canada', 'Manitoba', '9.99', '15', '68.00', NULL, NULL),
(227, 1105, '2017-08-10 00:00:00', 'C1105-1', 5644418446, 'Cad$', 'Destiny', 'Brandon', 'Canada', 'Manitoba', '22.88', '20.4', '156.40', NULL, NULL),
(228, 1104, '2017-08-09 00:00:00', 'C1104-1', 5642451918, 'Cad$', 'Haroon', 'Oakville', 'Canada', 'Ontario', '18.53', '16.31', '125.02', NULL, NULL),
(229, 1104, '2017-08-09 00:00:00', 'C1104-2', 5642451918, 'Cad$', 'Haroon', 'Oakville', 'Canada', 'Ontario', '2.05', '15', '27.07', NULL, NULL),
(230, 1102, '2017-08-04 00:00:00', 'C1102-1', 5628100814, 'Cad$', 'Angela', 'Toronto', 'Canada', 'Ontario', '0.00', '15', '30.33', NULL, NULL),
(231, 1101, '2017-08-03 00:00:00', 'C1101-1', 5625697998, 'Cad$', 'Ian ', 'Oakville', 'Canada', 'Ontario', '93.60', '16.37', '125.49', NULL, NULL),
(232, 1101, '2017-08-03 00:00:00', 'C1101-2', 5625697998, 'Cad$', 'Ian ', 'Oakville', 'Canada', 'Ontario', '93.60', '32.74', '250.98', NULL, NULL),
(233, 1100, '2017-08-03 00:00:00', 'C1100-1', 5625532238, 'Cad$', 'Guylaine', 'Toronto', 'Canada', 'Ontario', '0.00', '15', '30.33', NULL, NULL),
(234, 1099, '2017-08-02 00:00:00', 'C1099-1', 5622520718, 'Cad$', 'Haroon', 'Oakville', 'Canada', 'Ontario', '9.74', '15', '70.20', NULL, NULL),
(235, 1098, '2017-07-31 00:00:00', 'C1098-1', 5615941390, 'Cad$', 'Haroon', 'Oakville', 'Canada', 'Ontario', '27.62', '25.45', '195.12', NULL, NULL),
(236, 1097, '2017-07-27 00:00:00', 'C1097-1', 5604859086, 'Cad$', 'Destiny', 'Brandon', 'Canada', 'Manitoba', '22.88', '20.4', '156.40', NULL, NULL),
(237, 1096, '2017-07-25 00:00:00', 'C1096-1', 5599940046, 'Cad$', 'Louise ', 'Guelph ', 'Canada', 'Ontario', '13.87', '15', '93.60', NULL, NULL),
(238, 1095, '2017-07-25 00:00:00', 'C1095-1', 5599704526, 'Cad$', 'Susy', 'Toronto', 'Canada', 'Ontario', '12.38', '15', '122.64', NULL, NULL),
(239, 1095, '2017-07-25 00:00:00', 'C1095-2', 5599704526, 'Cad$', 'Susy', 'Toronto', 'Canada', 'Ontario', '1.08', '15', '24.40', NULL, NULL),
(240, 1094, '2017-07-24 00:00:00', 'C1094-1', 5595847246, 'Cad$', 'Guylaine', 'Toronto', 'Canada', 'Ontario', '12.19', '15', '80.56', NULL, NULL),
(241, 1094, '2017-07-24 00:00:00', 'C1094-2', 5595847246, 'Cad$', 'Guylaine', 'Toronto', 'Canada', 'Ontario', '4.92', '15', '42.68', NULL, NULL),
(242, 1093, '2017-07-21 00:00:00', 'C1093-1', 5580593422, 'Cad$', 'Susan', 'Ottawa', 'Canada', 'Ontario', '14.04', '15', '96.62', NULL, NULL),
(243, 1093, '2017-07-21 00:00:00', 'C1093-2', 5580593422, 'Cad$', 'Susan', 'Ottawa', 'Canada', 'Ontario', '1.40', '15', '23.92', NULL, NULL),
(244, 1092, '2017-07-13 00:00:00', 'C1092-1', 5532449870, 'Cad$', 'Laurie', 'Pickering', 'Canada', 'Ontario', '17.58', '16.13', '123.65', NULL, NULL),
(245, 1091, '2017-07-13 00:00:00', 'C1091-1', 5532325710, 'Cad$', 'Destiny', 'Brandon', 'Canada', 'Manitoba', '22.88', '20.4', '156.40', NULL, NULL),
(246, 1090, '2017-07-06 00:00:00', 'C1090-1', 5497318990, 'Cad$', 'Victor ', 'Toronto', 'Canada', 'Ontario', '5.30', '15', '49.65', NULL, NULL),
(247, 1089, '2017-07-06 00:00:00', 'C1089-2', 5495659214, 'Cad$', 'Daniel', 'Toronto', 'Canada', 'Ontario', '19.28', '16.54', '126.81', NULL, NULL),
(248, 1088, '2017-07-04 00:00:00', 'C1088-2', 5486126542, 'Cad$', 'Madeline', 'Vancouver', 'Canada', 'British Columbia', '6.00', '15', '52.67', NULL, NULL),
(249, 1088, '2017-07-04 00:00:00', 'C1088-1', 5486126542, 'Cad$', 'Madeline', 'Vancouver', 'Canada', 'British Columbia', '6.00', '15', '52.67', NULL, NULL),
(250, 1087, '2017-06-29 00:00:00', 'C1087-1', 5457790094, 'Cad$', 'Victor ', 'Toronto', 'Canada', 'Ontario', '8.03', '15', '63.85', NULL, NULL),
(251, 1086, '2017-06-29 00:00:00', 'C1086-1', 5457738766, 'Cad$', 'Cynthia ', 'Oakville', 'Canada', 'Ontario', '25.94', '25.04', '191.96', NULL, NULL),
(252, 1086, '2017-06-29 00:00:00', 'C1086-2', 5457738766, 'Cad$', 'Cynthia ', 'Oakville', 'Canada', 'Ontario', '3.51', '15', '35.76', NULL, NULL),
(253, 1085, '2017-06-28 00:00:00', 'C1085-1', 5449718158, 'Cad$', 'Madeline', 'Vancouver', 'Canada', 'British Columbia', '4.66', '15', '44.57', NULL, NULL),
(254, 1084, '2017-06-20 00:00:00', 'C1084-1', 5402529550, 'Cad$', 'Cynthia ', 'Oakville', 'Canada', 'Ontario', '1.35', '15', '22.08', NULL, NULL),
(255, 1083, '2017-06-20 00:00:00', 'C1083-1', 5402500814, 'Cad$', 'Cynthia ', 'Oakville', 'Canada', 'Ontario', '4.71', '15', '35.01', NULL, NULL),
(256, 1082, '2017-06-20 00:00:00', 'C1082-1', 5400901646, 'Cad$', 'Matt', 'Brandon', 'Canada', 'Manitoba', '17.81', '16.43', '125.93', NULL, NULL),
(257, 1081, '2017-06-16 00:00:00', 'C1081-1', 5380771278, 'Cad$', 'Zanina', 'Ancaster', 'Canada', 'Ontario', '25.97', '21.77', '166.88', NULL, NULL),
(258, 1080, '2017-06-15 00:00:00', 'C1080-1', 5374954062, 'Cad$', 'Cynthia ', 'Oakville', 'Canada', 'Ontario', '19.74', '17.47', '133.96', NULL, NULL),
(259, 1080, '2017-06-15 00:00:00', 'C1080-2', 5374954062, 'Cad$', 'Cynthia ', 'Oakville', 'Canada', 'Ontario', '1.90', '15', '26.92', NULL, NULL),
(260, 1079, '2017-06-15 00:00:00', 'C1079-1', 5374695502, 'Cad$', 'Destiny', 'Brandon', 'Canada', 'Manitoba', '22.88', '20.4', '156.40', NULL, NULL),
(261, 1078, '2017-06-14 00:00:00', 'C1078-1', 5368462542, 'Cad$', 'Scott', 'Toronto', 'Canada', 'Ontario', '6.43', '15', '49.80', NULL, NULL),
(262, 1078, '2017-06-14 00:00:00', 'C1078-2', 5368462542, 'Cad$', 'Scott', 'Toronto', 'Canada', 'Ontario', '7.62', '15', '66.94', NULL, NULL),
(263, 1077, '2017-06-12 00:00:00', 'C1077-1', 5360035790, 'Cad$', 'Madeline', 'Vancouver', 'Canada', 'British Columbia', '2300.00', '15', '91.96', NULL, NULL),
(264, 1076, '2017-06-08 00:00:00', 'C1076-1', 5334886158, 'Cad$', 'Scott', 'Toronto', 'Canada', 'Ontario', '23.36', '18.38', '140.94', NULL, NULL),
(265, 1076, '2017-06-08 00:00:00', 'C1076-2', 5334886158, 'Cad$', 'Scott', 'Toronto', 'Canada', 'Ontario', '3.80', '15', '40.97', NULL, NULL),
(266, 1075, '2017-06-06 00:00:00', 'C1075-1', 5325105934, 'Cad$', 'Sue', 'Mississauga', 'Canada', 'Ontario', '6.23', '15', '64.78', NULL, NULL),
(267, 1074, '2017-06-06 00:00:00', 'C1074-1', 5324737614, 'Cad$', 'Sue', 'Mississauga', 'Canada', 'Ontario', '4.86', '15', '37.75', NULL, NULL),
(268, 1074, '2017-06-06 00:00:00', 'C1074-2', 5324737614, 'Cad$', 'Sue', 'Mississauga', 'Canada', 'Ontario', '7.26', '15', '61.04', NULL, NULL),
(269, 1073, '2017-06-06 00:00:00', 'C1073-1', 5324498382, 'Cad$', 'Cynthia ', 'Oakville', 'Canada', 'Ontario', '3.51', '15', '35.76', NULL, NULL),
(270, 1072, '2017-06-06 00:00:00', 'C1072-1', 5322802254, 'Cad$', 'Cynthia ', 'Oakville', 'Canada', 'Ontario', '13.44', '15', '87.00', NULL, NULL),
(271, 1071, '2017-06-05 00:00:00', 'C1071-1', 5317555406, 'Cad$', 'Jeff', 'Toronto', 'Canada', 'Ontario', '4.26', '15', '37.28', NULL, NULL),
(272, 1070, '2017-06-02 00:00:00', 'C1070-1', 5302046350, 'Cad$', 'Valérie', 'Montréal', 'Canada', 'Quebec', '2400.00', '15', '49.04', NULL, NULL),
(273, 1070, '2017-06-02 00:00:00', 'C1070-2', 5302046350, 'Cad$', 'Valérie', 'Montréal', 'Canada', 'Quebec', '0.81', '15', '18.69', NULL, NULL),
(274, 1069, '2017-06-02 00:00:00', 'C1069-1', 5300623822, 'Cad$', 'Thulasi ', 'Toronto', 'Canada', 'Ontario', '7.66', '15', '63.22', NULL, NULL),
(275, 1069, '2017-06-02 00:00:00', 'C1069-2', 5300623822, 'Cad$', 'Thulasi', 'Toronto', 'Canada', 'Ontario', '6.76', '15', '58.50', NULL, NULL),
(276, 1068, '2017-06-01 00:00:00', 'C1068-1', 5294274382, 'Cad$', 'Destiny', 'Brandon', 'Canada', 'Manitoba', '22.88', '20.4', '156.40', NULL, NULL),
(277, 1067, '2017-05-30 00:00:00', 'C1067-1', 5284557518, 'Cad$', 'Cynthia ', 'Oakville', 'Canada', 'Ontario', '54.34', '47.15', '361.48', NULL, NULL),
(278, 1067, '2017-05-30 00:00:00', 'C1067-2', 5284557518, 'Cad$', 'Cynthia ', 'Oakville', 'Canada', 'Ontario', '12.73', '15', '22.18', NULL, NULL),
(279, 1066, '2017-05-26 00:00:00', 'C1066-1', 5262423630, 'Cad$', 'Jessica ', 'Edmonton', 'Canada', 'Alberta', '3000.00', '15', '87.28', NULL, NULL),
(280, 1066, '2017-05-26 00:00:00', 'C1066-2', 5262423630, 'Cad$', 'Jessica ', 'Edmonton', 'Canada', 'Alberta', '2.58', '15', '47.83', NULL, NULL),
(281, 1065, '2017-05-24 00:00:00', 'C1065-1', 5250459278, 'Cad$', 'Victor ', 'Toronto', 'Canada', 'Ontario', '14.31', '15', '96.28', NULL, NULL),
(282, 1064, '2017-05-24 00:00:00', 'C1064-1', 5249450190, 'Cad$', 'Katherine ', 'Brandon', 'Canada', 'Manitoba', '27.51', '21.25', '162.92', NULL, NULL),
(283, 1063, '2017-05-23 00:00:00', 'C1063-1', 5243483662, 'Cad$', 'Chuck', 'Brandon', 'Canada', 'Manitoba', '8.79', '15', '64.68', NULL, NULL),
(284, 1062, '2017-05-18 00:00:00', 'C1062-1', 5213003982, 'Cad$', 'Destiny', 'Brandon', 'Canada', 'Manitoba', '22.88', '20.4', '156.40', NULL, NULL),
(285, 1061, '2017-05-16 00:00:00', 'C1061-1', 5201952846, 'Cad$', 'Yuliya', 'Vancouver', 'Canada', 'British Columbia', '14.88', '16.09', '123.34', NULL, NULL),
(286, 1060, '2017-05-15 00:00:00', 'C1060-1', 5196434254, 'Cad$', 'Arlene', 'Brandon', 'Canada', 'Manitoba', '10.40', '15', '83.00', NULL, NULL),
(287, 1059, '2017-05-15 00:00:00', 'C1059-1', 5195633998, 'Cad$', 'Cynthia ', 'Oakville', 'Canada', 'Ontario', '18.57', '17.6', '134.96', NULL, NULL),
(288, 1058, '2017-05-10 00:00:00', 'C1058-1', 5164001038, 'Cad$', 'Scott', 'Toronto', 'Canada', 'Ontario', '19.50', '19.58', '150.08', NULL, NULL),
(289, 1057, '2017-05-09 00:00:00', 'C1057-1', 5157506190, 'Cad$', 'Daniel', 'Toronto', 'Canada', 'Ontario', '11.25', '15', '77.06', NULL, NULL),
(290, 1056, '2017-05-09 00:00:00', 'C1056-1', 5157231246, 'Cad$', 'Cynthia ', 'Oakville', 'Canada', 'Ontario', '19.78', '16.32', '125.12', NULL, NULL),
(291, 1055, '2017-05-04 00:00:00', 'C1055-1', 5128664654, 'Cad$', 'Tracy ', 'Toronto', 'Canada', 'Ontario', '8.68', '15', '66.50', NULL, NULL),
(292, 1054, '2017-05-04 00:00:00', 'C1054-1', 5128309518, 'Cad$', 'Destiny', 'Brandon', 'Canada', 'Manitoba', '22.88', '20.4', '156.40', NULL, NULL),
(293, 1053, '2017-04-27 00:00:00', 'C1053-1', 5086554894, 'Cad$', 'Brian', 'Toronto', 'Canada', 'Ontario', '7.09', '15', '60.42', NULL, NULL),
(294, 1052, '2017-04-25 00:00:00', 'C1052-1', 5075849870, 'Cad$', 'Cynthia ', 'Oakville', 'Canada', 'Ontario', '17.62', '15', '97.52', NULL, NULL),
(295, 1052, '2017-04-25 00:00:00', 'C1052-2', 5075849870, 'Cad$', 'Cynthia ', 'Oakville', 'Canada', 'Ontario', '0.95', '15', '20.96', NULL, NULL),
(296, 1051, '2017-04-21 00:00:00', 'C1051-1', 5056330510, 'Cad$', 'Brian', 'Toronto', 'Canada', 'Ontario', '11.76', '15', '79.29', NULL, NULL),
(297, 1050, '2017-04-20 00:00:00', 'C1050-1', 5049217806, 'Cad$', 'Cynthia ', 'Oakville', 'Canada', 'Ontario', '2.57', '15', '28.92', NULL, NULL),
(298, 1050, '2017-04-20 00:00:00', 'C1050-2', 5049217806, 'Cad$', 'Cynthia ', 'Oakville', 'Canada', 'Ontario', '6.87', '15', '52.78', NULL, NULL),
(299, 1049, '2017-04-20 00:00:00', 'C1049-1', 5047458574, 'Cad$', 'Destiny', 'Brandon', 'Canada', 'Manitoba', '22.88', '20.4', '156.40', NULL, NULL),
(300, 1048, '2017-04-17 00:00:00', 'C1048-1', 5030147534, 'Cad$', 'Matt', 'Brandon', 'Canada', 'Manitoba', '7.40', '15', '64.80', NULL, NULL),
(301, 1048, '2017-04-17 00:00:00', 'C1048-2', 5030147534, 'Cad$', 'Matt', 'Brandon', 'Canada', 'Manitoba', '2.54', '15', '29.52', NULL, NULL),
(302, 1047, '2017-04-17 00:00:00', 'C1047-1', 5030103822, 'Cad$', 'Chuck', 'Brandon', 'Canada', 'Manitoba', '28.76', '24.05', '184.36', NULL, NULL),
(303, 1047, '2017-04-17 00:00:00', 'C1047-2', 5030103822, 'Cad$', 'Chuck', 'Brandon', 'Canada', 'Manitoba', '4.67', '15', '41.48', NULL, NULL),
(304, 1046, '2017-04-17 00:00:00', 'C1046-1', 5030067022, 'Cad$', 'Chuck', 'Brandon', 'Canada', 'Manitoba', '30.26', '24.05', '184.36', NULL, NULL),
(305, 1046, '2017-04-17 00:00:00', 'C1046-2', 5030067022, 'Cad$', 'Chuck', 'Brandon', 'Canada', 'Manitoba', '4.92', '15', '41.48', NULL, NULL),
(306, 1044, '2017-04-12 00:00:00', 'C1044-1', 5005662926, 'Cad$', 'Cynthia ', 'Oakville', 'Canada', 'Ontario', '2.56', '15', '28.92', NULL, NULL),
(307, 1044, '2017-04-12 00:00:00', 'C1044-2', 5005662926, 'Cad$', 'Cynthia ', 'Oakville', 'Canada', 'Ontario', '29.54', '28.05', '215.04', NULL, NULL),
(308, 1043, '2017-04-11 00:00:00', 'C1043-1', 4998361166, 'Cad$', 'Daniel', 'Toronto', 'Canada', 'Ontario', '14.11', '15', '87.73', NULL, NULL),
(309, 1042, '2017-04-07 00:00:00', 'C1042-1', 4978437262, 'Cad$', 'Yuliya', 'Vancouver', 'Canada', 'British Columbia', '21.46', '22.37', '171.47', NULL, NULL),
(310, 1042, '2017-04-07 00:00:00', 'C1042-2', 4978437262, 'Cad$', 'Yuliya', 'Vancouver', 'Canada', 'British Columbia', '0.90', '15', '20.86', NULL, NULL),
(311, 1042, '2017-04-07 00:00:00', 'C1042-3', 4978437262, 'Cad$', 'Yuliya', 'Vancouver', 'Canada', 'British Columbia', '3.72', '15', '39.15', NULL, NULL),
(312, 1041, '2017-04-07 00:00:00', 'C1041-1', 4975697550, 'Cad$', 'Mark', 'Victoria', 'Canada', 'British Columbia', '5.86', '15', '56.08', NULL, NULL),
(313, 1040, '2017-04-05 00:00:00', 'C1040-1', 4966816846, 'Cad$', 'Arlene', 'Brandon', 'Canada', 'Manitoba', '4.65', '15', '39.90', NULL, NULL),
(314, 1039, '2017-04-05 00:00:00', 'C1039-1', 4966610958, 'Cad$', 'Arlene', 'Brandon', 'Canada', 'Manitoba', '10.40', '15', '83.00', NULL, NULL),
(315, 1038, '2017-04-05 00:00:00', 'C1038-1', 4966465934, 'Cad$', 'Destiny', 'Brandon', 'Canada', 'Manitoba', '22.88', '20.4', '156.40', NULL, NULL),
(316, 1037, '2017-04-05 00:00:00', 'C1037-1', 4965358990, 'Cad$', 'Julie', 'Brandon', 'Canada', 'Manitoba', '6.71', '15', '46.00', NULL, NULL),
(317, 1036, '2017-04-04 00:00:00', 'C1036-1', 4962860686, 'Cad$', 'Cynthia ', 'Oakville', 'Canada', 'Ontario', '58.14', '53.11', '407.17', NULL, NULL),
(318, 1035, '2017-04-01 00:00:00', 'C1035-1', 4943896206, 'Cad$', 'Chris', 'Brandon', 'Canada', 'Manitoba', '6.58', '15', '48.05', NULL, NULL),
(319, 1034, '2017-03-29 00:00:00', 'C1034-1', 4929105230, 'Cad$', 'Sabrina', 'Toronto', 'Canada', 'Ontario', '12.19', '15', '86.00', NULL, NULL),
(320, 1033, '2017-03-29 00:00:00', 'C1033-1', 4927363150, 'Cad$', 'Cynthia ', 'Oakville', 'Canada', 'Ontario', '14.40', '15', '101.91', NULL, NULL),
(321, 1033, '2017-03-29 00:00:00', 'C1033-2', 4927363150, 'Cad$', 'Cynthia ', 'Oakville', 'Canada', 'Ontario', '0.95', '15', '20.96', NULL, NULL),
(322, 1032, '2017-03-23 00:00:00', 'C1032-1', 4897804558, 'Cad$', 'Cynthia ', 'Oakville', 'Canada', 'Ontario', '22.24', '20.82', '159.60', NULL, NULL),
(323, 1032, '2017-03-23 00:00:00', 'C1032-2', 4897804558, 'Cad$', 'Cynthia ', 'Oakville', 'Canada', 'Ontario', '18.36', '18.38', '140.88', NULL, NULL),
(324, 1032, '2017-03-23 00:00:00', 'C1032-3', 4897804558, 'Cad$', 'Cynthia ', 'Oakville', 'Canada', 'Ontario', '1.74', '15', '19.68', NULL, NULL),
(325, 1030, '2017-03-21 00:00:00', 'C1030-1', 4886547534, 'Cad$', 'Cynthia ', 'Oakville', 'Canada', 'Ontario', '0.00', '15', '38.99', NULL, NULL),
(326, 1029, '2017-03-16 00:00:00', 'C1029-1', 4855816142, 'Cad$', 'Brian', 'Toronto', 'Canada', 'Ontario', '6.60', '15', '56.20', NULL, NULL),
(327, 1028, '2017-03-13 00:00:00', 'C1028-1', 4840726990, 'Cad$', 'Yan', 'Toronto', 'Canada', 'Ontario', '4.85', '15', '44.83', NULL, NULL),
(328, 1027, '2017-03-13 00:00:00', 'C1027-1', 4840208462, 'Cad$', 'Sara', 'Langley', 'Canada', 'British Columbia', '5.76', '15', '52.83', NULL, NULL),
(329, 1026, '2017-03-13 00:00:00', 'C1026-1', 4838871758, 'Cad$', 'Cynthia ', 'Oakville', 'Canada', 'Ontario', '2.30', '15', '27.47', NULL, NULL),
(330, 1026, '2017-03-13 00:00:00', 'C1026-2', 4838871758, 'Cad$', 'Cynthia ', 'Oakville', 'Canada', 'Ontario', '1.03', '15', '19.68', NULL, NULL),
(331, 1026, '2017-03-13 00:00:00', 'C1026-3', 4838871758, 'Cad$', 'Cynthia ', 'Oakville', 'Canada', 'Ontario', '3.83', '15', '38.99', NULL, NULL),
(332, 1025, '2017-03-08 00:00:00', 'C1025-1', 4812593166, 'Cad$', 'Destiny', 'Brandon', 'Canada', 'Manitoba', '57.19', '51', '391.00', NULL, NULL),
(333, 1024, '2017-03-05 00:00:00', 'C1024-1', 4796037454, 'Cad$', 'Chuck', 'Brandon', 'Canada', 'Manitoba', '14.52', '15', '113.92', NULL, NULL),
(334, 1023, '2017-03-05 00:00:00', 'C1023-1', 4792495502, 'Cad$', 'Julie', 'Brandon', 'Canada', 'Manitoba', '1.33', '15', '22.83', NULL, NULL),
(335, 1022, '2017-03-02 00:00:00', 'C1022-1', 4777987982, 'Cad$', 'Cynthia ', 'Oakville', 'Canada', 'Ontario', '4.87', '15', '44.16', NULL, NULL),
(336, 1021, '2017-02-28 00:00:00', 'C1021-1', 4765745038, 'Cad$', 'Matt', 'Brandon', 'Canada', 'Manitoba', '3.31', '15', '36.48', NULL, NULL),
(337, 1020, '2017-02-28 00:00:00', 'C1020-1', 4765692814, 'Cad$', 'Matt', 'Brandon', 'Canada', 'Manitoba', '1.95', '15', '27.45', NULL, NULL),
(338, 1019, '2017-02-27 00:00:00', 'C1019-1', 4760676110, 'Cad$', 'Yan', 'Toronto', 'Canada', 'Ontario', '4.85', '15', '44.83', NULL, NULL),
(339, 1018, '2017-02-16 00:00:00', 'C1018-1', 4705018318, 'Cad$', 'Cynthia ', 'Oakville', 'Canada', 'Ontario', '31.88', '33.8', '259.13', NULL, NULL),
(340, 1018, '2017-02-16 00:00:00', 'C1018-2', 4705018318, 'Cad$', 'Cynthia ', 'Oakville', 'Canada', 'Ontario', '3.80', '15', '41.72', NULL, NULL),
(341, 1018, '2017-02-16 00:00:00', 'C1018-3', 4705018318, 'Cad$', 'Cynthia ', 'Oakville', 'Canada', 'Ontario', '1.90', '15', '26.92', NULL, NULL),
(342, 1017, '2017-02-16 00:00:00', 'C1017-1', 4704851598, 'Cad$', 'Mardy', 'Brandon', 'Canada', 'Manitoba', '0.00', '15', '53.76', NULL, NULL);
INSERT INTO `sales` (`id`, `order_id`, `purchase_date`, `po_number`, `cust_order`, `currency`, `cust_fname`, `cust_city`, `cust_country`, `cust_province`, `tax`, `shipping`, `grand_total`, `created_at`, `updated_at`) VALUES
(343, 1016, '2017-02-16 00:00:00', 'C1016-1', 4704739342, 'Cad$', 'Mardy', 'Brandon', 'Canada', 'Manitoba', '0.00', '15', '50.07', NULL, NULL),
(344, 1016, '2017-02-16 00:00:00', 'C1016-2', 4704739342, 'Cad$', 'Mardy', 'Brandon', 'Canada', 'Manitoba', '0.00', '15', '18.69', NULL, NULL),
(345, 1015, '2017-02-14 00:00:00', 'C1015-1', 4696441038, 'Cad$', 'Sabrina', 'Toronto', 'Canada', 'Ontario', '7.50', '15', '57.34', NULL, NULL),
(346, 1014, '2017-02-07 00:00:00', 'C1014-1', 4660693518, 'Cad$', 'Yan', 'Toronto', 'Canada', 'Ontario', '0.00', '17.16', '131.53', NULL, NULL),
(347, 1014, '2017-02-07 00:00:00', 'C1014-2', 4660693518, 'Cad$', 'Yan', 'Toronto', 'Canada', 'Ontario', '0.00', '15', '20.98', NULL, NULL),
(348, 1013, '2017-01-31 00:00:00', 'C1013-1', 4625353614, 'Cad$', 'Shelley', 'Toronto', 'Canada', 'Ontario', '0.00', '15', '47.18', NULL, NULL),
(349, 1012, '2017-01-26 00:00:00', 'C1012-1', 4602223950, 'Cad$', 'Shelley', 'Toronto', 'Canada', 'Ontario', '0.00', '15', '92.39', NULL, NULL),
(350, 1012, '2017-01-26 00:00:00', 'C1012-2', 4602223950, 'Cad$', 'Shelley', 'Toronto', 'Canada', 'Ontario', '0.00', '15', '27.37', NULL, NULL),
(351, 1011, '2017-01-23 00:00:00', 'C1011-1', 4585171918, 'Cad$', 'Jill', 'Brandon', 'Canada', 'Manitoba', '0.00', '19.53', '149.74', NULL, NULL),
(352, 1010, '2016-12-21 00:00:00', 'C1010-1', 4435934798, 'Cad$', 'Julie', 'Brandon', 'Canada', 'Manitoba', '0.00', '15', '17.46', NULL, NULL),
(353, 1009, '2016-12-19 00:00:00', 'C1009-1', 4422053774, 'Cad$', 'Bruno', 'Toronto', 'Canada', 'Ontario', '0.00', '15', '36.72', NULL, NULL),
(354, 1009, '2016-12-19 00:00:00', 'C1009-2', 4422053774, 'Cad$', 'Bruno', 'Toronto', 'Canada', 'Ontario', '0.00', '26.06', '199.82', NULL, NULL),
(355, 1009, '2016-12-19 00:00:00', 'C1009-3', 4422053774, 'Cad$', 'Bruno', 'Toronto', 'Canada', 'Ontario', '0.00', '15', '58.44', NULL, NULL),
(356, 1006, '2016-12-16 00:00:00', 'C1006-1', 4406401998, 'Cad$', 'Martijn', 'Toronto', 'Canada', 'Ontario', '0.00', '15', '24.62', NULL, NULL),
(357, 1005, '2016-12-15 00:00:00', 'C1005-1', 4400511630, 'Cad($)', 'Martijn', 'Toronto', 'Canada', 'Ontario', '0.00', '15', '58.62', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Suhayb', 'suhayb@gmail.com', NULL, '$2y$10$8gkRXduuX6ik8D.Z6Y0Q.ulV9xl0W7vgGPwJQEnRNzn8q6Bu.V4M6', NULL, '2022-03-02 13:07:50', '2022-03-02 13:07:50');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=358;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
