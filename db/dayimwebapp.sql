-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 05, 2023 at 08:07 AM
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
-- Database: `dayimwebapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `apartment_allotments`
--

CREATE TABLE `apartment_allotments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `application_no` varchar(255) DEFAULT NULL,
  `apartment_id` bigint(20) UNSIGNED NOT NULL,
  `unit_refernece` varchar(255) DEFAULT NULL,
  `per_name` varchar(255) DEFAULT NULL,
  `per_guardian_name` varchar(255) DEFAULT NULL,
  `per_cnic` bigint(20) DEFAULT NULL,
  `per_passport` varchar(255) DEFAULT NULL,
  `per_address` varchar(255) DEFAULT NULL,
  `per_email` varchar(255) DEFAULT NULL,
  `per_phone` bigint(20) DEFAULT NULL,
  `per_mobile` bigint(20) DEFAULT NULL,
  `nominee_name` varchar(255) DEFAULT NULL,
  `nominee_guargian_name` varchar(255) DEFAULT NULL,
  `nominee_cnic` varchar(255) DEFAULT NULL,
  `nominee_relation` varchar(255) DEFAULT NULL,
  `payment_type` varchar(255) DEFAULT NULL,
  `payment_total_amount` float DEFAULT NULL,
  `payment_down_amount` varchar(255) DEFAULT NULL,
  `payment_processing_fee` varchar(255) DEFAULT NULL,
  `payment_at_pocession` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `apartment_allotments`
--

INSERT INTO `apartment_allotments` (`id`, `application_no`, `apartment_id`, `unit_refernece`, `per_name`, `per_guardian_name`, `per_cnic`, `per_passport`, `per_address`, `per_email`, `per_phone`, `per_mobile`, `nominee_name`, `nominee_guargian_name`, `nominee_cnic`, `nominee_relation`, `payment_type`, `payment_total_amount`, `payment_down_amount`, `payment_processing_fee`, `payment_at_pocession`, `created_at`, `updated_at`) VALUES
(4, '13245', 75, 'Abcdefg', 'Muhammad Mudasir', 'Asfi', 3230244765133, '88775C5586', 'Lahore Thokar', 'm.mudasirasfi@gmail.com', 42104562, 3022525228, 'Sajid Asfi', 'Sadiq Hussain', '323025544856', 'Cusine', 'full payment', 4500000, '120235', '112233', '30000', '2023-05-26 04:48:42', '2023-05-26 04:48:42');

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
(5, '2023_05_03_061942_create_permission_tables', 1),
(6, '2023_05_05_105510_create_projects_table', 2),
(7, '2023_05_09_071622_create_project_appartments_table', 3),
(8, '2023_05_09_071622_create_project_appartment_table', 4),
(9, '2023_05_09_085559_create_project_shops_table', 5),
(10, '2023_05_12_073819_create_apartment_allotments_table', 6),
(11, '2023_05_13_142214_create_shop_allotments_table', 7),
(12, '2023_05_23_085827_create_project_categories_table', 8),
(13, '2023_05_23_090544_create_project_sub_categories_table', 9),
(14, '2023_05_26_095150_create_modules_table', 10),
(15, '2023_05_26_095150_create_module_table', 11);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_permissions`
--

INSERT INTO `model_has_permissions` (`permission_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(1, 'App\\Models\\User', 10),
(2, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 10),
(3, 'App\\Models\\User', 1),
(3, 'App\\Models\\User', 10);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(1, 'App\\Models\\User', 9),
(1, 'App\\Models\\User', 16),
(1, 'App\\Models\\User', 17),
(1, 'App\\Models\\User', 19),
(1, 'App\\Models\\User', 20),
(1, 'App\\Models\\User', 32),
(2, 'App\\Models\\User', 2),
(2, 'App\\Models\\User', 8),
(2, 'App\\Models\\User', 9),
(2, 'App\\Models\\User', 10),
(2, 'App\\Models\\User', 11),
(2, 'App\\Models\\User', 12),
(2, 'App\\Models\\User', 14),
(2, 'App\\Models\\User', 15),
(2, 'App\\Models\\User', 21),
(2, 'App\\Models\\User', 22),
(2, 'App\\Models\\User', 23),
(2, 'App\\Models\\User', 24),
(2, 'App\\Models\\User', 25),
(2, 'App\\Models\\User', 26),
(2, 'App\\Models\\User', 28),
(2, 'App\\Models\\User', 29),
(2, 'App\\Models\\User', 32);

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

