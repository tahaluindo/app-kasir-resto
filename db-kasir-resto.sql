-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 23, 2022 at 01:22 AM
-- Server version: 5.7.33
-- PHP Version: 8.0.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db-kasir-resto`
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
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `menu_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `stock` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `menu_name`, `price`, `description`, `stock`, `created_at`, `updated_at`) VALUES
(1, 'Cappucino', 15000, 'Kopi Kenangan', 6, '2022-02-22 00:48:27', '2022-02-22 00:59:26'),
(2, 'Fried Rice', 22000, 'Nasi Goreng Gila', 16, '2022-02-22 00:49:05', '2022-02-22 00:57:37'),
(3, 'Ice Coffee', 15000, 'Kopi Arabica', 12, '2022-02-22 00:49:32', '2022-02-22 00:55:22'),
(4, 'Fried Noddles', 25000, 'Made by Indomie', 18, '2022-02-22 00:49:56', '2022-02-22 00:58:25'),
(5, 'Fried Chicken', 18000, 'Fillet Chicken', 18, '2022-02-22 00:50:40', '2022-02-22 00:56:32'),
(6, 'French Fries', 12000, 'Made by McD', 20, '2022-02-22 00:51:46', '2022-02-22 01:00:03');

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
(5, '2022_02_20_032745_create_menus_table', 1),
(6, '2022_02_20_102301_create_transactions_table', 1);

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
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `employee_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `customer_name`, `menu_name`, `qty`, `total`, `employee_name`, `created_at`, `updated_at`) VALUES
(1, 'Jessica Jane', 'Ice Coffee', 3, 45000, 'Jane Dunn', '2022-02-22 00:55:22', '2022-02-22 00:55:22'),
(2, 'Sisca Kohl', 'Fried Chicken', 7, 126000, 'Jane Dunn', '2022-02-22 00:56:32', '2022-02-22 00:56:32'),
(3, 'Sisca Kohl', 'Cappucino', 4, 60000, 'Jane Dunn', '2022-02-22 00:57:07', '2022-02-22 00:57:07'),
(4, 'Kim Minjeong', 'Fried Rice', 4, 88000, 'Jane Dunn', '2022-02-22 00:57:37', '2022-02-22 00:57:37'),
(5, 'Kim Minjeong', 'Cappucino', 4, 60000, 'Jane Dunn', '2022-02-22 00:58:03', '2022-02-22 00:58:03'),
(6, 'Eren Jaeger', 'Fried Noddles', 2, 50000, 'Jane Dunn', '2022-02-22 00:58:25', '2022-02-22 00:58:25'),
(7, 'Levi Ackerman', 'Cappucino', 1, 15000, 'Jamal Jacob', '2022-02-22 00:59:26', '2022-02-22 00:59:26'),
(8, 'Stephen Curry', 'French Fries', 5, 60000, 'Jamal Jacob', '2022-02-22 01:00:03', '2022-02-22 01:00:03');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` enum('Admin','Kasir','Manager') COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `profile_image`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Ramdhani Akbar', 'ramdhaniakbar', '$2y$10$/oI3yWI3xoMl1as01yP3z.lzt5Mc4BpiNOHFNeeOzXoz9xPpP9W76', 'assets/images/profile/1725461415155438.jpg', 'Admin', NULL, '2022-02-21 22:35:22', '2022-02-22 04:10:35'),
(2, 'Gonalu Kaler', 'gonalukaler', '$2y$10$E81vFmFGUZgjYoBQYU9DROTMuLRNZ2gvsglDFEu/f2fKs64t2JesO', NULL, 'Manager', NULL, '2022-02-21 22:35:22', '2022-02-22 01:49:21'),
(4, 'Jane Dunn', 'janedunn99', '$2y$10$qCGLqkdyPIvmX1OAiHM9qeqimRfXieOi1W8SKX/mlXU7m3/EZ5TA6', 'assets/images/profile/1725461251326534.jpg', 'Kasir', NULL, '2022-02-21 22:55:32', '2022-02-22 04:07:59'),
(6, 'Jamal Jacob', 'jamaljacob', '$2y$10$hssc.OJwlM8LpzdaNFIKkukXwfX1I3AnbADLx80tvkgR/KVxP3/aa', 'assets/images/profile/1725452735504064.jpg', 'Kasir', NULL, '2022-02-22 01:52:38', '2022-02-22 01:55:10'),
(7, 'Udin GG', 'udingg', '$2y$10$OhaTw1HPf5f1zGG0qCKJ4.By89YP126osy/vRAmCwLdQtU/67FY7O', NULL, 'Manager', NULL, '2022-02-22 01:54:47', '2022-02-22 01:59:21');

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
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
