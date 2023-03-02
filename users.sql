-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 02, 2023 at 10:55 AM
-- Server version: 8.0.32-0ubuntu0.20.04.2
-- PHP Version: 7.4.3-4ubuntu2.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pagination`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Constance Noring', 'noring@example.com', NULL, NULL, NULL, '2021-12-12 03:12:14', NULL),
(2, 'Isabelle Ringing', 'ringing@example.com', NULL, NULL, NULL, '2021-12-12 03:12:14', NULL),
(3, 'Turner', 'Turner@example.com', NULL, NULL, NULL, '2021-12-12 03:12:14', NULL),
(4, 'Anthemum', 'Anthemum@example.com', NULL, NULL, NULL, '2021-12-12 03:11:14', NULL),
(5, 'Anita ', 'Anita@example.com', NULL, NULL, NULL, '2021-12-12 03:10:14', NULL),
(6, 'Amanda ', 'Amanda@example.com', NULL, NULL, NULL, '2021-12-12 03:12:14', NULL),
(7, 'Loco ', 'Loco@example.com', NULL, NULL, NULL, '2021-12-12 03:12:14', NULL),
(8, 'Con ', 'Con@example.com', NULL, NULL, NULL, '2021-12-12 03:12:14', NULL),
(9, 'Lana ', 'Lana@example.com', NULL, NULL, NULL, '2021-12-12 03:12:14', NULL),
(10, 'Barry ', 'Barry@example.com', NULL, NULL, NULL, '2021-12-12 03:12:14', NULL),
(11, 'Marsha ', 'Marsha@example.com', NULL, NULL, NULL, '2021-12-12 03:12:14', NULL),
(12, 'Zeimers', 'Zeimers@example.com', NULL, NULL, NULL, '2021-12-12 03:12:14', NULL),
(13, 'Allysis', 'Allysis@example.com', NULL, NULL, NULL, '2021-12-12 03:12:14', NULL),
(14, 'Lois ', 'Lois@example.com', NULL, NULL, NULL, '2021-12-12 03:12:14', NULL),
(15, 'Clark ', 'Clark@example.com', NULL, NULL, NULL, '2021-12-12 03:12:14', NULL),
(16, 'Joseph ', 'Joseph@example.com', NULL, NULL, NULL, '2021-12-12 03:12:14', NULL),
(17, 'Simon ', 'Simon@example.com', NULL, NULL, NULL, '2021-12-12 03:12:14', NULL),
(18, 'Dixie ', 'Dixie@example.com', NULL, NULL, NULL, '2021-12-12 03:12:14', NULL),
(19, 'Felicity ', 'Felicity@example.com', NULL, NULL, NULL, '2021-12-12 03:12:14', NULL),
(20, 'Tiffany ', 'Tiffany@example.com', NULL, NULL, NULL, '2021-12-12 03:12:14', NULL),
(21, 'Shady', 'Shady@example.com', NULL, NULL, NULL, '2021-12-12 03:14:33', NULL),
(22, 'Mundy', 'Mundy@example.com', NULL, NULL, NULL, '2021-12-12 03:14:33', NULL),
(23, 'Des E', 'DesE@example.com', NULL, NULL, NULL, '2021-12-12 03:14:33', NULL),
(24, 'Pete ', 'Pete@example.com', NULL, NULL, NULL, '2021-12-12 03:14:33', NULL),
(25, 'Kissy', 'Kissy@example.com', NULL, NULL, NULL, '2021-12-12 03:14:33', NULL),
(26, 'Chew', 'Chew@example.com', NULL, NULL, NULL, '2021-12-12 03:14:33', NULL),
(27, 'Ruby', 'Ruby@example.com', NULL, NULL, NULL, '2021-12-12 03:14:33', NULL),
(28, 'May', 'May@example.com', NULL, NULL, NULL, '2021-12-12 03:14:33', NULL);

--
-- Indexes for dumped tables
--

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
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
