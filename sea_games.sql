-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 17, 2023 at 06:38 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sea_games`
--

-- --------------------------------------------------------

--
-- Table structure for table `competitions`
--

CREATE TABLE `competitions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `matching_team` varchar(255) NOT NULL,
  `event_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `competitions`
--

INSERT INTO `competitions` (`id`, `matching_team`, `event_id`, `created_at`, `updated_at`) VALUES
(1, 'Cambodia VS Vietnam ', 1, '2023-05-15 07:41:36', '2023-05-15 07:41:36'),
(2, 'Thailand VS Laos ', 1, '2023-05-15 07:41:36', '2023-05-15 07:41:36'),
(3, 'China VS Philippines ', 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `event_type` varchar(255) NOT NULL,
  `stadium_id` bigint(20) UNSIGNED DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `event_type`, `stadium_id`, `created_at`, `updated_at`) VALUES
(1, 'Baskeball', 1, '2023-05-15 07:11:31', '2023-05-16 09:16:38'),
(2, 'swimming', 1, '2023-05-15 07:11:31', '2023-05-15 20:05:38'),
(3, 'basketballo111', 3, '2023-05-15 07:12:11', '2023-05-15 06:51:23');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_05_10_064904_create_stadiums_table', 1),
(6, '2023_05_13_064849_create_zones_table', 1),
(7, '2023_05_13_064959_create_events_table', 1),
(8, '2023_05_14_064940_create_competitions_table', 1),
(9, '2023_05_15_064915_create_tickets_table', 1),
(10, '2023_05_16_041901_create_schedules_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `schedules`
--

CREATE TABLE `schedules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date_time` datetime NOT NULL,
  `competition_id` bigint(20) UNSIGNED NOT NULL,
  `ticket_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `schedules`
--

INSERT INTO `schedules` (`id`, `date_time`, `competition_id`, `ticket_id`, `created_at`, `updated_at`) VALUES
(6, '2023-05-15 17:00:00', 1, 1, '2023-05-15 07:45:53', '2023-05-15 07:45:53'),
(7, '2023-05-15 09:45:53', 1, 2, '2023-05-15 07:45:53', '2023-05-15 07:45:53'),
(8, '2023-05-15 09:46:30', 1, 3, '2023-05-15 07:46:34', '2023-05-15 07:46:34'),
(9, '2023-05-15 09:46:30', 1, 4, '2023-05-15 07:46:34', '2023-05-15 07:46:34'),
(10, '2023-05-15 09:46:30', 1, 5, '2023-05-15 07:46:34', '2023-05-15 07:46:34');

-- --------------------------------------------------------

--
-- Table structure for table `stadia`
--

