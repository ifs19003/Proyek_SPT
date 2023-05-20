-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 09, 2021 at 07:52 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prod_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prod_qty` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `user_id`, `prod_id`, `prod_qty`, `created_at`, `updated_at`) VALUES
(51, '4', '12', '1', '2021-12-08 14:25:56', '2021-12-08 14:25:56'),
(53, '6', '8', '1', '2021-12-09 06:54:04', '2021-12-09 06:54:04');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `popular` tinyint(4) NOT NULL DEFAULT 0,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_keywords` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `description`, `status`, `popular`, `image`, `meta_title`, `meta_description`, `meta_keywords`, `created_at`, `updated_at`) VALUES
(1, 'Electronic', 'electronics', 'All goods electronics here', 0, 1, '1638804870.png', 'good elecronics, good electronic', 'All goods electronics here', 'good electronic, electronics', '2021-12-02 23:04:27', '2021-12-06 08:34:30'),
(2, 'Household', 'household', 'All kinds of household items available', 0, 1, '1638805184.png', 'Household items', 'All kinds of household items available', 'Household items, All good household items', '2021-12-01 02:25:22', '2021-12-06 08:39:44'),
(3, 'Fashion', 'fashion', 'All good kinds of fashion here.', 0, 1, '1638803521.png', 'good fashion', 'All good kinds of fashion here.', 'good dress, good jackets', '2021-12-01 21:37:17', '2021-12-06 08:12:01'),
(7, 'School', 'school', 'All kinds of good things for schools', 0, 1, '1639071515.png', 'school', 'All kinds of good things for schools', 'book, shoes, bag', '2021-12-06 08:35:52', '2021-12-09 10:38:35');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
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
(5, '2021_11_28_014835_create_categories_table', 2),
(6, '2021_12_02_063507_create_products_table', 3),
(7, '2021_12_07_082304_create_carts_table', 4),
(8, '2021_12_08_070158_create_orders_table', 5),
(9, '2021_12_08_070912_create_order_items_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address1` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address2` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pincode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `message` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tracking_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `fname`, `lname`, `email`, `phone`, `address1`, `address2`, `city`, `state`, `country`, `pincode`, `total_price`, `status`, `message`, `tracking_no`, `created_at`, `updated_at`) VALUES
(1, '4', 'Rens', 'Sibarani', 'garoga.sehat@gmail.com', '082165544389', 'garoga', 'sdasdsd', 'garoga', 'North Sumatra', 'Indonesia', '22473', '5825000', 1, NULL, 'rens1901', '2021-12-08 09:10:07', '2021-12-08 12:17:03'),
(2, '4', 'Rens', 'Sibarani', 'garoga.sehat@gmail.com', '082165544389', 'garoga', 'sdasdsd', 'garoga', 'North Sumatra', 'Indonesia', '22473', '599000', 1, NULL, 'rens7198', '2021-12-08 09:37:19', '2021-12-08 12:20:30'),
(3, '5', 'Jogi', 'Sitinjak', 'jogiagsitinjak@gmail.com', '083160415001', 'jln kehidupan No.1', 'jln kehidupan No.1', 'Medan', 'Medan', 'Inodenesia', '12345', '150000', 1, NULL, 'rens7788', '2021-12-08 11:12:45', '2021-12-08 12:21:22'),
(4, '5', 'Jogi', 'Sitinjak', 'jogiagsitinjak@gmail.com', '083160415001', 'jln kehidupan No.1', 'jln kehidupan No.1', 'Medan', 'Medan', 'Inodenesia', '12345', '0', 1, NULL, 'rens2934', '2021-12-08 12:37:32', '2021-12-08 12:38:06'),
(5, '5', 'Jogi', 'Sitinjak', 'jogiagsitinjak@gmail.com', '083160415001', 'jln kehidupan No.1', 'jln kehidupan No.1', 'Medan', 'Medan', 'Inodenesia', '12345', '0', 1, NULL, 'rens9685', '2021-12-08 12:39:01', '2021-12-08 12:39:30'),
(6, '4', 'Rens', 'Sibarani', 'garoga.sehat@gmail.com', '082165544389', 'garoga', 'sdasdsd', 'garoga', 'North Sumatra', 'Indonesia', '22473', '20000000', 1, NULL, 'rens8670', '2021-12-08 13:48:47', '2021-12-08 13:49:41'),
(7, '4', 'Rens', 'Sibarani', 'garoga.sehat@gmail.com', '082165544389', 'garoga', 'sdasdsd', 'garoga', 'North Sumatra', 'Indonesia', '22473', '4150000', 0, NULL, 'rens6207', '2021-12-08 14:25:05', '2021-12-08 14:25:05'),
(8, '1', 'Deiva', 'Pasaribu', 'deivapasaribu@gmail.com', '+6282210128379', 'Jl. Sisingamangaraja No.20', 'wrazhz', 'Balige', 'Balige', 'Indonesia', '3244563', '5725000', 0, NULL, 'rens5634', '2021-12-09 11:03:26', '2021-12-09 11:03:26');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prod_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `prod_id`, `qty`, `price`, `created_at`, `updated_at`) VALUES
(1, '1', '11', '1', '1800000', '2021-12-08 09:10:07', '2021-12-08 09:10:07'),
(2, '1', '8', '1', '25000', '2021-12-08 09:10:07', '2021-12-08 09:10:07'),
(3, '1', '7', '1', '4000000', '2021-12-08 09:10:07', '2021-12-08 09:10:07'),
(4, '2', '12', '1', '99000', '2021-12-08 09:37:19', '2021-12-08 09:37:19'),
(5, '2', '13', '1', '500000', '2021-12-08 09:37:19', '2021-12-08 09:37:19'),
(6, '3', '6', '1', '150000', '2021-12-08 11:12:45', '2021-12-08 11:12:45'),
(7, '6', '7', '3', '4000000', '2021-12-08 13:48:47', '2021-12-08 13:48:47'),
(8, '6', '14', '1', '8000000', '2021-12-08 13:48:47', '2021-12-08 13:48:47'),
(9, '7', '7', '1', '4000000', '2021-12-08 14:25:05', '2021-12-08 14:25:05'),
(10, '7', '6', '1', '150000', '2021-12-08 14:25:06', '2021-12-08 14:25:06'),
(11, '8', '8', '1', '25000', '2021-12-09 11:03:26', '2021-12-09 11:03:26'),
(12, '8', '13', '3', '500000', '2021-12-09 11:03:26', '2021-12-09 11:03:26'),
(13, '8', '7', '1', '4000000', '2021-12-09 11:03:26', '2021-12-09 11:03:26'),
(14, '8', '15', '1', '200000', '2021-12-09 11:03:27', '2021-12-09 11:03:27');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cate_id` bigint(20) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `small_description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `original_price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `selling_price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `trending` tinyint(4) NOT NULL,
  `meta_title` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_keywords` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `cate_id`, `name`, `slug`, `small_description`, `description`, `original_price`, `selling_price`, `image`, `qty`, `tax`, `status`, `trending`, `meta_title`, `meta_keywords`, `meta_description`, `created_at`, `updated_at`) VALUES
(1, 1, 'Iphone-13 Promax', 'iphone-13 promax', 'Apple A15 Bionic chipset, 3240 mAh battery, 512 GB storage.', 'Smart, simple, and sleek protection for your essential mobile devices.', '30000000', '19900000', '1638802377.png', '0', '17', 0, 1, 'iphone-13 promax, iphone-13', 'iphone-13 promax, iphone-13 , iphone-13 promax, iphone', 'Smart, simple, and sleek protection for your essential mobile devices.', '2021-12-02 07:56:43', '2021-12-07 13:36:04'),
(2, 3, 'Denim Dress', 'denim dress', 'All kinds of goods denim dress here.', 'All kinds of goods denim dress here.', '300000', '250000', '1638803094.png', '0', '20', 0, 1, 'denim dress', 'denim, dress, denim dress, fabulous dress', 'All kinds of goods denim dress here.', '2021-12-05 00:01:52', '2021-12-08 03:06:06'),
(6, 3, 'Man Tshirt', 'tshirt', 'All kinds  of good tshirts here.', 'All kinds  of good tshirts here.', '200000', '150000', '1638802095.png', '8', '12', 0, 1, 'Tshirt', 'tshirt, good tshirt', 'All kinds  of good tshirts here.', '2021-12-05 00:05:41', '2021-12-08 14:25:06'),
(7, 1, 'Washing machine', 'washing machine', 'All kinds of goods washing machine here', 'All kinds of goods washing machine here', '5000000', '4000000', '1638802982.png', '49', '60', 0, 1, 'washing machine', 'washing machine', 'All kinds of goods washing machine here', '2021-12-05 00:08:34', '2021-12-09 11:03:27'),
(8, 2, 'Detergen', 'detergen', 'All kinds of household needs here', 'All kinds of household needs here', '30000', '25000', '1638802436.png', '27', '30', 0, 1, 'detergen', 'detergen', 'All kinds of household needs here', '2021-12-06 01:29:10', '2021-12-09 11:03:26'),
(9, 2, 'Broom', 'broom', 'All kinds of household needs here', 'All kinds of household needs here', '50000', '30000', '1638803109.png', '0', '45', 0, 1, 'sapu', 'sapu ijuk', 'All kinds of household needs here', '2021-12-06 02:16:27', '2021-12-06 08:05:09'),
(10, 3, 'Cap', 'cap', 'All kinds of cute cap here.', 'All kinds of cute cap here.', '150000', '100000', '1638801989.png', '40', '49', 0, 1, 'cap', 'good cap, cap', 'All kinds of cute cap here.', '2021-12-06 07:46:29', '2021-12-06 07:46:29'),
(11, 2, 'Cupboard', 'cupboard', 'All kinds and beautiful model cupboards here.', 'All kinds and beautiful model cupboards here.', '2000000', '1800000', '1638802266.png', '15', '20', 0, 1, 'cupboard', 'cupboard, vintage cupboard aesthetic cupboard', 'All kinds and beautiful model cupboards here.', '2021-12-06 07:51:06', '2021-12-08 09:10:07'),
(12, 2, 'Lampu belajar', 'lampu belajar', 'All kinds of lamps here.', 'All kinds of lamps here.', '100000', '99000', '1638802740.png', '28', '46', 0, 1, 'lampu belajar', 'lampu belajar', 'All kinds of lamps here.', '2021-12-06 07:59:00', '2021-12-08 09:37:19'),
(13, 1, 'Airpods', 'Airpods', 'All kinds of good airpods here.', 'All kinds of good airpods here.', '500000', '500000', '1638802936.png', '41', '50', 0, 1, 'Airpods, good airpods', 'Airpods, Airpods, good airpods', 'All kinds of good airpods here.', '2021-12-06 08:02:16', '2021-12-09 11:03:26'),
(14, 1, 'Samsung A20', 'samsung', 'All kinds of goods phone here.', 'All kinds of goods phone here.', '9000000', '8000000', '1638803811.png', '19', '24', 0, 1, 'samsung, phone', 'samsung, phone, samsung, phone', 'All kinds of goods phone here.', '2021-12-06 08:16:51', '2021-12-08 13:48:47'),
(15, 7, 'Schools Bag', 'schools Bag', 'All kinds of  goods schools bag.', 'All kinds of  goods schools bag.', '200000', '200000', '1639068664.png', '45', '50', 0, 1, 'bag, backpack', 'bag, backpack', 'All kinds of  goods schools bag.', '2021-12-09 09:51:04', '2021-12-09 11:03:27'),
(16, 7, 'Shoes', 'shoes', 'All kinds of  goods schools shoes.', 'All kinds of  goods schools shoes.', '300000', '250000', '1639068783.png', '25', '30', 0, 1, 'shooes', 'goods shoes, black shoes', 'All kinds of  goods schools shoes.', '2021-12-09 09:53:03', '2021-12-09 09:53:03');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pincode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_as` tinyint(4) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `lname`, `phone`, `address1`, `address2`, `city`, `state`, `country`, `pincode`, `role_as`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Deiva', 'deivapasaribu@gmail.com', NULL, '$2y$10$wRQB65jKP6Td5m2kmJhDc.j700OYjgWRtoR3WASVKBuvetZW6BRUa', 'Pasaribu', '+6282210128379', 'Jl. Sisingamangaraja No.20', 'wrazhz', 'Balige', 'Balige', 'Indonesia', '3244563', 1, NULL, '2021-11-26 00:47:17', '2021-12-09 11:03:27'),
(3, 'yohana', 'yohanasihombing@gmail.com', NULL, '$2y$10$EDbe74F0jezqTv.ot0jV8.0KATCRa2qAaKogWlYCZvykZpytXNgtG', '', '', '', '', '', '', '', '', 0, NULL, '2021-11-26 02:28:05', '2021-11-26 02:28:05'),
(4, 'Rens', 'garoga.sehat@gmail.com', NULL, '$2y$10$ZOxrOugNJTGVVzwGSVUdM.JB5kvPz2fXnrYRxB9pzHPqDleGOYvVS', 'Sibarani', '082165544389', 'garoga', 'sdasdsd', 'garoga', 'North Sumatra', 'Indonesia', '22473', 0, NULL, '2021-12-07 07:35:57', '2021-12-08 01:54:51'),
(5, 'Jogi', 'jogiagsitinjak@gmail.com', NULL, '$2y$10$5fAU4xVaXP88jWzF38jAUucVUe9KOZLMw3RaHJL9813sIOU34KOMO', 'Sitinjak', '083160415001', 'jln kehidupan No.1', 'jln kehidupan No.1', 'Medan', 'Medan', 'Inodenesia', '12345', 1, NULL, '2021-12-07 08:50:28', '2021-12-08 11:12:45'),
(6, 'darelpinem', 'darelpinem@gmail.com', NULL, '$2y$10$xGkV7CQPM8xWk7TCnQxSEewbq29ESfw2awbL3f473qryUEH.MpJBW', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2021-12-09 06:53:04', '2021-12-09 06:53:04');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
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
-- Indexes for table `products`
--
ALTER TABLE `products`
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
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