CREATE TABLE `modules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `modules`
--

INSERT INTO `modules` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Project', NULL, NULL),
(2, 'Allotment', NULL, NULL),
(3, 'User Management', NULL, NULL),
(4, 'Payment Plan', NULL, NULL);

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL DEFAULT 'web',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'manage', 'web', '2023-05-03 02:37:15', '2023-05-03 02:37:15'),
(2, 'create', 'web', '2023-05-03 02:37:15', '2023-05-04 05:22:43'),
(3, 'edit', 'web', '2023-05-03 02:37:15', '2023-05-04 05:22:11'),
(4, 'delete', 'web', '2023-05-03 02:37:15', '2023-05-03 02:37:15');

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

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 3, 'MyApp', 'dbe77d4af2186fe3229dfc6b7bb94013212cd0a1baecedc7edeb899b2ab2883a', '[\"*\"]', NULL, NULL, '2023-05-03 02:38:46', '2023-05-03 02:38:46'),
(2, 'App\\Models\\User', 4, 'MyApp', '10093f12ebfbcf55b8ca7e0fb9fbcc3fa9cfe77f92f2f409d01edeaee62e4549', '[\"*\"]', NULL, NULL, '2023-05-03 02:39:16', '2023-05-03 02:39:16'),
(3, 'App\\Models\\User', 5, 'MyApp', '26fb5d9b330556af19732f1962b181c0b15d3cc92e9296f3b720e9450c2264ac', '[\"*\"]', NULL, NULL, '2023-05-03 02:40:25', '2023-05-03 02:40:25'),
(4, 'App\\Models\\User', 2, 'MyApp', '1783e0120e50fe925a107aaa5dd862ceba3fdf9badd53b2805a9c81d0d7612e5', '[\"*\"]', NULL, NULL, '2023-05-03 02:41:21', '2023-05-03 02:41:21'),
(5, 'App\\Models\\User', 6, 'MyApp', '86457fd6ceaf7099b7bcd90e4e0c274098cd799533e4374c436bc4d0a2b680a7', '[\"*\"]', NULL, NULL, '2023-05-03 02:43:59', '2023-05-03 02:43:59'),
(6, 'App\\Models\\User', 7, 'MyApp', 'bb0596f7bf3632f628e8a4212ca80006f778206b1697b96c3b8a10fdc2ee0f5e', '[\"*\"]', NULL, NULL, '2023-05-03 02:45:32', '2023-05-03 02:45:32'),
(7, 'App\\Models\\User', 8, 'MyApp', '92a23975c5152eec1d9ab304d9a7d698ecf9b22a79f82d23bdf3ac4721c79bb5', '[\"*\"]', NULL, NULL, '2023-05-03 02:45:51', '2023-05-03 02:45:51'),
(8, 'App\\Models\\User', 9, 'MyApp', '58fe59d254650750ff066629cd0409b8d654dc58619dd1a0b42da9618b0729cb', '[\"*\"]', NULL, NULL, '2023-05-03 02:46:20', '2023-05-03 02:46:20'),
(9, 'App\\Models\\User', 9, 'MyApp', 'c62f4bde46edbaa05a9b468ffb23017e27ce6cbfd6d618a44a45a2cc923a13fb', '[\"*\"]', NULL, NULL, '2023-05-03 02:47:51', '2023-05-03 02:47:51'),
(10, 'App\\Models\\User', 9, 'MyApp', '093e5449d33873fd5fc19158f74bc3b096f2802dd460d578d43d095c1367a593', '[\"*\"]', NULL, NULL, '2023-05-03 02:49:56', '2023-05-03 02:49:56'),
(11, 'App\\Models\\User', 9, 'MyApp', '7e76668ef00348c65e3b61c70ab77793b4e9a8a4136b7616e0ada25e21c9e0cd', '[\"*\"]', NULL, NULL, '2023-05-03 02:50:07', '2023-05-03 02:50:07'),
(12, 'App\\Models\\User', 9, 'MyApp', 'e6ef0c10b2ee7b42e58acb596353de7fe1c766ef8c7b7095865fbf2f77402bd4', '[\"*\"]', NULL, NULL, '2023-05-03 02:51:26', '2023-05-03 02:51:26'),
(13, 'App\\Models\\User', 9, 'MyApp', 'df8724660e2a9788c3d30c9d476927dee02e56645b40d4c0381a1b3f999b88f9', '[\"*\"]', NULL, NULL, '2023-05-03 02:51:50', '2023-05-03 02:51:50'),
(14, 'App\\Models\\User', 9, 'MyApp', 'e85e35dd51c90f6e7a2b35b9a09548b55550dfcd077c2f0b925dec9d94bad181', '[\"*\"]', NULL, NULL, '2023-05-03 02:52:03', '2023-05-03 02:52:03'),
(15, 'App\\Models\\User', 10, 'MyApp', '95d5f88ec70b61aa0d57dddfc6239f4fa39a5b11ce4ede61d49a8a5bb472ca09', '[\"*\"]', NULL, NULL, '2023-05-03 02:54:20', '2023-05-03 02:54:20'),
(16, 'App\\Models\\User', 10, 'MyApp', '67ba20450dca15cc3a7d22abaaea733fc4d663ef7586d5cc4c84f7c3cf5d2434', '[\"*\"]', NULL, NULL, '2023-05-03 02:54:53', '2023-05-03 02:54:53'),
(17, 'App\\Models\\User', 10, 'MyApp', '2bee4fd70f7b97a9beda21d6adb1a54b9c04e2ed76bc612a52e16947869d1a28', '[\"*\"]', '2023-05-03 04:25:22', NULL, '2023-05-03 03:41:51', '2023-05-03 04:25:22'),
(18, 'App\\Models\\User', 10, 'MyApp', '8aa5681eb4f79afb91001a238f27b07e0ae4043db3c8d1a9e62ffb89a1a8eaeb', '[\"*\"]', NULL, NULL, '2023-05-03 03:58:25', '2023-05-03 03:58:25'),
(19, 'App\\Models\\User', 10, 'MyApp', 'c8e482dc0d9f495da5868d1ec5033d2c23fb113718c4ddfa6df75339c4d8dd01', '[\"*\"]', NULL, NULL, '2023-05-03 04:04:16', '2023-05-03 04:04:16'),
(20, 'App\\Models\\User', 10, 'MyApp', '15afaf8cd977257f31eda586d643d8f349646f42df02ce8967ed9d9ac16f34ae', '[\"*\"]', NULL, NULL, '2023-05-03 04:06:03', '2023-05-03 04:06:03'),
(21, 'App\\Models\\User', 10, 'MyApp', '17ca6359c2613c3d4e66db4fc9a433f980f4cd15bf538ab59eda8936be33175c', '[\"*\"]', '2023-05-03 04:59:49', NULL, '2023-05-03 04:09:54', '2023-05-03 04:59:49'),
(22, 'App\\Models\\User', 10, 'MyApp', '49cf83fb0ec9085f2b130411d36ff5dfd607600cfbb7d0a66a1d8f2aab559c10', '[\"*\"]', NULL, NULL, '2023-05-03 04:29:11', '2023-05-03 04:29:11'),
(23, 'App\\Models\\User', 10, 'MyApp', 'a8d9c559a315d27b34d92e296b87a4163660ace4764fa5a0f0eb3cbb46239f7c', '[\"*\"]', '2023-05-03 05:24:57', NULL, '2023-05-03 04:53:28', '2023-05-03 05:24:57'),
(24, 'App\\Models\\User', 10, 'MyApp', '7d77a012ffef7a209868a17a450237df8918bdfc6fb37bfea33d622b20bd7b68', '[\"*\"]', NULL, NULL, '2023-05-03 05:03:06', '2023-05-03 05:03:06'),
(25, 'App\\Models\\User', 10, 'MyApp', '2e85bb48483cdd2e70e8d510dba55c9c58b33b50f7099aebb126625f16832ee4', '[\"*\"]', '2023-05-03 06:03:51', NULL, '2023-05-03 05:08:02', '2023-05-03 06:03:51'),
(26, 'App\\Models\\User', 10, 'MyApp', 'a4ed09ff4bde5ffe5e603cc9da1c2f3242051cb69b0bef2bec87ea315f236d0d', '[\"*\"]', '2023-05-03 06:05:51', NULL, '2023-05-03 05:39:06', '2023-05-03 06:05:51'),
(41, 'App\\Models\\User', 15, 'MyApp', '752b9deca37ad5e3bbfd558c0899a670b4585e2e0adbe04600251cc6521be619', '[\"*\"]', '2023-05-26 05:04:19', NULL, '2023-05-05 02:37:03', '2023-05-26 05:04:19'),
(42, 'App\\Models\\User', 15, 'MyApp', '084b980c4ad5326beb6b60feea85b05864615bc22880883c7fc5b7cc2134cfb5', '[\"*\"]', '2023-05-26 05:09:08', NULL, '2023-05-05 05:00:41', '2023-05-26 05:09:08'),
(43, 'App\\Models\\User', 15, 'MyApp', '751b282fb775f540ed432a9019af6e09c1f8029315aa350b768119a0d97c9b2f', '[\"*\"]', '2023-05-12 06:13:04', NULL, '2023-05-05 06:17:32', '2023-05-12 06:13:04'),
(44, 'App\\Models\\User', 32, 'MyApp', '33a83d5bcd0de656918d779c2e59202371bbaa77a6e93063e01d149be48f0a85', '[\"*\"]', NULL, NULL, '2023-05-05 06:59:34', '2023-05-05 06:59:34'),
(45, 'App\\Models\\User', 32, 'MyApp', 'e6ecb20a29fd1b51fb4c6269dd9a46751d912db2466d71c9e59de66eb485f031', '[\"*\"]', '2023-05-12 06:13:16', NULL, '2023-05-06 09:30:40', '2023-05-12 06:13:16'),
(46, 'App\\Models\\User', 32, 'MyApp', '76a556202a8e15d4b2a1b2ce62066791a3b09e50574781d05ec992697d223595', '[\"*\"]', NULL, NULL, '2023-05-08 02:00:11', '2023-05-08 02:00:11'),
(47, 'App\\Models\\User', 32, 'MyApp', '0281bad161cb7a79311a99a74dbbc533a8fe8fc4c87799ffcc7919ac53785cdc', '[\"*\"]', '2023-05-26 04:40:45', NULL, '2023-05-11 04:34:35', '2023-05-26 04:40:45'),
(48, 'App\\Models\\User', 32, 'MyApp', '03f3c5f7e91942dda9b5aca9c250e736cb685115d7b23eeb241cc0dfaab3de10', '[\"*\"]', '2023-05-26 04:48:42', NULL, '2023-05-12 05:30:51', '2023-05-26 04:48:42'),
(49, 'App\\Models\\User', 32, 'MyApp', '9190b35a510b6a303299e8ec8c1949c8b239bdeec9391e956bdd60c0084cdf04', '[\"*\"]', '2023-05-23 01:54:08', NULL, '2023-05-23 01:53:48', '2023-05-23 01:54:08'),
(50, 'App\\Models\\User', 32, 'MyApp', '1ad1af3921d3492806eda0c91b326baf608529dba9c7dc2103d1f86a07879038', '[\"*\"]', '2023-05-25 05:07:41', NULL, '2023-05-23 04:40:55', '2023-05-25 05:07:41'),
(51, 'App\\Models\\User', 32, 'MyApp', 'c435275f47739907b89f14a7cbdb2e39dd0123713a97c635f0361195dacbeec7', '[\"*\"]', '2023-05-26 05:05:13', NULL, '2023-05-26 05:03:32', '2023-05-26 05:05:13');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `units` bigint(20) NOT NULL,
  `appartments` bigint(20) UNSIGNED NOT NULL,
  `studio_count` int(11) DEFAULT NULL,
  `studio_deluxe_count` int(11) DEFAULT NULL,
  `studio_executive_count` int(11) DEFAULT NULL,
  `onebed_count` int(11) DEFAULT NULL,
  `onebed_deluxe_count` int(11) DEFAULT NULL,
  `onebed_executive_count` int(11) DEFAULT NULL,
  `shops` bigint(20) UNSIGNED NOT NULL,
  `lower_ground_count` int(11) DEFAULT NULL,
  `ground_count` int(11) DEFAULT NULL,
  `first_floor_count` int(11) DEFAULT NULL,
  `floors` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `name`, `units`, `appartments`, `studio_count`, `studio_deluxe_count`, `studio_executive_count`, `onebed_count`, `onebed_deluxe_count`, `onebed_executive_count`, `shops`, `lower_ground_count`, `ground_count`, `first_floor_count`, `floors`, `created_at`, `updated_at`) VALUES
(3, '10 Marla Plots', 25, 10, NULL, NULL, NULL, NULL, NULL, NULL, 15, NULL, NULL, NULL, 0, '2023-05-05 06:29:39', '2023-05-05 06:52:20'),
(9, 'Another try', 25, 10, 5, 3, 2, 5, 5, NULL, 15, 5, 5, 5, 10, '2023-05-08 05:24:07', '2023-05-08 05:24:07'),
(34, 'Another', 25, 10, 5, 3, 2, 5, 5, NULL, 15, 5, 5, 5, 10, '2023-05-09 03:17:26', '2023-05-09 03:17:26'),
(41, 'dayim', 25, 11, 6, 3, 2, 5, 5, NULL, 14, 5, 5, 4, 10, '2023-05-12 06:13:16', '2023-05-12 06:13:16');

-- --------------------------------------------------------

--
-- Table structure for table `project_appartments`
--

CREATE TABLE `project_appartments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `project_id` bigint(20) UNSIGNED NOT NULL,
  `studio_deluxe_sqft` bigint(100) DEFAULT NULL,
  `studio_executive_sqft` bigint(100) DEFAULT NULL,
  `onebed_deluxe_sqft` bigint(100) DEFAULT NULL,
  `onebed_executive_sqft` bigint(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `project_appartments`
--

INSERT INTO `project_appartments` (`id`, `project_id`, `studio_deluxe_sqft`, `studio_executive_sqft`, `onebed_deluxe_sqft`, `onebed_executive_sqft`, `created_at`, `updated_at`) VALUES
(69, 41, 900, NULL, NULL, NULL, '2023-05-12 06:13:16', '2023-05-12 06:13:16'),
(70, 41, 900, NULL, NULL, NULL, '2023-05-12 06:13:16', '2023-05-12 06:13:16'),
(71, 41, 900, NULL, NULL, NULL, '2023-05-12 06:13:16', '2023-05-12 06:13:16'),
(72, 41, NULL, 900, NULL, NULL, '2023-05-12 06:13:16', '2023-05-12 06:13:16'),
(73, 41, NULL, 900, NULL, NULL, '2023-05-12 06:13:16', '2023-05-12 06:13:16'),
(74, 41, NULL, NULL, 900, NULL, '2023-05-12 06:13:16', '2023-05-12 06:13:16'),
(75, 41, NULL, NULL, 900, NULL, '2023-05-12 06:13:16', '2023-05-12 06:13:16'),
(76, 41, NULL, NULL, 900, NULL, '2023-05-12 06:13:16', '2023-05-12 06:13:16'),
(77, 41, NULL, NULL, 900, NULL, '2023-05-12 06:13:16', '2023-05-12 06:13:16'),
(78, 41, NULL, NULL, 900, NULL, '2023-05-12 06:13:16', '2023-05-12 06:13:16');

-- --------------------------------------------------------

--
-- Table structure for table `project_categories`
--

CREATE TABLE `project_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `project_categories`
--

INSERT INTO `project_categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(28, 'Shpos', '2023-05-23 06:45:54', '2023-05-25 05:07:21'),
(33, 'Studio Appartments', '2023-05-24 05:51:54', '2023-05-24 05:52:08');

-- --------------------------------------------------------

--
-- Table structure for table `project_shops`
--

CREATE TABLE `project_shops` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `project_id` bigint(20) UNSIGNED NOT NULL,
  `lower_ground_sqft` bigint(20) DEFAULT NULL,
  `ground_sqft` bigint(20) DEFAULT NULL,
  `first_floor_sqft` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `project_shops`
--

INSERT INTO `project_shops` (`id`, `project_id`, `lower_ground_sqft`, `ground_sqft`, `first_floor_sqft`, `created_at`, `updated_at`) VALUES
(44, 41, 1800, NULL, NULL, '2023-05-12 06:13:16', '2023-05-12 06:13:16'),
(45, 41, 1800, NULL, NULL, '2023-05-12 06:13:16', '2023-05-12 06:13:16'),
(46, 41, 1800, NULL, NULL, '2023-05-12 06:13:16', '2023-05-12 06:13:16'),
(47, 41, 1800, NULL, NULL, '2023-05-12 06:13:16', '2023-05-12 06:13:16'),
(48, 41, 1800, NULL, NULL, '2023-05-12 06:13:16', '2023-05-12 06:13:16'),
(49, 41, NULL, 900, NULL, '2023-05-12 06:13:16', '2023-05-12 06:13:16'),
(50, 41, NULL, 900, NULL, '2023-05-12 06:13:16', '2023-05-12 06:13:16'),
(51, 41, NULL, 900, NULL, '2023-05-12 06:13:16', '2023-05-12 06:13:16'),
(52, 41, NULL, 900, NULL, '2023-05-12 06:13:16', '2023-05-12 06:13:16'),
(53, 41, NULL, 900, NULL, '2023-05-12 06:13:16', '2023-05-12 06:13:16'),
(54, 41, NULL, NULL, 1000, '2023-05-12 06:13:16', '2023-05-12 06:13:16'),
(55, 41, NULL, NULL, 1000, '2023-05-12 06:13:16', '2023-05-12 06:13:16'),
(56, 41, NULL, NULL, 1000, '2023-05-12 06:13:16', '2023-05-12 06:13:16'),
(57, 41, NULL, NULL, 1000, '2023-05-12 06:13:16', '2023-05-12 06:13:16');

-- --------------------------------------------------------

--
-- Table structure for table `project_sub_categories`
--

CREATE TABLE `project_sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `sub_category_name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `project_sub_categories`
--

INSERT INTO `project_sub_categories` (`id`, `category_id`, `sub_category_name`, `created_at`, `updated_at`) VALUES
(14, 28, 'Lower Ground', '2023-05-23 06:45:54', '2023-05-25 05:07:21'),
(15, 28, 'Upper Ground', '2023-05-23 06:45:54', '2023-05-25 05:07:21'),
(18, 33, 'Executive', '2023-05-24 05:51:54', '2023-05-24 05:55:36'),
(19, 33, 'deluxe', '2023-05-24 05:51:54', '2023-05-24 05:55:36');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) DEFAULT 'web',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'web', '2023-05-03 02:37:15', '2023-05-03 02:37:15'),
(2, 'client', 'web', '2023-05-03 02:37:16', '2023-05-03 02:37:16'),
(3, 'SuperAdmin', 'web', '2023-05-03 04:55:31', '2023-05-03 04:55:31');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 3),
(2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `shop_allotments`
--

CREATE TABLE `shop_allotments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `shop_id` bigint(20) UNSIGNED NOT NULL,
  `application_no` varchar(255) DEFAULT NULL,
  `unit_refernece` varchar(255) DEFAULT NULL,
  `per_name` varchar(255) DEFAULT NULL,
  `per_guardian_name` varchar(255) DEFAULT NULL,
  `per_cnic` bigint(20) DEFAULT NULL,
  `per_passport` varchar(255) DEFAULT NULL,
  `per_address` varchar(255) DEFAULT NULL,
  `per_email` varchar(255) DEFAULT NULL,
  `per_phone` bigint(20) DEFAULT NULL,
  `per_mobile` bigint(20) DEFAULT NULL,
  `nominee_name` varchar(255) DEFAULT NULL,
  `nominee_guargian_name` varchar(255) DEFAULT NULL,
  `nominee_cnic` varchar(255) DEFAULT NULL,
  `nominee_relation` varchar(255) DEFAULT NULL,
  `payment_type` varchar(255) DEFAULT NULL,
  `payment_total_amount` varchar(255) DEFAULT NULL,
  `payment_down_amount` varchar(255) DEFAULT NULL,
  `payment_processing_fee` varchar(255) DEFAULT NULL,
  `payment_at_pocession` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shop_allotments`
--

INSERT INTO `shop_allotments` (`id`, `shop_id`, `application_no`, `unit_refernece`, `per_name`, `per_guardian_name`, `per_cnic`, `per_passport`, `per_address`, `per_email`, `per_phone`, `per_mobile`, `nominee_name`, `nominee_guargian_name`, `nominee_cnic`, `nominee_relation`, `payment_type`, `payment_total_amount`, `payment_down_amount`, `payment_processing_fee`, `payment_at_pocession`, `created_at`, `updated_at`) VALUES
(5, 44, '13245', 'Abcdefg', 'Muhammad Mudasir', 'Asfi', 3230244765133, '88775C5586', 'Lahore Thokar', 'm.mudasirasfi@gmail.com', 42104562, 3022525228, 'Sajid Asfi', 'Sadiq Hussain', '323025544856', 'Cusine', 'full payment', '4500000', '120235', '112233', '30000', '2023-05-26 04:47:53', '2023-05-26 04:47:53');

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

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@admin.com', NULL, '$2y$10$aCk1sGSthfpJjLUQ3D9uQeCs15ZjexC79SRE/w.vg2.pYLRo9AtuS', NULL, '2023-05-03 02:37:16', '2023-05-03 02:37:16'),
(2, 'User', 'user@user.com', NULL, '$2y$10$WpOCAF9EzYgWZ6evSA/vAeaR20Mo8AgBV8y2ijXBt5gMEJitUVeAW', NULL, '2023-05-03 02:37:16', '2023-05-03 02:37:16'),
(15, 'Muhammad Mudasir', 'mudaisr@gmail.com', NULL, '$2y$10$yAjtIhQRbU8wMOHObPV9C.y1//HZHcWK6nc/uSi3k42kZwJuoUxji', NULL, '2023-05-03 06:11:04', '2023-05-03 06:11:04'),
(26, 'Muhammad Sajid', 'sajid@jmail.com', NULL, '$2y$10$f7LqKQhLaPpE3vOHFZy.6eSNhg/ZbjUrk7MR4WqPcWkpz8B9ny8MC', NULL, '2023-05-04 04:18:37', '2023-05-04 04:18:37'),
(32, 'Inzimam', 'inzi123@gmail.com', NULL, '$2y$10$8/KHymLFskRFDwS1ZvsBZeshvibECBaIMErr/yIgT1O9..fuWIwVm', NULL, '2023-05-05 04:25:46', '2023-05-05 07:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `apartment_allotments`
--
ALTER TABLE `apartment_allotments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `apartment_allotments_apartment_id_foreign` (`apartment_id`);

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
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `projects_name_unique` (`name`);

--
-- Indexes for table `project_appartments`
--
ALTER TABLE `project_appartments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_appartments_project_id_foreign` (`project_id`);

--
-- Indexes for table `project_categories`
--
ALTER TABLE `project_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `project_shops`
--
ALTER TABLE `project_shops`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_shops_project_id_foreign` (`project_id`);

--
-- Indexes for table `project_sub_categories`
--
ALTER TABLE `project_sub_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_sub_categories_category_id_foreign` (`category_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `shop_allotments`
--
ALTER TABLE `shop_allotments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shop_allotments_shop_id_foreign` (`shop_id`);

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
-- AUTO_INCREMENT for table `apartment_allotments`
--
ALTER TABLE `apartment_allotments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `modules`
--
ALTER TABLE `modules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `project_appartments`
--
ALTER TABLE `project_appartments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `project_categories`
--
ALTER TABLE `project_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `project_shops`
--
ALTER TABLE `project_shops`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `project_sub_categories`
--
ALTER TABLE `project_sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `shop_allotments`
--
ALTER TABLE `shop_allotments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `apartment_allotments`
--
ALTER TABLE `apartment_allotments`
  ADD CONSTRAINT `apartment_allotments_apartment_id_foreign` FOREIGN KEY (`apartment_id`) REFERENCES `project_appartments` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `project_appartments`
--
ALTER TABLE `project_appartments`
  ADD CONSTRAINT `project_appartments_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `project_shops`
--
ALTER TABLE `project_shops`
  ADD CONSTRAINT `project_shops_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `project_sub_categories`
--
ALTER TABLE `project_sub_categories`
  ADD CONSTRAINT `project_sub_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `project_categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `shop_allotments`
--
ALTER TABLE `shop_allotments`
  ADD CONSTRAINT `shop_allotments_shop_id_foreign` FOREIGN KEY (`shop_id`) REFERENCES `project_shops` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