CREATE TABLE `stadia` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `stadium_name` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stadia`
--

INSERT INTO `stadia` (`id`, `stadium_name`, `location`, `created_at`, `updated_at`) VALUES
(1, '000', '000', '2023-05-14 17:00:00', '2023-05-15 20:05:38'),
(2, '000', '000', '2023-05-14 17:00:00', '2023-05-15 20:05:00'),
(3, 'PP', 'POPET', '2023-05-15 00:24:27', '2023-05-16 09:16:38'),
(4, 'TATA', 'Viet Kong', '2023-05-15 00:34:35', '2023-05-15 00:34:35'),
(5, 'KENG', 'Kong', '2023-05-15 00:35:49', '2023-05-15 00:35:49'),
(6, 'KENG', 'Kong', '2023-05-15 09:36:42', '2023-05-15 09:36:42'),
(7, 'Me', 'Same', '2023-05-15 19:58:17', '2023-05-15 19:58:17'),
(8, 'Hello PP', 'Cambodia', '2023-05-16 09:13:15', '2023-05-16 09:13:15');

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ticket_code` varchar(255) NOT NULL,
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `event_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`id`, `ticket_code`, `zone_id`, `event_id`, `created_at`, `updated_at`) VALUES
(1, 'A1', 1, 1, '2023-05-15 07:39:24', '2023-05-15 07:39:24'),
(2, 'A2', 1, 1, '2023-05-15 07:39:24', '2023-05-15 07:39:24'),
(3, 'A3', 1, 1, '2023-05-15 07:40:03', '2023-05-15 07:40:03'),
(4, 'A4', 1, 1, '2023-05-15 07:40:03', '2023-05-15 07:40:03'),
(5, 'A5', 1, 1, '2023-05-15 07:40:03', '2023-05-15 07:40:03'),
(6, 'A6', 1, 1, '2023-05-15 09:27:26', '2023-05-15 09:27:26'),
(7, 'A7', 1, 1, '2023-05-15 09:27:26', '2023-05-15 09:27:26'),
(8, 'A8', 1, 1, '2023-05-15 09:27:26', '2023-05-15 09:27:26'),
(9, 'A9', 1, 1, '2023-05-15 09:27:26', '2023-05-15 09:27:26'),
(10, 'A10', 1, 1, '2023-05-15 09:27:26', '2023-05-15 09:27:26'),
(11, 'A11', 1, 1, '2023-05-15 09:30:11', '2023-05-15 09:30:11'),
(12, 'A12', 1, 1, '2023-05-15 09:31:02', '2023-05-15 09:31:02'),
(14, 'A14', 1, 1, '2023-05-15 09:33:43', '2023-05-15 09:33:43'),
(15, 'A13', 1, 1, '2023-05-15 09:33:47', '2023-05-15 09:33:47'),
(17, 'A16', 1, 1, '2023-05-15 20:01:05', '2023-05-15 20:01:05'),
(18, 'A18', 1, 1, '2023-05-16 09:15:04', '2023-05-16 09:15:04'),
(19, 'A19', 1, 1, '2023-05-16 09:15:16', '2023-05-16 09:15:16'),
(22, 'A21', 1, 1, '2023-05-16 09:27:54', '2023-05-16 09:27:54'),
(23, 'A22', 1, 1, '2023-05-16 09:28:16', '2023-05-16 09:28:16'),
(25, 'A26', 1, 1, '2023-05-16 09:31:09', '2023-05-16 09:31:09');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `zones`
--

CREATE TABLE `zones` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `zone_name` varchar(255) NOT NULL,
  `number_ticket` int(11) NOT NULL,
  `stadium_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `zones`
--

INSERT INTO `zones` (`id`, `zone_name`, `number_ticket`, `stadium_id`, `created_at`, `updated_at`) VALUES
(1, 'Zone A', 20, 1, '2023-05-15 07:14:16', '2023-05-15 07:14:16'),
(2, 'Zone B', 8000, 1, '2023-05-15 07:14:16', '2023-05-15 07:14:16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `competitions`
--
ALTER TABLE `competitions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `competitions_event_id_foreign` (`event_id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `events_stadium_id_foreign` (`stadium_id`);

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
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `schedules`
--
ALTER TABLE `schedules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `schedules_competition_id_foreign` (`competition_id`),
  ADD KEY `schedules_ticket_id_foreign` (`ticket_id`);

--
-- Indexes for table `stadia`
--
ALTER TABLE `stadia`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ticket_code` (`ticket_code`),
  ADD KEY `tickets_zone_id_foreign` (`zone_id`),
  ADD KEY `tickets_event_id_foreign` (`event_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `zones`
--
ALTER TABLE `zones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `zones_stadium_id_foreign` (`stadium_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `competitions`
--
ALTER TABLE `competitions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `schedules`
--
ALTER TABLE `schedules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `stadia`
--
ALTER TABLE `stadia`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `zones`
--
ALTER TABLE `zones`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `competitions`
--
ALTER TABLE `competitions`
  ADD CONSTRAINT `competitions_event_id_foreign` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `events`
--
ALTER TABLE `events`
  ADD CONSTRAINT `events_stadium_id_foreign` FOREIGN KEY (`stadium_id`) REFERENCES `stadia` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `schedules`
--
ALTER TABLE `schedules`
  ADD CONSTRAINT `schedules_competition_id_foreign` FOREIGN KEY (`competition_id`) REFERENCES `competitions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `schedules_ticket_id_foreign` FOREIGN KEY (`ticket_id`) REFERENCES `tickets` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tickets`
--
ALTER TABLE `tickets`
  ADD CONSTRAINT `tickets_event_id_foreign` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tickets_zone_id_foreign` FOREIGN KEY (`zone_id`) REFERENCES `zones` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `zones`
--
ALTER TABLE `zones`
  ADD CONSTRAINT `zones_stadium_id_foreign` FOREIGN KEY (`stadium_id`) REFERENCES `stadia` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
